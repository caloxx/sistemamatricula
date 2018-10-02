using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace sistemamatricula
{
    public class StringConexion
    {
       
        public SqlConnection getconexion()
        {
            try
            {
                string cadena = "Data Source=CARLOS\\SQLEXPRESS02;Initial Catalog=Matricula;Integrated Security=True";
                SqlConnection cnn = new SqlConnection(cadena);
                cnn.Open();
                return cnn;


            }
            catch (Exception)
            {

                return null;
            }
        }
    }

    
}