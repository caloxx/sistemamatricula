using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sistemamatricula
{
    public partial class RegistroEstud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Registrarme_Click(object sender, EventArgs e)
        {

            /*
                  if (ConexionLogin.CrearCuentas(cedula.Text,nomC.Text, fechaini.Text, gmail.Text,celular.Text,direccion.Text,contraseña.Text) > 0)
                  {
                      Response.Write("script>window.alert('El estudiante se agrego correctamente')</script>");
                  }
                  else

              Response.Write("script>window.alert('Error al registrar los datos del estudiante')</script>");*/

            ConexionLogin  pr = new ConexionLogin ();
            string Cedula, nombre, fecha, correo, telefono, direc, pContraseña;
            Cedula = cedula.Text;
            nombre  = nomC.Text;
           fecha = fechaini.Text;
            correo  = gmail.Text;
            telefono  = celular.Text;
            direc = direccion.Text;
            pContraseña = contraseña.Text;

            pr.inserDatos(Cedula, nombre, fecha, correo, telefono, direc, pContraseña);
           


            Response.Write("<script>window.alert('Solicitud agregada')</script>");


        }
    }
}