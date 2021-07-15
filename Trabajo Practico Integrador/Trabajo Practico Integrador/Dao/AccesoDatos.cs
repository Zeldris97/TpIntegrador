using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Dao
{
    class AccesoDatos
    {
        private String RutaBD = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=OscarWinners;Integrated Security=True";

        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(RutaBD);
           
                cn.Open();
                return cn;
          
        }

        private SqlDataAdapter ObtenerAdaptador(String ConsultaSQL, SqlConnection cn)
        {
            SqlDataAdapter Adaptador;
            try
            {
                Adaptador = new SqlDataAdapter(ConsultaSQL, cn);
                return Adaptador;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public DataTable ObtenerTabla(String NombreTabla, String Sql)
        {
            DataSet ds = new DataSet();
            SqlConnection conexion = ObtenerConexion();
            SqlDataAdapter adp = ObtenerAdaptador(Sql, conexion);

            adp.Fill(ds, NombreTabla);

            conexion.Close();
            return ds.Tables[NombreTabla];
        }

        public int EjecutarProcAlmacenado(SqlCommand comando, String NombreSP)
        {
            int FilasCambiadas;
            SqlConnection conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = comando;
            cmd.Connection = conexion;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = NombreSP;
            FilasCambiadas = cmd.ExecuteNonQuery();
            conexion.Close();
            return FilasCambiadas;
        }

        public Boolean Existe(String Consulta)
        {
            Boolean Estado = false;
            SqlConnection conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(Consulta, conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                Estado = true;
            }
            return Estado;
        }

        public int ObtenerMaximo(String consulta)
        {
            int max = 0;
            SqlConnection conexion = new SqlConnection();
            conexion.ConnectionString = RutaBD;
            conexion.Open();
            SqlCommand cmd = new SqlCommand(consulta, conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                max = Convert.ToInt32(datos[0].ToString());
            }
            return max;

        }


    }
}
