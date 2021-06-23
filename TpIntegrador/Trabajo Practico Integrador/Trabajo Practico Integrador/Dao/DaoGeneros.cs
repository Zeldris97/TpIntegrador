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
    public class DaoGeneros
    {
        AccesoDatos ds = new AccesoDatos();

        public Generos getGenero(Generos gen)
        {
            DataTable tabla = ds.ObtenerTabla("Generos", "Select * from Geneross where ID=" + gen.getId());
            gen.setIdGenero(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            gen.setNombre(tabla.Rows[0][1].ToString());
            return gen;

        }

        public Boolean ExisteGenero(Generos gen)
        {
            String consulta = "Select * from Generos where ID='" + gen.getId().ToString() + "'";
            return ds.Existe(consulta);

        }

        public DataTable getTabla()
        {
            DataTable Tabla = ds.ObtenerTabla("Generos", "Select * from Generos");
            return Tabla;
        }

        private void armarParametrosGenerosEliminar(ref SqlCommand comando, Generos Gen)
        {
            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@IDGENEROS", SqlDbType.Int);
            sqlParametros.Value = Gen.getId();
        }

        public int eliminarGenero(Generos Gen)
        {
            SqlCommand cmd = new SqlCommand();
            armarParametrosGenerosEliminar(ref cmd, Gen);
            return ds.EjecutarProcAlmacenado(cmd, "spEliminarGenero");

        }

        private void armarParametrosGenerosAgregar(ref SqlCommand comando, Generos Gen)
        {
            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@IDGENEROS", SqlDbType.Int);
            sqlParametros.Value = Gen.getId();
            sqlParametros = comando.Parameters.Add("@NOMBREGENEROS", SqlDbType.VarChar);
            sqlParametros.Value = Gen.getNombre();
        }

        public int agregarGenero(Generos Gen)
        {
            Gen.setIdGenero(ds.ObtenerMaximo("SELECT max(ID) FROM Generos") + 1);
            SqlCommand cmd = new SqlCommand();
            armarParametrosGenerosAgregar(ref cmd, Gen);
            return ds.EjecutarProcAlmacenado(cmd, "spAgregarGenero");

        }



    }
}
