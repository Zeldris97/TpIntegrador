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

        }

        protected void btnLinkAventura_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButtonComedia_Click(object sender, EventArgs e)
        {

        }

        protected void btnLinkDrama_Click(object sender, EventArgs e)
        {

        }

        protected void btnLinkTerror_Click(object sender, EventArgs e)
        {

        }

        protected void btnLinkMusical_Click(object sender, EventArgs e)
        {

        }

        protected void btnLinkSuspenso_Click(object sender, EventArgs e)
        {

        }

        protected void btnLinkCienciaFiccion_Click(object sender, EventArgs e)
        {

        }

        protected void btnLinkBelica_Click(object sender, EventArgs e)
        {

        }

        protected void btnLinkWestern_Click(object sender, EventArgs e)
        {

        }
    }
}