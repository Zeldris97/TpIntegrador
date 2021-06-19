using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class DaoVerDespues
    {
        AccesoDatos ds = new AccesoDatos();

        public VerDespues getVerDespues(VerDespues vd)
        {
            DataTable tabla = ds.ObtenerTabla("VerDespues", "Select * from VerDespues where ID=" + vd.getId());
            vd.setId(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            vd.setIdUser(Convert.ToInt32(tabla.Rows[0][1].ToString()));
            vd.setIdPelicula(Convert.ToInt32(tabla.Rows[0][2].ToString()));
            return vd;

        }
        public Boolean ExisteVerDespues(VerDespues vd)
        {
            String consulta = "Select * from VerDespues where ID='" + vd.getId().ToString() + "'";
            return ds.Existe(consulta);

        }
        /*
        public Boolean ExisteVerDespues(VerDespues vd)
        {
            String consulta = "Select * from VerDespues where ID='" + vd.getId().ToString() + vd.getIdUser().ToString() + vd.getIdPelicula().ToString() + "'";
            return ds.Existe(consulta);

        }*/

        public DataTable getTabla()
        {
            DataTable Tabla = ds.ObtenerTabla("VerDespues", "Select * from VerDespues");
            return Tabla;
        }



    }
}
