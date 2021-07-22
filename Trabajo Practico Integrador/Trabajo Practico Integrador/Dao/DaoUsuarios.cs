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
            usr.setNombre(tabla.Rows[0][1].ToString());
            usr.setApellido(tabla.Rows[0][3].ToString());
            usr.setEmail(tabla.Rows[0][4].ToString());
            usr.setUser(tabla.Rows[0][5].ToString());
            usr.setContrasenia (tabla.Rows[0][6].ToString());
            return usr;

        }

        public Usuario getIdusuario(Usuario usr)
        {
            int id;
            id= ds.ObtenerID("Select ID from Usuario where Usuario='" + usr.getUser()+ "'" );
            usr.setId(id);
            return usr;

        }


        public Boolean ExisteUsuario(Usuario usr)
        {
            String consulta = "Select * from Usuario where Usuario= '" + usr.getUser() + "' and Contraseña = '" + usr.getContrasenia() + "' and administrador =0";
            return ds.Existe(consulta);

        }

        public Boolean ExisteUsuarioAdmin(Usuario usr)
        {
            String consulta = "Select * from Usuario where Usuario= '" + usr.getUser() + "' and Contraseña = '" + usr.getContrasenia() + "' and administrador =1";
            return ds.Existe(consulta);

        }

        public Boolean ExisteUsuarioUsrName(Usuario usr)
        {
            String consulta = "Select * from Usuario where Usuario= '" + usr.getUser() +"'";
            return ds.Existe(consulta);

        }

        public DataTable getTabla()
        {
            DataTable Tabla = ds.ObtenerTabla("Usuario", "Select * from Usuario");
            return Tabla;
        }

        private void armarParametrosUsuarioEliminar(ref SqlCommand comando, Usuario Usr)
        {
            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@IDUSUARIO", SqlDbType.Int);
            sqlParametros.Value = Usr.getId();
        }

        public int eliminarUsuario(Usuario Usr)
        {
            SqlCommand cmd = new SqlCommand();
            armarParametrosUsuarioEliminar(ref cmd, Usr);
            return ds.EjecutarProcAlmacenado(cmd, "spEliminarUsuario");

        }

        private void armarParametrosUsuarioAgregar(ref SqlCommand comando,Usuario Usr)
        {
            SqlParameter sqlParametros = new SqlParameter();
            sqlParametros = comando.Parameters.Add("@NOMBREUSUARIO", SqlDbType.VarChar);
            sqlParametros.Value = Usr.getNombre();
            sqlParametros = comando.Parameters.Add("@APELLIDOUSUARIO", SqlDbType.VarChar);
            sqlParametros.Value = Usr.getApellido();
            sqlParametros = comando.Parameters.Add("@EMAILUSUARIO", SqlDbType.VarChar);
            sqlParametros.Value = Usr.getEmail();
            sqlParametros = comando.Parameters.Add("@USERNAME", SqlDbType.VarChar);
            sqlParametros.Value = Usr.getUser();
            sqlParametros = comando.Parameters.Add("@CONTRASEÑAUSUARIO", SqlDbType.VarChar);
            sqlParametros.Value = Usr.getContrasenia();
            sqlParametros = comando.Parameters.Add("@ADMINUSUARIO", SqlDbType.Bit);
            sqlParametros.Value = Usr.getAdmin();


        }

        public int agregarUsuario(Usuario Usr)
        {
           
            SqlCommand cmd = new SqlCommand();
            armarParametrosUsuarioAgregar(ref cmd, Usr);
            return ds.EjecutarProcAlmacenado(cmd, "sp_AgregarUsuario");

        }

        public DataTable CargarxUser(String Username)
        {
            DataTable Tabla = ds.ObtenerTabla("Usuario", "Select * from Usuario where Usuario= '" + Username + "'");
            return Tabla;
        }



    }
}
