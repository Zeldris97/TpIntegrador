using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class VerDespues
    {
        private int Id;
        private int IdUser;
        private int IdPelicula;

        public VerDespues()
        { }

        public int getId()
        {
            return Id;
        }

        public void setId(int i)
        {
             Id = i;
        }

        public int getIdUser()
        {
            return IdUser;
        }

        public void setIdUser(int i)
        {
             IdUser = i;
        }
        public int getIdPelicula()
        {
            return IdPelicula;
        }

        public void setIdPelicula(int i)
        {
             IdPelicula = i;
        }

    }
}
