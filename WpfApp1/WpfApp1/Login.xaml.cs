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

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        String testUsername = "Username";
        string testPassword = "password";

        public Login()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            //TODO: check the network to make sure we've got the right credentials. If there's no network connection
            //check against a saved file that has hashed passwords or something.
            if (Username.Text.Equals(testUsername) && Password.Password.Equals(testPassword))
            {
                UserPrefs.OnLoad();
                MainWindow mainWindow = ((MainWindow)Application.Current.MainWindow);
                UserPrefs.SetUser(new Users.User(Username.Text, Password.Password, Username.Text), false);

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
