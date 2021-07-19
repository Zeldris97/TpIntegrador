using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.Usuario
{
    public partial class MostrarPeliculaPorAño : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLinkMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Usuario/MenuUsuario.aspx");
        }

        protected void btnAgregar_Command(object sender, CommandEventArgs e)
        {
            NegocioVerDespues Vd = new NegocioVerDespues();

            if (e.CommandName == "eventoAgregar")
            {
                int Pel;
                int User;

                Pel = Convert.ToInt32(e.CommandArgument.ToString());

                User = (int)Session["idUsuario"];

                Vd.AgregarALista(User, Pel);


            }
        }
    }
}