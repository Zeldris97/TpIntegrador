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
    public class DaoPeliculas
    {
        AccesoDatos ds = new AccesoDatos();

        public Peliculas getPelicula(Peliculas peli)
        {
            DataTable tabla = ds.ObtenerTabla("Peliculas", "Select * from Peliculas where ID=" + peli.getId());
            peli.setId(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            peli.setNombre(tabla.Rows[0][1].ToString());
            peli.setIdGenero(Convert.ToInt32(tabla.Rows[0][2].ToString()));
            peli.setIdCategorias(Convert.ToInt32(tabla.Rows[0][3].ToString()));
            peli.setAnio(Convert.ToInt32(tabla.Rows[0][4].ToString()));
            peli.setSinopsis(tabla.Rows[0][5].ToString());
            peli.setImgUrl(tabla.Rows[0][6].ToString());
            return peli;

        }

        public Boolean ExistePelicula(Peliculas peli)
        {
            String consulta = "Select * from Peliculas where ID='" + peli.getId().ToString() + "'";
            return ds.Existe(consulta);

        }

        public DataTable getTabla()
        {
            DataTable Tabla = ds.ObtenerTabla("Peliculas", "Select * from Peliculas");
            return Tabla;
        }


        public int agregarPelicula(Peliculas pel)
        {


            pel.setId(ds.ObtenerMaximo("SELECT max(ID) FROM Peliculas") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosPeliculaAgregar(ref comando, pel);
            return ds.EjecutarProcAlmacenado(comando, "spAgregarPelicula");
        }
        public int eliminarPelicula(Peliculas pel)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosPeliculaEliminar(ref comando, pel);
            return ds.EjecutarProcAlmacenado(comando, "spEliminarPelicula");
        }


        private void ArmarParametrosPeliculaEliminar(ref SqlCommand Comando, Peliculas pel)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDPELICULA", SqlDbType.Int);
            SqlParametros.Value = pel.getId();
        }

        private void ArmarParametrosPeliculaAgregar(ref SqlCommand Comando, Peliculas pel)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDPELICULA", SqlDbType.Int);
            SqlParametros.Value = pel.getId();
            SqlParametros = Comando.Parameters.Add("@NOMBREPELICULA", SqlDbType.VarChar);
            SqlParametros.Value = pel.getNombre();
            SqlParametros = Comando.Parameters.Add("@SINOPSIS", SqlDbType.Text);
            SqlParametros.Value = pel.getSinopsis();
            SqlParametros = Comando.Parameters.Add("@DIRECCIONSUCURSAL", SqlDbType.BigInt);
            SqlParametros.Value = pel.getAnio();
            SqlParametros = Comando.Parameters.Add("@IDGENERO", SqlDbType.Int);
            SqlParametros.Value = pel.getIdGenero();
            SqlParametros = Comando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int);
            SqlParametros.Value = pel.getCategorias();
        }
    }
}
