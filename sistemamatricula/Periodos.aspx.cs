using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sistemamatricula
{
    public partial class Periodos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IngresarPeríodo_Click(object sender, EventArgs e)
        {
            ConexionLogin pr = new ConexionLogin();
            string año,cuatri,monto;
           
            año  = perido .SelectedItem.Value;
            cuatri  = DropDownList1 .SelectedItem.Value;
            monto = Monto.Text;

            pr.insertarperiodo (año, cuatri, monto);



            Response.Write("<script>window.alert('Solicitud agregada')</script>");
        }
    }
}