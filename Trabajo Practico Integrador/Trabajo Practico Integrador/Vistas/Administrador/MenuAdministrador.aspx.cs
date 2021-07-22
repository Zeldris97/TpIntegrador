using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Usuario
{
    public partial class MenuAdministrador : System.Web.UI.Page
    {
        NegocioPelicula np = new NegocioPelicula();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

               cargarTabla();

            }
            
        }

        
        public void cargarTabla()
        {

            grdPeliculas.DataSource = np.getTabla();
            grdPeliculas.DataBind();

        }

        protected void LinkAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarPeliculas.aspx");
        }

        protected void LinkEliminar_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarPeliculas.aspx");
        }

        protected void grdPeliculas_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdPeliculas.EditIndex = e.NewEditIndex;
            cargarTabla();
        }

        protected void grdPeliculas_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdPeliculas.EditIndex = -1;
            cargarTabla();
        }

        protected void grdPeliculas_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            String s_IdPelicula = ((Label)grdPeliculas.Rows[e.RowIndex].FindControl("lbl_eit_id")).Text;
            String s_Nombre = ((TextBox)grdPeliculas.Rows[e.RowIndex].FindControl("txt_eit_nombre")).Text;
            String s_Genero = ((DropDownList)grdPeliculas.Rows[e.RowIndex].FindControl("ddl_eit_genero")).SelectedValue;
            String s_Categoria = ((DropDownList)grdPeliculas.Rows[e.RowIndex].FindControl("ddl_eit_categoria")).SelectedValue;
            String s_Anio = ((TextBox)grdPeliculas.Rows[e.RowIndex].FindControl("txt_eit_anio")).Text;

            bool mod = np.editarPelicula(Convert.ToInt32(s_IdPelicula), s_Nombre, Convert.ToInt32(s_Genero), Convert.ToInt32(s_Categoria), Convert.ToInt32(s_Anio));
            if (mod)
            {
                Response.Write("Pelicula editada con exito");
             
            }
            else
            {
                Response.Write("La pelicula no pudo ser modificada");

            }
            grdPeliculas.EditIndex = -1;
            cargarTabla();




        }
    }
}