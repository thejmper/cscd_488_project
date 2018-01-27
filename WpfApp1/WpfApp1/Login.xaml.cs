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
using WpfApp1.Users;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            String testUsername = "Username";
            string testPassword = "password";
            UserSyncer userSyncer = new UserSyncer();

            //TODO: check the network to make sure we've got the right credentials. If there's no network connection
            //check against a saved file that has hashed passwords or something.
            //if (Username.Text.Equals(testUsername) && Password.Password.Equals(testPassword))
            User tempUser = userSyncer.WebLogin(Username.Text, Password.Password);
            if (tempUser != null)
            {
                UserPrefs.OnLoad();
                MainWindow mainWindow = ((MainWindow)Application.Current.MainWindow);
                UserPrefs.SetUser(tempUser, true);
                mainWindow.Show();
                this.Close();

            }
            else
            {
                MessageBox.Show("Wrong username or password");
            }
        }
    }
}
