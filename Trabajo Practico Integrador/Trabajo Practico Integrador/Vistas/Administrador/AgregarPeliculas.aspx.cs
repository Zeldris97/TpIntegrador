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
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnAceptar_Click(System.Object sender, System.EventArgs e)
        {
            NegocioPelicula np = new NegocioPelicula();

            bool agr;

            agr = np.AgregarPelicula(Convert.ToString(txtPelNom.Text),Convert.ToString (txtSinopsis.Text),Convert.ToInt32( ddlGenero.SelectedValue) ,Convert.ToInt32 (ddlCategoria.SelectedValue) , Convert.ToInt64(txtAnio.Text), Convert.ToString("~/ImagenesPeliculas/"+FU1.PostedFile.FileName));


            if (agr)
            {

                // FU1.SaveAs(Server.MapPath("~/ImagenesPeliculas/" + FU1.PostedFile.FileName));
                lblAgregado.Text = "La pelicula se agrego con exito";
                Response.Write("Se agrego la pelicula");

            }

            else 
            {
                lblAgregado.Text = "La pelicula ya existe";
                Response.Write("La pelicula ya existe");
            }
            LimpiarCampos();
        }

        public void LimpiarCampos()
        {
            txtPelNom.Text = "";
            txtAnio.Text = "";
            txtSinopsis.Text = "";
        }
    }
}