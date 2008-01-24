/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Krakatau Metrics (metrics.exe)
 * Copyright (c) 2001,2008 SourceCodeMetrics.com
 * Author Craig McKay <craig.mckay@powersoftware.com>
 *
 * $Id$
 *
 * Who  When       Why
 * CAM  24-Jan-08  337 : Add to source control.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

#include "XrefPhase.h"
using namespace metrics ;
using namespace std ;

int XrefPhase::getProgress()
{
//	MasterData::theLog << "XrefPhase getProgress() about to lock progress_lock." << endl;
	LOCKMUTEX(progress_lock) ;
	int progress = (int) ((theStage / theNoStages) * 100) ;
	UNLOCKMUTEX(progress_lock) ;
//	MasterData::theLog << "XrefPhase getProgress() unlocked progress_lock." << endl;

	return progress ;
}




#define STATUS_PARENT(X) //MasterData::theLog << "  " << depth << " parent - " << X << ":" << scope.getName() << " {" << elemName << "}" << endl
#define STATUS_CHILD(X)  //MasterData::theLog << "  " << depth << " child  - " << X << ":" << scope.getChild(i).getName() << " {" << elemName << "}" << endl

#define DEBUG_OUTPUT //MasterData::theLog

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

bool XrefPhase::findProgramElement(SymbolNode &scope,
								   const char *elemName, int depth, SymbolNode &ret)
{
	int i, scopeChildCount = scope.childCount() ;

	if (scope.getCategoryID() == MasterData::CLASS_CAT)
	{
		STATUS_PARENT("CLASS") ;

		// Look locally
		for (i=0;i<scopeChildCount;i++)
		{
			STATUS_CHILD("CLASS") ;

			if (!strcmp(elemName,scope.getChild(i).getName().c_str()))
			{
				ret = scope.getChild(i) ;
				return true ;
			}
		}

		// Now look up one level in inheritance tree
		vector<Link> supers = scope.getLinks(MasterData::SUPER_LINK) ;
		SymbolNode super = scope ;

		for (i=0;i<supers.size();i++)
		{
			STATUS_PARENT("SUPER_LINK") ;

			if (!theRoot->findSymbolNode(supers[i].getDestID(),super))
				return false ;

			if (findProgramElement(super, elemName, ++depth, ret))
				return true ;
		}


		// Up one level in containment tree
		SymbolNode par = scope.getParent() ;
		if (findProgramElement(par,elemName, ++depth, ret))
		{
			return true ;
		}
	}
	else if (scope.getCategoryID() == MasterData::METHOD_CAT)
	{
		STATUS_PARENT("METHOD") ;

		// Look locally
		for (i=0;i<scopeChildCount;i++)
		{
			STATUS_CHILD("METHOD") ;

			if (!strcmp(elemName,scope.getChild(i).getName().c_str()))
			{
				ret = scope.getChild(i) ; //scope.getChild(i) ;
				return true ;
			}
		}

		// Now look up one level in containment tree
		SymbolNode par = scope.getParent() ;
		if (findProgramElement(par,elemName, ++depth, ret))
		{
			return true ;
		}
	}
	else if (scope.getCategoryID() == MasterData::FILE_CAT)
	{
		STATUS_PARENT("FILE") ;

		// If a Project or File, search deeper (i.e. Children)
		for (i=0; i<scopeChildCount; i++)
		{
			STATUS_CHILD("FILE") ;

			if (!strcmp(elemName,scope.getChild(i).getName().c_str()))
			{
				ret = scope.getChild(i) ;
				return true ;
			}
		}
	}
	else if (scope.getCategoryID() == MasterData::PROJECT_CAT)
	{
		STATUS_PARENT("PROJECT") ;

		// If a Project or File, search deeper (i.e. Children)
		for (i=0; i<scopeChildCount; i++)
		{
			STATUS_CHILD("PROJECT") ;

			SymbolNode nextChild = scope.getChild(i) ;
			if (findProgramElement(nextChild,elemName, ++depth, ret))
			{
				return true ;
			}
		}
	}
	else
	{
	  //MasterData::theLog << "No Match: \"" << elemName << "\"" << endl ;
	}

	return false ;
}

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

/*
SymbolNode XrefPhase::findMethodWithSameName(SymbolNode &node)
{
	// Attempt to locate a method within node's parent (i.e. a sibling of node)
	// called the same name as node

	SymbolNode parent = node.getParent() ;
	SymbolNode child = node ;

	for (int i=0;i<parent.childCount();i++)
	{
		child = parent.getChild(i) ;

		if ((node.getName() == child.getName()) &&
			(child.getCategoryID() == MasterData::METHOD_CAT))
		{
			return child ;
		}
	}

	return node ;
}*/

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=


void XrefPhase::resolveCrossRef(SymbolNode &node, string methodName, long lnkID)
{
	// Cross references occur in method body expressions
	SymbolNode currentScope = node ;
	SymbolNode ref = node ;
	long symID ;
	int j ;

	//MasterData::theLog << "Node: " << node.getName() << endl ;
	//MasterData::theLog << "Ref: " << methodName << endl ;

	componentise(methodName, Component::OPERATION_CALL) ;
	ref = currentScope = node ;

	// go through components - at each, set currentScope appropriately
	// and add actual reference

	for (j=0;j<theComponentsCount;j++)
	{
		if (findProgramElement(currentScope,theComponents[j],0,ref))
		{
			if (j < theComponentsCount-1)
			{
				long sytID = ref.getTypeID() ;

				if (sytID > 0)
				{
					symID = theRoot->getSymbolID(sytID) ;
					if (!theRoot->findSymbolNode(symID,currentScope))
					{
						//MasterData::theLog << "return (i)" << endl ;
						return ;
					}
				}
//				else
//				{
//					return ;
//				}
			}

			//debugging
			//the following 1 line has been changed so that the
			//lnkid link is changed with the link to the last symbol
			if (j == theComponentsCount-1)//0)
			{	// Update the first link
				//MasterData::theLog << "j==0, " << ref.getName() << " - " << node.getName() << endl ;
				node.addLink(lnkID, ref.getID(), MasterData::XREF_LINK) ;
			}
			else
			{	// Add new links for subsequent entries
				//MasterData::theLog << "j!=0, " << ref.getName() << " - " << node.getName() << endl ;
				node.addLink(ref.getID(), MasterData::XREF_LINK) ;
			}
		}
		else
		{
			return ;
		}
	}
}

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

void XrefPhase::resolve(SymbolNode &node)
{
	if (node.getCategoryID() == MasterData::METHOD_CAT)
	{
		TempLinks tlc((*theRoot),node.getID(), MasterData::XREF_LINK) ;
		TempLinks::iterator i ;

		for(i=tlc.begin(); i != tlc.end(); i++)
		{
			//DEBUG_OUTPUT << "Resolving " << node.getName() << "\t" << i->getRef() << endl ;
			resolveCrossRef(node, i->getRef(), i->getID()) ;
		}
	}

	LOCKMUTEX(progress_lock) ;
	theStage++ ;
	UNLOCKMUTEX(progress_lock) ;

	int c, nodeChildCount = node.childCount() ;

	for(c = 0 ; c < nodeChildCount ; c++)
	{
		SymbolNode nextChild = node.getChild(c) ;
		//DEBUG_OUTPUT << "\tChild: " << nextChild.getName() << endl ;
		resolve(nextChild) ;
	}
}

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

void XrefPhase::execute(RootNode *root)
{
	LOCKMUTEX(progress_lock) ;
	theRoot = root ;

	theNoStages = theRoot->getNodeCount() ;
	UNLOCKMUTEX(progress_lock) ;

	resolve(*theRoot) ;
}

