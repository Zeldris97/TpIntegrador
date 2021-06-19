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



    }
}
