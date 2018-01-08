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
namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private CaseFile caseFile;
        
        public MainWindow()
        {
            InitializeComponent();


        }


        private string GetPath(string fileName)
        {
            string baseDir = Directory.GetParent(Directory.GetCurrentDirectory() + @"..\..\..").FullName;
            string path = Path.Combine(baseDir, "testXML");
            return path + fileName;
        }

        private void saveCaseFile_Click(object sender, RoutedEventArgs e)
        {
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextWriter writer = new StreamWriter(GetPath(@"\caseFile.xml")))
            {
                ser.Serialize(writer, this.caseFile);
            }
        }

        private void newCaseFile_Click(object sender, RoutedEventArgs e)
        {
            caseFile = new CaseFile("case001", "Bob's old folk's emporium", 1138);
            Report report = caseFile.AssignUser(new Users.User("ksmith", "password", "Kenny Smith"));

            Form template = new Form("formTemplate");
            template.AddElement(new ControlText("notes", "NOTES", true));

            Form anotherForm = new Form("anotherForm");

            report.AddForm(template);
            report.AddForm(anotherForm);

            Report anotherReport = caseFile.AssignUser(new Users.User("hhornblower", "theSea", "Horatio Hornblower"));
            anotherReport.AddForm(anotherForm);



            this.scrollView.Content = caseFile.UIelement;
        }

        private void loadCaseFile_Click(object sender, RoutedEventArgs e)
        {
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextReader reader = new StreamReader(GetPath(@"\caseFile.xml")))
            {
                this.caseFile = (CaseFile)ser.Deserialize(reader);
            }

            this.scrollView.Content = caseFile.UIelement;
        }
    }
}
 