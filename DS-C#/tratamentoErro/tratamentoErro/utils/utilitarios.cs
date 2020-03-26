using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace tratamentoErro.utils
{
    public class utilitarios
    {
        public static void limpartextos()
        {
            foreach(Control obj in controles) //javei ~ Maromo, 2020
                {
                if (obj is TextBox)
                {
                    TextBox caixa = (TextBox)obj;
                    caixa.Text = "";
                }
            }
        }

    }
}

