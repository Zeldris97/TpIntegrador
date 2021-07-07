using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class MostrarPelicula : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Request.QueryString ["Nom"]
        }

        

        protected System.Void SqlDataSource1_Selecting(System.Object sender, System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}