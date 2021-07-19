using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;

namespace Vistas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
          
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            lblNoExiste.Visible = false;
            NegocioUsuario Usr = new NegocioUsuario();
            if(Usr.BuscarUsuario(txbUsuario.Text, txbContra.Text))
            {
               
                Application["DataUsuario"] = txbUsuario.Text;
                Session["IdUsuario"] = Usr.DevolverIdUsuario(txbUsuario.Text);
                Response.Redirect("~/Usuario/MenuUsuario.aspx");


              
            }
            else
            {
                lblNoExiste.Visible = true;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistroUsuario.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccesoAdministrador.aspx");
        }
    }
}