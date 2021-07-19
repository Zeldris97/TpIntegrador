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
    public class NegocioVerDespues
    {
        DaoVerDespues dao = new DaoVerDespues();

        public bool AgregarALista (int usuario, int pelicula)
        {
            VerDespues ver = new VerDespues();
            ver.setIdPelicula(pelicula);
            ver.setIdUser(usuario);



            int canFilas = 0;
            bool existe;

            existe = dao.ExisteVerDespues(ver);
            if (existe == false)
            {
                canFilas = dao.agregarVerDespues(ver);
            }

            if (canFilas == 1)
            {
                return true;
            }
            else
            {
                return false;
            }




        }

        public bool eliminarDeLista(int idUser,int idPelicula)
        {
            VerDespues ver = new VerDespues();
            ver.setIdUser(idUser);
            ver.setIdPelicula(idPelicula);
            int op = dao.eliminarVerDespues(ver);
            if (op == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public DataTable MostrarVerDespues(int IdUser)
        {
          
            VerDespues ver = new VerDespues();
            ver.setIdUser(IdUser);
            DataTable Lista = dao.MostrarVerDespues(ver);
            return Lista;


        }

    }
}
