using System;
using System.Collections.Generic;
using System.IO;
using System.Windows;
using System.Windows.Forms;
using System.Xml.Serialization;
using ALInspectionApp.CaseObject;
using ALInspectionApp.Users;

namespace ALInspectionApp.Windows.CaseFileWindows
{
    /// <summary>
    /// Interaction logic for LoadOpenCaseFile.xaml Allows the user
    /// to load a casefile from the database or open one from
    /// the local machine.
    /// </summary>
    public partial class LoadOpenCaseFile : Window
    {
        public LoadOpenCaseFile()
        {
            InitializeComponent();
            //TODO: anthony, this is DB related so it's on you
            //get list of casefiles from database
            //this.listViewCaseFiles.ItemsSource = caseFileList / Array;
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
        ///  Allows you to load a casefile from the web. TODO: make this work
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnLoadFromWeb_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.MessageBox.Show("This functionality has not been implemented yet.");
        }
    }
}
