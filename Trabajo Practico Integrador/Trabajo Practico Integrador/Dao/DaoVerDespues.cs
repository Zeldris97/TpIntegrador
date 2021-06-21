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

        private void armarParametrosVerDespuesEliminar(ref SqlCommand comando, VerDespues vd)
        {
            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@IDVERDESPUES", SqlDbType.Int);
            sqlParametros.Value = vd.getId();
        }

        public int eliminarVerDespues(VerDespues vd)
        {
            SqlCommand cmd = new SqlCommand();
            armarParametrosVerDespuesEliminar(ref cmd, vd);
            return ds.EjecutarProcAlmacenado(cmd, "spEliminarVerDespues");

        }

        private void armarParametrosVerDespuesAgregar(ref SqlCommand comando, VerDespues vd)
        {
            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@IDVERDESPUES", SqlDbType.Int);
            sqlParametros.Value = vd.getId();
            sqlParametros = comando.Parameters.Add("@IDUSUARIOVERDESPUES", SqlDbType.Int);
            sqlParametros.Value = vd.getIdUser();
            sqlParametros = comando.Parameters.Add("@IDPELICULAVERDESPUES", SqlDbType.Int);
            sqlParametros.Value = vd.getIdPelicula();
        }

        public int agregarVerDespues(VerDespues vd)
        {
            vd.setId(ds.ObtenerMaximo("SELECT max(ID) FROM VerDespues") + 1);
            SqlCommand cmd = new SqlCommand();
            armarParametrosVerDespuesAgregar(ref cmd, vd);
            return ds.EjecutarProcAlmacenado(cmd, "spAgregarVerDespues");

        }


    }
}
