using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class EliminarPelicula : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

       

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            NegocioPelicula dr = new NegocioPelicula();



            bool eli; 

           eli= dr.eliminarPelicula(Convert.ToInt32(txtIdSucursal.Text));

            if (eli)
            {
                Response.Write("Pelicula eliminada");

            }

            else
            {
                Response.Write("No se encuentra la pelicula");
            }

        }
    }
}