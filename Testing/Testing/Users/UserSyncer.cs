using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1.Users
{
    public class UserSyncer
    {
        MySqlConnection conn;

        public UserSyncer()
        {
            string connectionString = System.IO.File.ReadAllText(@"conn.txt");
            conn = new MySqlConnection(connectionString);
        }

        public User Login(string username, string password)
        {
            if (ValidLogin(username, password))
            {
                try
                {
                    MySqlDataReader reader = null;
                    conn.Open();

                    string sqlStatement = "SELECT * FROM users WHERE username=@username";
                    MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                    command.Prepare();
                    command.Parameters.AddWithValue("@username", username);

                    reader = command.ExecuteReader();
                    User tempUser;
                    String name = "invalid";
                    Boolean admin = false;
                    while (reader.Read())
                    {
                        name = reader.GetString("name");
                        admin = reader.GetBoolean("admin");
                    }
                    tempUser = new User(username, password, name, admin);
                    conn.Close();
                    return tempUser;
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                }
            }

            return null;
        }

        private Boolean ValidLogin(string username, string password)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT EXISTS (SELECT * FROM users WHERE username=@username AND password=@password) AS login";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@password", password);

                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Boolean correct = reader.GetBoolean("login");
                    conn.Close();
                    return correct;
                }
                conn.Close();
                return false;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return false;
            }
        }

        public Boolean UserExists(string username)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT EXISTS (SELECT * FROM users WHERE username=@username) as alreadyExists";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@username", username);

                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Boolean exists = reader.GetBoolean("alreadyExists");
                    conn.Close();
                    return exists;
                }
                conn.Close();
                return false;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return false;
            }
        }

        public User CreateUser(string username, string password, string name, Boolean admin)
        {
            try
            {
                if (!UserExists(username))
                {
                    conn.Open();

                    string insertStatement = "INSERT INTO users" +
                        "(username, password, name, admin) " +
                        "VALUES (@username, @password, @name, @admin)";
                    MySqlCommand command = new MySqlCommand(insertStatement, conn);
                    command.Prepare();
                    command.Parameters.AddWithValue("@username", username);
                    command.Parameters.AddWithValue("@password", password);
                    command.Parameters.AddWithValue("@name", name);
                    command.Parameters.AddWithValue("@admin", admin);
                    command.ExecuteNonQuery();

                    conn.Close();

                    return new User(username, password, name);
                }
                else
                {
                    Console.WriteLine("User already exists");
                    return null;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return null;
            }
        }
    }
}
