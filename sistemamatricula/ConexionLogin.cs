using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace sistemamatricula
{
    public class ConexionLogin
    {

        int roll_estudiante = 3;
        int roll_profesor = 2;
        public bool inserDatos(string cedula, string nombre, string fecha, string correo, string telefono, string direc, string pContraseña)
        {
            StringConexion cn = new StringConexion();
            try
            {
                string sql = "insert into Registro_Estudiantes values('" + cedula + "','" + nombre + "','" + fecha + "','" + correo  + "','" + telefono  + "','" + direc  + "','" + pContraseña  + "','" + roll_estudiante + "');";
                SqlCommand cmd = new SqlCommand(sql, cn.getconexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;/*para ver las filas afectadas y asi saber si se inserta o hubo un error a la hora de insertar*/
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool insertarprofe(string cedulap, string nombrep,  string telefonop,string especialidadp,string nombrecarrerap,string pContraseñap)
        {
            StringConexion cn = new StringConexion();
            try
            {
                string sql = "insert into Profesor values('" + cedulap + "','" + nombrep + "','" + telefonop + "','" + especialidadp + "','" + nombrecarrerap + "','" + pContraseñap + "','" + roll_profesor + "');";
                SqlCommand cmd = new SqlCommand(sql, cn.getconexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;/*para ver las filas afectadas y asi saber si se inserta o hubo un error a la hora de insertar*/
            }
            catch (Exception)
            {

                return false;
            }
        }


        public bool insertarperiodo(string año, string cuatri, string   monto)
        {
            int monto1 = int.Parse(monto);
            StringConexion cn = new StringConexion();
            try
            {
                string sql = "insert into periodos values('" + año + "','" + cuatri  + "','" + monto1  + "');";
                SqlCommand cmd = new SqlCommand(sql, cn.getconexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;/*para ver las filas afectadas y asi saber si se inserta o hubo un error a la hora de insertar*/
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool insertarcarrera(string nombre, string codigo)
        {
            
            StringConexion cn = new StringConexion();
            try
            {
                string sql = "insert into periodos values('" + nombre  + "','" + codigo + "');";
                SqlCommand cmd = new SqlCommand(sql, cn.getconexion());
                int n = cmd.ExecuteNonQuery();
                return n > 0;/*para ver las filas afectadas y asi saber si se inserta o hubo un error a la hora de insertar*/
            }
            catch (Exception)
            {

                return false;
            }
        }

        public static int AutentificarEstud(String pUsuarios, String contraseña,int roll)
        {
            int resultado = -1;
            StringConexion cn = new StringConexion();
            SqlConnection conexion = cn.getconexion();

            SqlCommand comando = new SqlCommand("Select * From Registro_Estudiantes Where Cedula = '" + pUsuarios + "' and contraseña = '" + contraseña + "' and roll = '" + roll + "'", conexion);

            SqlDataReader reader = comando.ExecuteReader();

            while (reader.Read())
            {
                resultado = 50;
            }

            conexion.Close();
            return resultado;
        }

        public static int AutentificarProfe(String pUsuarios, String contraseña, int roll)
        {
            int resultado = -1;
            StringConexion cn = new StringConexion();
            SqlConnection conexion = cn.getconexion();

            SqlCommand comando = new SqlCommand("Select * From Profesor Where Cedula = '" + pUsuarios + "' and contraseña = '" + contraseña + "' and id_rol = '" + roll + "'", conexion);

            SqlDataReader reader = comando.ExecuteReader();

            while (reader.Read())
            {
                resultado = 50;
            }

            conexion.Close();
            return resultado;
        }

       /* public static int AutentificarAdmi(String pUsuarios, String contraseña, int roll)
        {
            int resultado = -1;
            StringConexion cn = new StringConexion();
            SqlConnection conexion = cn.getconexion();

            SqlCommand comando = new SqlCommand("Select * From Registro_Estudiantes Where Cedula = '" + pUsuarios + "' and contraseña = '" + contraseña + "' and roll = '" + roll + "'", conexion);

            SqlDataReader reader = comando.ExecuteReader();

            while (reader.Read())
            {
                resultado = 50;
            }

            conexion.Close();
            return resultado;
        }*/


    }
}