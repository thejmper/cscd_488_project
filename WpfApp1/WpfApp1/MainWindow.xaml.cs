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
        public MainWindow()
        {
            InitializeComponent();


            TabItem formATab = new TabItem();
            formATab.Header = "Form A";

            
            Form f = new Case.Form("FormA");

            LayoutGrid g = new LayoutGrid("header");
            ControlText facilityName = new ControlText("facilityName", "Facility Name");
            g.AddElement(facilityName, 0, 0, 9);

            ControlInteger licenceNumber = new ControlInteger("LicenserNumber", "LicenserNumber");
            g.AddElement(licenceNumber, 9, 0, 3);

            ControlDate inspectionDate = new ControlDate("inDate", "Inspection Date");
            g.AddElement(inspectionDate, 0, 1, 3);

            ControlText liName = new ControlText("LicensorName", "Licensor Name");
            g.AddElement(liName, 3, 1, 9);

            //add header
            f.AddElement(g);

            formATab.Content = f.UIelement;
            //adding all the differnet fields
            XmlSerializer ser = new XmlSerializer(typeof(Form));
            using (TextWriter writer = new StreamWriter(GetPath(@"\templateForm1.xml")))
            {
                ser.Serialize(writer, f);
            }


            tabControl.Items.Add(formATab);
            
        }


        private string GetPath(string fileName)
        {
            string baseDir = Directory.GetParent(Directory.GetCurrentDirectory() + @"..\..\..").FullName;
            string path = Path.Combine(baseDir, "testXML");
            return path + fileName;
        }

        private void tabControl_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
