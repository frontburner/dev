/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Essential Project Manager (EPM)
 * Copyright (c) 2004,2009 SourceCodeMetrics.com
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * ADA Parser lexemes
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  19-Sep-06    117 : File created.
 * CAM  18-Apr-2009  10421 : Added Native (CS&VB), Script (JS) and HTML symbols.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

#define KEY_CS_ABSTRACT                  256
#define KEY_CS_AS                        257
#define KEY_CS_BASE                      258
#define KEY_CS_BOOL                      259
#define KEY_CS_BREAK                     260
#define KEY_CS_BYTE                      261
#define KEY_CS_CASE                      262
#define KEY_CS_CATCH                     263
#define KEY_CS_CHAR                      264
#define KEY_CS_CHECKED                   265
#define KEY_CS_CLASS                     266
#define KEY_CS_CONST                     267
#define KEY_CS_CONTINUE                  268
#define KEY_CS_DECIMAL                   269
#define KEY_CS_DEFAULT                   270
#define KEY_CS_DELEGATE                  271
#define KEY_CS_DO                        272
#define KEY_CS_DOUBLE                    273
#define KEY_CS_ELSE                      274
#define KEY_CS_ENUM                      275
#define KEY_CS_EVENT                     276
#define KEY_CS_EXPLICIT                  277
#define KEY_CS_EXTERN                    278
#define KEY_CS_FINALLY                   279
#define KEY_CS_FIXED                     280
#define KEY_CS_FLOAT                     281
#define KEY_CS_FOR                       282
#define KEY_CS_FOREACH                   283
#define KEY_CS_GOTO                      284
#define KEY_CS_IF                        285
#define KEY_CS_IMPLICIT                  286
#define KEY_CS_IN                        287
#define KEY_CS_INT                       288
#define KEY_CS_INTERFACE                 289
#define KEY_CS_INTERNAL                  290
#define KEY_CS_IS                        291
#define KEY_CS_LOCK                      292
#define KEY_CS_LONG                      293
#define KEY_CS_NAMESPACE                 294
#define KEY_CS_NEW                       295
#define KEY_CS_OBJECT                    296
#define KEY_CS_OPERATOR                  297
#define KEY_CS_OUT                       298
#define KEY_CS_OVERRIDE                  299
#define KEY_CS_PARAMS                    300
#define KEY_CS_PRIVATE                   301
#define KEY_CS_PROTECTED                 302
#define KEY_CS_PUBLIC                    303
#define KEY_CS_READONLY                  304
#define KEY_CS_REF                       305
#define KEY_CS_RETURN                    306
#define KEY_CS_SBYTE                     307
#define KEY_CS_SEALED                    308
#define KEY_CS_SHORT                     309
#define KEY_CS_SIZEOF                    310
#define KEY_CS_STACKALLOC                311
#define KEY_CS_STATIC                    312
#define KEY_CS_STRING                    313
#define KEY_CS_STRUCT                    314
#define KEY_CS_SWITCH                    315
#define KEY_CS_THIS                      316
#define KEY_CS_THROW                     317
#define KEY_CS_TRY                       318
#define KEY_CS_TYPEOF                    319
#define KEY_CS_UINT                      320
#define KEY_CS_ULONG                     321
#define KEY_CS_UNCHECKED                 322
#define KEY_CS_UNSAFE                    323
#define KEY_CS_USHORT                    324
#define KEY_CS_USING                     325
#define KEY_CS_VIRTUAL                   326
#define KEY_CS_VOID                      327
#define KEY_CS_VOLATILE                  328
#define KEY_CS_WHILE                     329
#define KEY_VB_ADDHANDLER                330
#define KEY_VB_ADDRESSOF                 331
#define KEY_VB_ALIAS                     332
#define KEY_VB_AND                       333
#define KEY_VB_ANDALSO                   334
#define KEY_VB_ANSI                      335
#define KEY_VB_ASSEMBLY                  336
#define KEY_VB_AUTO                      337
#define KEY_VB_BOOLEAN                   338
#define KEY_VB_BYREF                     339
#define KEY_VB_BYVAL                     340
#define KEY_VB_CALL                      341
#define KEY_VB_CBOOL                     342
#define KEY_VB_CBYTE                     343
#define KEY_VB_CCHAR                     344
#define KEY_VB_CDATE                     345
#define KEY_VB_CDBL                      346
#define KEY_VB_CDEC                      347
#define KEY_VB_CINT                      348
#define KEY_VB_CLNG                      349
#define KEY_VB_COBJ                      350
#define KEY_VB_CSHORT                    351
#define KEY_VB_CSNG                      352
#define KEY_VB_CSTR                      353
#define KEY_VB_CTYPE                     354
#define KEY_VB_DATE                      355
#define KEY_VB_DECLARE                   356
#define KEY_VB_DEFAULT                   357
#define KEY_VB_DIM                       358
#define KEY_VB_DIRECTCAST                359
#define KEY_VB_EACH                      360
#define KEY_VB_ELSEIF                    361
#define KEY_VB_END                       362
#define KEY_VB_ENDIF                     363
#define KEY_VB_ERASE                     364
#define KEY_VB_ERROR                     365
#define KEY_VB_EXIT                      366
#define KEY_VB_FALSE                     367
#define KEY_VB_FRIEND                    368
#define KEY_VB_FUNCTION                  369
#define KEY_VB_GET                       370
#define KEY_VB_GETTYPE                   371
#define KEY_VB_GOSUB                     372
#define KEY_VB_HANDLES                   373
#define KEY_VB_IMPLEMENTS                374
#define KEY_VB_IMPORTS                   375
#define KEY_VB_INHERITS                  376
#define KEY_VB_INTEGER                   377
#define KEY_VB_LET                       378
#define KEY_VB_LIB                       379
#define KEY_VB_LIKE                      380
#define KEY_VB_LOOP                      381
#define KEY_VB_ME                        382
#define KEY_VB_MOD                       383
#define KEY_VB_MODULE                    384
#define KEY_VB_MUSTINHERIT               385
#define KEY_VB_MUSTOVERRIDE              386
#define KEY_VB_MYBASE                    387
#define KEY_VB_MYCLASS                   388
#define KEY_VB_NEXT                      389
#define KEY_VB_NOT                       390
#define KEY_VB_NOTHING                   391
#define KEY_VB_NOTINHERITABLE            392
#define KEY_VB_NOTOVERRIDABLE            393
#define KEY_VB_ON                        394
#define KEY_VB_OPTION                    395
#define KEY_VB_OPTIONAL                  396
#define KEY_VB_OR                        397
#define KEY_VB_ORELSE                    398
#define KEY_VB_OVERLOADS                 399
#define KEY_VB_OVERRIDABLE               400
#define KEY_VB_OVERRIDES                 401
#define KEY_VB_PARAMARRAY                402
#define KEY_VB_PRESERVE                  403
#define KEY_VB_PRIVATE                   404
#define KEY_VB_PROPERTY                  405
#define KEY_VB_RAISEEVENT                406
#define KEY_VB_REDIM                     407
#define KEY_VB_REMOVEHANDLER             408
#define KEY_VB_RESUME                    409
#define KEY_VB_SELECT                    410
#define KEY_VB_SET                       411
#define KEY_VB_SHADOWS                   412
#define KEY_VB_SHARED                    413
#define KEY_VB_SINGLE                    414
#define KEY_VB_STEP                      415
#define KEY_VB_STOP                      416
#define KEY_VB_STRUCTURE                 417
#define KEY_VB_SUB                       418
#define KEY_VB_SYNCLOCK                  419
#define KEY_VB_THEN                      420
#define KEY_VB_TO                        421
#define KEY_VB_TRUE                      422
#define KEY_VB_TRY                       423
#define KEY_VB_UNICODE                   424
#define KEY_VB_UNTIL                     425
#define KEY_VB_VARIANT                   426
#define KEY_VB_WEND                      427
#define KEY_VB_WHEN                      428
#define KEY_VB_WITH                      429
#define KEY_VB_WITHEVENTS                430
#define KEY_VB_WRITEONLY                 431
#define KEY_VB_XOR                       432
#define SYM_AMPERSAND                    433
#define SYM_ANDAND                       434
#define SYM_ANDEQ                        435
#define SYM_ASTERISK                     436
#define SYM_ASTERISKEQ                   437
#define SYM_BAR                          438
#define SYM_BARBAR                       439
#define SYM_BAREQ                        440
#define SYM_BKSLASHBKSLASH               441
#define SYM_CARET                        442
#define SYM_CARETEQ                      443
#define SYM_COLON                        444
#define SYM_COMMA                        445
#define SYM_EQEQ                         446
#define SYM_EQUAL                        447
#define SYM_EXCLAIM                      448
#define SYM_GT                           449
#define SYM_GTEQ                         450
#define SYM_GTGT                         451
#define SYM_GTGTEQ                       452
#define SYM_GTGTGT                       453
#define SYM_GTGTGTEQ                     454
#define SYM_LT                           455
#define SYM_LTEQ                         456
#define SYM_LTGT                         457
#define SYM_LTLT                         458
#define SYM_LTLTEQ                       459
#define SYM_MINUS                        460
#define SYM_MINUSEQ                      461
#define SYM_MINUSMINUS                   462
#define SYM_NOTEQ                        463
#define SYM_PERCENT                      464
#define SYM_PERCENTEQ                    465
#define SYM_PERIOD                       466
#define SYM_PLUS                         467
#define SYM_PLUSEQ                       468
#define SYM_PLUSPLUS                     469
#define SYM_QUERY                        470
#define SYM_SLASH                        471
#define SYM_SLASHEQ                      472
#define SYM_TIDLE                        473
#define KEY_HTM_A                        474
#define KEY_HTM_ACTION                   475
#define KEY_HTM_ADDRESS                  476
#define KEY_HTM_ALIGN                    477
#define KEY_HTM_ALINK                    478
#define KEY_HTM_ALT                      479
#define KEY_HTM_APPLET                   480
#define KEY_HTM_AREA                     481
#define KEY_HTM_B                        482
#define KEY_HTM_BACKGROUND               483
#define KEY_HTM_BASE                     484
#define KEY_HTM_BGCOLOR                  485
#define KEY_HTM_BIG                      486
#define KEY_HTM_BLINK                    487
#define KEY_HTM_BLOCKQUOTE               488
#define KEY_HTM_BODY                     489
#define KEY_HTM_BORDER                   490
#define KEY_HTM_BORDERCOLOR              491
#define KEY_HTM_BOTTOMMARGIN             492
#define KEY_HTM_BR                       493
#define KEY_HTM_BUTTON                   494
#define KEY_HTM_CAPTION                  495
#define KEY_HTM_CELLPADDING              496
#define KEY_HTM_CELLSPACING              497
#define KEY_HTM_CENTER                   498
#define KEY_HTM_CHECKED                  499
#define KEY_HTM_CLASS                    500
#define KEY_HTM_CLASSID                  501
#define KEY_HTM_CLEAR                    502
#define KEY_HTM_CODE                     503
#define KEY_HTM_CODEBASE                 504
#define KEY_HTM_CODETYPE                 505
#define KEY_HTM_COL                      506
#define KEY_HTM_COLGROUP                 507
#define KEY_HTM_COLOR                    508
#define KEY_HTM_COLS                     509
#define KEY_HTM_COLSPAN                  510
#define KEY_HTM_COMPACT                  511
#define KEY_HTM_CONTENT                  512
#define KEY_HTM_COORDS                   513
#define KEY_HTM_DATA                     514
#define KEY_HTM_DD                       515
#define KEY_HTM_DEL                      516
#define KEY_HTM_DISABLED                 517
#define KEY_HTM_DIV                      518
#define KEY_HTM_DL                       519
#define KEY_HTM_DT                       520
#define KEY_HTM_EM                       521
#define KEY_HTM_EMBED                    522
#define KEY_HTM_EVENT                    523
#define KEY_HTM_FACE                     524
#define KEY_HTM_FONT                     525
#define KEY_HTM_FORM                     526
#define KEY_HTM_FRAME                    527
#define KEY_HTM_FRAMEBORDER              528
#define KEY_HTM_FRAMESET                 529
#define KEY_HTM_FRAMESPACING             530
#define KEY_HTM_H1                       531
#define KEY_HTM_H2                       532
#define KEY_HTM_H3                       533
#define KEY_HTM_H4                       534
#define KEY_HTM_H5                       535
#define KEY_HTM_H6                       536
#define KEY_HTM_HEAD                     537
#define KEY_HTM_HEIGHT                   538
#define KEY_HTM_HIDDEN                   539
#define KEY_HTM_HR                       540
#define KEY_HTM_HREF                     541
#define KEY_HTM_HSPACE                   542
#define KEY_HTM_HTML                     543
#define KEY_HTM_HTTPEQUIV                544
#define KEY_HTM_ID                       545
#define KEY_HTM_IFRAME                   546
#define KEY_HTM_ILAYER                   547
#define KEY_HTM_IMG                      548
#define KEY_HTM_INPUT                    549
#define KEY_HTM_LABEL                    550
#define KEY_HTM_LANG                     551
#define KEY_HTM_LANGUAGE                 552
#define KEY_HTM_LAYER                    553
#define KEY_HTM_LEFTMARGIN               554
#define KEY_HTM_LEGEND                   555
#define KEY_HTM_LI                       556
#define KEY_HTM_LINK                     557
#define KEY_HTM_LOOP                     558
#define KEY_HTM_MAP                      559
#define KEY_HTM_MENU                     560
#define KEY_HTM_META                     561
#define KEY_HTM_MULTICOL                 562
#define KEY_HTM_MULTIPLE                 563
#define KEY_HTM_NAME                     564
#define KEY_HTM_NOBR                     565
#define KEY_HTM_NOEMBED                  566
#define KEY_HTM_NOFRAMES                 567
#define KEY_HTM_NOHREF                   568
#define KEY_HTM_NOLAYER                  569
#define KEY_HTM_NORESIZE                 570
#define KEY_HTM_NOSCRIPT                 571
#define KEY_HTM_NOSHADE                  572
#define KEY_HTM_NOWRAP                   573
#define KEY_HTM_OBJECT                   574
#define KEY_HTM_OL                       575
#define KEY_HTM_OPTGROUP                 576
#define KEY_HTM_OPTION                   577
#define KEY_HTM_P                        578
#define KEY_HTM_PALETTE                  579
#define KEY_HTM_PARAM                    580
#define KEY_HTM_PLAINTEXT                581
#define KEY_HTM_PRE                      582
#define KEY_HTM_PUBLIC                   583
#define KEY_HTM_READONLY                 584
#define KEY_HTM_REL                      585
#define KEY_HTM_REV                      586
#define KEY_HTM_RIGHTMARGIN              587
#define KEY_HTM_ROWS                     588
#define KEY_HTM_ROWSPAN                  589
#define KEY_HTM_SELECT                   590
#define KEY_HTM_SELECTED                 591
#define KEY_HTM_SERVER                   592
#define KEY_HTM_SHAPE                    593
#define KEY_HTM_SIZE                     594
#define KEY_HTM_SMALL                    595
#define KEY_HTM_SOUND                    596
#define KEY_HTM_SPACER                   597
#define KEY_HTM_SPAN                     598
#define KEY_HTM_SRC                      599
#define KEY_HTM_START                    600
#define KEY_HTM_STRIKE                   601
#define KEY_HTM_STRONG                   602
#define KEY_HTM_STYLE                    603
#define KEY_HTM_SUB                      604
#define KEY_HTM_SUP                      605
#define KEY_HTM_TABINDEX                 606
#define KEY_HTM_TABLE                    607
#define KEY_HTM_TARGET                   608
#define KEY_HTM_TBODY                    609
#define KEY_HTM_TD                       610
#define KEY_HTM_TEXT                     611
#define KEY_HTM_TEXTAREA                 612
#define KEY_HTM_TFOOT                    613
#define KEY_HTM_TH                       614
#define KEY_HTM_THEAD                    615
#define KEY_HTM_TITLE                    616
#define KEY_HTM_TOPMARGIN                617
#define KEY_HTM_TR                       618
#define KEY_HTM_TRUESPEED                619
#define KEY_HTM_TT                       620
#define KEY_HTM_TYPE                     621
#define KEY_HTM_UL                       622
#define KEY_HTM_URL                      623
#define KEY_HTM_URN                      624
#define KEY_HTM_USEMAP                   625
#define KEY_HTM_VALIGN                   626
#define KEY_HTM_VALUE                    627
#define KEY_HTM_VAR                      628
#define KEY_HTM_VLINK                    629
#define KEY_HTM_VOLUME                   630
#define KEY_HTM_VRML                     631
#define KEY_HTM_VSPACE                   632
#define KEY_HTM_WIDTH                    633
#define KEY_HTM_WRAP                     634
#define KEY_JS_ABSTRACT                  635
#define KEY_JS_BOOLEAN                   636
#define KEY_JS_BREAK                     637
#define KEY_JS_BYTE                      638
#define KEY_JS_CASE                      639
#define KEY_JS_CATCH                     640
#define KEY_JS_CHAR                      641
#define KEY_JS_CLASS                     642
#define KEY_JS_CONST                     643
#define KEY_JS_CONTINUE                  644
#define KEY_JS_DEFAULT                   645
#define KEY_JS_DELETE                    646
#define KEY_JS_DO                        647
#define KEY_JS_DOUBLE                    648
#define KEY_JS_ELSE                      649
#define KEY_JS_EXTENDS                   650
#define KEY_JS_FINAL                     651
#define KEY_JS_FINALLY                   652
#define KEY_JS_FLOAT                     653
#define KEY_JS_FOR                       654
#define KEY_JS_FUNCTION                  655
#define KEY_JS_GOTO                      656
#define KEY_JS_IF                        657
#define KEY_JS_IMPLEMENTS                658
#define KEY_JS_IMPORT                    659
#define KEY_JS_IN                        660
#define KEY_JS_INSTANCEOF                661
#define KEY_JS_INT                       662
#define KEY_JS_INTERFACE                 663
#define KEY_JS_LONG                      664
#define KEY_JS_NATIVE                    665
#define KEY_JS_NEW                       666
#define KEY_JS_PACKAGE                   667
#define KEY_JS_PRIVATE                   668
#define KEY_JS_PROTECTED                 669
#define KEY_JS_PUBLIC                    670
#define KEY_JS_RETURN                    671
#define KEY_JS_SHORT                     672
#define KEY_JS_STATIC                    673
#define KEY_JS_SUPER                     674
#define KEY_JS_SWITCH                    675
#define KEY_JS_SYNCHRONIZED              676
#define KEY_JS_THIS                      677
#define KEY_JS_THROW                     678
#define KEY_JS_THROWS                    679
#define KEY_JS_TRANSIENT                 680
#define KEY_JS_TRY                       681
#define KEY_JS_TYPEOF                    682
#define KEY_JS_VAR                       683
#define KEY_JS_VOID                      684
#define KEY_JS_VOLATILE                  685
#define KEY_JS_WHILE                     686
#define KEY_JS_WITH                      687
#define SYM_JS_ASSIGN                    688
#define SYM_JS_ASSIGNBITAND              689
#define SYM_JS_ASSIGNBITOR               690
#define SYM_JS_ASSIGNDIVIDE              691
#define SYM_JS_ASSIGNEXPONENT            692
#define SYM_JS_ASSIGNMINUS               693
#define SYM_JS_ASSIGNMOD                 694
#define SYM_JS_ASSIGNMULTIPLY            695
#define SYM_JS_ASSIGNPLUS                696
#define SYM_JS_ASSIGNSHIFTLT             697
#define SYM_JS_ASSIGNSHIFTRT             698
#define SYM_JS_ASSIGNSHIFTRTUNS          699
#define SYM_JS_ASTERISK                  700
#define SYM_JS_BITAND                    701
#define SYM_JS_BITOR                     702
#define SYM_JS_BRACEC                    703
#define SYM_JS_BRACEO                    704
#define SYM_JS_BRACKETC                  705
#define SYM_JS_BRACKETO                  706
#define SYM_JS_COLON                     707
#define SYM_JS_COMMA                     708
#define SYM_JS_DECREMENT                 709
#define SYM_JS_EQUALS                    710
#define SYM_JS_EXPONENT                  711
#define SYM_JS_GT                        712
#define SYM_JS_GTEQUAL                   713
#define SYM_JS_INCREMENT                 714
#define SYM_JS_LOGAND                    715
#define SYM_JS_LOGOR                     716
#define SYM_JS_LT                        717
#define SYM_JS_LTEQUAL                   718
#define SYM_JS_MINUS                     719
#define SYM_JS_NOT                       720
#define SYM_JS_NOTEQUAL                  721
#define SYM_JS_PARENC                    722
#define SYM_JS_PARENO                    723
#define SYM_JS_PERCENT                   724
#define SYM_JS_PERIOD                    725
#define SYM_JS_PLUS                      726
#define SYM_JS_QUESTION                  727
#define SYM_JS_SEMICOLON                 728
#define SYM_JS_SHIFTLT                   729
#define SYM_JS_SHIFTRT                   730
#define SYM_JS_SHIFTRTUNS                731
#define SYM_JS_SLASH                     732
#define SYM_JS_TILDE                     733
