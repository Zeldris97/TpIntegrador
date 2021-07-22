using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class ListaPeliculas : System.Web.UI.Page
    {

        NegocioVerDespues Vd = new NegocioVerDespues();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            string user;
            
            user = (String)Application["DataUsuario"];
            lblBienvenido.Text = "Bienvenido, " + user + "";
        }


        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string consultaDataSource = sdsPeliculas.SelectCommand;
            Session["ultima_consulta"] = consultaDataSource += " where Nombre like '%" + txtBuscar.Text + "%'";
            sdsPeliculas.SelectCommand = Session["ultima_consulta"].ToString();
            txtBuscar.Text = "";
        }

        protected void btnVerDespues_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "eventoVerDespues")
            {
                int Pel;
                int User;

                Pel = Convert.ToInt32(e.CommandArgument.ToString());

                User = (int)Session["idUsuario"];

                if(Vd.AgregarALista(User, Pel))
                {
                    Response.Write("Pelicula agregada");

                }
                else
                {
                    Response.Write("La pelicula ya fue agregada");
                }

            }
        }
    }
}