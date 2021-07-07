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
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            lblExisteUsr.Visible = false;
            lblExito.Visible = false;

            NegocioUsuario Usr = new NegocioUsuario();

            if (Usr.BuscarUsuarioporUsrName(txbUsuario.Text))
            {
                lblExisteUsr.Visible = true;
            }

            else
            {
                if (Usr.AgregarUsuario(txbNombre.Text, txbApellido.Text, txbEmail.Text, txbUsuario.Text, txbContra.Text, Convert.ToInt32(txbDni.Text)))
                {
                    
                    lblExito.Visible = true;
                    
                }

            }

        }





    }
}