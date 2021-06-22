using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Negocio;
using Entidades;

namespace Vistas.Administrador
{
   
    public partial class AccesoAdministrador : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnAceptar_Click(object sender, EventArgs e)
        {
            NegocioUsuario dr = new NegocioUsuario();
            bool ex;
            ex = dr.BuscarUsuario(Convert.ToString(txtUsuario), Convert.ToString(txtContraseña));


            if (ex)
            {
                Response.Redirect("MenuAdministrador.aspx");

            }

            else
            {
                Response.Write("El administrador no existe");

            }

            LimpiarCampos();
        }

            public void LimpiarCampos()
            {
                txtUsuario.Text = "";
                txtContraseña.Text = "";


            }

        }
    }
}