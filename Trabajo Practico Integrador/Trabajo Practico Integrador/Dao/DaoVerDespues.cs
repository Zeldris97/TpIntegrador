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
            String consulta = "Select * from VerDespues where IdPelicula=" + vd.getIdPelicula() + "and IdUsuario ="+vd.getIdUser();
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
            return ds.EjecutarProcAlmacenado(cmd, "sp_EliminarVerDespues");

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
            return ds.EjecutarProcAlmacenado(cmd, "sp_AgregarVerDespues");

        }

        public DataTable MostrarVerDespues(VerDespues vd)
        {
            SqlCommand cmd = new SqlCommand();
            armarParametrosMostrarVerDespues(ref cmd, vd);
            DataTable Tabla = ds.ObtenerTabla("VerDespues"," select P.ID, P.Nombre, P.Año, G.Nombre as 'Genero'  from VerDespues V inner join Peliculas P on P.ID = V.IdPelicula inner join Generos G on G.ID = P.IdGenero inner join Usuario U on U.ID = V.IdUsuario where V.IdUsuario =" +vd.getIdUser());
            return Tabla;

        }


    }
}
