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
    public class DaoCategorias
    {
        AccesoDatos ds = new AccesoDatos();

        public Categorias getCategoria(Categorias Cat)
        {
            DataTable tabla = ds.ObtenerTabla("Categorias", "Select * from Categorias where ID=" + Cat.getId());
            Cat.setId(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            Cat.setNombre(tabla.Rows[0][1].ToString());
            return Cat;

        }

        public Boolean ExisteCategoria(Categorias Cat)
        {
            String consulta = "Select * from Categorias where ID='" + Cat.getId().ToString() + "'";
            return ds.Existe(consulta);

        }

        private void armarParametrosCategoriasEliminar(ref SqlCommand comando, Categorias Cat)
        {
            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int);
            sqlParametros.Value = Cat.getId();
        }

        public int eliminarCategoria(Categorias Cat)
        {
            SqlCommand cmd = new SqlCommand();
            armarParametrosCategoriasEliminar(ref cmd, Cat);
            return ds.EjecutarProcAlmacenado(cmd, "spEliminarCategoria");

        }

        private void armarParametrosCategoriasAgregar(ref SqlCommand comando, Categorias Cat)
        {
            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int);
            sqlParametros.Value = Cat.getId();
            sqlParametros = comando.Parameters.Add("@NOMBRECATEGORIA", SqlDbType.VarChar);
            sqlParametros.Value = Cat.getNombre();
        }

        public int agregarCategoria(Categorias Cat)
        {
            Cat.setId(ds.ObtenerMaximo("SELECT max(ID) FROM Categorias")+1);
            SqlCommand cmd = new SqlCommand();
            armarParametrosCategoriasAgregar(ref cmd, Cat);
            return ds.EjecutarProcAlmacenado(cmd, "spAgregarCategoria");

        }
    }
}
