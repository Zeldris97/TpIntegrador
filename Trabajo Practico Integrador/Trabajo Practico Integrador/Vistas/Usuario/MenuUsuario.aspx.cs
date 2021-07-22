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
            string user;
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            user = (String)Application["DataUsuario"];
            lblBienvenido.Text = "Bienvenido, " + user + "";

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

        protected void btnLinkSesion_Click(object sender, EventArgs e)
        {
            Application.Clear();
            Response.Redirect("Acceso usuario.aspx");
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAceptar4_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPeliculaPorGenero.aspx?Gen=" + ddlGeneros.SelectedValue );
        }
    }
}