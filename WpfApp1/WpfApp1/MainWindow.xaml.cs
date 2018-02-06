using System;
using System.IO;
using System.Xml.Serialization;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;

using WpfApp1.FormItems;
using WpfApp1.Case;
using WpfApp1.Users;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            /*FormWindow formWindow = new FormWindow();
            formWindow.Show();
            this.Close();

            */
            UserPrefs.OnLoad();

            Login loginWindow = new Login();
            loginWindow.ShowDialog();
            if (UserPrefs.user == null)
            {
                this.Close();
            }
            /*CaseFile test = new CaseFile("datetest", "datetest", 3);
            ControlDate date = new ControlDate("test", "enter date");
            LayoutGrid g = new LayoutGrid("name");
            g.AddElement(date, 0, 0, 4);
            Form A = new Form("testform");
            A.AddElement(g);
            Report r = new Report("testreport", "Nick Huff","nhuff", test);
            test.reports.Add(r);
            this.SetCaseFile(test);*/

        }
        
        //--helpers--//
        public void SetCaseFile()
        {            
            this.scrollView.Content = UserPrefs.caseFile.UIelement;
        }
        public void SetCaseFile(CaseFile file)
        {
            UserPrefs.caseFile = file;
            this.SetCaseFile();
        }

        //--button handlers--//
        private void saveCaseFile_Click(object sender, RoutedEventArgs e)
        {
            if(UserPrefs.caseFile == null)
            {
                MessageBox.Show("Nothing to save");
                return;
            }

            System.Windows.Forms.SaveFileDialog save = new System.Windows.Forms.SaveFileDialog();

            save.InitialDirectory = UserPrefs.GetCasefileDirectory();
            save.DefaultExt = UserPrefs.CASEFILE_EXTENSION;
            save.AddExtension = true;
            save.FileName = UserPrefs.caseFile.name;

            if(save.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
                using (TextWriter writer = new StreamWriter(save.FileName))
                {
                    ser.Serialize(writer, UserPrefs.caseFile);
                }
            }
            

            
        }
        private void newCaseFile_Click(object sender, RoutedEventArgs e)
        {
            NewCaseFile n = new NewCaseFile();
            n.ShowDialog();
        }
        private void loadCaseFile_Click(object sender, RoutedEventArgs e)
        {
            LoadOpenCaseFile loadOpenDialog = new LoadOpenCaseFile();
            loadOpenDialog.ShowDialog();

            this.SetCaseFile();

            /*
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextReader reader = new StreamReader(GetPath(@"\caseFile.csfl")))
            {
                CaseFile caseFile = (CaseFile)ser.Deserialize(reader);
                this.SetCaseFile(caseFile);
            }
            */
        }
        private void Login_Click(object sender, RoutedEventArgs e)
        {
            Login loginWindow = new Login();
            loginWindow.ShowDialog();
        }

        private void PrintFile_Click(object sender, RoutedEventArgs e)
        {
            if(UserPrefs.caseFile == null)
            {
                MessageBox.Show("No casefile loaded, cannot print!");
                return;
            }

            UserPrefs.caseFile.Print();
        }

        private void addForm_Click(object sender, RoutedEventArgs e)
        {
            if(UserPrefs.report == null)
            {
                MessageBox.Show("Can't add a new form, there is no active report!");
                return;
            }

            if (UserPrefs.report.isReadOnly)
            {
                MessageBox.Show("Can't add a new form. The report is read-only");
                return;
            }

            AddFormWindow addForm = new AddFormWindow();
            addForm.ShowDialog();
        }

        private void MergeFile_Click(object sender, RoutedEventArgs e)
        {
            if(UserPrefs.caseFile == null)
            {
                MessageBox.Show("No open case file, cannot merge!");
                return;
            }

            //TODO: Anthony, link this up.
            //CaseFile master = get casefile from web matching UserPrefs.caseFile id;
            //master.mergeIntoSelf(UserPrefs.casefile);

        }
    }
}
 