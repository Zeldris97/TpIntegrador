using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas.Administrador
{
    public partial class AgregarPeliculas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(System.Object sender, System.EventArgs e)
        {
            NegocioPelicula dr = new NegocioPelicula();

            bool agr;

            agr = dr.AgregarPelicula(Convert.ToString(txtPelNom.Text), Convert.ToInt32(ddlGenero.SelectedIndex), Convert.ToInt32(ddlCategoria.SelectedIndex), Convert.ToInt32(txtAño), Convert.ToString(txtSinopsis), Convert.ToString(FU1.FileName));


            if (agr)
            {

                FU1.SaveAs(Server.MapPath("~/ImagenesPeliculas/" + FU1.FileName));

                Response.Write("Se agrego la pelicula");

            }

            else 
            {
                Response.Write("La pelicula ya existe");
            }
            LimpiarCampos();
        }

        public void LimpiarCampos()
        {
            txtPelNom.Text = "";
            txtAño.Text = "";
            txtSinopsis.Text = "";

          

        }
    }
}