using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1.Users
{
    /// <summary>
    /// this doesn't actually need to exist, since passwords are hashed on the server.
    /// it's an artifact of the original design, and we didn't want to pull it out and potentially break
    /// things this late in the game.
    /// 
    /// Actually no, we need this
    /// TODO: make this work.
    /// </summary>
    class PasswordHash
    {
        // Hashes the password, still needs to be implemented.
        public static string Hash(string password)
        {
            return password;
        }
    }
}
