using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Windows;
using System.Windows.Forms;
using System.Xml.Serialization;
using ALInspectionApp.CaseObject;
using ALInspectionApp.Users;
using ALInspectionApp.Reports.Syncers;

namespace ALInspectionApp.Windows.CaseFileWindows
{
    /// <summary>
    /// Interaction logic for LoadOpenCaseFile.xaml Allows the user
    /// to load a casefile from the database or open one from
    /// the local machine.
    /// </summary>
    public partial class LoadOpenCaseFile : Window
    {
        CaseFile selectedCaseFile;

        public LoadOpenCaseFile()
        {
            InitializeComponent();

            CaseFileSyncer syncer = new CaseFileSyncer();
            ObservableCollection<CaseFile> caseFiles = new ObservableCollection<CaseFile>(syncer.GetAllCaseFiles());

            // Get a list of casefiles from database.
            this.listViewCaseFiles.ItemsSource = caseFiles;
        }

        private void btnLoadFromLocal_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog open = new OpenFileDialog();
            open.Filter = UserPrefs.CASEFILE_FILTER;
            open.InitialDirectory = UserPrefs.GetCasefileDirectory();
            if(open.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                try
                {
                    string filename = open.FileName;
                    CaseFile caseFile = CaseFile.LoadCaseFile(filename);
                    UserPrefs.caseFile = caseFile;
                    this.Close();

                } catch(Exception ex)
                {
                    System.Windows.MessageBox.Show(ex.ToString());                    
                }
            }
        }

        /// <summary>
        ///  Allows you to load a casefile from the web.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnLoadFromWeb_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (selectedCaseFile != null)
                {
                    CaseFile temp = selectedCaseFile;
                    List<Report> reports = new ReportSyncer().GetReports(temp);
                    foreach (Report report in reports)
                    {
                        temp.AddReport(report);
                    }

                    UserPrefs.caseFile = temp;
                }
                this.Close();
            } catch(Exception ex)
            {
                System.Windows.MessageBox.Show(ex.ToString());
            }
            
        }

        private void SelectCaseFile(object sender, EventArgs e)
        {
            var item = sender as System.Windows.Controls.ListViewItem;
            if (item != null)
            {
                selectedCaseFile = item.DataContext as CaseFile; 
            }
        }
    }
}
