/* * * * * * * * * * * * * * * * * * * * * * * *
 * Ministry Search Engine Data Builder
 * Copyright (c) 2007,2009 Front Burner
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  22-Sep-2007  File added to source control.
 * CAM  11-May-2008  10264 : Replaced FlexCell with DataGridView.
 * CAM  18-May-2008  10267 : Moved buttons to new toolbar.
 * CAM  28-Mar-2009  10409 : Added call to Footnote parser.
 * * * * * * * * * * * * * * * * * * * * * * * */

namespace FrontBurner.Ministry.MseBuilder
{
  partial class MseBuilder
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
        System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MseBuilder));
        this.cmbAuthor = new System.Windows.Forms.ComboBox();
        this.label1 = new System.Windows.Forms.Label();
        this.label2 = new System.Windows.Forms.Label();
        this.txtVol = new System.Windows.Forms.TextBox();
        this.pgbVol = new System.Windows.Forms.ProgressBar();
        this.grdArticle = new System.Windows.Forms.DataGridView();
        this.tmrRefresh = new System.Windows.Forms.Timer(this.components);
        this.toolStripContainer1 = new System.Windows.Forms.ToolStripContainer();
        this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
        this._tspMain = new System.Windows.Forms.ToolStrip();
        this._tsbBuild = new System.Windows.Forms.ToolStripButton();
        this._tsbZip = new System.Windows.Forms.ToolStripButton();
        this._tsbVersionHistory = new System.Windows.Forms.ToolStripButton();
        this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
        this.mseData = new FrontBurner.Ministry.MseBuilder.MseData();
        this.mpowerCompletedJobsTableAdapter = new FrontBurner.Ministry.MseBuilder.MseDataTableAdapters.MpowerCompletedJobsTableAdapter();
        this.toolStripButton1 = new System.Windows.Forms.ToolStripButton();
        ((System.ComponentModel.ISupportInitialize)(this.grdArticle)).BeginInit();
        this.toolStripContainer1.ContentPanel.SuspendLayout();
        this.toolStripContainer1.TopToolStripPanel.SuspendLayout();
        this.toolStripContainer1.SuspendLayout();
        this.tableLayoutPanel1.SuspendLayout();
        this._tspMain.SuspendLayout();
        ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
        ((System.ComponentModel.ISupportInitialize)(this.mseData)).BeginInit();
        this.SuspendLayout();
        // 
        // cmbAuthor
        // 
        this.cmbAuthor.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        this.cmbAuthor.FormattingEnabled = true;
        this.cmbAuthor.Location = new System.Drawing.Point(103, 3);
        this.cmbAuthor.Name = "cmbAuthor";
        this.cmbAuthor.Size = new System.Drawing.Size(193, 24);
        this.cmbAuthor.TabIndex = 1;
        // 
        // label1
        // 
        this.label1.AutoSize = true;
        this.label1.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        this.label1.Location = new System.Drawing.Point(3, 0);
        this.label1.Name = "label1";
        this.label1.Size = new System.Drawing.Size(54, 16);
        this.label1.TabIndex = 2;
        this.label1.Text = "Author";
        // 
        // label2
        // 
        this.label2.AutoSize = true;
        this.label2.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        this.label2.Location = new System.Drawing.Point(3, 30);
        this.label2.Name = "label2";
        this.label2.Size = new System.Drawing.Size(55, 16);
        this.label2.TabIndex = 3;
        this.label2.Text = "Volume";
        // 
        // txtVol
        // 
        this.txtVol.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        this.txtVol.Location = new System.Drawing.Point(103, 33);
        this.txtVol.Name = "txtVol";
        this.txtVol.Size = new System.Drawing.Size(64, 23);
        this.txtVol.TabIndex = 4;
        // 
        // pgbVol
        // 
        this.tableLayoutPanel1.SetColumnSpan(this.pgbVol, 2);
        this.pgbVol.Dock = System.Windows.Forms.DockStyle.Fill;
        this.pgbVol.Location = new System.Drawing.Point(3, 63);
        this.pgbVol.Name = "pgbVol";
        this.pgbVol.Size = new System.Drawing.Size(852, 24);
        this.pgbVol.TabIndex = 5;
        // 
        // grdArticle
        // 
        this.tableLayoutPanel1.SetColumnSpan(this.grdArticle, 2);
        this.grdArticle.Dock = System.Windows.Forms.DockStyle.Fill;
        this.grdArticle.Location = new System.Drawing.Point(3, 93);
        this.grdArticle.Name = "grdArticle";
        this.grdArticle.ReadOnly = true;
        this.grdArticle.ShowEditingIcon = false;
        this.grdArticle.Size = new System.Drawing.Size(852, 470);
        this.grdArticle.TabIndex = 6;
        // 
        // tmrRefresh
        // 
        this.tmrRefresh.Tick += new System.EventHandler(this.tmrRefresh_Tick);
        // 
        // toolStripContainer1
        // 
        // 
        // toolStripContainer1.ContentPanel
        // 
        this.toolStripContainer1.ContentPanel.Controls.Add(this.tableLayoutPanel1);
        this.toolStripContainer1.ContentPanel.Size = new System.Drawing.Size(858, 566);
        this.toolStripContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
        this.toolStripContainer1.Location = new System.Drawing.Point(0, 0);
        this.toolStripContainer1.Name = "toolStripContainer1";
        this.toolStripContainer1.Size = new System.Drawing.Size(858, 621);
        this.toolStripContainer1.TabIndex = 8;
        this.toolStripContainer1.Text = "toolStripContainer1";
        // 
        // toolStripContainer1.TopToolStripPanel
        // 
        this.toolStripContainer1.TopToolStripPanel.Controls.Add(this._tspMain);
        // 
        // tableLayoutPanel1
        // 
        this.tableLayoutPanel1.ColumnCount = 2;
        this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 100F));
        this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
        this.tableLayoutPanel1.Controls.Add(this.label1, 0, 0);
        this.tableLayoutPanel1.Controls.Add(this.cmbAuthor, 1, 0);
        this.tableLayoutPanel1.Controls.Add(this.grdArticle, 0, 3);
        this.tableLayoutPanel1.Controls.Add(this.label2, 0, 1);
        this.tableLayoutPanel1.Controls.Add(this.pgbVol, 0, 2);
        this.tableLayoutPanel1.Controls.Add(this.txtVol, 1, 1);
        this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
        this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
        this.tableLayoutPanel1.Name = "tableLayoutPanel1";
        this.tableLayoutPanel1.RowCount = 4;
        this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 30F));
        this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 30F));
        this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 30F));
        this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
        this.tableLayoutPanel1.Size = new System.Drawing.Size(858, 566);
        this.tableLayoutPanel1.TabIndex = 0;
        // 
        // _tspMain
        // 
        this._tspMain.Dock = System.Windows.Forms.DockStyle.None;
        this._tspMain.ImageScalingSize = new System.Drawing.Size(48, 48);
        this._tspMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this._tsbBuild,
            this._tsbZip,
            this._tsbVersionHistory,
            this.toolStripButton1});
        this._tspMain.Location = new System.Drawing.Point(3, 0);
        this._tspMain.Name = "_tspMain";
        this._tspMain.Size = new System.Drawing.Size(251, 55);
        this._tspMain.TabIndex = 0;
        // 
        // _tsbBuild
        // 
        this._tsbBuild.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        this._tsbBuild.Image = global::FrontBurner.Ministry.MseBuilder.Properties.Resources.Build;
        this._tsbBuild.ImageTransparentColor = System.Drawing.Color.Magenta;
        this._tsbBuild.Name = "_tsbBuild";
        this._tsbBuild.Size = new System.Drawing.Size(52, 52);
        this._tsbBuild.Text = "toolStripButton1";
        this._tsbBuild.ToolTipText = "Build";
        this._tsbBuild.Click += new System.EventHandler(this._tsbBuild_Click);
        // 
        // _tsbZip
        // 
        this._tsbZip.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        this._tsbZip.Image = global::FrontBurner.Ministry.MseBuilder.Properties.Resources.Zip;
        this._tsbZip.ImageTransparentColor = System.Drawing.Color.Magenta;
        this._tsbZip.Name = "_tsbZip";
        this._tsbZip.Size = new System.Drawing.Size(52, 52);
        this._tsbZip.Text = "toolStripButton2";
        this._tsbZip.ToolTipText = "Export to Zip for Web";
        this._tsbZip.Click += new System.EventHandler(this._tsbZip_Click);
        // 
        // _tsbVersionHistory
        // 
        this._tsbVersionHistory.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        this._tsbVersionHistory.Image = global::FrontBurner.Ministry.MseBuilder.Properties.Resources.Copy;
        this._tsbVersionHistory.ImageTransparentColor = System.Drawing.Color.Magenta;
        this._tsbVersionHistory.Name = "_tsbVersionHistory";
        this._tsbVersionHistory.Size = new System.Drawing.Size(52, 52);
        this._tsbVersionHistory.Text = "toolStripButton3";
        this._tsbVersionHistory.ToolTipText = "Copy Version History from mpower";
        this._tsbVersionHistory.Click += new System.EventHandler(this._tsbVersionHistory_Click);
        // 
        // bindingSource1
        // 
        this.bindingSource1.DataMember = "MpowerCompletedJobs";
        this.bindingSource1.DataSource = this.mseData;
        // 
        // mseData
        // 
        this.mseData.DataSetName = "MseData";
        this.mseData.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
        // 
        // mpowerCompletedJobsTableAdapter
        // 
        this.mpowerCompletedJobsTableAdapter.ClearBeforeFill = true;
        // 
        // toolStripButton1
        // 
        this.toolStripButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        this.toolStripButton1.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton1.Image")));
        this.toolStripButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
        this.toolStripButton1.Name = "toolStripButton1";
        this.toolStripButton1.Size = new System.Drawing.Size(52, 52);
        this.toolStripButton1.Text = "_tsbBible";
        this.toolStripButton1.ToolTipText = "Parse Bible";
        this.toolStripButton1.Click += new System.EventHandler(this.toolStripButton1_Click);
        // 
        // MseBuilder
        // 
        this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
        this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
        this.ClientSize = new System.Drawing.Size(858, 621);
        this.Controls.Add(this.toolStripContainer1);
        this.Name = "MseBuilder";
        this.Text = "Ministry Search Engine Data Builder";
        this.Load += new System.EventHandler(this.MseBuilder_Load);
        ((System.ComponentModel.ISupportInitialize)(this.grdArticle)).EndInit();
        this.toolStripContainer1.ContentPanel.ResumeLayout(false);
        this.toolStripContainer1.TopToolStripPanel.ResumeLayout(false);
        this.toolStripContainer1.TopToolStripPanel.PerformLayout();
        this.toolStripContainer1.ResumeLayout(false);
        this.toolStripContainer1.PerformLayout();
        this.tableLayoutPanel1.ResumeLayout(false);
        this.tableLayoutPanel1.PerformLayout();
        this._tspMain.ResumeLayout(false);
        this._tspMain.PerformLayout();
        ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
        ((System.ComponentModel.ISupportInitialize)(this.mseData)).EndInit();
        this.ResumeLayout(false);

    }

    #endregion

    private System.Windows.Forms.ComboBox cmbAuthor;
    private System.Windows.Forms.Label label1;
    private System.Windows.Forms.Label label2;
    private System.Windows.Forms.TextBox txtVol;
    private System.Windows.Forms.ProgressBar pgbVol;
    private System.Windows.Forms.DataGridView grdArticle;
    private System.Windows.Forms.Timer tmrRefresh;
    private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
    private System.Windows.Forms.ToolStripContainer toolStripContainer1;
    private System.Windows.Forms.ToolStrip _tspMain;
    private System.Windows.Forms.ToolStripButton _tsbBuild;
    private System.Windows.Forms.ToolStripButton _tsbZip;
    private System.Windows.Forms.ToolStripButton _tsbVersionHistory;
    private System.Windows.Forms.BindingSource bindingSource1;
    private MseData mseData;
    private FrontBurner.Ministry.MseBuilder.MseDataTableAdapters.MpowerCompletedJobsTableAdapter mpowerCompletedJobsTableAdapter;
    private System.Windows.Forms.ToolStripButton toolStripButton1;
  }
}
