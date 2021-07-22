using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class MostrarPelicula : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user;

            user = (String)Application["DataUsuario"];
            lblBienvenido.Text = "Bienvenido, " + user + "";
        }

        

        protected void SqlDataSource1_Selecting(System.Object sender, System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
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


                if (Vd.AgregarALista(User, Pel))
                {
                    Response.Write("Pelicula agregada");

                }
                else
                {
                    Response.Write("La pelicula ya fue agregada");
                }



            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

        }
    }
}