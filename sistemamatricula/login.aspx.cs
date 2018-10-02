using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sistemamatricula
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     int roll1 = 1;
     int roll2 = 2;
     int roll3 = 3;

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (ConexionLogin.AutentificarEstud (txtUsuario.Text,txtContrasena.Text,roll3) > 0)
            {
                    Response.Redirect("RegistroEstud.aspx");
                
            }
            else if (ConexionLogin.AutentificarProfe (txtUsuario.Text, txtContrasena.Text, roll2) > 0)
            {
                Response.Redirect("registroprofe.aspx");

            }
           /* else if (ConexionLogin.Autentificar(txtUsuario.Text, txtContrasena.Text, roll3) > 0)
            {
                Response.Redirect("Periodos.aspx");

            }*/
            else
            {
                Response.Write("<script>window.alert('Los datos no son validos')</script>");
            }

        }

    
    }
}