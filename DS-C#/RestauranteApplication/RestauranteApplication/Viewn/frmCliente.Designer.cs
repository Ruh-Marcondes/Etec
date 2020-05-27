namespace RestauranteApplication
{
    partial class frmCliente
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
            this.Lb1 = new System.Windows.Forms.Label();
            this.Lb2 = new System.Windows.Forms.Label();
            this.txtEnde = new System.Windows.Forms.TextBox();
            this.txtIdade = new System.Windows.Forms.TextBox();
            this.txtBCpf = new System.Windows.Forms.TextBox();
            this.txtBNome = new System.Windows.Forms.TextBox();
            this.Lb3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btnExcluir = new System.Windows.Forms.Button();
            this.btnAlterar = new System.Windows.Forms.Button();
            this.btnSalvar = new System.Windows.Forms.Button();
            this.btnCadastrar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Lb1
            // 
            this.Lb1.AutoSize = true;
            this.Lb1.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.Lb1.Font = new System.Drawing.Font("Modern No. 20", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lb1.ForeColor = System.Drawing.SystemColors.MenuText;
            this.Lb1.Location = new System.Drawing.Point(70, 23);
            this.Lb1.Margin = new System.Windows.Forms.Padding(3, 0, 2, 0);
            this.Lb1.Name = "Lb1";
            this.Lb1.Size = new System.Drawing.Size(53, 18);
            this.Lb1.TabIndex = 0;
            this.Lb1.Text = "Nome:";
            this.Lb1.Click += new System.EventHandler(this.label1_Click);
            // 
            // Lb2
            // 
            this.Lb2.AutoSize = true;
            this.Lb2.Font = new System.Drawing.Font("Modern No. 20", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lb2.Location = new System.Drawing.Point(347, 23);
            this.Lb2.Name = "Lb2";
            this.Lb2.Size = new System.Drawing.Size(45, 18);
            this.Lb2.TabIndex = 1;
            this.Lb2.Text = "CPF:";
            // 
            // txtEnde
            // 
            this.txtEnde.Location = new System.Drawing.Point(400, 47);
            this.txtEnde.Multiline = true;
            this.txtEnde.Name = "txtEnde";
            this.txtEnde.Size = new System.Drawing.Size(163, 44);
            this.txtEnde.TabIndex = 4;
            // 
            // txtIdade
            // 
            this.txtIdade.Location = new System.Drawing.Point(145, 50);
            this.txtIdade.Name = "txtIdade";
            this.txtIdade.Size = new System.Drawing.Size(163, 20);
            this.txtIdade.TabIndex = 5;
            // 
            // txtBCpf
            // 
            this.txtBCpf.Location = new System.Drawing.Point(398, 21);
            this.txtBCpf.Name = "txtBCpf";
            this.txtBCpf.Size = new System.Drawing.Size(163, 20);
            this.txtBCpf.TabIndex = 6;
            // 
            // txtBNome
            // 
            this.txtBNome.Location = new System.Drawing.Point(145, 21);
            this.txtBNome.Name = "txtBNome";
            this.txtBNome.Size = new System.Drawing.Size(163, 20);
            this.txtBNome.TabIndex = 7;
            // 
            // Lb3
            // 
            this.Lb3.AutoSize = true;
            this.Lb3.Font = new System.Drawing.Font("Modern No. 20", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lb3.Location = new System.Drawing.Point(70, 49);
            this.Lb3.Name = "Lb3";
            this.Lb3.Size = new System.Drawing.Size(54, 18);
            this.Lb3.TabIndex = 8;
            this.Lb3.Text = "Idade:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Modern No. 20", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(314, 52);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(80, 18);
            this.label1.TabIndex = 9;
            this.label1.Text = "Endereço:";
            // 
            // btnExcluir
            // 
            this.btnExcluir.Font = new System.Drawing.Font("Microsoft Uighur", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExcluir.Image = global::RestauranteApplication.Properties.Resources.close;
            this.btnExcluir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnExcluir.Location = new System.Drawing.Point(273, 205);
            this.btnExcluir.Name = "btnExcluir";
            this.btnExcluir.Size = new System.Drawing.Size(167, 54);
            this.btnExcluir.TabIndex = 11;
            this.btnExcluir.Text = "Excluir";
            this.btnExcluir.UseVisualStyleBackColor = true;
            // 
            // btnAlterar
            // 
            this.btnAlterar.Font = new System.Drawing.Font("Microsoft Uighur", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAlterar.Image = global::RestauranteApplication.Properties.Resources.check;
            this.btnAlterar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAlterar.Location = new System.Drawing.Point(273, 136);
            this.btnAlterar.Name = "btnAlterar";
            this.btnAlterar.Size = new System.Drawing.Size(167, 54);
            this.btnAlterar.TabIndex = 13;
            this.btnAlterar.Text = "Alterar";
            this.btnAlterar.UseVisualStyleBackColor = true;
            // 
            // btnSalvar
            // 
            this.btnSalvar.Font = new System.Drawing.Font("Microsoft Uighur", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSalvar.Image = global::RestauranteApplication.Properties.Resources.floppy_disk;
            this.btnSalvar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSalvar.Location = new System.Drawing.Point(73, 205);
            this.btnSalvar.Name = "btnSalvar";
            this.btnSalvar.Size = new System.Drawing.Size(167, 54);
            this.btnSalvar.TabIndex = 12;
            this.btnSalvar.Text = "Salvar";
            this.btnSalvar.UseVisualStyleBackColor = true;
            // 
            // btnCadastrar
            // 
            this.btnCadastrar.Font = new System.Drawing.Font("Microsoft Uighur", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCadastrar.Image = global::RestauranteApplication.Properties.Resources.more__1_;
            this.btnCadastrar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCadastrar.Location = new System.Drawing.Point(73, 136);
            this.btnCadastrar.Name = "btnCadastrar";
            this.btnCadastrar.Size = new System.Drawing.Size(167, 54);
            this.btnCadastrar.TabIndex = 10;
            this.btnCadastrar.Text = "Cadastrar";
            this.btnCadastrar.UseVisualStyleBackColor = true;
            this.btnCadastrar.Click += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // frmCliente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(628, 287);
            this.Controls.Add(this.btnAlterar);
            this.Controls.Add(this.btnSalvar);
            this.Controls.Add(this.btnExcluir);
            this.Controls.Add(this.btnCadastrar);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Lb3);
            this.Controls.Add(this.txtBNome);
            this.Controls.Add(this.txtBCpf);
            this.Controls.Add(this.txtIdade);
            this.Controls.Add(this.txtEnde);
            this.Controls.Add(this.Lb2);
            this.Controls.Add(this.Lb1);
            this.Name = "frmCliente";
            this.Text = "Registro de Clientes";
            this.Load += new System.EventHandler(this.frmCliente_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Lb1;
        private System.Windows.Forms.Label Lb2;
        private System.Windows.Forms.TextBox txtEnde;
        private System.Windows.Forms.TextBox txtIdade;
        private System.Windows.Forms.TextBox txtBCpf;
        private System.Windows.Forms.TextBox txtBNome;
        private System.Windows.Forms.Label Lb3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnCadastrar;
        private System.Windows.Forms.Button btnExcluir;
        private System.Windows.Forms.Button btnSalvar;
        private System.Windows.Forms.Button btnAlterar;
    }
}

