using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.Usuario
{
    public partial class VerDespues : System.Web.UI.Page
    {
        NegocioVerDespues Vd = new NegocioVerDespues();
        protected void Page_Load(object sender, EventArgs e)
        {
            //NegocioVerDespues Vd = new NegocioVerDespues();
            if (IsPostBack == false)
            {

                cargarTabla();

            }
        }

        public void cargarTabla()
        {
            int user;
            user = (int)Session["idUsuario"];
            grvLista.DataSource = Vd.MostrarVerDespues(user);
            grvLista.DataBind();

        }

        protected void grvLista_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
        protected void grvLista_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            int user;
            NegocioVerDespues vd = new NegocioVerDespues();
            string s_IdPelicula = ((Label)grvLista.Rows[e.RowIndex].FindControl("lblID")).Text;
            user = (int)Session["idUsuario"];
            vd.eliminarDeLista(user, Convert.ToInt32(s_IdPelicula));
            cargarTabla();


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Usuario/MenuUsuario.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Application.Clear();
            Response.Redirect("Acceso usuario.aspx");
        }
    }
}