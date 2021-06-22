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

        public bool BuscarUsuario (string Usuario, string Contraseña)
        {
            Usuario usr = new Usuario();
            usr.setUser(Usuario);
            usr.setContraseña(Contraseña);

           if (dato.ExisteUsuario(usr))
            {
                return true;

            }

           else 
            {
                return false;
            }


        }


    }
}
