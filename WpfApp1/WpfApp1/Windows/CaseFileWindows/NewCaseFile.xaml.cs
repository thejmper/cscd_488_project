using System;
using System.Collections.ObjectModel;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using ALInspectionApp.CaseObject;
using ALInspectionApp.Users;
using ALInspectionApp.Windows.UserWindows;

namespace ALInspectionApp.Windows.CaseFileWindows
{
    /// <summary>
    /// Interaction logic for NewCaseFile.xaml
    /// </summary>
    public partial class NewCaseFile : Window
    {
        private ObservableCollection<FacilityHolder> facilities;

        public NewCaseFile()
        {
            InitializeComponent();

            facilities = new ObservableCollection<FacilityHolder>();

            //TODO: Anthony, fetch a list of existing facilities from the database
            //create FacilityHolder objects for each one, and add them tot eh
            //facilities observable collection.

            this.ExistingCaseFiles.ItemsSource = facilities;
        }

        private void ExistingDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var item = sender as ListViewItem;
            if (item != null)
            {
                FacilityHolder facility = item.DataContext as FacilityHolder;

                this.CreateCaseFile(facility);
            }
        }

        private void btnCreateAndAssign_Click(object sender, RoutedEventArgs e)
        {
            this.CreateCaseFile();
            AssignUser usersPane = new AssignUser();
            usersPane.ShowDialog();
            this.Close();
        }

        private void btnCreate_Click(object sender, RoutedEventArgs e)
        {
            this.CreateCaseFile();
            this.Close();
        }
        
        private void CreateCaseFile()
        {
            string name = this.facilityNameBox.Text;
            int id = Int32.Parse(this.facilityIdBox.Text);

            FacilityHolder holder = this.CreateNewFacility(name, id);
            this.CreateCaseFile(holder);
        }

        private void CreateCaseFile(FacilityHolder facility)
        {
            CaseFile caseFile = new CaseFile(facility.id.ToString(), facility.name, facility.id);
            UserPrefs.caseFile = caseFile;
            MainWindow.instance.SetCaseFile(caseFile);

        }

        private FacilityHolder CreateNewFacility(string facilityName, int facilityID)
        {
            //TODO: Anthony, add a new entry in the facilities database with the given data
            //might not need to update the existing facilities list manually, though.

            FacilityHolder holder = new FacilityHolder(facilityName, facilityID);
            this.facilities.Add(holder);

            return holder;
        }

        //private internal class used to pass data on assigned casefiles to the observable collection
        private class FacilityHolder
        {
            public string name { get;  }
            public int id { get; }

            //constructor
            public FacilityHolder(string name, int id)
            {
                this.name = name;
                this.id = id;
            }
        }

        private void NumberValidationTextBox(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }

    }
}
