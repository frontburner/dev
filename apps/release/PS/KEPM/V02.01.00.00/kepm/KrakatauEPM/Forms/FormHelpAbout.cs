/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Krakatau Essential PM (KEPM)
 * Copyright (c) 2004,2009 PowerSoftware.com
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * $Id$
 *
 * Who  When         Why
 * CAM  11-Oct-05    152 : Added to Source Safe.
 * CAM  28-Nov-05    134 : Added Version variable.
 * CAM  20-Dec-05    170 : Version 1.00.005.
 * CAM  24-Jan-06    179 : Version 1.00.006.
 * CAM  28-Jan-06    168 : Version 1.01.000.
 * CAM  13-Feb-06    185 : Version 1.01.001.
 * CAM  12-Mar-06    199 : Version 1.01.002.
 * CAM  14-Mar-06    202 : Version 1.01.003.
 * CAM  18-Mar-06    210 : Version 1.01.004.
 * CAM  23-Mar-06    220 : Version 1.01.005; EPM Version 1.09.004.
 * CAM  23-Mar-06    221 : Version 1.02.000; EPM Version 1.10.000.
 * CAM  08-Apr-06    230 : Version 1.02.001; EPM Version 1.10.001.
 * CAM  02-Jun-06    252 : Version 1.02.003; EPM Version 1.10.003.
 * CAM  06-Jun-06    255 : Version 1.02.004; EPM Version 1.10.004.
 * CAM  08-Jun-06    243 : Version 1.02.005; EPM Version 1.10.004.
 * CAM  14-Jun-06    258 : Version 1.02.006; EPM Version 1.10.004.
 * CAM  15-Jun-06    258 : Version 1.02.007; EPM Version 1.10.004.
 * CAM  07-Jul-06    258 : Version 1.02.008; EPM Version 1.10.004.
 * CAM  12-Jul-06    282 : Version 1.02.009; EPM Version 1.10.004.
 * CAM  18-Jul-06    272 : Version 1.03.000; EPM Version 1.11.000.
 * CAM  18-Jul-06    291 : Version 1.03.001; EPM Version 1.11.000.
 * CAM  02-Nov-06    117 : Version 1.04.000; EPM Version 1.12.000.
 * CAM  09-Nov-06    301 : Version 1.05.000; EPM Version 1.13.000.
 * CAM  09-Nov-06    314 : Version 1.06.000; EPM Version 1.14.000.
 * CAM  26-Jul-07    316 : Version 1.07.000; EPM Version 1.15.000.
 * CAM  28-Jul-07    317 : Version 1.07.001; EPM Version 1.15.001.
 * CAM  26-Oct-07    319 : Version 1.07.002; EPM Version 1.15.002.
 * CAM  01-Nov-07    321 : Version 1.07.003; EPM Version 1.15.003.
 * CAM  28-Nov-07    323 : Version 1.07.004; EPM Version 1.15.004.
 * CAM  11-Dec-07    325 : Version 1.08.000; EPM Version 1.16.000.
 * CAM  13-Dec-07    328 : Version 1.08.001; EPM Version 1.16.001.
 * CAM  04-Jan-08    336 : Version 1.08.002; EPM Version 1.16.002.
 * CAM  24-Apr-08    357 : Version 1.08.003; EPM Version 1.16.003.
 * CAM  26-Apr-08    360 : Version 1.08.004; EPM Version 1.16.004.
 * CAM  29-May-08    364 : Version 1.09.000.
 * CAM  30-May-08    366 : EPM Version 1.16.005.
 * CAM  17-Apr-2009  10433 : Version 1.10.000; EPM Version 1.17.000.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;

namespace SourceCodeMetrics.Krakatau.Kepm.Forms
{
  /// <summary>
  /// Help - About Dialog
  /// </summary>
  public class HelpAbout : System.Windows.Forms.Form
  {
    private System.Windows.Forms.PictureBox pictureBox1;
    private System.Windows.Forms.Label lblDescription;
    private System.Windows.Forms.Label lblCopyright;
    private System.Windows.Forms.Button btnClose;
    private System.Windows.Forms.LinkLabel lklProduct;
    /// <summary>
    /// Help - About Dialog giving details on the Krakatau EPM application
    /// </summary>
    private System.ComponentModel.Container components = null;
    private System.Windows.Forms.Label lblVersion;
    private System.Windows.Forms.Label lblEpmVersion;

    public HelpAbout()
    {
      InitializeComponent();
      lblVersion.Text = KrakatauEPM.AssemblyVersion;
      lblEpmVersion.Text = String.Format("Powered by {0}", KrakatauEPM.AssemblyEpmConfiguration);
      lblDescription.Text = KrakatauEPM.AssemblyDescription;
      lblCopyright.Text = KrakatauEPM.AssemblyCopyright;
    }

    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    protected override void Dispose( bool disposing )
    {
      if( disposing )
      {
        if(components != null)
        {
          components.Dispose();
        }
      }
      base.Dispose( disposing );
    }

    #region Windows Form Designer generated code
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
      System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(HelpAbout));
      this.pictureBox1 = new System.Windows.Forms.PictureBox();
      this.lblDescription = new System.Windows.Forms.Label();
      this.lblVersion = new System.Windows.Forms.Label();
      this.btnClose = new System.Windows.Forms.Button();
      this.lblCopyright = new System.Windows.Forms.Label();
      this.lklProduct = new System.Windows.Forms.LinkLabel();
      this.lblEpmVersion = new System.Windows.Forms.Label();
      ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
      this.SuspendLayout();
      // 
      // pictureBox1
      // 
      this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
      this.pictureBox1.Location = new System.Drawing.Point(96, 16);
      this.pictureBox1.Name = "pictureBox1";
      this.pictureBox1.Size = new System.Drawing.Size(200, 200);
      this.pictureBox1.TabIndex = 0;
      this.pictureBox1.TabStop = false;
      // 
      // lblDescription
      // 
      this.lblDescription.Font = new System.Drawing.Font("Tahoma", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
      this.lblDescription.Location = new System.Drawing.Point(0, 232);
      this.lblDescription.Name = "lblDescription";
      this.lblDescription.Size = new System.Drawing.Size(400, 32);
      this.lblDescription.TabIndex = 1;
      this.lblDescription.Text = "DESCRIPTION";
      this.lblDescription.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
      // 
      // lblVersion
      // 
      this.lblVersion.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
      this.lblVersion.Location = new System.Drawing.Point(0, 264);
      this.lblVersion.Name = "lblVersion";
      this.lblVersion.Size = new System.Drawing.Size(400, 32);
      this.lblVersion.TabIndex = 2;
      this.lblVersion.Text = "KEPM VERSION";
      this.lblVersion.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
      // 
      // btnClose
      // 
      this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
      this.btnClose.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
      this.btnClose.Location = new System.Drawing.Point(144, 400);
      this.btnClose.Name = "btnClose";
      this.btnClose.Size = new System.Drawing.Size(112, 40);
      this.btnClose.TabIndex = 3;
      this.btnClose.Text = "&OK";
      this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
      // 
      // lblCopyright
      // 
      this.lblCopyright.Font = new System.Drawing.Font("Tahoma", 10F);
      this.lblCopyright.Location = new System.Drawing.Point(0, 296);
      this.lblCopyright.Name = "lblCopyright";
      this.lblCopyright.Size = new System.Drawing.Size(400, 32);
      this.lblCopyright.TabIndex = 4;
      this.lblCopyright.Text = "COPYRIGHT";
      this.lblCopyright.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
      // 
      // lklProduct
      // 
      this.lklProduct.Font = new System.Drawing.Font("Tahoma", 10F);
      this.lklProduct.Location = new System.Drawing.Point(0, 328);
      this.lklProduct.Name = "lklProduct";
      this.lklProduct.Size = new System.Drawing.Size(400, 16);
      this.lklProduct.TabIndex = 5;
      this.lklProduct.TabStop = true;
      this.lklProduct.Text = "http://www.powersoftware.com/kepm/";
      this.lklProduct.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
      this.lklProduct.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lklProduct_LinkClicked);
      // 
      // lblEpmVersion
      // 
      this.lblEpmVersion.Font = new System.Drawing.Font("Tahoma", 10F);
      this.lblEpmVersion.ForeColor = System.Drawing.SystemColors.GrayText;
      this.lblEpmVersion.Location = new System.Drawing.Point(0, 352);
      this.lblEpmVersion.Name = "lblEpmVersion";
      this.lblEpmVersion.Size = new System.Drawing.Size(400, 32);
      this.lblEpmVersion.TabIndex = 6;
      this.lblEpmVersion.Text = "Powered by EPM";
      this.lblEpmVersion.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
      // 
      // HelpAbout
      // 
      this.AcceptButton = this.btnClose;
      this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
      this.CancelButton = this.btnClose;
      this.ClientSize = new System.Drawing.Size(400, 447);
      this.Controls.Add(this.lblEpmVersion);
      this.Controls.Add(this.lklProduct);
      this.Controls.Add(this.lblCopyright);
      this.Controls.Add(this.btnClose);
      this.Controls.Add(this.lblVersion);
      this.Controls.Add(this.lblDescription);
      this.Controls.Add(this.pictureBox1);
      this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
      this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
      this.MaximizeBox = false;
      this.MinimizeBox = false;
      this.Name = "HelpAbout";
      this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
      this.Text = "About Krakatau EPM";
      ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
      this.ResumeLayout(false);

    }
    #endregion

    private void btnClose_Click(object sender, System.EventArgs e)
    {
      //this.Close();
      this.Dispose();
    }

    private void lklProduct_LinkClicked(object sender, System.Windows.Forms.LinkLabelLinkClickedEventArgs e)
    {
      e.Link.Visited = true;
      System.Diagnostics.Process.Start(lklProduct.Text);
    }
  }
}
