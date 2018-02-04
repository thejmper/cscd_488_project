using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using WpfApp1.Case;
using WpfApp1.Reports.Syncers;
using WpfApp1.Users;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for NewCaseFile.xaml
    /// </summary>
    public partial class NewCaseFile : Window
    {
        MainWindow mainWin;

        private ObservableCollection<User> assignedUsers;

        public NewCaseFile()
        {
            InitializeComponent();
            this.assignedUsers = new ObservableCollection<User>();

            mainWin = ((MainWindow)Application.Current.MainWindow);

            this.userListView.ItemsSource = UserPrefs.users;
            this.assignedUsersList.ItemsSource = assignedUsers;
        }

        //--helpers--//

        //--button handlers--//
        private void CreateCaseFileClick(object sender, RoutedEventArgs e)
        {
            if (FacilityName.Text == "" || FacilityNum.Text == "")
                return;
            int num;
            Int32.TryParse(FacilityNum.Text, out num);

            CaseFileSyncer caseFileSyncer = new CaseFileSyncer();
            CaseFile caseFile = caseFileSyncer.CreateCaseFile(FacilityName.Text, num);
            //CaseFile caseFile = new CaseFile("CaseFile", FacilityName.Text, num);
            foreach (User user in this.assignedUsers)
            {
                caseFile.AssignUser(user);
                caseFileSyncer.AssignUser(user.id, caseFile.caseID);
            }

            //TODO: save this facility to the database so we can reference it again easily
            //(assuming it doesn't already exist. If there's a matching facility number, inform the user
            //and ask if they want to use the old facility instead!
            mainWin.SetCaseFile(caseFile);
            this.Close();
        }

        private void btnNewUser_Click(object sender, RoutedEventArgs e)
        {
            NewUser newUserWindow = new NewUser();
            newUserWindow.ShowDialog();
        }

        private void item1_Selected(object sender, RoutedEventArgs e)
        {
            ListBoxItem item = e.Source as ListBoxItem;
            MessageBox.Show("clicked on " + item.Uid);
        }

        /// <summary>
        /// handles when a list item is clicked.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void RemoveAssignedUser(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            var item = sender as ListViewItem;
            if(item != null)
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
    }
}
