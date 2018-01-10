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
            if (Username.Text == testUsername && Password.Password == testPassword)
            {
                MainWindow mainWindow = ((MainWindow)Application.Current.MainWindow);
                //mainWindow.saveCaseFile.IsEnabled = true;
                mainWindow.newCaseFile.IsEnabled = true;

                mainWindow.CurrentUser = Username.Text;
                this.Close();
            }
        }
    }
}
