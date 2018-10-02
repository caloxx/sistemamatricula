using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sistemamatricula
{
    public partial class RegistroCarreras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtNombreCarrera_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RegistarNuevaCarrera_Click(object sender, EventArgs e)
        {
            ConexionLogin pr = new ConexionLogin();
            string nombre,codigo;

            nombre = txtNombreCarrera.Text;
            codigo = txtCodCarrera.Text ;

            pr.insertarcarrera(nombre, codigo);



            Response.Write("<script>window.alert('Solicitud agregada')</script>");
        }
    }
}