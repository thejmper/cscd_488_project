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
        public CaseFile caseFile;
        public User CurrentUser;
        
        public MainWindow()
        {
            InitializeComponent();
            Login loginWindow = new Login();
            loginWindow.ShowDialog();
            if (CurrentUser == null)
            {
                this.Close();
            }

        }


        private string GetPath(string fileName)
        {
            string baseDir = Directory.GetParent(Directory.GetCurrentDirectory() + @"..\..\..").FullName;
            string path = Path.Combine(baseDir, "testXML");
            return path + fileName;
        }

        private void saveCaseFile_Click(object sender, RoutedEventArgs e)
        {
            if (caseFile == null || CurrentUser == null)
                return;
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextWriter writer = new StreamWriter(GetPath(@"\caseFile.csfl")))
            {
                ser.Serialize(writer, this.caseFile);
            }
        }

        private void newCaseFile_Click(object sender, RoutedEventArgs e)
        {

            /*
            caseFile = new CaseFile("case001", "Bob's old folk's emporium", 1138);
            Report report = caseFile.AssignUser(new Users.User("ksmith", "password", "Kenny Smith"));

            Form template = new Form("formTemplate");
            template.AddElement(new ControlText("notes", "NOTES", true));

            Form anotherForm = new Form("anotherForm");

            report.AddForm(template);
            report.AddForm(anotherForm);

            Report anotherReport = caseFile.AssignUser(new Users.User("hhornblower", "theSea", "Horatio Hornblower"));
            anotherReport.AddForm(anotherForm);
            */

            NewCaseFile n = new NewCaseFile();
            n.ShowDialog();

            //this.scrollView.Content = caseFile.UIelement;
        }

        private void loadCaseFile_Click(object sender, RoutedEventArgs e)
        {
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextReader reader = new StreamReader(GetPath(@"\caseFile.csfl")))
            {
                this.caseFile = (CaseFile)ser.Deserialize(reader);
            }

            this.scrollView.Content = caseFile.UIelement;
        }

        private void Login_Click(object sender, RoutedEventArgs e)
        {
            Login loginWindow = new Login();
            loginWindow.ShowDialog();
        }

        private void addA_Click(object sender, RoutedEventArgs e)
        {
            /*
            Report UsersReport = null;
            foreach (Report report in this.caseFile.reports)
            {
                if (report.licensorID == CurrentUser.id)
                {
                    UsersReport = report;
                    break;
                }
            }


            if (UsersReport == null)
                return;
                */
            Form A;
            XmlSerializer ser = new XmlSerializer(typeof(Form));
            using (TextReader reader = new StreamReader(GetPath(@"\A.frm")))
            {
                A = (Form)ser.Deserialize(reader); ///the cast is important, as XmlSerializer just returns a generic object.
            }

            
            caseFile.reports.ElementAt(0).AddForm(A);
            saveCaseFile_Click(null, null);
            loadCaseFile_Click(null, null);

        }
    }
}
 