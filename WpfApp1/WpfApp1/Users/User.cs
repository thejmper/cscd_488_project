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
            if (id.Trim().Contains(" "))
                throw new ArgumentException("Error: username '" + id + "' invalid! It cannot have spaces!");

            this.id = id.Trim();
            this.password = PasswordHash.Hash(password); // TODO: hash the password
            this.name = name.Trim();
            this.isAdmin = isAdmin;
        }

        public override string ToString()
        {
            return id + " (" + name + ")";
        }

        
    }
}
