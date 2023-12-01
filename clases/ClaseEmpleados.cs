using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace TallerDeReparaciones.clases
{
    public class ClaseEmpleados
    {
        private static string correo;
        private static string clave;

        public ClaseEmpleados(string correo, string clave) // constructor inicializa las variables
        {
            ClaseEmpleados.correo = correo;
            ClaseEmpleados.clave = clave;
        }

        public static string Correo
        {
            get { return correo; }
            set { correo = value; }
        }

        public static string Clave
        {
            get { return clave; }
            set { clave = value; }
        }

        public static int ValidarLogIn()
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ValidarEmpleado", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@correo", correo));
                    cmd.Parameters.Add(new SqlParameter("@clave", clave));

                    retorno = cmd.ExecuteNonQuery();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.Read())
                        {
                            retorno = 1;
                        }
                        else 
                        { 
                            retorno = 0; 
                        }
                    }
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;

        }
    }
}
