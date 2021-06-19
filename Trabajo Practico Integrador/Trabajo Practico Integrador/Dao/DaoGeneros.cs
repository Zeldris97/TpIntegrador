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

    }
}
