using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Windonscarros.Dao
{
    public class DbConnect
    {
        //String de conexão com o banco
        private String conn =
           @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Aluno\Documents\GitHub\DS---ETEC\Trabalhando com BD\Windonscarros\Windonscarros\Concessionaria.mdf;Integrated Security=True";

        //Objeto de conexão
        private static SqlConnection objConexao = null;
        //Construtor
        public DbConnect()
        {
            objConexao = new SqlConnection();
            objConexao.ConnectionString = conn;
            objConexao.Open();
        }
        //Método estático que estabelece a conexao com o banco
        public static SqlConnection getConexao()
        {
            if (objConexao == null)
            {
                new DbConnect();
            }
            return objConexao;
        }
        //Método estático que fecha a conexao com o banco
        public static void fecharConexao()
        {
            objConexao.Close();
        }
    }
}
