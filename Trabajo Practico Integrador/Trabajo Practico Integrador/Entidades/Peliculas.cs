using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Peliculas
    {
        private int Id;
        private String Nombre;
        private int IdGenero;
        private int IdCategorias;
        private int Anio;
        private String Sinopsis;
        private String ImgUrl;

        public Peliculas()
        { }

        public int getId()
        {
            return Id;
        }

        public void setId(int num)
        {
            Id = num;
        }

        public String getNombre()
        {
            return Nombre;
        }
        public void setNombre(String Nom)
        {
            Nombre = Nom;
        }

        public int getIdGenero()
        {
            return IdGenero;
        }
        public void setIdGenero(int Id)
        {
            IdGenero = Id;
        }

        public int getCategorias()
        {
            return IdCategorias;
        }
        public void setIdCategorias(int Id)
        {
            IdCategorias = Id;
        }

        public int getAnio()
        {
            return Anio;
        }
        public void setAnio(int ani)
        {
            Anio = ani;
        }

        public String getSinopsis()
        {
            return Sinopsis;
        }
        public void setSinopsis(String sin)
        {
            Sinopsis = sin;
        }

        public String getImgUrl()
        {
            return ImgUrl;
        }
        public void setImgUrl(String url)
        {
            ImgUrl = url;
        }
    }
}
