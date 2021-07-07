using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        private int Id;
        private int Dni;
        private String Nombre;
        private String Apellido;
        private String Email;
        private String User;
        private String Contrasenia;
        private bool Admin;

        public Usuario()
        { }

        public int getId()
        {
            return Id;
        }

        public void setId(int num)
        {
            Id = num;
        }

        public int getDni()
        {
            return Dni;
        }

        public void setDni(int num)
        {
            Dni = num;
        }

        public String getNombre()
        {
            return Nombre;
        }

        public void setNombre(String s)
        {
            Nombre = s;
        }
        public String getApellido()
        {
            return Apellido;
        }

        public void setApellido(String s)
        {
            Apellido = s;
        }
        public String getEmail()
        {
            return Email;
        }

        public void setEmail(String s)
        {
            Email = s;
        }
        public String getUser()
        {
            return User;
        }

        public void setUser(String s)
        {
            User = s;
        }
     
        public String getContrasenia()
        {
            return Contrasenia;
        }

        public void setAdmin(bool s)
        {
            Admin = s;
        }
        public void setContrasenia(string s)
        {
            Contrasenia = s;
        }
        public bool getAdmin()
        {
            return Admin;
        }


    }
}
