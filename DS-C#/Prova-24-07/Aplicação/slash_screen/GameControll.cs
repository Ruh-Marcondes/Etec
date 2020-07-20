using dbGame;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Validation;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace slash_screen
{
   public enum OPERACAO
    {
        NOVO,
        EDITAR
    }
    public partial class GameControll : Form
    {
        public  OPERACAO opc;
        public GameControll()
        {
            InitializeComponent();
            carregarDados();
            
        }

        private void travarObj(Panel pn)
        {
            foreach (Control x in pn.Controls)
            {
                if (x is TextBox)
                {
                    TextBox tx = (TextBox)x;
                    tx.Enabled = false;
                }
                if (x is Button)
                {
                    Button btn = (Button)x;
                    btn.Enabled = false;
                }
            }
        }

        private void destravarObj(Panel pn)
        {
           foreach(Control x in pn.Controls)
            {
                if (x is TextBox)
                {
                    TextBox tx = (TextBox)x;
                    tx.Enabled = true;
                }
                if (x is Button)
                {
                    Button btn = (Button)x;
                    btn.Enabled = true;
                }
            }
          
        }

        private void carregarDados()
        {
            DataGrid.DataSource = null;
            var db = new gamebdEntities();
            var listagames = (from games in db.jogos select games).ToList();
            DataGrid.DataSource = listagames;
        }

        #region tres btn q vem por padrão mas eu quis programar
        private void btn_Close_Click(object sender, EventArgs e)
        {   
            Application.Exit();
        }

        private void btn_Close_MouseEnter(object sender, EventArgs e)
        {
            PictureEnter(btn_Close);
        }

        private void btn_Close_MouseLeave(object sender, EventArgs e)
        {
            PictureLeave(btn_Close);
        }

        private void btn_Maximaze_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Maximized;
            btn_Maximaze.Visible = false;
            btn_normalize.Visible = true;
           
        }

        private void btn_Maximaze_MouseEnter(object sender, EventArgs e)
        {
            PictureEnter(btn_Maximaze);
        }

        private void btn_Maximaze_MouseLeave(object sender, EventArgs e)
        {
            PictureLeave(btn_Maximaze);
        }

        private void BTN_minimaze_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void BTN_minimaze_MouseEnter(object sender, EventArgs e)
        {
            PictureEnter(BTN_minimaze);
        }

        private void BTN_minimaze_MouseLeave(object sender, EventArgs e)
        {
            PictureLeave(BTN_minimaze);
        }

        private void btn_normalize_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Normal;
            btn_normalize.Visible = false;
            btn_Maximaze.Visible = true;
        }
        private void btn_normalize_MouseEnter(object sender, EventArgs e)
        {
            PictureEnter(btn_normalize);
        }
        private void btn_normalize_MouseLeave(object sender, EventArgs e)
        {
            PictureLeave(btn_normalize);
        }

        public void PictureEnter(PictureBox pb)
        {
            pb.BackColor = Color.FromArgb(191, 167, 163);
        }

        public void PictureLeave(PictureBox pb)
        {
            pb.BackColor = Color.FromArgb(213, 192, 195);
        }

        #endregion

        #region Menu

        private void panel_Novo_Registro_MouseEnter(object sender, EventArgs e)
        {
            ChangeColorEnter(panel_Novo_Registro);
        }

        private void panel_Novo_Registro_MouseLeave(object sender, EventArgs e)
        {
            ChangeColorLeave(panel_Novo_Registro);
        }

        private void panel2_MouseEnter(object sender, EventArgs e)
        {
            ChangeColorEnter(Panel_Editarregistro);
        }

        private void panel2_MouseLeave(object sender, EventArgs e)
        {
            ChangeColorLeave(Panel_Editarregistro);
        }
        
        public void ChangeColorEnter(Panel pl)
        {
            pl.BackColor = Color.FromArgb(137,084,116);
        }
        public void ChangeColorLeave(Panel pl)
        {
            pl.BackColor = Color.FromArgb(213,192,195);
        }
        #endregion

        #region btns
        private void btn_Salvar_MouseEnter(object sender, EventArgs e)
        {
            changeColorBTNEnter(btn_Salvar);
        }

        private void btn_Salvar_MouseLeave(object sender, EventArgs e)
        {
            changeColorBTNLeave(btn_Salvar);
        }
        public void changeColorBTNLeave(Button btns)
        {
            btns.BackColor = Color.FromArgb(137, 084, 116);
            btns.ForeColor = Color.FromArgb(213, 192, 195);
        }
        public void changeColorBTNEnter(Button btns)
        {
            btns.BackColor = Color.FromArgb(213,192,195);
            btns.ForeColor = Color.FromArgb(137,084,116);
        }

        private void btn_Cancelar_MouseEnter(object sender, EventArgs e)
        {
            changeColorBTNEnter(btn_Cancelar);
        }

        private void btn_Cancelar_MouseLeave(object sender, EventArgs e)
        {
            changeColorBTNLeave(btn_Cancelar);
        }
        #endregion

        private void btn_Salvar_Click(object sender, EventArgs e)
        {
            //Verificar se TXT tem conteudo
            foreach (Control x in Panelobj.Controls)
            {
                if (x is TextBox)
                {
                    TextBox tx = (TextBox)x;

                    bool isNull = String.IsNullOrEmpty(tx.Text);
                    if (isNull)
                    {
                        MessageBox.Show("Preencha todos os campos");
                       return;
                    }
                    
                }
            }

            var db = new gamebdEntities();
            jogos objJogo = new jogos();
            if (this.opc == OPERACAO.NOVO)
            {
                //MessageBox.Show("Novo Registro");
                objJogo = db.jogos.Create();
            }
            else
            {
                // MessageBox.Show("Editar Registro");
                if (String.IsNullOrEmpty(lb_Cod.Text))
                {
                    MessageBox.Show("De um duplo click em qual registro deseja Editar ou Click em NOVO REGISTRO para criar um novo Registro");
                    return;
                }
                objJogo = db.jogos.Find(int.Parse(lb_Cod.Text));
            }

            objJogo.Nome = TXT_jogo.Text;
            objJogo.Plataforms = txt_Plataforms.Text;
            objJogo.Generos = txt_Genero.Text;
            objJogo.ClassificacaoIndicativa = txt_Indica.Text;
            objJogo.Modes = txt_Modes.Text;

            if (this.opc == OPERACAO.NOVO){
                db.jogos.Add(objJogo);
            }else{
                db.Entry(objJogo).CurrentValues.SetValues(objJogo); 
            }

            try
            {
                db.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                foreach (var entityValidationErrors in ex.EntityValidationErrors)
                {
                    foreach (var validationError in entityValidationErrors.ValidationErrors)
                    {
                        Console.Write("Property: " + validationError.PropertyName + " Error: " + validationError.ErrorMessage);
                    }
                }
            }
            MotrarMSSalvo();
            Limpar_Texts();
            carregarDados();
            travarObj(Panelobj); 
        }

        public void MotrarMSSalvo()
        {
            Picture_Check.Visible = true;
            Label_Alerta.Visible = true;
            travarObj(Panelobj);
        }
        private void NotVisibleMore()
        {
            Picture_Check.Visible = false;
            Label_Alerta.Visible = false;
        }

        private void label1_Click(object sender, EventArgs e)
        {
            NovoRegistro();
        }
        public void NovoRegistro()
        {
            NotVisibleMore();
            this.opc = OPERACAO.NOVO;
            Limpar_Texts();
            lb_Cod.Text = "";
            destravarObj(Panelobj);
        }

        private void panel_Novo_Registro_Click(object sender, EventArgs e)
        {
            NovoRegistro();
        }

        private void Panel_Editarregistro_Click(object sender, EventArgs e)
        {
           EditarRegistro();
        }

        private void EditarRegistro()
        {
            NotVisibleMore();
            this.opc = OPERACAO.EDITAR;
            destravarObj(Panelobj);
        }

        private void label2_Click(object sender, EventArgs e)
        {
            EditarRegistro();
        }

        private void btn_Cancelar_Click(object sender, EventArgs e)
        {
            
            Limpar_Texts();
            travarObj(Panelobj);
        }

        private void Limpar_Texts()
        {
            foreach (Control x in Panelobj.Controls)
            {
                if (x is TextBox)
                {
                    TextBox tx = (TextBox)x;
                    tx.Text = "";
                }
                
            }
        }

        private void DataGrid_DoubleClick(object sender, EventArgs e)
        {
            NotVisibleMore();
            int linha;
            linha = DataGrid.CurrentRow.Index;
            lb_Cod.Text = DataGrid[0, linha].Value.ToString();
            TXT_jogo.Text = DataGrid[1, linha].Value.ToString();
            txt_Modes.Text = DataGrid[4, linha].Value.ToString();
            txt_Plataforms.Text = DataGrid[2, linha].Value.ToString();
            txt_Indica.Text = DataGrid[3, linha].Value.ToString();
            txt_Genero.Text = DataGrid[5, linha].Value.ToString();
        }
    }
}