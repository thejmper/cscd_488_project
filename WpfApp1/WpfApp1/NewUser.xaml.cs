using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using WpfApp1.Users;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for NewUser.xaml
    /// </summary>
    public partial class NewUser : Window
    {
        public NewUser()
        {
            InitializeComponent();
        }

        private void btnCreateUser_Click(object sender, RoutedEventArgs e)
        {
            string userName = this.userNameBox.Text;
            string password = this.passwordBox.Password;
            string name = this.nameBox.Text;
            bool isAdmin = (bool)this.isAdminCheck.IsChecked;

            UserSyncer userSyncer = new UserSyncer();
            User user = userSyncer.WebCreateUser(userName, password, name, isAdmin);
            if (user != null)
            {
                UserPrefs.AddUser(user);
                this.Close();
            }
            else
            {
                MessageBox.Show("User already exists!");
            }
        }
    }
}
