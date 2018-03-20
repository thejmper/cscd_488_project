using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using ALInspectionApp.Users;
using System.IO;

namespace ALInspectionApp.Windows.UserWindows
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        //--member fields--//
        private Dictionary<string, string> userPasswordHashes;

        //--methods--//

        public Login()
        {
            InitializeComponent();

            this.LoadPasswordHashes();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            User tempUser = new UserSyncer().WebLogin(Username.Text, Password.Password);
            if (tempUser != null)
            {
                UserPrefs.SetUser(tempUser, true);
                this.AddPasswordHash(Username.Text, PasswordHash.Hash(Password.Password));
                MainWindow mainWindow = ((MainWindow)Application.Current.MainWindow);
                this.Close();
            }
            else
            {
                if (this.CheckPasswordLocal(Username.Text, Password.Password))
                {
                    UserPrefs.SetUser(new Users.User(Username.Text, Password.Password, Username.Text), false);

                    MainWindow mainWindow = ((MainWindow)Application.Current.MainWindow);
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Wrong username or password");
                }
            }
            
        }

        /// <summary>
        /// loads existing local password hashes from the system!
        /// </summary>
        private void LoadPasswordHashes()
        {
            this.userPasswordHashes = new Dictionary<string, string>();

            string fileName = UserPrefs.GetPasswordHashDirectory() + @"\hashes.txt";

            if (!File.Exists(fileName)){ 
                return;
            }

            string line;
            using (StreamReader reader = new StreamReader(fileName))
            {
                while ((line = reader.ReadLine()) != null)
                {
                    try
                    {
                        string[] args = line.Split(' ');
                        this.AddPasswordHash(args[0], args[1]);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.ToString());
                    }
                    
                }
            }

        }
        private void AddPasswordHash(string username, string hashedPassword)
        {
            if (this.userPasswordHashes == null)
                this.userPasswordHashes = new Dictionary<string, string>();

            if (this.userPasswordHashes.ContainsKey(username))
                this.userPasswordHashes[username] = hashedPassword; 

            else
                this.userPasswordHashes.Add(username, hashedPassword);
            

        }
        private bool CheckPasswordLocal(string username, string password)
        {
            string hash = PasswordHash.Hash(password);

            if (this.userPasswordHashes.ContainsKey(username) && this.userPasswordHashes[username].Equals(hash))
                return true;
            else
                return false;
        }

        private void SavePasswordHashes()
        {
            string fileName = UserPrefs.GetPasswordHashDirectory() + @"\hashes.txt";

            using (StreamWriter writer = new StreamWriter(fileName))
            {
                foreach(KeyValuePair<string, string> entry in this.userPasswordHashes)
                {
                    writer.WriteLine(entry.Key + " " + entry.Value);
                }
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            this.SavePasswordHashes();
        }
    }
}
