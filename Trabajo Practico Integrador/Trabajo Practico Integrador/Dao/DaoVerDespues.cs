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

        private void armarParametrosMostrarVerDespues(ref SqlCommand comando, VerDespues vd)
        {

            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@IDUSUARIO", SqlDbType.Int);
            sqlParametros.Value = vd.getIdUser();
        }

        private void armarParametrosVerDespuesEliminar(ref SqlCommand comando, VerDespues vd)
        {
            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@IDUSUARIO", SqlDbType.Int);
            sqlParametros.Value = vd.getIdUser();
            sqlParametros = comando.Parameters.Add("@IDPELICULA", SqlDbType.Int);
            sqlParametros.Value = vd.getIdPelicula();
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
            sqlParametros = comando.Parameters.Add("@IDUSUARIO", SqlDbType.Int);
            sqlParametros.Value = vd.getIdUser();
            sqlParametros = comando.Parameters.Add("@IDPELICULA", SqlDbType.Int);
            sqlParametros.Value = vd.getIdPelicula();
        }

        public int agregarVerDespues(VerDespues vd)
        {
            
            SqlCommand cmd = new SqlCommand();
            armarParametrosVerDespuesAgregar(ref cmd, vd);
            return ds.EjecutarProcAlmacenado(cmd, "spAgregarVerDespues");

        }

        public DataTable MostrarVerDespues(VerDespues vd)
        {
            SqlCommand cmd = new SqlCommand();
            armarParametrosMostrarVerDespues(ref cmd, vd);
            DataTable Tabla = ds.ObtenerTabla("VerDespues", "spMostrarVerDespues");
            return Tabla;

        }


    }
}
