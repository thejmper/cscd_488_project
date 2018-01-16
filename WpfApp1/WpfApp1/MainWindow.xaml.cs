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

           



            /*
            Form formB = new Case.Form("FormB");
            LayoutGrid headerB = new LayoutGrid("header");

            LayoutStackPanel OmBusPanel = new LayoutStackPanel("omb");
            ControlBoolean om = new ControlBoolean("om", "The field office has contacted the Ombuds. (Attachment A)");
            OmBusPanel.AddElement(om);
            formB.AddElement(OmBusPanel);

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

            ControlLabel reqDocs2 = new ControlLabel("reqDocs2", "Documentation required:");

            ControlLabel due2 = new ControlLabel("due2", "Due to Licensor");
            ControlLabel met2 = new ControlLabel("met2", "Due Met");

            grid.AddElement(reqDocs2, 0, 3, 8);
            grid.AddElement(due2, 8, 3, 3);
            grid.AddElement(met2, 11, 3, 1);

            ControlLabel lb4 = new ControlLabel("lb5", "Resident Information:  \nRequest for specific resident and staff records will occur during the inspection.");
            ControlLabel lb5 = new ControlLabel("lb4", "Within two(2)\n hours of entry of facility");
            ControlBoolean met3 = new ControlBoolean("met3", "");
            grid.AddElement(lb4, 0, 4, 8, 2);
            grid.AddElement(lb5, 8, 4, 2, 2);
            grid.AddElement(met3, 11, 4, 1, 2);

            ControlLabel lb6 = new ControlLabel("lb6", "Staff Information:  \nComplete list of staff, position title, shift, hire date, and day and month of birth.  \nProvide a copy for each inspection team member.  (Attachment K)");
            ControlLabel lb7 = new ControlLabel("lb7", "Within two(2)\n hours of entry of facility");
            ControlBoolean met4 = new ControlBoolean("met4", "");
            grid.AddElement(lb6, 0, 6, 8, 2);
            grid.AddElement(lb7, 8, 6, 2, 2);
            grid.AddElement(met4, 11, 6, 1, 2);

            ControlLabel lb8 = new ControlLabel("lb8", "Staff Information:  \nThree weeks of staffing schedules including nursing, dietary staff, and housekeeping / laundry staff.");
            ControlLabel lb9 = new ControlLabel("lb9", "Within two(2)\n hours of entry of facility");
            ControlBoolean met5 = new ControlBoolean("met5", "");
            grid.AddElement(lb8, 0, 8, 8, 2);
            grid.AddElement(lb9, 8, 8, 2, 2);
            grid.AddElement(met5, 11, 8, 1, 2);

            ControlLabel lb10 = new ControlLabel("lb10", "Staff Information:  Location of personnel files, including orientation, CPR, First Aid \ntraining, TB testing, background inquiry information, basic or modified training, food \nhandler cards, continuing education and specialty training as required.");
            ControlLabel lb11 = new ControlLabel("lb11", "Within two(2)\n hours of entry of facility");
            ControlBoolean met6 = new ControlBoolean("met6", "");
            grid.AddElement(lb10, 0, 10, 8, 2);
            grid.AddElement(lb11, 8, 10, 2, 2);
            grid.AddElement(met6, 11, 10, 1, 2);

            ControlLabel lb12 = new ControlLabel("lb12", "Staff Information:  \nName and phone numbers of administrator, designee, and/or nurse");
            ControlLabel lb13 = new ControlLabel("lb13", "Within two(2)\n hours of entry of facility");
            ControlBoolean met7 = new ControlBoolean("met7", "");
            grid.AddElement(lb12, 0, 12, 8, 2);
            grid.AddElement(lb13, 8, 12, 2, 2);
            grid.AddElement(met7, 11, 12, 1, 2);

            ControlLabel lb14 = new ControlLabel("lb14", "Admin Information:  \nDisclosure of services provided. (Attachment L)");
            ControlLabel lb15 = new ControlLabel("lb15", "Within two(2)\n hours of entry of facility");
            ControlBoolean met8 = new ControlBoolean("met8", "");
            grid.AddElement(lb14, 0, 14, 8, 2);
            grid.AddElement(lb15, 8, 14, 2, 2);
            grid.AddElement(met8, 11, 14, 1, 2);

            ControlLabel lb16 = new ControlLabel("lb16", "Admin Information:  \nLocation of the resident records, including negotiated service agreements.");
            ControlLabel lb17 = new ControlLabel("lb17", "Within two(2)\n hours of entry of facility");
            ControlBoolean met9 = new ControlBoolean("met9", "");
            grid.AddElement(lb16, 0, 16, 8, 2);
            grid.AddElement(lb17, 8, 16, 2, 2);
            grid.AddElement(met9, 11, 16, 1, 2);

            ControlLabel lb18 = new ControlLabel("lb18", "Admin Information:  Copy of evidence of general and professional liability insurance \ncoverage, must have name and address of the facility on the document. \n(Attachment L)");
            ControlLabel lb19 = new ControlLabel("lb19", "Within six(6)\n hours of entry of facility");
            ControlBoolean met10 = new ControlBoolean("met10", "");
            grid.AddElement(lb18, 0, 18, 8, 2);
            grid.AddElement(lb19, 8, 18, 2, 2);
            grid.AddElement(met10, 11, 18, 1, 2);

            ControlLabel lb20 = new ControlLabel("lb20", "Admin Information:  \nFour weeks menus as planned that includes any changes in the menu.");
            ControlLabel lb21 = new ControlLabel("lb21", "Within six(6)\n hours of entry of facility");
            ControlBoolean met11 = new ControlBoolean("met11", "");
            grid.AddElement(lb20, 0, 20, 8, 2);
            grid.AddElement(lb21, 8, 20, 2, 2);
            grid.AddElement(met11, 11, 20, 1, 2);

            ControlLabel lb22 = new ControlLabel("lb22", "Admin Information:  \nPet records for all pets in the facility. ");
            ControlLabel lb23 = new ControlLabel("lb23", "Within six(6)\n hours of entry of facility");
            ControlBoolean met12 = new ControlBoolean("met12", "");
            grid.AddElement(lb22, 0, 22, 8, 2);
            grid.AddElement(lb23, 8, 22, 2, 2);
            grid.AddElement(met12, 11, 22, 1, 2);

            ControlLabel lb24 = new ControlLabel("lb24", "Admin Information:  \nChanges in physical environment since last full inspection; \nApproved Construction Review projects since the last full inspection.  (Attachment P)");
            ControlLabel lb25 = new ControlLabel("lb25", "Within six(6)\n hours of entry of facility");
            ControlBoolean met13 = new ControlBoolean("met13", "");
            grid.AddElement(lb24, 0, 24, 8, 2);
            grid.AddElement(lb25, 8, 24, 2, 2);
            grid.AddElement(met13, 11, 24, 1, 2);

            ControlLabel lb26 = new ControlLabel("lb26", "Admin Information: \nCopies of any waivers/exceptions/exemptions to rules. (Attachment A)");
            ControlLabel lb27 = new ControlLabel("lb27", "Within six(6)\n hours of entry of facility");
            ControlBoolean met14 = new ControlBoolean("met14", "");
            grid.AddElement(lb26, 0, 26, 8, 2);
            grid.AddElement(lb27, 8, 26, 2, 2);
            grid.AddElement(met14, 11, 26, 1, 2);

            ControlLabel lb28 = new ControlLabel("lb28", "If an issue is identified that directly relates to a specific resident no longer in the ALF, if no current residents \nreside in the ALF, or if there is a concern regarding discharge or transfers:");
            grid.AddElement(lb28, 0, 28, 12, 2);

            ControlLabel reqDocs3 = new ControlLabel("reqDocs3", "Documentation required:");

            ControlLabel met15 = new ControlLabel("met15", "Met: ");

            grid.AddElement(reqDocs3, 0, 30, 11);
            grid.AddElement(met15, 11, 30, 1);

            ControlLabel lb29 = new ControlLabel("lb29", "Resident Information:  \nList of residents discharged in last six months with forwarding address and reason for \ndischarge unless deceased, then just write deceased.");
            ControlBoolean met16 = new ControlBoolean("met16", "");
            grid.AddElement(lb29, 0, 31, 8, 2);
            grid.AddElement(met16, 11, 31, 8, 2);

            ControlLabel comm = new ControlLabel("comm", "Notes");
            grid.AddElement(comm, 0, 33, 12);

            ControlText notes = new ControlText("notes", "", true);
            grid.AddElement(notes, 0, 34, 12, 2);

            formB.AddElement(headerB);
            formB.AddElement(grid);



            XmlSerializer ser = new XmlSerializer(typeof(Form));

            using (TextWriter writer = new StreamWriter(GetPath(@"B.frm")))
            {
                ser.Serialize(writer, formB);
            }
            */



            //FormB.Content = formB.UIelement;
            //control.Items.Add(tabB);

            //this.Content = control;



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

<<<<<<< HEAD
            Report anotherReport = caseFile.AssignUser(new Users.User("hhornblower", "theSea", "Horatio Hornblower"));
            anotherReport.AddForm(anotherForm);
=======
            //Report anotherReport = caseFile.AssignUser(new Users.User("hhornblower", "theSea", "Horatio Hornblower"));
            //anotherReport.AddForm(template);
>>>>>>> dc852b9c0712397216f764efc2fbbcb9ec74fe4a



           // this.scrollView.Content = caseFile.UIelement;
        }

        private void loadCaseFile_Click(object sender, RoutedEventArgs e)
        {
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextReader reader = new StreamReader(GetPath(@"\caseFile.xml")))
            {
                this.caseFile = (CaseFile)ser.Deserialize(reader);
            }

            //this.scrollView.Content = caseFile.UIelement;
        }
    }
}
 