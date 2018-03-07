using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using ALInspectionApp.Users;

namespace ALInspectionApp.Windows.UserWindows
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
            try
            {
                string userName = this.userNameBox.Text;
                string password = this.passwordBox.Password;
                string name = this.nameBox.Text;
                bool isAdmin = (bool)this.isAdminCheck.IsChecked;

                User user = new User(userName, password, name, isAdmin);
                UserPrefs.AddUser(user);
                this.Close();
            } catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }

        }
    }
}
