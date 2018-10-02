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
    public partial class Rmatricula : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                cargardrops();

            }
        }

        private void cargardrops()/*llenar el drow, con una columna de la BD*/
        {
            //cuatrimestres
            cuatri.DataSource = llenar("select cuatrimestre from periodos");
            cuatri.DataTextField = "cuatrimestre";
            cuatri.DataBind();
            cuatri.Items.Insert(0, new ListItem("Seleccione el cuatrimestre", "2"));

            //planes de estudio
            //PlanEstud.DataSource = llenar("select id_Plan from Plan_de_estudio inner join Carreras on Plan_de_estudio.Id_Plan = Carreras.cod_carrera where '"+ carrera +"' = nombre_carrera ");

            //periodos
           // perido.DataSource = llenar("select cuatrimestre from periodos");

            //años
            año.DataSource = llenar("select año from periodos");
            año.DataTextField = "año";   
            año.DataBind();
            año.Items.Insert(0, new ListItem("Seleccione el año", "1"));

            //carreras
            carrera.DataSource = llenar("select nombre_carrera from Carreras");
            carrera.DataTextField = "nombre_carrera";
            carrera.DataBind();
            carrera.Items.Insert(0, new ListItem("Seleccione el año", "1"));
        }

        public DataSet llenar(string strsql)
        {

            string cadena = "Data Source=DESKTOP-18F0TLR;Initial Catalog=Matricula;Integrated Security=True";
            SqlConnection cnn = new SqlConnection(cadena);
            cnn.Open();
            SqlCommand cmd = new SqlCommand(strsql, cnn);
            SqlDataAdapter dt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dt.Fill(ds);
            cnn.Close();

            return ds;

        }

        protected void btnrmatricula_Click(object sender, EventArgs e)
        {

        }
    }
}