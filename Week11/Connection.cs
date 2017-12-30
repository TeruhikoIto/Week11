using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace Week11
{
    public static class Connection
    {
        private static SqlConnection conn;
        private static SqlCommand comm;

        static Connection()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["WorkshopConnectionString"].ConnectionString;
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("", conn);
        }
        public static void AddAcount(Account account)
        {
            string query = string.Format(@"INSERT INTO account VALUES ('{0}', '{1}', '{2}', '{3}', '{4}')", account.Name, account.Type, account.Amount, account.Country, account.Image);
            comm.CommandText = query;

            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
            }
        }
            
    }
}