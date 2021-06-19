using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Categorias
    {
        private int Id;
        private String Nombre;

        public Categorias()
        { }

        public int getId()
        {
            return Id;
        }

        public void setId(int idCat)
        {
            Id = idCat;
        }

        public String getNombre()
        {
            return Nombre;
        }

        public void setNombre(String Nom)
        {
            Nombre = Nom;
        }
    }
}
