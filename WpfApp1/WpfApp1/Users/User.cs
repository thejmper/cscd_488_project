using System;


namespace WpfApp1.Users
{
    public class User
    {
        public string id { get; private set; }
        private string password;
        public string name { get; private set; }
        public bool isAdmin { get; }

        public User(string id, string password, string name)
        {
            this.id = id;
            this.password = PasswordHash.Hash(password); // TODO: hash the password
            this.name = name;
        }
        public User(string id, string password, string name, bool admin) : this(id, password, name)
        {
            this.isAdmin = admin;
        }

        public override string ToString()
        {
            return id + " (" + name + ")";
        }
    }
}
