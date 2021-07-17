using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}