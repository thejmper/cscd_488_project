using System;


namespace ALInspectionApp.Users
{
    /// <summary>
    /// simple user representation
    /// </summary>
    public class User
    {
        public string id { get; private set; }
        private string password;
        public string name { get; private set; }
        public bool isAdmin { get; }

        public User(string id, string password, string name, bool isAdmin=false)
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
