using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using WpfApp1.Case;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for AssignUser.xaml
    /// </summary>
    public partial class AssignUser : Window
    {
        private ObservableCollection<User> assignedUsers;

        public AssignUser()
        {
            InitializeComponent();

            this.assignedUsers = new ObservableCollection<User>();

            this.userListView.ItemsSource = UserPrefs.users;
            this.assignedUsersList.ItemsSource = assignedUsers;
        }

        private void btnNewUser_Click(object sender, RoutedEventArgs e)
        {
            NewUser newUserWindow = new NewUser();
            newUserWindow.ShowDialog();
        }

        /// <summary>
        /// handles when a list item is clicked.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void RemoveAssignedUser(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            var item = sender as ListViewItem;
            if (item != null)
            {
                User user = item.DataContext as User;
                this.assignedUsers.Add(user);
            }
        }

        private void AssignedUserDoubleClick(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            var item = sender as ListViewItem;
            if (item != null)
            {
                User user = item.DataContext as User;
                this.assignedUsers.Remove(user);
            }
        }

        private void btnDone_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                CaseFile caseFile = UserPrefs.caseFile;

                if(caseFile == null)
                {
                    MessageBox.Show("No active case file, cannot assign users!");
                    this.Close();
                }

                string[] alreadyAssignedIds = caseFile.assignedUserIDs.ToArray();

                foreach(User user in this.assignedUsers)
                {
                    if (!alreadyAssignedIds.Contains(user.id))
                    {
                        caseFile.AssignUser(user);
                    }        
                }

                UserPrefs.caseFile = caseFile;
                MainWindow.instance.SetCaseFile(caseFile);
                this.Close();

            } catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
    }
}
