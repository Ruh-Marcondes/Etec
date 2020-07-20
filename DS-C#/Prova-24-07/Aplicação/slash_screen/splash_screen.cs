using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace slash_screen
{
    public partial class splash_screen : Form
    {
        public splash_screen()
        {
            InitializeComponent();
        }

        private void Time_Tick(object sender, EventArgs e)
        {
            panel2.Width += 20;
            if (panel2.Width >= panel1.Width)
            {
                Time.Stop();
                GameControll f2 = new GameControll();
                f2.Show();
                this.Hide();
            }
        }
    }
}
