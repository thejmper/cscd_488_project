using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Net;
using System.Text;

namespace ALInspectionApp.Users
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
    }
}
