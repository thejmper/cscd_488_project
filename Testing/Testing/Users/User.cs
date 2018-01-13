using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1.Users
{
    public class User
    {
        public string username { get; private set; }
        private string password;
        public string name { get; private set; }
        public Boolean admin { get; }

        public User(string username, string password, string name)
        {
            this.username = username;
            this.password = PasswordHash.Hash(password); // TODO: hash the password
            this.name = name;
        }
        public User(string username, string password, string name, Boolean admin) : this(username, password, name)
        {
            this.admin = admin;
        }
    }
}
