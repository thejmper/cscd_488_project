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
            Login loginWindow = new Login();
            loginWindow.ShowDialog();
            if (UserPrefs.user == null)
            {
                this.Close();
            }

        }
        
        //--helpers--//
        private string GetPath(string fileName)
        {
            string baseDir = Directory.GetParent(Directory.GetCurrentDirectory() + @"..\..\..").FullName;
            string path = Path.Combine(baseDir, "testXML");
            return path + fileName;
        }
        public void SetCaseFile(CaseFile caseFile)
        {
            UserPrefs.caseFile = caseFile;
            this.scrollView.Content = caseFile.UIelement;
            //this.flowScroll.Document = caseFile.GetFlowDocument();
        }

        //--button handlers--//
        private void saveCaseFile_Click(object sender, RoutedEventArgs e)
        {
            if(UserPrefs.caseFile == null)
            {
                MessageBox.Show("Nothing to save");
                return;
            }

            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextWriter writer = new StreamWriter(GetPath(@"\caseFile.csfl")))
            {
                ser.Serialize(writer, UserPrefs.caseFile);
            }
        }
        private void newCaseFile_Click(object sender, RoutedEventArgs e)
        {
            NewCaseFile n = new NewCaseFile();
            n.ShowDialog();
        }
        private void loadCaseFile_Click(object sender, RoutedEventArgs e)
        {
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextReader reader = new StreamReader(GetPath(@"\caseFile.csfl")))
            {
                CaseFile caseFile = (CaseFile)ser.Deserialize(reader);
                this.SetCaseFile(caseFile);
            }
        }
        private void Login_Click(object sender, RoutedEventArgs e)
        {
            Login loginWindow = new Login();
            loginWindow.ShowDialog();
        }

        private void addA_Click(object sender, RoutedEventArgs e)
        {

            User currentUser = UserPrefs.user;
            CaseFile caseFile = UserPrefs.caseFile;
            foreach (Report report in caseFile.reports)
            {
                //changed after testing works
                if (report.licensorID == "sCarter")// currentUser.id)
                {
                    Form A;
                    XmlSerializer ser = new XmlSerializer(typeof(Form));
                    using (TextReader reader = new StreamReader(GetPath(@"\A.frm")))
                    {
                        A = (Form)ser.Deserialize(reader); ///the cast is important, as XmlSerializer just returns a generic object.
                    }
                    report.AddForm(A);
                }
            }

            //TODO save the new UI and then load it to refresh the window
            


        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {

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
    }
}
 