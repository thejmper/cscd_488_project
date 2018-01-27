using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Net;
using System.Text;

namespace WpfApp1.Users
{
    public class UserSyncer
    {
        string loginAddress;

        public UserSyncer()
        {
            loginAddress = "http://anthonyreinecker.com/seniorproject/login.php";
        }

        public User WebLogin(string username, string password)
        {
            using (WebClient client = new WebClient())
            {
                NameValueCollection postData = new NameValueCollection()
                {
                    {"username", username },
                    {"password", password }
                };
                string pagesource = Encoding.UTF8.GetString(client.UploadValues(loginAddress, postData));
                Console.WriteLine(pagesource);
                if (pagesource == "invalid")
                {
                    return null;
                }
                string[] result = pagesource.Split(new string[] { "\n" }, StringSplitOptions.RemoveEmptyEntries);
                    
                return new User(username, password, result[0], Convert.ToBoolean(Convert.ToInt32(result[1])));
            }
        }

        //public User Login(string username, string password)
        //{
        //    if (ValidLogin(username, password))
        //    {
        //        try
        //        {
        //            MySqlDataReader reader = null;
        //            conn.Open();

        //            string sqlStatement = "SELECT * FROM users WHERE username=@username";
        //            MySqlCommand command = new MySqlCommand(sqlStatement, conn);
        //            command.Prepare();
        //            command.Parameters.AddWithValue("@username", username);

        //            reader = command.ExecuteReader();
        //            User tempUser;
        //            String name = "invalid";
        //            Boolean admin = false;
        //            while (reader.Read())
        //            {
        //                name = reader.GetString("name");
        //                admin = reader.GetBoolean("admin");
        //            }
        //            tempUser = new User(username, password, name, admin);
        //            conn.Close();
        //            return tempUser;
        //        }
        //        catch (Exception e)
        //        {
        //            Console.WriteLine(e);
        //        }
        //    }

        //    return null;
        //}

        //public Boolean ValidLogin(string username, string password)
        //{
        //    try
        //    {
        //        MySqlDataReader reader = null;
        //        conn.Open();

        //        string sqlStatement = "SELECT EXISTS (SELECT * FROM users WHERE username=@username AND password=@password) AS login";
        //        MySqlCommand command = new MySqlCommand(sqlStatement, conn);
        //        command.Prepare();
        //        command.Parameters.AddWithValue("@username", username);
        //        command.Parameters.AddWithValue("@password", password);

        //        reader = command.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            Boolean correct = reader.GetBoolean("login");
        //            conn.Close();
        //            return correct;
        //        }
        //        conn.Close();
        //        return false;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e.ToString());
        //        return false;
        //    }
        //}

        public Boolean WebUserExists(string username)
        {
            using (WebClient client = new WebClient())
            {
                NameValueCollection postData = new NameValueCollection()
                {
                    {"username", username }
                };
                string pagesource = Encoding.UTF8.GetString(client.UploadValues(loginAddress, postData));
                Console.WriteLine(pagesource);
                if (pagesource == "1")
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        //public Boolean UserExists(string username)
        //{
        //    try
        //    {
        //        MySqlDataReader reader = null;
        //        conn.Open();

        //        string sqlStatement = "SELECT EXISTS (SELECT * FROM users WHERE username=@username) as alreadyExists";
        //        MySqlCommand command = new MySqlCommand(sqlStatement, conn);
        //        command.Prepare();
        //        command.Parameters.AddWithValue("@username", username);

        //        reader = command.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            Boolean exists = reader.GetBoolean("alreadyExists");
        //            conn.Close();
        //            return exists;
        //        }
        //        conn.Close();
        //        return false;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e.ToString());
        //        return false;
        //    }
        //}

        public User WebCreateUser(string username, string password, string name, Boolean admin)
        {
            using (WebClient client = new WebClient())
            {
                NameValueCollection putData = new NameValueCollection()
                {
                    {"username", username },
                    {"password", password },
                    {"name", name },
                    {"admin", (admin ? 1 : 0).ToString() } // Converts boolean to 0 or 1
                };
                string pagesource = Encoding.UTF8.GetString(client.UploadValues(loginAddress, "PUT", putData));
                if (pagesource == "0")
                {
                    return new User(username, password, name, admin);
                }
                return null;
            }
        }

        //public User CreateUser(string username, string password, string name, Boolean admin)
        //{
        //    try
        //    {
        //        if (!WebUserExists(username))
        //        {
        //            conn.Open();

        //            string insertStatement = "INSERT INTO users" +
        //                "(username, password, name, admin) " +
        //                "VALUES (@username, @password, @name, @admin)";
        //            MySqlCommand command = new MySqlCommand(insertStatement, conn);
        //            command.Prepare();
        //            command.Parameters.AddWithValue("@username", username);
        //            command.Parameters.AddWithValue("@password", password);
        //            command.Parameters.AddWithValue("@name", name);
        //            command.Parameters.AddWithValue("@admin", admin);
        //            command.ExecuteNonQuery();

        //            conn.Close();

        //            return new User(username, password, name);
        //        }
        //        else
        //        {
        //            Console.WriteLine("User already exists");
        //            return null;
        //        }
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e.ToString());
        //        return null;
        //    }
        //}

        public List<User> WebGetListOfUsers()
        {
            List<User> users = new List<User>();

            using (WebClient client = new WebClient())
            {
                NameValueCollection postData = new NameValueCollection()
                {
                    // Empty post request
                };
                string pagesource = Encoding.UTF8.GetString(client.UploadValues(loginAddress, postData));

                string[] result = pagesource.Split(new string[] { "\n" }, StringSplitOptions.RemoveEmptyEntries); // Parse into individual users
                foreach (string parameter in result)
                {
                    string[] userString = parameter.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries); // Parse into individual components of a user
                    users.Add(new User(userString[0], "null", userString[1], Convert.ToBoolean(Convert.ToInt32(userString[2]))));
                }
            }

            return users;
        }

        //public List<User> GetListOfUsers()
        //{
        //    try
        //    {
        //        MySqlDataReader reader = null;
        //        conn.Open();

        //        string sqlStatement = "SELECT * FROM users";
        //        MySqlCommand command = new MySqlCommand(sqlStatement, conn);
        //        command.Prepare();

        //        reader = command.ExecuteReader();

        //        List<User> users = new List<User>();
        //        while (reader.Read())
        //        {
        //            String username = reader["username"].ToString();
        //            String name = reader["name"].ToString();
        //            users.Add(new User(username, "null", name, false));
        //        }
        //        conn.Close();
        //        return users;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e.ToString());
        //        return null;
        //    }
        //}
    }
}
