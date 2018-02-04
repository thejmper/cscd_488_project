using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WpfApp1.Case;
using WpfApp1.Reports.Syncers;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for LoadOpenCaseFileDatabase.xaml
    /// </summary>
    public partial class LoadOpenCaseFileDatabase : Window
    {
        CaseFile selectedCaseFile;

        public LoadOpenCaseFileDatabase()
        {
            InitializeComponent();

            CaseFileSyncer syncer = new CaseFileSyncer();
            ObservableCollection<CaseFile> caseFileList = new ObservableCollection<CaseFile>(syncer.GetAllCaseFiles());

            caseFileListView.ItemsSource = caseFileList;
        }

        private void SelectCaseFile(object sender, EventArgs e)
        {
            var item = sender as ListViewItem;
            if (item != null)
            {
                selectedCaseFile = item.DataContext as CaseFile;
            }
        }

        private void btnLoadCase_Click(object sender, RoutedEventArgs e)
        {
            if (selectedCaseFile != null)
            {
                UserPrefs.caseFile = selectedCaseFile;
            }
            
            this.Close();
        }
    }
}
