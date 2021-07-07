using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Entidades
{
    public class Generos
    {
        private int Id;
        private String Nombre;

        public Generos()
        { }

        public int getId()
        {
            return Id;
        }

        public void setIdGenero(int idGen)
        {
            Id = idGen;
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
