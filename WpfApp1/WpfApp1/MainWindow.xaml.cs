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
        private Report report;

        private Form formTemplate;

        public MainWindow()
        {
            InitializeComponent();

           

            XmlSerializer ser = new XmlSerializer(typeof(Form));

            using (TextReader reader = new StreamReader(GetPath(@"\templateForm.xml")))
            {
                this.formTemplate = (Form)ser.Deserialize(reader);
            }

            //create a scrollable stack panel!
            //scrollViewer = new ScrollViewer();
            //scrollViewer.VerticalScrollBarVisibility = ScrollBarVisibility.Auto;
            //scrollViewer.HorizontalScrollBarVisibility = ScrollBarVisibility.Auto;

            //main.Children.Add(scrollViewer);
        }

        private void createCaseFile_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string name = caseFileName.Text;
                string faciliyName = facilityName.Text;
                int licenseNo = Int32.Parse(facilityNo.Text);


                this.caseFile = new CaseFile(name, faciliyName, licenseNo);

                this.caseDisplay.Children.Add(this.caseFile.UIelement);

            } catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void createReport_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string userID = this.userID.Text;
                string userFullName = this.userName.Text;

                report = this.caseFile.AddReport(userID, userFullName);

                this.caseDisplay.Children.Clear();
                this.caseDisplay.Children.Add(this.caseFile.UIelement);
                this.reportDisplay.Children.Add(this.report.UIelement);

            } catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void createForm_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Form form = report.AddForm(this.formTemplate);

                this.reportDisplay.Children.Clear();
                this.reportDisplay.Children.Add(this.report.UIelement);

                this.scrollViewer.Content = form.UIelement;
            } catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }


        private string GetPath(string fileName)
        {
            string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "testXML");
            return path + fileName;
        }

        /*
        //new!
        private void MenuItem_Click_2(object sender, RoutedEventArgs e)
        {
            Form newForm;

            XmlSerializer ser = new XmlSerializer(typeof(Form));

            using (TextReader reader = new StreamReader(GetPath(@"\templateForm.xml")))
            {
                newForm = (Form)ser.Deserialize(reader);
            }
            this.form = (Form)newForm.Clone();
            scrollViewer.Content = form.UIelement;
        }

        //save!
        private void MenuItem_Click_1(object sender, RoutedEventArgs e)
        {
            XmlSerializer ser = new XmlSerializer(form.GetType());

            using (TextWriter writer = new StreamWriter(GetPath(@"\savedForm.xml")))
            {
                ser.Serialize(writer, form);
            }
        }
        //load!
        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            this.form = null;

            XmlSerializer ser = new XmlSerializer(typeof(Form));

            using (TextReader reader = new StreamReader(GetPath(@"\savedForm.xml")))
            {
                this.form = (Form)ser.Deserialize(reader);
            }

            scrollViewer.Content = form.UIelement;
        }


        private string GetPath(string fileName)
        {
            string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "testXML");
            return path + fileName;
        }
        */

    }
}
