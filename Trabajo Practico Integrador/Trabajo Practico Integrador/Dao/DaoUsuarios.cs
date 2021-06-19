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
    public class DaoUsuarios
    {
        AccesoDatos ds = new AccesoDatos();

        public Usuario getUsuario(Usuario usr)
        {
            DataTable tabla = ds.ObtenerTabla("Usuario", "Select * from Usuario where ID=" + usr.getId());
            usr.setId(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            usr.setDni(Convert.ToInt32(tabla.Rows[0][1].ToString()));
            usr.setNombre(tabla.Rows[0][2].ToString());
            usr.setApellido(tabla.Rows[0][3].ToString());
            usr.setEmail(tabla.Rows[0][4].ToString());
            usr.setUser(tabla.Rows[0][5].ToString());
            usr.setContrasenia(tabla.Rows[0][6].ToString());
            return usr;

        }
        public Boolean ExisteUsuario(Usuario usr)
        {
            String consulta = "Select * from Usuario where ID='" + usr.getId().ToString() + "'";
            return ds.Existe(consulta);

        }

        public DataTable getTabla()
        {
            DataTable Tabla = ds.ObtenerTabla("Usuario", "Select * from Usuario");
            return Tabla;
        }
    }
}
