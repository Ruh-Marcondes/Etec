namespace RestauranteApplication.Viewn
{
    partial class frmMesas
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
            this.Descricao = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.VagoBntRadio = new System.Windows.Forms.RadioButton();
            this.novagaBtnRadio = new System.Windows.Forms.RadioButton();
            this.btncadastrar = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.desc = new System.Windows.Forms.TextBox();
            this.reservarBtnRadio = new System.Windows.Forms.RadioButton();
            this.button3 = new System.Windows.Forms.Button();
            this.btnAlterar = new System.Windows.Forms.Button();
            this.Num = new System.Windows.Forms.Label();
            this.boxNumero = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // Descricao
            // 
            this.Descricao.AutoSize = true;
            this.Descricao.Font = new System.Drawing.Font("Microsoft Uighur", 20.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Descricao.Location = new System.Drawing.Point(81, 59);
            this.Descricao.Name = "Descricao";
            this.Descricao.Size = new System.Drawing.Size(89, 36);
            this.Descricao.TabIndex = 0;
            this.Descricao.Text = "Descrição";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Uighur", 20.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(364, 59);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 36);
            this.label2.TabIndex = 1;
            this.label2.Text = "Status";
            // 
            // VagoBntRadio
            // 
            this.VagoBntRadio.AutoSize = true;
            this.VagoBntRadio.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.VagoBntRadio.Checked = true;
            this.VagoBntRadio.Font = new System.Drawing.Font("Microsoft Tai Le", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.VagoBntRadio.Location = new System.Drawing.Point(431, 68);
            this.VagoBntRadio.Name = "VagoBntRadio";
            this.VagoBntRadio.Size = new System.Drawing.Size(63, 25);
            this.VagoBntRadio.TabIndex = 2;
            this.VagoBntRadio.TabStop = true;
            this.VagoBntRadio.Text = "Vaga";
            this.VagoBntRadio.UseVisualStyleBackColor = true;
            // 
            // novagaBtnRadio
            // 
            this.novagaBtnRadio.AutoSize = true;
            this.novagaBtnRadio.Font = new System.Drawing.Font("Microsoft Tai Le", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.novagaBtnRadio.Location = new System.Drawing.Point(431, 91);
            this.novagaBtnRadio.Name = "novagaBtnRadio";
            this.novagaBtnRadio.Size = new System.Drawing.Size(90, 25);
            this.novagaBtnRadio.TabIndex = 3;
            this.novagaBtnRadio.Text = "Ocupada";
            this.novagaBtnRadio.UseVisualStyleBackColor = true;
            // 
            // btncadastrar
            // 
            this.btncadastrar.Location = new System.Drawing.Point(87, 166);
            this.btncadastrar.Name = "btncadastrar";
            this.btncadastrar.Size = new System.Drawing.Size(124, 52);
            this.btncadastrar.TabIndex = 4;
            this.btncadastrar.Text = "Cadastrar";
            this.btncadastrar.UseVisualStyleBackColor = true;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(217, 166);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(124, 52);
            this.btnCancelar.TabIndex = 5;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            // 
            // desc
            // 
            this.desc.Location = new System.Drawing.Point(176, 52);
            this.desc.Multiline = true;
            this.desc.Name = "desc";
            this.desc.Size = new System.Drawing.Size(154, 43);
            this.desc.TabIndex = 6;
            // 
            // reservarBtnRadio
            // 
            this.reservarBtnRadio.AutoSize = true;
            this.reservarBtnRadio.Font = new System.Drawing.Font("Microsoft Tai Le", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.reservarBtnRadio.Location = new System.Drawing.Point(431, 114);
            this.reservarBtnRadio.Name = "reservarBtnRadio";
            this.reservarBtnRadio.Size = new System.Drawing.Size(89, 25);
            this.reservarBtnRadio.TabIndex = 7;
            this.reservarBtnRadio.TabStop = true;
            this.reservarBtnRadio.Text = "Reservar";
            this.reservarBtnRadio.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(347, 166);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(124, 52);
            this.button3.TabIndex = 8;
            this.button3.Text = "Excluir";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // btnAlterar
            // 
            this.btnAlterar.Location = new System.Drawing.Point(477, 166);
            this.btnAlterar.Name = "btnAlterar";
            this.btnAlterar.Size = new System.Drawing.Size(124, 52);
            this.btnAlterar.TabIndex = 9;
            this.btnAlterar.Text = "Alterar";
            this.btnAlterar.UseVisualStyleBackColor = true;
            // 
            // Num
            // 
            this.Num.AutoSize = true;
            this.Num.Font = new System.Drawing.Font("Microsoft Tai Le", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Num.Location = new System.Drawing.Point(83, 118);
            this.Num.Name = "Num";
            this.Num.Size = new System.Drawing.Size(68, 21);
            this.Num.TabIndex = 10;
            this.Num.Text = "Número";
            // 
            // boxNumero
            // 
            this.boxNumero.Location = new System.Drawing.Point(176, 118);
            this.boxNumero.Name = "boxNumero";
            this.boxNumero.Size = new System.Drawing.Size(100, 20);
            this.boxNumero.TabIndex = 11;
            // 
            // frmMesas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(680, 298);
            this.Controls.Add(this.boxNumero);
            this.Controls.Add(this.Num);
            this.Controls.Add(this.btnAlterar);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.reservarBtnRadio);
            this.Controls.Add(this.desc);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btncadastrar);
            this.Controls.Add(this.novagaBtnRadio);
            this.Controls.Add(this.VagoBntRadio);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.Descricao);
            this.Name = "frmMesas";
            this.Text = "Registro das Mesasa";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Descricao;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.RadioButton VagoBntRadio;
        private System.Windows.Forms.RadioButton novagaBtnRadio;
        private System.Windows.Forms.Button btncadastrar;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.TextBox desc;
        private System.Windows.Forms.RadioButton reservarBtnRadio;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button btnAlterar;
        private System.Windows.Forms.Label Num;
        private System.Windows.Forms.TextBox boxNumero;
    }
}