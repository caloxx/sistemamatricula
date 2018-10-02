using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Drawing;
using System.ComponentModel;


namespace sistemamatricula
{
    public partial class registroprofe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargacarreras();
            }


        }


        private void cargacarreras()/*llenar el drow con ua columna*/
        {
            Dropcarrers.DataSource = llenar("select nombre_carrera from Carreras");
            Dropcarrers.DataTextField = "nombre_carrera";
            Dropcarrers.DataBind();
            Dropcarrers.Items.Insert(0, new ListItem("Seleccione", "0"));

        }

        public DataSet llenar(string strsql)
        {

            string cadena = "Data Source=CARLOS\\SQLEXPRESS02;Initial Catalog=Matricula;Integrated Security=True";
            SqlConnection cnn = new SqlConnection(cadena);
            cnn.Open();
            SqlCommand cmd = new SqlCommand(strsql, cnn);
            SqlDataAdapter dt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dt.Fill(ds);
            cnn.Close();

            return ds;

        }


        protected void Registrar_Click(object sender, EventArgs e)
        {
            ConexionLogin pr = new ConexionLogin();
            string Cedula, nombre,telefono1,espe,nombre_carrera, pContraseña;
            Cedula = cedula.Text;
            nombre = Nombre .Text;
            telefono1 = telefono .Text;
            espe = especialidad.Text;
            nombre_carrera = Dropcarrers.SelectedItem.Value;
            pContraseña = contraseña.Text;

            pr.insertarprofe(Cedula, nombre, telefono1, espe, nombre_carrera, pContraseña);



            Response.Write("<script>window.alert('Solicitud agregada')</script>");
        }

        protected void Dropcarrers_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}