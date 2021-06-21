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
    public class NegocioPelicula
    {
        DaoPeliculas dato = new DaoPeliculas();
        public bool AgregarPelicula(string nombre, int IdGenero, int IdCategorias, int año, string sinopsis, string imagen) {
            Peliculas pel = new Peliculas();
            pel.setNombre(nombre);
            pel.setIdGenero(IdGenero);
            pel.setIdCategorias(IdCategorias);
            pel.setAnio(año);
            pel.setSinopsis(sinopsis);
            pel.setImgUrl(imagen);

            int canFilas = 0;
            bool existe;

            existe = dato.ExistePelicula(pel);
            if (existe == false)
            {
                canFilas = dato.agregarPelicula(pel);
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


        public bool eliminarPelicula(int id)
        {
            Peliculas pel = new Peliculas();
            pel.setId(id);
            int op = dato.eliminarPelicula(pel);
            if (op == 1)
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
