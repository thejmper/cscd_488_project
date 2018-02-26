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
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Xml.Serialization;
using WpfApp1.Case;
using WpfApp1.FormItems;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for BoilerplateTestWindow.xaml
    /// just here for testing.
    /// </summary>
    public partial class BoilerplateTestWindow : Window
    {
        private CaseFile left;
        private CaseFile right;

        public BoilerplateTestWindow()
        {
            InitializeComponent();
        }

        private void new_Click(object sender, RoutedEventArgs e)
        {
            Form formTemplate = new Form("genericForm");
            formTemplate.AddElement(new ControlText("notes", "Some Notes", true));

            left = new CaseFile("caseoo1", "Bob's", 001);
            Report left1 = left.AssignUser(new Users.User("sCarter", "1234", "Samantha Carter"));
            left1.AddForm(formTemplate);

            
            right = new CaseFile("caseoo1", "Bob's", 001);
            Report right1 = right.AssignUser(new Users.User("sCarter", "1234", "Samantha Carter"));
            right1.AddForm(formTemplate);

            Report right2 = right.AssignUser(new Users.User("jO'niell", "456", "Jack O'Niell"));
            right2.AddForm(formTemplate);

            leftView.Content = left.UIelement;
            rightView.Content = right.UIelement;
        }

        private void merge_Click(object sender, RoutedEventArgs e)
        {
            left.MergeIntoSelf(right);
        }

        private void save_Click(object sender, RoutedEventArgs e)
        {
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextWriter writer = new StreamWriter(GetPath(@"\caseFile.csfl")))
            {
                ser.Serialize(writer, right);
            }
        }

        private void load_Click(object sender, RoutedEventArgs e)
        {
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextReader reader = new StreamReader(GetPath(@"\caseFile.csfl")))
            {
                right = (CaseFile)ser.Deserialize(reader);
                this.rightView.Content = right.UIelement;
            }
        }



        private string GetPath(string fileName)
        {
            string baseDir = Directory.GetParent(Directory.GetCurrentDirectory() + @"..\..\..").FullName;
            string path = Path.Combine(baseDir, "testXML");
            return path + fileName;
        }

        private void openAsAssignedUser_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Opening right side as a field user sCarter. You'll be able to edit HER report, but the others should be readonly");
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextReader reader = new StreamReader(GetPath(@"\caseFile.csfl")))
            {
                right = (CaseFile)ser.Deserialize(reader);
                right.OpenAsUser(new Users.User("sCarter", "1234", "Samantha Carter"));
            }
            this.rightView.Content = right.UIelement;

        }

        private void openAsUnassginedUser_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Opening right side as a field user jQuinn. He's not assiged to anything, so you won't be able to do anything.");
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextReader reader = new StreamReader(GetPath(@"\caseFile.csfl")))
            {
                right = (CaseFile)ser.Deserialize(reader);
                right.OpenAsUser(new Users.User("jQuinn", "1234", "Jonas Quinn"));
            }
            this.rightView.Content = right.UIelement;

        }

        private void openAsAdmin_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Opening right side as a field user gHammoned. He's not assiged to the case file, but IS an admin and can thus edit things");
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextReader reader = new StreamReader(GetPath(@"\caseFile.csfl")))
            {
                right = (CaseFile)ser.Deserialize(reader);
                right.OpenAsUser(new Users.User("gHammond", "1234", "George Hammond", true));
            }
            this.rightView.Content = right.UIelement;
        }


    }
}
