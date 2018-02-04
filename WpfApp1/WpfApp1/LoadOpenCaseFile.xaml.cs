using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Xml.Serialization;
using WpfApp1.Case;
using WpfApp1.Reports.Syncers;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for LoadOpenCaseFile.xaml
    /// </summary>
    public partial class LoadOpenCaseFile : Window
    {
        CaseFile selectedCaseFile;

        public LoadOpenCaseFile()
        {
            InitializeComponent();

            CaseFileSyncer syncer = new CaseFileSyncer();

            // Get a list of casefiles from database.
            this.listViewCaseFiles.ItemsSource = syncer.GetAllCaseFiles();
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
                    XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
                    using (TextReader reader = new StreamReader(filename))
                    {
                        CaseFile caseFile = (CaseFile)ser.Deserialize(reader);
                        UserPrefs.caseFile = caseFile;
                    }
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
            if (selectedCaseFile != null)
            {
                UserPrefs.caseFile = selectedCaseFile;
            }
            this.Close();
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
