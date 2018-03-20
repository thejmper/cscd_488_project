using System.Security.Cryptography;
using System.Text;

namespace ALInspectionApp.Users
{
    /// <summary>
    /// Manages password hash for offline use. When online the server handles hashing on its own.
    /// </summary>
    class PasswordHash
    {
        public static string Hash(string password)
        {
            // TODO: Salt the password
            HashAlgorithm hash = SHA256.Create();
            byte[] passwordByte = System.Text.Encoding.UTF8.GetBytes(password);
            StringBuilder sBuilder = new StringBuilder();
            
            passwordByte = hash.ComputeHash(passwordByte);
            for (int i = 0; i < passwordByte.Length; i++)
            {
                sBuilder.Append(passwordByte[i].ToString("x2"));
            };
            return sBuilder.ToString();
        }
    }
}
