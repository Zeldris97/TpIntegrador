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
            String consulta = "Select ID from Peliculas where Nombre='" + peli.getNombre() + "'";
            return ds.Existe(consulta);

        }

        public DataTable getTabla()
        {
            DataTable Tabla = ds.ObtenerTabla("Peliculas", "Select * from Peliculas");
            return Tabla;
        }

        private void armarParametrosPeliculasEliminar(ref SqlCommand comando, Peliculas Peli)
        {
            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@IDPELICULA", SqlDbType.Int);
            sqlParametros.Value = Peli.getId();
        }

        public int eliminarPelicula(Peliculas Peli)
        {
            SqlCommand cmd = new SqlCommand();
            armarParametrosPeliculasEliminar(ref cmd, Peli);
            return ds.EjecutarProcAlmacenado(cmd, "spEliminarPelicula");

        }

        private void armarParametrosPeliculasAgregar(ref SqlCommand comando, Peliculas Peli)
        {
            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@NOMBREPELICULA", SqlDbType.VarChar);
            sqlParametros.Value = Peli.getNombre();
            sqlParametros = comando.Parameters.Add("@IDGENERO", SqlDbType.Int);
            sqlParametros.Value = Peli.getIdGenero();
            sqlParametros = comando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int);
            sqlParametros.Value = Peli.getCategorias();
            sqlParametros = comando.Parameters.Add("@ANIOPELICULA", SqlDbType.Int);
            sqlParametros.Value = Peli.getAnio();
            sqlParametros = comando.Parameters.Add("@SINOPSISPELICULA", SqlDbType.VarChar);
            sqlParametros.Value = Peli.getSinopsis();
            sqlParametros = comando.Parameters.Add("@IMGURLPELICULA", SqlDbType.VarChar);
            sqlParametros.Value = Peli.getImgUrl();


        }

        public int agregarPelicula(Peliculas Peli)
        {
            Peli.setId(ds.ObtenerMaximo("SELECT max(ID) FROM Peliculas") + 1);
            SqlCommand cmd = new SqlCommand();
            armarParametrosPeliculasAgregar(ref cmd, Peli);
            return ds.EjecutarProcAlmacenado(cmd, "spAgregarPelicula");

        }
    }
}
