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

            TabControl control = new TabControl();
            control.Name = "control";

            TabItem tabB = new TabItem();
            tabB.Header = "Form B";

            Form formB = new Case.Form("FormB");
            LayoutGrid headerB = new LayoutGrid("header");


            ControlText facilityName = new ControlText("FacilityName", "ASSISTED LIVING FACILITY NAME");
            headerB.AddElement(facilityName, 0, 0, 9);
            ControlInteger licenseNumber = new ControlInteger("licenseNumber", "LICENSE NUMBER");
            headerB.AddElement(licenseNumber, 9, 0, 3);
            ControlDate inspectionDate = new ControlDate("InpectionDate", "INSPECTION DATE");
            headerB.AddElement(inspectionDate, 0, 1, 3);
            ControlText name = new ControlText("LicensorName", "LICENSOR NAME");
            headerB.AddElement(name, 3, 1, 9);

            
  
            LayoutStackPanel chkboxes = new LayoutStackPanel("boxes");
            ControlLabel lab = new ControlLabel("lab", "Inspection Type:");
            ControlBoolean intial = new ControlBoolean("initial", "Initial");
            ControlBoolean Full = new ControlBoolean("Full", "Full");
            ControlBoolean Followup = new ControlBoolean("Followup", "Follow up");
            ControlBoolean Monitoring = new ControlBoolean("Monitoring", "Monitoring");
            ControlBoolean Complaint = new ControlBoolean("Complaint", "");
            ControlInteger num = new ControlInteger("ComplaintNumber", "Complaint Number");
            

            chkboxes.AddElement(lab);
            chkboxes.AddElement(intial);
            chkboxes.AddElement(Full);
            chkboxes.AddElement(Followup);
            chkboxes.AddElement(Monitoring);
            chkboxes.AddElement(Complaint);
            chkboxes.AddElement(num);

            headerB.AddElement(chkboxes, 0, 3, 12);

            

            LayoutGrid grid = new LayoutGrid("body");

           
            ControlLabel reqDocs = new ControlLabel("reqDocs", "Documentation required:");

            ControlLabel due = new ControlLabel("due", "Due to Licensor");
            ControlLabel met = new ControlLabel("met", "Due Met");
            ControlLabel lb2 = new ControlLabel("lb2", "Resident Information:  Complete list of residents including their roommates \n, room number, and language spoken if not fluent in English (facility list of residents). *" + "\n" + "(Attachment C - only required if no Resident Characteristic Roster provided");
            ControlLabel lb3 = new ControlLabel("lb3", "Within two(2)\n hours of entry of facility");
            ControlBoolean met1 = new ControlBoolean("met1", "");

            grid.AddElement(reqDocs, 0, 0, 8);
            grid.AddElement(due, 8, 0, 3);
            grid.AddElement(met, 11, 0, 1);
            grid.AddElement(lb2, 0, 1, 8, 2);
            grid.AddElement(lb3, 8, 1, 2, 2);
            grid.AddElement(met1, 11, 1, 1, 2);


            formB.AddElement(headerB);
            formB.AddElement(grid);


            





            tabB.Content = formB.UIelement;
            control.Items.Add(tabB);

            this.Content = control;



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
 