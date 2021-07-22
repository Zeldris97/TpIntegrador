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


        public DataTable getTabla()
        {
            return dato.getTabla();
        }

        public bool AgregarPelicula(string nombre,string sinopsis,  int IdGenero, int IdCategorias, long anio, string imagen) {
            Peliculas pel = new Peliculas();
            pel.setNombre(nombre);
            pel.setSinopsis(sinopsis);
            pel.setIdGenero(IdGenero);
            pel.setIdCategorias(IdCategorias);
            pel.setAnio(anio);
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
        public bool editarPelicula(int id, string nombre, int IdGenero, int IdCategorias, long anio)
        {
            Peliculas pel = new Peliculas();
            pel.setId(id);
            pel.setNombre(nombre);
            pel.setIdGenero(IdGenero);
            pel.setIdCategorias(IdCategorias);
            pel.setAnio(anio);


            int cantFilas = dato.editarPelicula(pel);
            if (cantFilas == 1)
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
