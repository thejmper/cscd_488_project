using System;


namespace WpfApp1.Users
{
    public class User
    {
        public string username { get; private set; }
        private string password;
        public string name { get; private set; }
        public Boolean admin { get; }

        public User(string id, string password, string name, bool isAdmin=false)
        {
            this.username = username;
            this.password = PasswordHash.Hash(password); // TODO: hash the password
            this.name = name;
            this.isAdmin = isAdmin;
        }

        public override string ToString()
        {
            return username + " (" + name + ")";
        }

        
    }
}
