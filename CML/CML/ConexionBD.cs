using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CML
{
    internal class ConexionBD
    {
        private static string cadena = "Data Source = .; Initial Catalog = CML; Integrated Security = True";
        public SqlConnection cnn = new SqlConnection(cadena);

        public SqlConnection Abrir()
        {
            if (cnn.State == System.Data.ConnectionState.Closed)
            {
                cnn.Open();
            }
            return cnn;
        }

        public SqlConnection Cerrar()
        {
            if (cnn.State == System.Data.ConnectionState.Open)
            {
                cnn.Close();
            }
            return cnn;
        }
    }
}
