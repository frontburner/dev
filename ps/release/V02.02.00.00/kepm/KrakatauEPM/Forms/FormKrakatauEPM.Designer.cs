/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Krakatau Essential PM (KEPM)
 * Copyright (c) 2008,2010 PowerSoftware.com
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  24-May-08    362 : File created (replicating frmMain).
 * CAM  29-May-08    364 : Added Preferences.
 * CAM  30-May-08    366 : Set font Tahoma on _lsvProjects.
 * CAM  19-Feb-2010  10558 : Added split pane and Results Browser table.
 * CAM  27-Feb-2010  10582 : Added filter for opening projects.
 * CAM  22-Jun-2011  10970 : Included UserGuide in Help menu.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

using PowerSoftware.Krakatau.Kepm.Config;
using PowerSoftware.Krakatau.Kepm.Controls;
using PowerSoftware.Krakatau.Kepm.Projects;
using PowerSoftware.Krakatau.Kepm.Win32;

namespace PowerSoftware.Krakatau.Kepm.Forms
{
  partial class FormKrakatauEPM
  {
    /// <summary>
    /// Required designer variable.
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
    protected override void Dispose(bool disposing)
    {
      if (disposing && (components != null))
      {
        Prefs p = Prefs.Preferences;
        p.SaveSettings(_lsvProjects);
        XmlConfig.Config.SaveConfig();

        components.Dispose();
      }
      base.Dispose(disposing);
    }

    #region Windows Form Designer generated code

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
      this.components = new System.ComponentModel.Container();
      System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormKrakatauEPM));
      System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
      System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
      this.toolStripContainer1 = new System.Windows.Forms.ToolStripContainer();
      this._stsMain = new System.Windows.Forms.StatusStrip();
      this._statusLabel = new System.Windows.Forms.ToolStripStatusLabel();
      this.mainSplit = new System.Windows.Forms.SplitContainer();
      this._lsvProjects = new PowerSoftware.Krakatau.Kepm.Controls.ProjectsView();
      this._imlProjects = new System.Windows.Forms.ImageList(this.components);
      this._dgvResults = new System.Windows.Forms.DataGridView();
      this._mnsMain = new System.Windows.Forms.MenuStrip();
      this.mniFile = new System.Windows.Forms.ToolStripMenuItem();
      this.mniNewProject = new System.Windows.Forms.ToolStripMenuItem();
      this.mniOpenProject = new System.Windows.Forms.ToolStripMenuItem();
      this.mniCloseProject = new System.Windows.Forms.ToolStripMenuItem();
      this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
      this._mnuExit = new System.Windows.Forms.ToolStripMenuItem();
      this.mniProject = new System.Windows.Forms.ToolStripMenuItem();
      this.mniProjectPrefs = new System.Windows.Forms.ToolStripMenuItem();
      this.mniProjectAnalyze = new System.Windows.Forms.ToolStripMenuItem();
      this.mniMetrics = new System.Windows.Forms.ToolStripMenuItem();
      this.mniMetricsSets = new System.Windows.Forms.ToolStripMenuItem();
      this.diagnosticsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
      this.mySQLToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
      this.mniInstallService = new System.Windows.Forms.ToolStripMenuItem();
      this.mniRemoveService = new System.Windows.Forms.ToolStripMenuItem();
      this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
      this.mniStartService = new System.Windows.Forms.ToolStripMenuItem();
      this.mniStopService = new System.Windows.Forms.ToolStripMenuItem();
      this.mniHelp = new System.Windows.Forms.ToolStripMenuItem();
      this.mniUserGuide = new System.Windows.Forms.ToolStripMenuItem();
      this.mniMetricsDefs = new System.Windows.Forms.ToolStripMenuItem();
      this.mniHelpAbout = new System.Windows.Forms.ToolStripMenuItem();
      this._tspMain = new System.Windows.Forms.ToolStrip();
      this._tsbNewProject = new System.Windows.Forms.ToolStripButton();
      this._tsbOpenProject = new System.Windows.Forms.ToolStripButton();
      this._tsbCloseProject = new System.Windows.Forms.ToolStripButton();
      this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
      this._tsbMetricSets = new System.Windows.Forms.ToolStripButton();
      this._cmbMetricSets = new System.Windows.Forms.ToolStripComboBox();
      this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
      this._tsbSetAsOldProject = new System.Windows.Forms.ToolStripButton();
      this._tsbSetAsNewProject = new System.Windows.Forms.ToolStripButton();
      this._tsbAnalyzeProject = new System.Windows.Forms.ToolStripButton();
      this._ofdProj = new System.Windows.Forms.OpenFileDialog();
      this.toolStripContainer1.BottomToolStripPanel.SuspendLayout();
      this.toolStripContainer1.ContentPanel.SuspendLayout();
      this.toolStripContainer1.TopToolStripPanel.SuspendLayout();
      this.toolStripContainer1.SuspendLayout();
      this._stsMain.SuspendLayout();
      this.mainSplit.Panel1.SuspendLayout();
      this.mainSplit.Panel2.SuspendLayout();
      this.mainSplit.SuspendLayout();
      ((System.ComponentModel.ISupportInitialize)(this._dgvResults)).BeginInit();
      this._mnsMain.SuspendLayout();
      this._tspMain.SuspendLayout();
      this.SuspendLayout();
      // 
      // toolStripContainer1
      // 
      // 
      // toolStripContainer1.BottomToolStripPanel
      // 
      this.toolStripContainer1.BottomToolStripPanel.Controls.Add(this._stsMain);
      // 
      // toolStripContainer1.ContentPanel
      // 
      this.toolStripContainer1.ContentPanel.Controls.Add(this.mainSplit);
      this.toolStripContainer1.ContentPanel.Size = new System.Drawing.Size(957, 418);
      this.toolStripContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
      this.toolStripContainer1.Location = new System.Drawing.Point(0, 0);
      this.toolStripContainer1.Name = "toolStripContainer1";
      this.toolStripContainer1.Size = new System.Drawing.Size(957, 503);
      this.toolStripContainer1.TabIndex = 0;
      this.toolStripContainer1.Text = "toolStripContainer1";
      // 
      // toolStripContainer1.TopToolStripPanel
      // 
      this.toolStripContainer1.TopToolStripPanel.Controls.Add(this._mnsMain);
      this.toolStripContainer1.TopToolStripPanel.Controls.Add(this._tspMain);
      // 
      // _stsMain
      // 
      this._stsMain.Dock = System.Windows.Forms.DockStyle.None;
      this._stsMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this._statusLabel});
      this._stsMain.Location = new System.Drawing.Point(0, 0);
      this._stsMain.Name = "_stsMain";
      this._stsMain.Size = new System.Drawing.Size(957, 22);
      this._stsMain.TabIndex = 0;
      // 
      // _statusLabel
      // 
      this._statusLabel.Name = "_statusLabel";
      this._statusLabel.Size = new System.Drawing.Size(42, 17);
      this._statusLabel.Text = "Ready.";
      // 
      // mainSplit
      // 
      this.mainSplit.Dock = System.Windows.Forms.DockStyle.Fill;
      this.mainSplit.Location = new System.Drawing.Point(0, 0);
      this.mainSplit.Name = "mainSplit";
      this.mainSplit.Orientation = System.Windows.Forms.Orientation.Horizontal;
      // 
      // mainSplit.Panel1
      // 
      this.mainSplit.Panel1.Controls.Add(this._lsvProjects);
      // 
      // mainSplit.Panel2
      // 
      this.mainSplit.Panel2.Controls.Add(this._dgvResults);
      this.mainSplit.Size = new System.Drawing.Size(957, 418);
      this.mainSplit.SplitterDistance = 143;
      this.mainSplit.TabIndex = 1;
      // 
      // _lsvProjects
      // 
      this._lsvProjects.Dock = System.Windows.Forms.DockStyle.Fill;
      this._lsvProjects.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
      this._lsvProjects.LargeImageList = this._imlProjects;
      this._lsvProjects.Location = new System.Drawing.Point(0, 0);
      this._lsvProjects.Name = "_lsvProjects";
      this._lsvProjects.ShowItemToolTips = true;
      this._lsvProjects.Size = new System.Drawing.Size(957, 143);
      this._lsvProjects.TabIndex = 0;
      this._lsvProjects.UseCompatibleStateImageBehavior = false;
      this._lsvProjects.ItemActivate += new System.EventHandler(this.EditProject);
      // 
      // _imlProjects
      // 
      this._imlProjects.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("_imlProjects.ImageStream")));
      this._imlProjects.TransparentColor = System.Drawing.Color.Transparent;
      this._imlProjects.Images.SetKeyName(0, "Project1");
      this._imlProjects.Images.SetKeyName(1, "Project2");
      this._imlProjects.Images.SetKeyName(2, "ProjectOld");
      this._imlProjects.Images.SetKeyName(3, "ProjectNew");
      // 
      // _dgvResults
      // 
      this._dgvResults.AllowUserToAddRows = false;
      this._dgvResults.AllowUserToDeleteRows = false;
      dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
      dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
      dataGridViewCellStyle1.Font = new System.Drawing.Font("Calibri", 8.25F);
      dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
      dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
      dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
      dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
      this._dgvResults.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
      this._dgvResults.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
      dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
      dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
      dataGridViewCellStyle2.Font = new System.Drawing.Font("Calibri", 8.25F);
      dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
      dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
      dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
      dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
      this._dgvResults.DefaultCellStyle = dataGridViewCellStyle2;
      this._dgvResults.Dock = System.Windows.Forms.DockStyle.Fill;
      this._dgvResults.Location = new System.Drawing.Point(0, 0);
      this._dgvResults.Name = "_dgvResults";
      this._dgvResults.ReadOnly = true;
      this._dgvResults.Size = new System.Drawing.Size(957, 271);
      this._dgvResults.TabIndex = 0;
      // 
      // _mnsMain
      // 
      this._mnsMain.Dock = System.Windows.Forms.DockStyle.None;
      this._mnsMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mniFile,
            this.mniProject,
            this.mniMetrics,
            this.diagnosticsToolStripMenuItem,
            this.mniHelp});
      this._mnsMain.Location = new System.Drawing.Point(0, 0);
      this._mnsMain.Name = "_mnsMain";
      this._mnsMain.Size = new System.Drawing.Size(957, 24);
      this._mnsMain.TabIndex = 1;
      this._mnsMain.Text = "menuStrip1";
      // 
      // mniFile
      // 
      this.mniFile.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mniNewProject,
            this.mniOpenProject,
            this.mniCloseProject,
            this.toolStripSeparator3,
            this._mnuExit});
      this.mniFile.Name = "mniFile";
      this.mniFile.Size = new System.Drawing.Size(37, 20);
      this.mniFile.Text = "&File";
      // 
      // mniNewProject
      // 
      this.mniNewProject.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.NewProjectMenu;
      this.mniNewProject.Name = "mniNewProject";
      this.mniNewProject.Size = new System.Drawing.Size(143, 22);
      this.mniNewProject.Text = "&New Project";
      this.mniNewProject.Click += new System.EventHandler(this.NewProject);
      // 
      // mniOpenProject
      // 
      this.mniOpenProject.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.OpenProjectMenu;
      this.mniOpenProject.Name = "mniOpenProject";
      this.mniOpenProject.Size = new System.Drawing.Size(143, 22);
      this.mniOpenProject.Text = "&Open Project";
      this.mniOpenProject.Click += new System.EventHandler(this.OpenProject);
      // 
      // mniCloseProject
      // 
      this.mniCloseProject.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.CloseProjectMenu;
      this.mniCloseProject.Name = "mniCloseProject";
      this.mniCloseProject.Size = new System.Drawing.Size(143, 22);
      this.mniCloseProject.Text = "&Close Project";
      this.mniCloseProject.Click += new System.EventHandler(this.CloseProject);
      // 
      // toolStripSeparator3
      // 
      this.toolStripSeparator3.Name = "toolStripSeparator3";
      this.toolStripSeparator3.Size = new System.Drawing.Size(140, 6);
      // 
      // _mnuExit
      // 
      this._mnuExit.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.Exit;
      this._mnuExit.Name = "_mnuExit";
      this._mnuExit.Size = new System.Drawing.Size(143, 22);
      this._mnuExit.Text = "E&xit";
      this._mnuExit.Click += new System.EventHandler(this.ExitKepm);
      // 
      // mniProject
      // 
      this.mniProject.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mniProjectPrefs,
            this.mniProjectAnalyze});
      this.mniProject.Name = "mniProject";
      this.mniProject.Size = new System.Drawing.Size(56, 20);
      this.mniProject.Text = "&Project";
      // 
      // mniProjectPrefs
      // 
      this.mniProjectPrefs.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.ProjectPrefs;
      this.mniProjectPrefs.Name = "mniProjectPrefs";
      this.mniProjectPrefs.Size = new System.Drawing.Size(144, 22);
      this.mniProjectPrefs.Text = "&Preferences...";
      this.mniProjectPrefs.Click += new System.EventHandler(this.ShowProjectPreferences);
      // 
      // mniProjectAnalyze
      // 
      this.mniProjectAnalyze.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.AnalyzeProjectMenu;
      this.mniProjectAnalyze.Name = "mniProjectAnalyze";
      this.mniProjectAnalyze.Size = new System.Drawing.Size(144, 22);
      this.mniProjectAnalyze.Text = "&Analyze";
      this.mniProjectAnalyze.Click += new System.EventHandler(this.AnalyzeProject);
      // 
      // mniMetrics
      // 
      this.mniMetrics.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mniMetricsSets});
      this.mniMetrics.Name = "mniMetrics";
      this.mniMetrics.Size = new System.Drawing.Size(58, 20);
      this.mniMetrics.Text = "&Metrics";
      // 
      // mniMetricsSets
      // 
      this.mniMetricsSets.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.MetricSetMenu;
      this.mniMetricsSets.Name = "mniMetricsSets";
      this.mniMetricsSets.Size = new System.Drawing.Size(104, 22);
      this.mniMetricsSets.Text = "&Sets...";
      this.mniMetricsSets.Click += new System.EventHandler(this.ShowMetricSets);
      // 
      // diagnosticsToolStripMenuItem
      // 
      this.diagnosticsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mySQLToolStripMenuItem});
      this.diagnosticsToolStripMenuItem.Name = "diagnosticsToolStripMenuItem";
      this.diagnosticsToolStripMenuItem.Size = new System.Drawing.Size(80, 20);
      this.diagnosticsToolStripMenuItem.Text = "&Diagnostics";
      // 
      // mySQLToolStripMenuItem
      // 
      this.mySQLToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mniInstallService,
            this.mniRemoveService,
            this.toolStripSeparator4,
            this.mniStartService,
            this.mniStopService});
      this.mySQLToolStripMenuItem.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.DiagnosticsMysql;
      this.mySQLToolStripMenuItem.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
      this.mySQLToolStripMenuItem.Name = "mySQLToolStripMenuItem";
      this.mySQLToolStripMenuItem.Size = new System.Drawing.Size(112, 22);
      this.mySQLToolStripMenuItem.Text = "&MySQL";
      // 
      // mniInstallService
      // 
      this.mniInstallService.Name = "mniInstallService";
      this.mniInstallService.Size = new System.Drawing.Size(157, 22);
      this.mniInstallService.Text = "&Install Service";
      this.mniInstallService.Click += new System.EventHandler(this.InstallMySqlService);
      // 
      // mniRemoveService
      // 
      this.mniRemoveService.Name = "mniRemoveService";
      this.mniRemoveService.Size = new System.Drawing.Size(157, 22);
      this.mniRemoveService.Text = "&Remove Service";
      this.mniRemoveService.Click += new System.EventHandler(this.RemoveMySqlService);
      // 
      // toolStripSeparator4
      // 
      this.toolStripSeparator4.Name = "toolStripSeparator4";
      this.toolStripSeparator4.Size = new System.Drawing.Size(154, 6);
      // 
      // mniStartService
      // 
      this.mniStartService.Name = "mniStartService";
      this.mniStartService.Size = new System.Drawing.Size(157, 22);
      this.mniStartService.Text = "S&tart Service";
      this.mniStartService.Click += new System.EventHandler(this.StartMySqlService);
      // 
      // mniStopService
      // 
      this.mniStopService.Name = "mniStopService";
      this.mniStopService.Size = new System.Drawing.Size(157, 22);
      this.mniStopService.Text = "Sto&p Service";
      this.mniStopService.Click += new System.EventHandler(this.StopMySqlService);
      // 
      // mniHelp
      // 
      this.mniHelp.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mniUserGuide,
            this.mniMetricsDefs,
            this.mniHelpAbout});
      this.mniHelp.Name = "mniHelp";
      this.mniHelp.Size = new System.Drawing.Size(44, 20);
      this.mniHelp.Text = "&Help";
      // 
      // mniUserGuide
      // 
      this.mniUserGuide.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.Pdf;
      this.mniUserGuide.Name = "mniUserGuide";
      this.mniUserGuide.Size = new System.Drawing.Size(173, 22);
      this.mniUserGuide.Text = "&User Guide";
      this.mniUserGuide.Click += new System.EventHandler(this.ViewUserGuide);
      // 
      // mniMetricsDefs
      // 
      this.mniMetricsDefs.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.Pdf;
      this.mniMetricsDefs.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
      this.mniMetricsDefs.Name = "mniMetricsDefs";
      this.mniMetricsDefs.Size = new System.Drawing.Size(173, 22);
      this.mniMetricsDefs.Text = "&Metrics Definitions";
      this.mniMetricsDefs.Click += new System.EventHandler(this.ViewMetricsDefinitions);
      // 
      // mniHelpAbout
      // 
      this.mniHelpAbout.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.HelpAbout;
      this.mniHelpAbout.Name = "mniHelpAbout";
      this.mniHelpAbout.Size = new System.Drawing.Size(173, 22);
      this.mniHelpAbout.Text = "&About";
      this.mniHelpAbout.Click += new System.EventHandler(this.HelpAbout);
      // 
      // _tspMain
      // 
      this._tspMain.Dock = System.Windows.Forms.DockStyle.None;
      this._tspMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this._tsbNewProject,
            this._tsbOpenProject,
            this._tsbCloseProject,
            this.toolStripSeparator1,
            this._tsbMetricSets,
            this._cmbMetricSets,
            this.toolStripSeparator2,
            this._tsbSetAsOldProject,
            this._tsbSetAsNewProject,
            this._tsbAnalyzeProject});
      this._tspMain.Location = new System.Drawing.Point(3, 24);
      this._tspMain.Name = "_tspMain";
      this._tspMain.Size = new System.Drawing.Size(399, 39);
      this._tspMain.TabIndex = 0;
      // 
      // _tsbNewProject
      // 
      this._tsbNewProject.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
      this._tsbNewProject.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.NewProjectToolbar;
      this._tsbNewProject.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
      this._tsbNewProject.ImageTransparentColor = System.Drawing.Color.Magenta;
      this._tsbNewProject.Name = "_tsbNewProject";
      this._tsbNewProject.Size = new System.Drawing.Size(36, 36);
      this._tsbNewProject.Text = "New Project";
      this._tsbNewProject.Click += new System.EventHandler(this.NewProject);
      // 
      // _tsbOpenProject
      // 
      this._tsbOpenProject.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
      this._tsbOpenProject.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.OpenProjectToolbar;
      this._tsbOpenProject.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
      this._tsbOpenProject.ImageTransparentColor = System.Drawing.Color.Magenta;
      this._tsbOpenProject.Name = "_tsbOpenProject";
      this._tsbOpenProject.Size = new System.Drawing.Size(36, 36);
      this._tsbOpenProject.Text = "Open Project";
      this._tsbOpenProject.Click += new System.EventHandler(this.OpenProject);
      // 
      // _tsbCloseProject
      // 
      this._tsbCloseProject.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
      this._tsbCloseProject.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.CloseProjectToolbar;
      this._tsbCloseProject.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
      this._tsbCloseProject.ImageTransparentColor = System.Drawing.Color.Magenta;
      this._tsbCloseProject.Name = "_tsbCloseProject";
      this._tsbCloseProject.Size = new System.Drawing.Size(36, 36);
      this._tsbCloseProject.Text = "Close Project";
      this._tsbCloseProject.Click += new System.EventHandler(this.CloseProject);
      // 
      // toolStripSeparator1
      // 
      this.toolStripSeparator1.Name = "toolStripSeparator1";
      this.toolStripSeparator1.Size = new System.Drawing.Size(6, 39);
      // 
      // _tsbMetricSets
      // 
      this._tsbMetricSets.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
      this._tsbMetricSets.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.MetricSetToolbar;
      this._tsbMetricSets.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
      this._tsbMetricSets.ImageTransparentColor = System.Drawing.Color.Magenta;
      this._tsbMetricSets.Name = "_tsbMetricSets";
      this._tsbMetricSets.Size = new System.Drawing.Size(36, 36);
      this._tsbMetricSets.Text = "Metrics Sets";
      this._tsbMetricSets.Click += new System.EventHandler(this.ShowMetricSets);
      // 
      // _cmbMetricSets
      // 
      this._cmbMetricSets.Name = "_cmbMetricSets";
      this._cmbMetricSets.Size = new System.Drawing.Size(121, 39);
      this._cmbMetricSets.SelectedIndexChanged += new System.EventHandler(this.MetricSetChanged);
      this._cmbMetricSets.TextChanged += new System.EventHandler(this.MetricSetTextChanged);
      // 
      // toolStripSeparator2
      // 
      this.toolStripSeparator2.Name = "toolStripSeparator2";
      this.toolStripSeparator2.Size = new System.Drawing.Size(6, 39);
      // 
      // _tsbSetAsOldProject
      // 
      this._tsbSetAsOldProject.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
      this._tsbSetAsOldProject.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.SetOldProjectToolbar;
      this._tsbSetAsOldProject.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
      this._tsbSetAsOldProject.ImageTransparentColor = System.Drawing.Color.Magenta;
      this._tsbSetAsOldProject.Name = "_tsbSetAsOldProject";
      this._tsbSetAsOldProject.Size = new System.Drawing.Size(36, 36);
      this._tsbSetAsOldProject.Text = "Set as Old Project";
      this._tsbSetAsOldProject.Click += new System.EventHandler(this.SetAsOldProject);
      // 
      // _tsbSetAsNewProject
      // 
      this._tsbSetAsNewProject.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
      this._tsbSetAsNewProject.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.SetNewProjectToolbar;
      this._tsbSetAsNewProject.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
      this._tsbSetAsNewProject.ImageTransparentColor = System.Drawing.Color.Magenta;
      this._tsbSetAsNewProject.Name = "_tsbSetAsNewProject";
      this._tsbSetAsNewProject.Size = new System.Drawing.Size(36, 36);
      this._tsbSetAsNewProject.Text = "Set as New Project";
      this._tsbSetAsNewProject.Click += new System.EventHandler(this.SetAsNewProject);
      // 
      // _tsbAnalyzeProject
      // 
      this._tsbAnalyzeProject.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
      this._tsbAnalyzeProject.Image = global::PowerSoftware.Krakatau.Kepm.Properties.Resources.AnalyzeProjectToolbar;
      this._tsbAnalyzeProject.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
      this._tsbAnalyzeProject.ImageTransparentColor = System.Drawing.Color.Magenta;
      this._tsbAnalyzeProject.Name = "_tsbAnalyzeProject";
      this._tsbAnalyzeProject.Size = new System.Drawing.Size(36, 36);
      this._tsbAnalyzeProject.Text = "Analyze Project(s)";
      this._tsbAnalyzeProject.Click += new System.EventHandler(this.AnalyzeProject);
      // 
      // _ofdProj
      // 
      this._ofdProj.Filter = "KEPM Projects|*.txt";
      // 
      // FormKrakatauEPM
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(957, 503);
      this.Controls.Add(this.toolStripContainer1);
      this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
      this.MainMenuStrip = this._mnsMain;
      this.Name = "FormKrakatauEPM";
      this.Text = "Krakatau EPM";
      this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.CloseApplication);
      this.toolStripContainer1.BottomToolStripPanel.ResumeLayout(false);
      this.toolStripContainer1.BottomToolStripPanel.PerformLayout();
      this.toolStripContainer1.ContentPanel.ResumeLayout(false);
      this.toolStripContainer1.TopToolStripPanel.ResumeLayout(false);
      this.toolStripContainer1.TopToolStripPanel.PerformLayout();
      this.toolStripContainer1.ResumeLayout(false);
      this.toolStripContainer1.PerformLayout();
      this._stsMain.ResumeLayout(false);
      this._stsMain.PerformLayout();
      this.mainSplit.Panel1.ResumeLayout(false);
      this.mainSplit.Panel2.ResumeLayout(false);
      this.mainSplit.ResumeLayout(false);
      ((System.ComponentModel.ISupportInitialize)(this._dgvResults)).EndInit();
      this._mnsMain.ResumeLayout(false);
      this._mnsMain.PerformLayout();
      this._tspMain.ResumeLayout(false);
      this._tspMain.PerformLayout();
      this.ResumeLayout(false);

    }

    #endregion

    private System.Windows.Forms.ToolStripContainer toolStripContainer1;
    private System.Windows.Forms.StatusStrip _stsMain;
    private System.Windows.Forms.MenuStrip _mnsMain;
    private System.Windows.Forms.ToolStripMenuItem mniFile;
    private System.Windows.Forms.ToolStripMenuItem _mnuExit;
    private System.Windows.Forms.ToolStrip _tspMain;
    private System.Windows.Forms.ToolStripButton _tsbNewProject;
    private System.Windows.Forms.ToolStripButton _tsbOpenProject;
    private System.Windows.Forms.ToolStripButton _tsbCloseProject;
    private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
    private System.Windows.Forms.ToolStripButton _tsbMetricSets;
    private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
    private System.Windows.Forms.ToolStripButton _tsbSetAsOldProject;
    private System.Windows.Forms.ToolStripButton _tsbSetAsNewProject;
    private System.Windows.Forms.ToolStripButton _tsbAnalyzeProject;
    private System.Windows.Forms.ImageList _imlProjects;
    private PowerSoftware.Krakatau.Kepm.Controls.ProjectsView _lsvProjects;
    private System.Windows.Forms.OpenFileDialog _ofdProj;
    private System.Windows.Forms.ToolStripMenuItem mniNewProject;
    private System.Windows.Forms.ToolStripMenuItem mniOpenProject;
    private System.Windows.Forms.ToolStripMenuItem mniCloseProject;
    private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
    private System.Windows.Forms.ToolStripMenuItem mniProject;
    private System.Windows.Forms.ToolStripMenuItem mniProjectAnalyze;
    private System.Windows.Forms.ToolStripMenuItem mniMetrics;
    private System.Windows.Forms.ToolStripMenuItem mniMetricsSets;
    private System.Windows.Forms.ToolStripMenuItem mniHelp;
    private System.Windows.Forms.ToolStripMenuItem mniMetricsDefs;
    private System.Windows.Forms.ToolStripMenuItem mniHelpAbout;
    private System.Windows.Forms.ToolStripMenuItem mniProjectPrefs;
    private System.Windows.Forms.ToolStripMenuItem diagnosticsToolStripMenuItem;
    private System.Windows.Forms.ToolStripMenuItem mySQLToolStripMenuItem;
    private System.Windows.Forms.ToolStripMenuItem mniInstallService;
    private System.Windows.Forms.ToolStripMenuItem mniRemoveService;
    private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
    private System.Windows.Forms.ToolStripMenuItem mniStartService;
    private System.Windows.Forms.ToolStripMenuItem mniStopService;
    private System.Windows.Forms.SplitContainer mainSplit;
    private System.Windows.Forms.ToolStripStatusLabel _statusLabel;
    private System.Windows.Forms.DataGridView _dgvResults;
    private System.Windows.Forms.ToolStripComboBox _cmbMetricSets;
    private System.Windows.Forms.ToolStripMenuItem mniUserGuide;
  }
}

