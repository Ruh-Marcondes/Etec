using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Windonscarros.Model
{
    public class Carro
    {
        //Definir as propriedades automaticas
        public int IdCarro { get; set; }
        public String Modelo { get; set; }
        public String Marca { get; set; }
        public int Ano { get; set; }
        public double Preco { get; set; }
    }
}
