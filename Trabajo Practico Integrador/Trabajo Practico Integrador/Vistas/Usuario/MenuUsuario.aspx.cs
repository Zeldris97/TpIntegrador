using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;


namespace Vistas
{
    
    public partial class WebForm2 : System.Web.UI.Page
    {
        Entidades.Usuario Usr = new Entidades.Usuario();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
      
        }

        protected void btnLinkAccion_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorGenero.aspx?Gen=Accion");
        }

        protected void btnLinkAventura_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorGenero.aspx?Gen=Aventura");
        }

        protected void LinkButtonComedia_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorGenero.aspx?Gen=Comedia");
        }

        protected void btnLinkDrama_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorGenero.aspx?Gen=Drama");
        }

        protected void btnLinkTerror_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorGenero.aspx?Gen=Terror");
        }

        protected void btnLinkMusical_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorGenero.aspx?Gen=Musical");
        }

        protected void btnLinkSuspenso_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorGenero.aspx?Gen=Suspenso");
        }

        protected void btnLinkCienciaFiccion_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorGenero.aspx?Gen=Ciencia ficcion");
        }

        protected void btnLinkBelica_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorGenero.aspx?Gen=Belica");
        }

        protected void btnLinkWestern_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorGenero.aspx?Gen=Western+");
        }

        protected void btnAceptar1_Click(System.Object sender, System.EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorNombre.aspx?Nom=" + txtNombre.Text);
        }

        protected void btnAceptar2_Click(System.Object sender, System.EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorCategoria.aspx?Cat=" + ddlCategorias.SelectedValue);
        }

        protected void btnAceptar3_Click(System.Object sender, System.EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorAño.aspx?Anio=" + ddlAños.Text);
        }

        protected void btnLinkPeliculas_Click(System.Object sender, System.EventArgs e)
        {
            Response.Redirect("ListarPeliculas.aspx");
        }
    }
}