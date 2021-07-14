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
            Usr = (Entidades.Usuario)Session["DataUsuario"];
            lblBienvenido.Text = "Bienvenido, " + Usr.getNombre() + "";
        }

        protected void btnLinkAccion_Click(object sender, EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorGenero.aspx?Gen=Accion");
        }

        protected void btnLinkAventura_Click(object sender, EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorGenero.aspx?Gen=Aventura");
        }

        protected void LinkButtonComedia_Click(object sender, EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorGenero.aspx?Gen=Comedia");
        }

        protected void btnLinkDrama_Click(object sender, EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorGenero.aspx?Gen=Drama");
        }

        protected void btnLinkTerror_Click(object sender, EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorGenero.aspx?Gen=Terror");
        }

        protected void btnLinkMusical_Click(object sender, EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorGenero.aspx?Gen=Musical");
        }

        protected void btnLinkSuspenso_Click(object sender, EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorGenero.aspx?Gen=Suspenso");
        }

        protected void btnLinkCienciaFiccion_Click(object sender, EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorGenero.aspx?Gen=Ciencia Ficción");
        }

        protected void btnLinkBelica_Click(object sender, EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorGenero.aspx?Gen=Bélica");
        }

        protected void btnLinkWestern_Click(object sender, EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorGenero.aspx?Gen=Western");
        }

        protected System.Void btnAceptar1_Click(System.Object sender, System.EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorNombre.aspx?Nom=" + txtNombre.Text);
        }

        protected System.Void btnAceptar2_Click(System.Object sender, System.EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorCategoria.aspx?Cat=" + ddlCategorias.Text);
        }

        protected System.Void btnAceptar3_Click(System.Object sender, System.EventArgs e)
        {
            Response.redirect("MostrarPeliculaPorAño.aspx?Anio=" + ddlAños.Text);
        }

        protected System.Void btnLinkPeliculas_Click(System.Object sender, System.EventArgs e)
        {
            Response.Redirect("ListarPeliculas.aspx");
        }
    }
}