
using System.Windows;

using WpfApp1.FormItems;
using WpfApp1.Case;
using System.Xml.Serialization;
using System.IO;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for FormWindow.xaml
    /// </summary>
    public partial class FormWindow : Window
    {
        public FormWindow()
        {
            InitializeComponent();

            /*FormA
            Form form = new Form("FormA");
            LayoutStackPanel layoutStackPanel = new LayoutStackPanel("inspectionType");
            layoutStackPanel.AddElement(new ControlLabel("lab1", "Inspection Type"));
            layoutStackPanel.AddElement(new ControlBoolean("full", "Full"));
            form.AddElement(layoutStackPanel);

            LayoutGrid body = new LayoutGrid("body");
            body.AddElement(new ControlText("caseManager", "CASE MANAGER DDD / HCS"),0,0,8);
            body.AddElement(new ControlDate("contact1", "Contact Date"), 8, 0, 4);
            body.AddElement(new ControlText("comm1", "COMMENTS / CONCERNS",true),0,1,12);
            body.AddElement(new ControlText("ombuds", "OMBUDS"), 0, 2, 12);
            body.AddElement(new ControlText("com2", "COMMENTS / CONCERNS", true), 0, 3, 12);
            body.AddElement(new ControlText("other", "OTHER OUTSIDE AGENCY"), 0, 4, 8);
            body.AddElement(new ControlDate("contact2", "CONTACT DATE"), 8, 4, 4);
            body.AddElement(new ControlText("com3", "COMMENTS / CONCERNS", true),0,5,12);
            LayoutStackPanel contracts = new LayoutStackPanel("contracts");
            contracts.AddElement(new ControlLabel("con", "Contracts: "));
            contracts.AddElement(new ControlBoolean("al", "AL"));
            contracts.AddElement(new ControlBoolean("earc", "EARC"));
            contracts.AddElement(new ControlBoolean("arc", "ARC"));
            contracts.AddElement(new ControlBoolean("dementia", "Dementia"));
            contracts.AddElement(new ControlBoolean("ddd", "DDD"));
            contracts.AddElement(new ControlBoolean("adc", "Adult Day Care"));
            contracts.AddElement(new ControlBoolean("none", "None"));
            body.AddElement(contracts, 0, 6, 12);
            body.AddElement(new ControlText("exempt", "CURRENT EXEMPTIONS", true), 0, 7, 12);
            body.AddElement(new ControlText("notes", "Notes:  Pre-Inspection Preparation", true), 0,8,12);
            
            form.AddElement(body);
            */

            /*from b
            Form form = new Form("FormB");
            LayoutStackPanel layoutStackPanel = new LayoutStackPanel("inspectionType");
            layoutStackPanel.AddElement(new ControlLabel("lab1", "Inspection Type"));
            layoutStackPanel.AddElement(new ControlBoolean("initial", "Initial"));
            layoutStackPanel.AddElement(new ControlBoolean("full", "Full"));
            layoutStackPanel.AddElement(new ControlBoolean("followup", "Follow up"));
            layoutStackPanel.AddElement(new ControlBoolean("monitering", "Monitoring"));
            layoutStackPanel.AddElement(new ControlBoolean("complaint", "Complaint"));
            layoutStackPanel.AddElement(new ControlInteger("number", "Number"));
            form.AddElement(layoutStackPanel);
            LayoutGrid body = new LayoutGrid("body");
            body.AddElement(new ControlBoolean("ombuds", "The field office has contacted the Ombuds. (Attachment A)"), 0,0,12,2);
            body.AddElement(new ControlLabel("lab2", "Documentation required:"), 0, 1, 8);
            body.AddElement(new ControlLabel("lab3", "Due to Licensor"), 8, 1, 3);
            body.AddElement(new ControlLabel("lab4", "Due met"), 11, 1, 1);

            body.AddElement(new ControlLabel("lab5", "Resident Information:  Complete list of residents including their roommates, room number,\n and language spoken if not fluent in English (facility list of residents). \n* (Attachment C - only required if no Resident Characteristic Roster provided"), 0, 2, 8);
            body.AddElement(new ControlLabel("lab6", "Within two (2) hours\n of entry of facility"), 8, 2, 3);
            body.AddElement(new ControlBoolean("bool1", ""), 11, 2, 1);

            body.AddElement(new ControlLabel("lab7", "Resident Information:  A completed resident characteristic list Include all licensed\n rooms and all residents.  If a nonresident in a licensed room, indicate nonresident.\n Provide a copy for each inspection team member. (Attachment D)"), 0, 3, 8);
            body.AddElement(new ControlLabel("lab8", "Within two (2) hours\n of entry of facility"), 8, 3, 3);
            body.AddElement(new ControlBoolean("bool2", ""), 11, 3, 1);

            body.AddElement(new ControlLabel("lab9", "Resident Information:  Request for specific resident and staff records will occur during the inspection."), 0, 4, 8);
            body.AddElement(new ControlLabel("lab10", "Within two (2) hours\n of entry of facility"), 8, 4, 3);
            body.AddElement(new ControlBoolean("bool3", ""), 11, 4, 1);

            body.AddElement(new ControlLabel("lab11", "Staff Information:  Complete list of staff, position title, shift, hire date, and day and month of birth.  \nProvide a copy for each inspection team member.  (Attachment K)"), 0, 5, 8);
            body.AddElement(new ControlLabel("lab12", "Within two (2) hours\n of entry of facility"), 8, 5, 3);
            body.AddElement(new ControlBoolean("bool4", ""), 11, 5, 1);

            body.AddElement(new ControlLabel("lab13", "Staff Information:  Three weeks of staffing schedules including nursing, \ndietary staff, and housekeeping / laundry staff."), 0, 6, 8);
            body.AddElement(new ControlLabel("lab14", "Within two (2) hours\n of entry of facility"), 8,6, 3);
            body.AddElement(new ControlBoolean("bool6", ""), 11, 6, 1);

            body.AddElement(new ControlLabel("lab16", "Staff Information:  Location of personnel files, including orientation, CPR, First Aid\n training, TB testing, background inquiry information, basic or modified training, food\n handler cards, continuing education and specialty training as required."), 0, 7, 8);
            body.AddElement(new ControlLabel("lab17", "Within two (2) hours\n of entry of facility"), 8, 7, 3);
            body.AddElement(new ControlBoolean("bool7", ""), 11,7, 1);

            body.AddElement(new ControlLabel("lab18", "Staff Information:  Name and phone numbers of administrator, designee, and/or nurse"), 0, 8, 8);
            body.AddElement(new ControlLabel("lab19", "Within two (2) hours\n of entry of facility"), 8, 8, 3);
            body.AddElement(new ControlBoolean("bool8", ""), 11, 8, 1);

            body.AddElement(new ControlLabel("lab20", "Admin Information:  Location of the resident records, including negotiated service agreements."), 0, 9, 8);
            body.AddElement(new ControlLabel("lab21", "Within two (2) hours\n of entry of facility"), 8, 9, 3);
            body.AddElement(new ControlBoolean("bool9", ""), 11, 9, 1);

            body.AddElement(new ControlLabel("lab22", "Admin Information:  Copy of evidence of general and professional liability \ninsurance coverage, must have name and address of the facility on the document. \n(Attachment L)"), 0, 10, 8);
            body.AddElement(new ControlLabel("lab23", "Within six (6) hours\n of entry of facility"), 8, 10, 3);
            body.AddElement(new ControlBoolean("bool10", ""), 11, 10, 1);

            body.AddElement(new ControlLabel("lab24", "Admin Information:  Four weeks menus as planned that includes any changes in the menu."), 0, 11, 8);
            body.AddElement(new ControlLabel("lab25", "Within six (6) hours\n of entry of facility"), 8, 11, 3);
            body.AddElement(new ControlBoolean("bool11", ""), 11, 11, 1);

            body.AddElement(new ControlLabel("lab26", "Admin Information:  Pet records for all pets in the facility."), 0, 12, 8);
            body.AddElement(new ControlLabel("lab27", "Within six (6) hours\n of entry of facility"), 8, 12, 3);
            body.AddElement(new ControlBoolean("bool12", ""), 11, 12, 1);

            body.AddElement(new ControlLabel("lab29", "Admin Information:  Changes in physical environment since last full inspection;\n Approved Construction Review projects since the last full inspection.  (Attachment P)"), 0, 13, 8);
            body.AddElement(new ControlLabel("lab28", "Within six (6) hours\n of entry of facility"), 8, 13, 3);
            body.AddElement(new ControlBoolean("bool13", ""), 11, 13, 1);

            body.AddElement(new ControlLabel("lab30", "Admin Information: Copies of any waivers/exceptions/exemptions to rules. \n(Attachment A)"), 0, 14, 8);
            body.AddElement(new ControlLabel("lab31", "Within six (6) hours\n of entry of facility"), 8, 14, 3);
            body.AddElement(new ControlBoolean("bool14", ""), 11, 14, 1);

            body.AddElement(new ControlLabel("lab32", "Resident Information:  List of residents discharged in last six months with forwarding address and reason for \ndischarge unless deceased, then just write deceased."), 0, 15, 11);
            body.AddElement(new ControlBoolean("bool15", ""), 11, 15, 1);

            body.AddElement(new ControlText("notes", "Notes:  ", true), 0, 16, 12);

            form.AddElement(body);
            */

            /*Form C 
            Form form = new Form("FormC");
            LayoutStackPanel layoutStackPanel = new LayoutStackPanel("inspectionType");
            layoutStackPanel.AddElement(new ControlLabel("lab1", "Inspection Type"));
            layoutStackPanel.AddElement(new ControlBoolean("initial", "Initial"));
            layoutStackPanel.AddElement(new ControlBoolean("full", "Full"));
            layoutStackPanel.AddElement(new ControlBoolean("followup", "Follow up"));
            layoutStackPanel.AddElement(new ControlBoolean("monitering", "Monitoring"));
            layoutStackPanel.AddElement(new ControlBoolean("complaint", "Complaint"));
            layoutStackPanel.AddElement(new ControlInteger("number", "Number"));
            form.AddElement(layoutStackPanel);
            LayoutGrid body = new LayoutGrid("body");
            body.AddElement(new ControlLabel("lab1", "Room\nNumber"), 0, 0, 2);
            body.AddElement(new ControlLabel("lab2", "RESIDENT NAME"), 2, 0, 5);
            body.AddElement(new ControlLabel("lab3", "NOTES"), 7, 0, 5);

            body.AddElement(new ControlText("roomnum", ""), 0, 1, 2);
            body.AddElement(new ControlText("resname", ""), 2, 1, 5);
            body.AddElement(new ControlText("notes", "", true), 7, 1, 5);
            form.AddElement(body);*/

            /*Form E*/
            Form form = new Form("FormE");
            LayoutStackPanel layoutStackPanel = new LayoutStackPanel("inspectionType");
            layoutStackPanel.AddElement(new ControlLabel("lab1", "Inspection Type"));
            layoutStackPanel.AddElement(new ControlBoolean("full", "Full"));
            form.AddElement(layoutStackPanel);

            LayoutGrid body = new LayoutGrid("body");
            body.AddElement(new ControlDate("date", "DATE"), 0, 0, 4);
            body.AddElement(new ControlText("time", "TIME"), 4, 0, 4);
            body.AddElement(new ControlInteger("numRes", "NUMBER OF RESIDENTS PRESENT"), 8, 0, 4);

            body.AddElement(new ControlLabel("lab1", "RESIDENT COUNCIL?"), 0, 1, 3, 1, false);
            body.AddElement(new ControlBoolean("yes1", "Yes"), 0, 2, 1, 1, false);
            body.AddElement(new ControlBoolean("no1", "No"), 1, 2, 1, 1, false);
            body.AddElement(new ControlText("cPrez", "COUNCIL PRESIDENT"), 2, 1, 6, 1);
            body.AddElement(new ControlLabel("lab2", "FOOD COMMITTEE"), 8, 1, 3, 1, false);
            body.AddElement(new ControlBoolean("yes2", "Yes"), 8, 2, 1, 1, false);
            body.AddElement(new ControlBoolean("no2", "No"), 9, 2, 1, 1, false);

            body.AddElement(new ControlText("text1", "Areas of concerns / issues identified prior to meeting.  Refer to resident characteristic roster / sample selection form as \nneeded to identify residents.", true),0,3,12);
            body.AddElement(new ControlText("text2", "Introductions and brief explanation of meeting and inspection process by RCS staff.  Use questions modified for population \ntype.  Group Interview:  Suggested Areas for Discussion.\n\n " +
                                                     "We would like to ask you several questions about life in the facility and the interactions of residents and staff.\n" +
                                                      "•	Rules.Tell me about the rules in this facility.For instance, are there rules about what time residents go to bed \nat night and get up in the morning ?", true), 0, 4, 12);
            body.AddElement(new ControlText("text3", "•	Privacy.  Can you please describe the ways staff makes an effort to make sure that your privacy and the privacy of all\n residents are respected?  Do you meet privately with visitors, and have private telephone calls? ", true), 0, 5, 12);

            form.AddElement(body);


            string fileName = Path.Combine(UserPrefs.GetFormDirectory(), form.name + UserPrefs.FORM_EXTENSION);
            this.scrollView.Content = form.UIelement;
            XmlSerializer ser = new XmlSerializer(typeof(Form));
            using (TextWriter writer = new StreamWriter(fileName))
            {
                ser.Serialize(writer, form);
            }

        }
    }
}
