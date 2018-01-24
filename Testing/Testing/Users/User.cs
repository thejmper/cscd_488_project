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
        public Boolean isAdmin { get; }
        public string id { get; private set; }

        public User(string id, string password, string name, bool isAdmin = false)
        {
            this.id = id;
            this.password = PasswordHash.Hash(password); // TODO: hash the password
            this.name = name;
            this.isAdmin = isAdmin;
        }

        public override string ToString()
        {
            return id + " (" + name + ")";
        }
    }
}
