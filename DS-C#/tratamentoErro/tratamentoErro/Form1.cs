using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace tratamentoErro
{
    public partial class Form1 : Form
    {
        public void exibirErro(String menssagem)
        {
            MessageBox.Show(null, "Erro: " + menssagem,
                "Atenção",
                MessageBoxButtons.OK,
                MessageBoxIcon.Error);
        }
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                int a, b, soma;
                a = int.Parse(textvalor1.Text);
                b = int.Parse(txtValor2.Text);
                soma = a + b;
                txtResultado.Text = soma.ToString();
            }
            catch (Exception erro)
            {
                exibirErro(erro.Message.ToString());
            }

        }

        private void tef(object sender, EventArgs e) // algum label acho q o 1º

        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            try
            {
                int a, b, soma;
                a = int.Parse(textvalor1.Text);
                b = int.Parse(txtValor2.Text);
                soma = a + b;
                txtResultado.Text = soma.ToString();
               
            }
            catch (Exception erro)
            {
                exibirErro(erro.Message.ToString());
            }

        }
    

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textvalor1_TextChanged(object sender, EventArgs e)
        {

        }

        private void btndiferenca_Click(object sender, EventArgs e)
        {
            try
            {
                int a, b, subt;
                a = int.Parse(textvalor1.Text);
                b = int.Parse(txtValor2.Text);
                subt = a - b;
                txtResultado.Text = subt.ToString();
                
            }
            catch (Exception erro)
            {
                exibirErro(erro.Message.ToString());
            }

        }

        private void btnMult_Click(object sender, EventArgs e)
        {
            try
            {
                int a, b, multi;
                a = int.Parse(textvalor1.Text);
                b = int.Parse(txtValor2.Text);
                multi = a * b;
                txtResultado.Text = multi.ToString();
               
            }
            catch (Exception erro)
            {
                exibirErro(erro.Message.ToString());
            }

        }

        private void btnDiv_Click(object sender, EventArgs e)
        {
            try
            {
                int a, b, div;
                a = int.Parse(textvalor1.Text);
                b = int.Parse(txtValor2.Text);
                div = a / b;
                txtResultado.Text = div.ToString();
              
            }
            catch (Exception erro)
            {
                exibirErro(erro.Message.ToString());
            }

        }

        private void button5_Click(object sender, EventArgs e)
        {
            try
            {
                int a, b, resto;
                a = int.Parse(textvalor1.Text);
                b = int.Parse(txtValor2.Text);
                resto = a % b;
                txtResultado.Text = resto.ToString();
            }
            catch (Exception erro)
            {
                exibirErro(erro.Message.ToString());
            }

        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            utils.utilitarios.limpartextos(this.Controls);
        }
    }
    }
    
