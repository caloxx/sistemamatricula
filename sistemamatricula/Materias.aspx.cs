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
    public partial class Materias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargaCarreras();
                
            }
            if (!IsPostBack)
            {
                cargaProfesores();
            }
        }

        private void cargaCarreras()/*llenar el drow con una columna*/
        {
            Carrera.DataSource = llenar("select cod_carrera, nombre_carrera from Carreras");
            Carrera.DataTextField = "nombre_carrera";
            Carrera.DataValueField = "cod_carrera";
            Carrera.DataBind();
            Carrera.Items.Insert(0, new ListItem("Seleccione", "0"));

        }

        private void cargaProfesores()/*llenar el drow con una columna*/
        {
            ProfesorCarrera.DataSource = llenar("SELECT ID_Profesor, Nombre From Profesor");
            ProfesorCarrera.DataTextField = "Nombre";
            ProfesorCarrera.DataValueField = "ID_Profesor";
            ProfesorCarrera.DataBind();
            ProfesorCarrera.Items.Insert(0, new ListItem("Seleccione", "0"));

        }

        public DataSet llenar(string strsql)
        {

            string cadena = "Data Source=KIMBERLY-PC;Initial Catalog=Matricula;Integrated Security=True";
            SqlConnection cnn = new SqlConnection(cadena);
            cnn.Open();
            SqlCommand cmd = new SqlCommand(strsql, cnn);
            SqlDataAdapter dt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dt.Fill(ds);
            cnn.Close();

            return ds;

        }

        protected void IngresarMateria_Click(object sender, EventArgs e)
        {
            ConexionLogin pr = new ConexionLogin();
            string Codigo, nombre, NombCarrera;
            int Requisit, Campo, Profesor, Preci;

            Codigo = Cod.Text;
            nombre = NombMateria.Text;
            Requisit = Convert.ToInt32(Requisito.Text);
            Campo = Convert.ToInt32(Campos.Text);
            //Profesor = Int32.Parse(ProfesorCarrera.SelectedValue.ToString());
            Profesor = Convert.ToInt32(ProfesorCarrera.SelectedValue);
            Preci= Convert.ToInt32(Precio.Text);
            NombCarrera = Carrera.SelectedItem.Value;

            pr.insertarMateria(Codigo, nombre, Requisit, Campo, Profesor, Preci, NombCarrera);



            Response.Write("<script>window.alert('Solicitud agregada')</script>");
        }

        protected void ProfesorCarrera_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void IngresarMateria_Click1(object sender, EventArgs e)
        {

        }
    }
}