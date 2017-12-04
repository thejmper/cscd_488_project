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

            ControlInteger licenceNumber = new ControlInteger("LicenserNumber", "Licenser Number");
            g.AddElement(licenceNumber, 9, 0, 3);

            ControlDate inspectionDate = new ControlDate("inDate", "Inspection Date");
            g.AddElement(inspectionDate, 0, 1, 3);

            ControlText liName = new ControlText("LicensorName", "Licensor Name");
            g.AddElement(liName, 3, 1, 9);

            ControlLabel cl = new ControlLabel("label", "Inspection Type: ");
            ControlBoolean full = new ControlBoolean("FullChkBox", "Full");
          
            LayoutStackPanel chkBoxes = new LayoutStackPanel("headerChkBoxs");
            chkBoxes.AddElement(cl, false);
            chkBoxes.AddElement(full, false);
            g.AddElement(chkBoxes,0,3,12);

            //add header
            f.AddElement(g);

            //big text box
            LayoutGrid info = new LayoutGrid("info");
            ControlLabel review = new ControlLabel("review", "Review licensing file for: \n"+
                                                            "•	Current state contract – if applicable\n" +
                                                            "•	Past and current complaint investigations\n" +
                                                            "•	Past SOD’s and uncorrected deficiencies(list on back of form)\n" +
                                                            "•	Past three consecutive years compliance with\n " +
                                                            "               all inspections and investigations\n" +
                                                            "•	Resident and staff list from last licensing inspection\n" +
                                                            "•	Current exemptions");
            info.AddElement(review, 0, 4, 6, 3, false);
            ControlLabel confer = new ControlLabel("confer", "Confer regarding concerns about facility with:\n"+
                                                            "•	Complaint Nurse, licensor\n"+
                                                            "•	Case Managers: HCS, DDD");
            info.AddElement(confer, 6, 4, 6, 3, false);
            f.AddElement(info);


            LayoutGrid manager = new LayoutGrid("manager");

            ControlText managerName = new ControlText("managerName", "CASE MANAGER DDD / HCS");
            manager.AddElement(managerName, 0, 0, 8);
            ControlDate ContactDate = new ControlDate("contactDate", "Contact Date");
            manager.AddElement(ContactDate, 8, 0, 4);
            ControlText ManagerComments = new ControlText("ManagerComments", "COMMENTS / CONCERNS");
            manager.AddElement(ManagerComments, 0,2,12,4,false);

            f.AddElement(manager);

            LayoutGrid OMBUS = new LayoutGrid("OMBUDS");

            ControlText ombudsname = new ControlText("ombudsname", "OMBUDS");
            OMBUS.AddElement(ombudsname, 0, 0, 12);
            
            ControlText Ocomments = new ControlText("Comments", "COMMENTS / CONCERNS");
            OMBUS.AddElement(Ocomments, 0, 1, 12, 4, true);

            f.AddElement(OMBUS);

            LayoutGrid Other = new LayoutGrid("other");

            ControlText otherPeople = new ControlText("otherPeople", "OTHER OUTSIDE AGENCY");
            Other.AddElement(otherPeople, 0, 0, 8);
            ControlDate OtherDate = new ControlDate("otherDate", "Contact Date");
            Other.AddElement(OtherDate, 8, 0, 4);
            ControlText otherComments = new ControlText("otherComments", "COMMENTS / CONCERNS");
            Other.AddElement(otherComments, 0, 2, 12, 4, false);

            f.AddElement(Other);

            LayoutGrid contracts = new LayoutGrid("contracts");
            LayoutStackPanel chkBoxs = new LayoutStackPanel("boxes");

            ControlLabel l = new ControlLabel("label", "Contracts: ");

            ControlBoolean al = new ControlBoolean("ALChkBox", "AL");
            ControlBoolean EARC = new ControlBoolean("EARCChkBox", "EARC");
            ControlBoolean ARC = new ControlBoolean("ARCChkBox", "ARC");
            ControlBoolean Dementia = new ControlBoolean("DementiaChkBox", "Dementia");
            ControlBoolean DDD = new ControlBoolean("DDDChkBox", "DDD");
            ControlBoolean AdultDayCare = new ControlBoolean("AdultDayCarehkBox", "Adult Day Care");
            ControlBoolean None = new ControlBoolean("NoneChkBox", "None");
            chkBoxs.AddElement(l, false);
            chkBoxs.AddElement(al,false);
            chkBoxs.AddElement(EARC, false);
            chkBoxs.AddElement(ARC, false);
            chkBoxs.AddElement(Dementia, false);
            chkBoxs.AddElement(DDD, false);
            chkBoxs.AddElement(AdultDayCare, false);
            chkBoxs.AddElement(None, false);

            contracts.AddElement(chkBoxs,0,0,12);

            f.AddElement(contracts);

            f.AddElement(new ControlLabel("NotesLabel", "Notes:  Pre-Inspection Preparation"));

            LayoutGrid notes = new LayoutGrid("NOTES");
            ControlText note = new ControlText("note", "");
            notes.AddElement(note, 0, 0, 12, 4);

            f.AddElement(notes);


            


            formATab.Content = f.UIelement;
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
