using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace exemploTeclas
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if(e.KeyChar == 'w')
            {
                galinha.Top = galinha.Top - 10;
                return;
            }
            if (e.KeyChar == 'z')
            {
                galinha.Top = galinha.Top + 10;
                return;
            }
            if (e.KeyChar == 'a')
            {
                galinha.Left= galinha.Left - 10;
                return;
            }
            if (e.KeyChar == 's')
            {
                galinha.Left = galinha.Left + 10;
                return;
            }
        }
    }
}
