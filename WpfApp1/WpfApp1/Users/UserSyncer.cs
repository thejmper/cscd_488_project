using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Net;
using System.Text;

namespace ALInspectionApp.Users
{
    /// <summary>
    /// Handles interaction of users with the database.
    /// </summary>
    public class UserSyncer
    {
        string loginAddress;

        public UserSyncer()
        {
            loginAddress = "http://anthonyreinecker.com/seniorproject/login.php";
        }

        /// <summary>
        /// If login credentials are correct, returns a user built with info from the database.
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public User WebLogin(string username, string password)
        {
            try
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
                    if (result.Length == 1)
                    {
                        return null;
                    }
                    return new User(username, password, result[0], Convert.ToBoolean(Convert.ToInt32(result[1])));
                }
            } catch (WebException e)
            {
                Console.WriteLine(e.Message);
                UserPrefs.isOnline = false;
                return null;
            }
        }

        /// <summary>
        /// Returns whether that username is in use.
        /// </summary>
        /// <param name="username"></param>
        /// <returns></returns>
        public Boolean WebUserExists(string username)
        {
            try
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
            } catch (WebException e)
            {
                Console.WriteLine(e.Message);
                UserPrefs.isOnline = false;
                return false;
            }
        }

        /// <summary>
        /// Creates a user on the database.
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <param name="name"></param>
        /// <param name="admin"></param>
        /// <returns></returns>
        public User WebCreateUser(string username, string password, string name, Boolean admin)
        {
            try
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
            } catch (WebException e)
            {
                Console.WriteLine(e.Message);
                UserPrefs.isOnline = false;
                return new User(username, password, name, admin);
            }
            
        }

        /// <summary>
        /// Get a list of all users.
        /// </summary>
        /// <returns></returns>
        public List<User> WebGetListOfUsers()
        {
            List<User> users = new List<User>();

            try
            {
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
                        users.Add(new User(userString[0], "null", userString[1], Convert.ToBoolean(Convert.ToInt32(userString[2])))); // We make sure not to get the password for security reasons
                    }
                }
            } catch (WebException e)
            {
                Console.WriteLine(e.Message);
                UserPrefs.isOnline = false;
            }

            return users;
        }
    }
}
