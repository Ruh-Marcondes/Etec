namespace exemploTeclas
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.galinha = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.galinha)).BeginInit();
            this.SuspendLayout();
            // 
            // galinha
            // 
            this.galinha.Image = ((System.Drawing.Image)(resources.GetObject("galinha.Image")));
            this.galinha.Location = new System.Drawing.Point(339, 128);
            this.galinha.Name = "galinha";
            this.galinha.Size = new System.Drawing.Size(150, 105);
            this.galinha.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.galinha.TabIndex = 0;
            this.galinha.TabStop = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(907, 378);
            this.Controls.Add(this.galinha);
            this.Name = "Form1";
            this.Text = "Form1";
            this.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.Form1_KeyPress);
            ((System.ComponentModel.ISupportInitialize)(this.galinha)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox galinha;
    }
}

