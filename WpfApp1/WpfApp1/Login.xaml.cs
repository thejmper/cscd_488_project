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
            UserSyncer userSyncer = new UserSyncer();
            if (userSyncer.ValidLogin(Username.Text, Password.Password))
            {
                MainWindow mainWindow = ((MainWindow)Application.Current.MainWindow);
                mainWindow.CurrentUser = Username.Text;
                mainWindow.currentUser = userSyncer.Login(Username.Text, Password.Password);
                this.Close();
            }
        }
    }
}
