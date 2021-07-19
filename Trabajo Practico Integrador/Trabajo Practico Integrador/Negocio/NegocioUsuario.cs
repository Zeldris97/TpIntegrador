using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dao;
using Entidades;


namespace Negocio
{
    
   public class NegocioUsuario
    {
        DaoUsuarios dato = new DaoUsuarios();


        public DataTable GetTabla()
        {
            return dato.getTabla();
        }

        public bool BuscarUsuario (string Usuario, string Contraseña)
        {
            Usuario usr = new Usuario();
            usr.setUser(Usuario);
            usr.setContrasenia(Contraseña);

           if (dato.ExisteUsuario(usr))
            {
                return true;

            }

           else 
            {
                return false;
            }


        }

        public bool BuscarUsuarioporUsrName(string Usuario)
        {
            Usuario usr = new Usuario();
            usr.setUser(Usuario);

            if (dato.ExisteUsuarioUsrName(usr))
            {
                return true;

            }

            else
            {
                return false;
            }


        }
        public int DevolverIdUsuario(string Usuario)
        {
            Usuario usr = new Usuario();
            usr.setUser(Usuario);
            int id;

            if (dato.ExisteUsuarioUsrName(usr))
            {

                dato.getIdusuario(usr);
                id = usr.getId();

                return id;

            }

            else
            {
                return -1;
            }


        }

        public bool AgregarUsuario(String Nombre, String Apellido, String Email, String UsrName, String Contrasenia)
        {
            Usuario Usr = new Usuario();
            Usr.setNombre(Nombre);
            Usr.setApellido(Apellido);
            Usr.setEmail(Email);
            Usr.setUser(UsrName);
            Usr.setContrasenia(Contrasenia);
            Usr.setAdmin(false);

            if( dato.agregarUsuario(Usr) == 1)
            {
                return true;
            }
            return false;
        }


        public Usuario Cargar(String User)
        {
            Usuario Usr = new Usuario();
            Usr.setUser(User);

            return dato.getUsuario(Usr);
        }



    }
}
