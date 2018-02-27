
using System.Windows;

using WpfApp1.FormItems;
using WpfApp1.Case;
using System.Xml.Serialization;
using System.IO;
using System.Collections.Generic;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for FormWindow.xaml
    /// TODO" get rid of this.
    /// </summary>
    public partial class FormWindow : Window
    { 

        //TODO: form k369 , d362
        public FormWindow()
        {
            InitializeComponent();

            //Form form = new Form("this is so that it can compile and run");

            Form form = new Form("FormP");
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
            body.AddElement(new ControlLabel("lab1", "Food Services:  General observation of kitchen and staff (wear a hair restraint per regulation and facility policy)."), 0, 0, 12);
            body.AddElement(new ControlBoolean("FS1", "", System.Windows.Controls.Orientation.Horizontal), 0, 1, 1, false);
            body.AddElement(new ControlLabel("FSLab1", "Overall cleanliness of kitchen area (6505)"), 1, 1, 11, false);
            body.AddElement(new ControlBoolean("FS2", "", System.Windows.Controls.Orientation.Horizontal), 0, 2, 1, false);
            body.AddElement(new ControlLabel("FSLab2", "Proper hand hygiene and glove use (02305 and 02310) during food preparation and service"), 1, 2, 11, false);
            body.AddElement(new ControlBoolean("FS3", "", System.Windows.Controls.Orientation.Horizontal), 0, 3, 1, false);
            body.AddElement(new ControlLabel("FSLab3", "Staff cleanliness, use of hair restraints and hygienic practices (02325, 02335, 02410)"), 1, 3, 11, false);
            body.AddElement(new ControlBoolean("FS4", "", System.Windows.Controls.Orientation.Horizontal), 0, 4, 1, false);
            body.AddElement(new ControlLabel("FSLab4", "Food stored with proper temperature controls (for example, no potentially hazardous foods, such as beef, chicken, pork  thawing \nat room temperature) (03510) "), 1, 4, 11, false);
            body.AddElement(new ControlBoolean("FS5", "", System.Windows.Controls.Orientation.Horizontal), 0, 5, 1, false);
            body.AddElement(new ControlLabel("FSLab5", "Food from approved sources (03200) (for example food from known providers, no home prepared items) "), 1, 5, 11, false);
            body.AddElement(new ControlBoolean("FS6", "", System.Windows.Controls.Orientation.Horizontal), 0, 6, 1, false);
            body.AddElement(new ControlLabel("FSLab6", "No ill food workers present  (02220)"), 1, 6, 11, false);
            body.AddElement(new ControlBoolean("FS7", "", System.Windows.Controls.Orientation.Horizontal), 0, 7, 1, false);
            body.AddElement(new ControlLabel("FSLab7", "Chemicals labeled and properly stored (07200)"), 1, 7, 11, false);
            body.AddElement(new ControlBoolean("FS8", "", System.Windows.Controls.Orientation.Horizontal), 0, 8, 1, false);
            body.AddElement(new ControlLabel("FSLab8", "Person in charge to provide a copy of the food handlers’ cards for meal preparation staff observed during the meal observed in this \ninspection. (02120)"), 1, 8, 11, false);
            body.AddElement(new ControlBoolean("FS9", "", System.Windows.Controls.Orientation.Horizontal), 0, 9, 1, false);
            body.AddElement(new ControlLabel("FSLab9", "Person in Charge describes process for staff to report illnesses and procedures used when an ill food workers reports an illness \n(02205, 02220, 02225)"), 1, 9, 11, false);
            body.AddElement(new ControlBoolean("FS10", "", System.Windows.Controls.Orientation.Horizontal), 0, 10, 1, false);
            body.AddElement(new ControlLabel("FSLab10", "Person in Charge or designee describes proper dishwashing procedure that follow manufacture guidelines for temperature or \nchemical controls (04555, 04560) "), 1, 10, 11, false);
            body.AddElement(new ControlBoolean("FS11", "", System.Windows.Controls.Orientation.Horizontal), 0, 11, 1, false);
            body.AddElement(new ControlLabel("FSLab11", "Person in Charge or designee describes steps taken to prevent cross-contamination of food items (03306)"), 1, 11, 11, false);
            body.AddElement(new ControlText("notes1", "Notes", true), 0, 12, 12, false);

            body.AddElement(new ControlLabel("lab2", "Food Preparation and Service:  Observe for proper food preparation, thawing of frozen items, areas used for food preparation, and \nproper temperature controls, for example."), 0, 13, 12);
            body.AddElement(new ControlBoolean("FPS1", "", System.Windows.Controls.Orientation.Horizontal), 0, 14, 1, false);
            body.AddElement(new ControlLabel("FPSLab1", "Person in Charge or designee describes how food contact surfaces are thoroughly cleaned/rinsed/sanitized \n(4640 washing, 04645 rinsing, 04700 sanitization) "), 1, 14, 11, false);
            body.AddElement(new ControlBoolean("FPS2", "", System.Windows.Controls.Orientation.Horizontal), 0, 15, 1, false);
            body.AddElement(new ControlLabel("FPSLab2", "Person in Charge describes process to check food temperatures   "), 1, 15, 11, false);
            body.AddElement(new ControlBoolean("FPS3", "", System.Windows.Controls.Orientation.Horizontal), 0, 16, 1, false);
            body.AddElement(new ControlLabel("FPSLab3", "Person in Charge or designee identifies proper cooking time and temperatures for potentially hazardous foods \n(for example, poultry 165°F, ground meat at least 155°F, fish and other meats 145°F) "), 1, 16, 11, false);
            body.AddElement(new ControlBoolean("FPS4", "", System.Windows.Controls.Orientation.Horizontal), 0, 17, 1, false);
            body.AddElement(new ControlLabel("FPSLab4", "Person in Charge or designee describes how food items are properly reheated (03400)  "), 1, 17, 11, false);
            body.AddElement(new ControlBoolean("FPS5", "", System.Windows.Controls.Orientation.Horizontal), 0, 18, 1, false);
            body.AddElement(new ControlLabel("FPSLab5", "No bare hand contact with ready to eat foods, except during the washing of fruits and vegetables (03300) "), 1, 18, 11, false);
            body.AddElement(new ControlBoolean("FPS6", "", System.Windows.Controls.Orientation.Horizontal), 0, 19, 1, false);
            body.AddElement(new ControlLabel("FPSLab6", "Proper hand hygiene and glove use (see above)"), 1, 19, 11, false);
            body.AddElement(new ControlBoolean("FPS7", "", System.Windows.Controls.Orientation.Horizontal), 0, 20, 1, false);
            body.AddElement(new ControlLabel("FPSLab7", "Fruits and vegetables are thoroughly rinsed (washed) (03318) "), 1, 20, 11, false);
            body.AddElement(new ControlBoolean("FPS8", "", System.Windows.Controls.Orientation.Horizontal), 0, 21, 1, false);
            body.AddElement(new ControlLabel("FPSLab8", "Hot foods held at ≥135°F prior to serving  (03525) \n(facility can check food temperature in your presence or you can check temperature of food with your sanitized thermometer)"), 1, 21, 11, false);
            body.AddElement(new ControlBoolean("FPS9", "", System.Windows.Controls.Orientation.Horizontal), 0, 22, 1, false);
            body.AddElement(new ControlLabel("FPSLab9", "Cold foods held at ≤41°F prior to serving (03525) \n(facility can check food temperature in your presence or you can check temperature of food with your sanitized thermometer) "), 1, 22, 11, false);
            body.AddElement(new ControlText("notes2", "Notes", true), 0, 23, 12, false);

            body.AddElement(new ControlLabel("lab3", "Food Storage:  Observe for food storage to prevent contamination and to promote proper temperature controls."), 0, 24, 12);
            body.AddElement(new ControlBoolean("FST1", "", System.Windows.Controls.Orientation.Horizontal), 0, 25, 1, false);
            body.AddElement(new ControlLabel("FSTLab1", "Store rooms free from rodents and pests (06550)"), 1, 25, 11, false);
            body.AddElement(new ControlBoolean("FST2", "", System.Windows.Controls.Orientation.Horizontal), 0, 26, 1, false);
            body.AddElement(new ControlLabel("FSTLab2", "Refrigerator temperature is maintained at ≤41°F (internal temperature of potentially hazardous food must be  at ≤41°F) (03525) "), 1, 26, 11, false);
            body.AddElement(new ControlBoolean("FST3", "", System.Windows.Controls.Orientation.Horizontal), 0, 27, 1, false);
            body.AddElement(new ControlLabel("FSTLab3", "Foods are frozen in freezer (no specific temperature requirement) (03500)"), 1, 27, 11, false);
            body.AddElement(new ControlBoolean("FST4", "", System.Windows.Controls.Orientation.Horizontal), 0, 28, 1, false);
            body.AddElement(new ControlLabel("FSTLab4", "Raw meats stored below or away from ready to eat food  (03306)"), 1, 28, 11, false);
            body.AddElement(new ControlBoolean("FST5", "", System.Windows.Controls.Orientation.Horizontal), 0, 29, 1, false);
            body.AddElement(new ControlLabel("FSTLab5", "Potentially hazardous foods are properly cooled (within two hours going from 135°F to  70°F and then to ≤41°F within a total of six \nhours or following the rapid cooling procedure of continuous cooling in a shallow layer of 2 inches or less, uncovered, protected \nfrom cross contamination, in cooling equipment maintaining an ambient air temperature of ≤41°F or other methods as described in \nregulation) (03515)"), 1, 29, 11, false);
            body.AddElement(new ControlText("notes3", "Notes", true), 0, 30, 12, false);

            body.AddElement(new ControlLabel("lab4", "Food Storage:  Observe for food storage to prevent contamination and to promote proper temperature controls."), 0, 31, 12);
            body.AddElement(new ControlLabel("lab4a", "•	Menus:"), 0, 32, 12, false);
            body.AddElement(new ControlBoolean("FST2m1", "", System.Windows.Controls.Orientation.Horizontal), 1, 33, 1, false);
            body.AddElement(new ControlLabel("FSTLab2m1", "Provide Variety"), 2, 33, 10, false);
            body.AddElement(new ControlBoolean("FST2m2", "", System.Windows.Controls.Orientation.Horizontal), 1, 34, 1, false);
            body.AddElement(new ControlLabel("FSTLab2m2", "Are nutritious, meets the residents’ dietary needs"), 2, 34, 10, false);
            body.AddElement(new ControlBoolean("FST2m3", "", System.Windows.Controls.Orientation.Horizontal), 1, 35, 1, false);
            body.AddElement(new ControlLabel("FSTLab2m3", "Are palatable and served at proper temperature (if issues with food palatability temperature and/or palatability, consider \nobtaining a meal sample)"), 2, 35, 10, false);
            body.AddElement(new ControlBoolean("FST2m4", "", System.Windows.Controls.Orientation.Horizontal), 1, 36, 1, false);
            body.AddElement(new ControlLabel("FSTLab2m4", "Are attractively served"), 2, 36, 10, false);
            body.AddElement(new ControlBoolean("FST2m5", "", System.Windows.Controls.Orientation.Horizontal), 1, 37, 1, false);
            body.AddElement(new ControlLabel("FSTLab2m5", "Alternate choices for entrees are available"), 2, 37, 10, false);
            body.AddElement(new ControlBoolean("FST2m6", "", System.Windows.Controls.Orientation.Horizontal), 1, 38, 1, false);
            body.AddElement(new ControlLabel("FSTLab2m6", "Prescribed diets available per diet manual"), 2, 38, 10, false);
            body.AddElement(new ControlBoolean("FST2m7", "", System.Windows.Controls.Orientation.Horizontal), 1, 39, 1, false);
            body.AddElement(new ControlLabel("FSTLab2m7", "Menus are posted"), 2, 39, 10, false);

            body.AddElement(new ControlLabel("lab4b", "•	Dining Observation:"), 0, 40, 12, false);
            body.AddElement(new ControlBoolean("FST2d1", "", System.Windows.Controls.Orientation.Horizontal), 1, 41, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d1", "Residents who need assistance for eating or swallowing concerns receive it timely, appropriately and in a dignified manner"), 2, 41, 10, false);
            body.AddElement(new ControlBoolean("FST2d2", "", System.Windows.Controls.Orientation.Horizontal), 1, 42, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d2", "Meals are distributed in a timely manner"), 2, 42, 10, false);
            body.AddElement(new ControlBoolean("FST2d3", "", System.Windows.Controls.Orientation.Horizontal), 1, 43, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d3", "For each sampled resident being observed, identify any special needs and interventions planned to meet their needs"), 2, 43, 10, false);
            body.AddElement(new ControlBoolean("FST2d4", "", System.Windows.Controls.Orientation.Horizontal), 1, 44, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d4", "Tables adjusted to accommodate wheelchairs"), 2, 44, 10, false);
            body.AddElement(new ControlBoolean("FST2d5", "", System.Windows.Controls.Orientation.Horizontal), 1, 45, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d5", "Residents prepared for meals, dentures, glasses and/or hearing aides are in place"), 2, 45, 10, false);
            body.AddElement(new ControlBoolean("FST2d6", "", System.Windows.Controls.Orientation.Horizontal), 1, 46, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d6", "Adaptive equipment is available per need"), 2, 46, 10, false);
            body.AddElement(new ControlBoolean("FST2d7", "", System.Windows.Controls.Orientation.Horizontal), 1, 47, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d7", "Residents at the same table are served and assisted concurrently"), 2, 47, 10, false);
            body.AddElement(new ControlBoolean("FST2d8", "", System.Windows.Controls.Orientation.Horizontal), 1, 48, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d8", "Sufficient staff are available for the distribution of meals and assistance"), 2, 48, 10, false);
            body.AddElement(new ControlBoolean("FST2d9", "", System.Windows.Controls.Orientation.Horizontal), 1, 49, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d9", "Sufficient time is allowed for residents to eat"), 2, 49, 10, false);
            body.AddElement(new ControlBoolean("FST2d10", "", System.Windows.Controls.Orientation.Horizontal), 1, 50, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d10", "Sufficient  dining space available in all dining areas"), 2, 50, 10, false);
            body.AddElement(new ControlBoolean("FST2d11", "", System.Windows.Controls.Orientation.Horizontal), 1, 51, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d11", "Dining atmosphere is pleasant"), 2, 51, 10, false);
            body.AddElement(new ControlBoolean("FST2d12", "", System.Windows.Controls.Orientation.Horizontal), 1, 52, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d12", "Family members are accommodated for dining with their resident"), 2, 52, 10, false);
            body.AddElement(new ControlBoolean("FST2d13", "", System.Windows.Controls.Orientation.Horizontal), 1, 53, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d13", "Meals are provided as written on posted menu"), 2, 53, 10, false);
            body.AddElement(new ControlBoolean("FST2d14", "", System.Windows.Controls.Orientation.Horizontal), 1, 54, 1, false);
            body.AddElement(new ControlLabel("FSTLab2d14", "Meals provided in resident rooms are served promptly to ensure proper"), 2, 54, 10, false);
            body.AddElement(new ControlText("notes4", "Notes", true), 0, 55, 12, false);

            body.AddElement(new ControlText("notes5", "Additional Notes", true), 0, 56, 12);

            form.AddElement(body);

            string fileName = Path.Combine(UserPrefs.GetFormDirectory(), form.name + UserPrefs.FORM_EXTENSION);
             XmlSerializer ser = new XmlSerializer(typeof(Form));
             using (TextWriter writer = new StreamWriter(fileName))
             {
                 ser.Serialize(writer, form);
             }
             scrollView.Content = form.UIelement;



         }

         private void btnSave_Click(object sender, RoutedEventArgs e)
         {
            /* string fileName = Path.Combine(UserPrefs.GetFormDirectory(), form.name + UserPrefs.FORM_EXTENSION);
             XmlSerializer ser = new XmlSerializer(typeof(Form));
             using (TextWriter writer = new StreamWriter(fileName))
                 ser.Serialize(writer, form);
             }*/
        }
    }
}



/*
Form form = new Form("testForm");
LayoutGrid grid = new LayoutGrid("ddd");

ControlBoolean[] radioOptions = {new ControlBoolean("a", "Option A"),
                                 new ControlBoolean("b", "Option B"),
                                 new ControlBoolean("c", "Option C") };
ControlRadio radioControl = new ControlRadio("Radio Control", radioOptions);
grid.AddElement(radioControl, 0, 2, 12);

form.AddElement(grid);
*/


/* Form form = new Form("testForm");
 form.AddElement(new ElementSpacer("spacer1"));
 form.AddElement(new ControlText("txtcontrol", "Text Control"));
 form.AddElement(new ElementSpacer("spacer2", 150));
 form.AddElement(new ControlBoolean("boolcontrol", "Check me"));
 this.scrollView.Content = form.UIelement;*/

/*FormA
Form form = new Form("FormA");
            LayoutStackPanel layoutStackPanel = new LayoutStackPanel("inspectionType");
            layoutStackPanel.AddElement(new ControlLabel("lab1", "Inspection Type"));
            layoutStackPanel.AddElement(new ControlBoolean("full", "Full"));
            form.AddElement(layoutStackPanel);
            form.AddElement(new ElementSpacer("spacer1"));
            LayoutGrid labelgrid = new LayoutGrid("labelholder");
            labelgrid.AddElement(new ControlLabel("label", "Review licensing file for:\n•	Current state contract – if applicable\n•	Past and current complaint investigations\n•	Past SOD’s and uncorrected deficiencies(list on back of form)\n•	Past three consecutive years compliance with all inspections and investigations\n•	Resident and staff list from last licensing inspection\nCurrent exemptions"), 0, 0, 8, false);
            labelgrid.AddElement(new ControlLabel("label2", "Confer regarding concerns about facility with:\n•	Complaint Nurse, licensor\n•	Case Managers: HCS, DDD"), 8, 0, 4, false);
            form.AddElement(labelgrid);
            form.AddElement(new ElementSpacer("spacera"));

            LayoutGrid body = new LayoutGrid("body");
            body.AddElement(new ControlText("caseManager", "CASE MANAGER DDD / HCS"), 0, 0, 8);
            body.AddElement(new ControlDate("contact1", "Contact Date"), 8, 0, 4);
            body.AddElement(new ControlText("comm1", "COMMENTS / CONCERNS", true), 0, 1, 12);
            body.AddElement(new ElementSpacer("space2"), 0, 2, 12);
            body.AddElement(new ControlText("ombuds", "OMBUDS"), 0, 3, 12);
            body.AddElement(new ControlText("com2", "COMMENTS / CONCERNS", true), 0, 4, 12);
            body.AddElement(new ElementSpacer("space3"), 0, 5, 12);
            body.AddElement(new ControlText("other", "OTHER OUTSIDE AGENCY"), 0, 6, 8);
            body.AddElement(new ControlDate("contact2", "CONTACT DATE"), 8, 6, 4);
            body.AddElement(new ControlText("com3", "COMMENTS / CONCERNS", true), 0, 8, 12);
            body.AddElement(new ElementSpacer("space4"), 0, 9, 12);
            LayoutStackPanel contracts = new LayoutStackPanel("contracts");
            contracts.AddElement(new ControlLabel("con", "Contracts: "));
            contracts.AddElement(new ControlBoolean("al", "AL"));
            contracts.AddElement(new ControlBoolean("earc", "EARC"));
            contracts.AddElement(new ControlBoolean("arc", "ARC"));
            contracts.AddElement(new ControlBoolean("dementia", "Dementia"));
            contracts.AddElement(new ControlBoolean("ddd", "DDD"));
            contracts.AddElement(new ControlBoolean("adc", "Adult Day Care"));
            contracts.AddElement(new ControlBoolean("none", "None"));
            body.AddElement(contracts, 0, 10, 12);
            body.AddElement(new ControlText("exempt", "CURRENT EXEMPTIONS", true), 0, 12, 12);
            body.AddElement(new ElementSpacer("space5"), 0, 13, 12);
            body.AddElement(new ControlText("notes", "Notes:  Pre-Inspection Preparation", true), 0, 14, 12);

            form.AddElement(body);*/

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
form.AddElement(new ElementSpacer("space1"));
LayoutGrid body = new LayoutGrid("body");
body.AddElement(new ControlLabel("lab1", "Room\nNumber"), 0, 0, 2);
body.AddElement(new ControlLabel("lab2", "RESIDENT NAME"), 2, 0, 5);
body.AddElement(new ControlLabel("lab3", "NOTES"), 7, 0, 5);

List<GridElement> resident = new List<GridElement>();
resident.Add(new GridElement( new ControlText("roomnum", ""), 0, 1, 2));
resident.Add(new GridElement( new ControlText("resname", ""), 2, 1, 5));
resident.Add(new GridElement( new ControlText("notes", "", true), 7, 1, 5));
LayoutRepeatGrid residents = new LayoutRepeatGrid("residents",resident, "Add Resident");

form.AddElement(body);
form.AddElement(residents);*/

/*Form E
Form form = new Form("FormE");
LayoutStackPanel layoutStackPanel = new LayoutStackPanel("inspectionType");
layoutStackPanel.AddElement(new ControlLabel("lab1", "Inspection Type"));
layoutStackPanel.AddElement(new ControlBoolean("full", "Full"));
form.AddElement(layoutStackPanel);
form.AddElement(new ElementSpacer("space1"));

LayoutGrid body = new LayoutGrid("body");
body.AddElement(new ControlDate("date", "DATE"), 0, 0, 4);
body.AddElement(new ControlText("time", "TIME"), 4, 0, 4);
body.AddElement(new ControlInteger("numRes", "NUMBER OF RESIDENTS PRESENT"), 8, 0, 4);

ControlBoolean[] resCouncil = {new ControlBoolean("yes1", "Yes"),new ControlBoolean("no1", "No")};

body.AddElement(new ControlLabel("lab1", "RESIDENT COUNCIL?"), 0, 1, 3, false);
body.AddElement(new ControlRadio("resCouncil", resCouncil), 0, 2, 2, false);
body.AddElement(new ControlText("cPrez", "COUNCIL PRESIDENT"), 2, 1, 6, 1);
body.AddElement(new ControlLabel("lab2", "FOOD COMMITTEE"), 8, 1, 3, false);

ControlBoolean[] foodCommitee = { new ControlBoolean("yes", "Yes"), new ControlBoolean("no2", "No") };

body.AddElement(new ControlRadio("food", foodCommitee), 8, 2, 3, false);

body.AddElement(new ControlText("text1", "Areas of concerns / issues identified prior to meeting.  Refer to resident characteristic roster / sample selection form as \nneeded to identify residents.", true), 0, 3, 12);
body.AddElement(new ControlText("text2", "Introductions and brief explanation of meeting and inspection process by RCS staff.  Use questions modified for population \ntype.  Group Interview:  Suggested Areas for Discussion.\n\n " +
                                         "We would like to ask you several questions about life in the facility and the interactions of residents and staff.\n" +
                                          "•	Rules.Tell me about the rules in this facility.For instance, are there rules about what time residents go to bed \nat night and get up in the morning ?", true), 0, 4, 12);
body.AddElement(new ControlText("text3", "•	Privacy.  Can you please describe the ways staff makes an effort to make sure that your privacy and the privacy of all\n residents are respected?  Do you meet privately with visitors, and have private telephone calls? ", true), 0, 5, 12);
body.AddElement(new ControlText("text4", "•	Dignity respected (those with and without ability to speak for selves). How do staff members treat the residents\n here, not just yourselves, but others who cannot speak for themselves?  \nDo they try to accommodate residents’ wishes where possible? ", true), 0, 6, 12);
body.AddElement(new ControlText("text5", "•	Abuse and neglect.  Are you aware of any residents that are abused or neglected here?  Are you aware of anytime\n when a resident had property taken away from them by staff?  Is there enough staff here to take care of everyone? ", true), 0, 7, 12);
body.AddElement(new ControlText("text6", "•	Personal belongings / Loss or theft.  Can residents have their own belongings in their rooms if they want to?  Does\n the facility make efforts to prevent loss, theft of destruction of property? ", true), 0, 8, 12);
body.AddElement(new ControlText("text7", "•	Meals and food service. Can you please describe what the food is like here?  If you do not like some\n food, do they give you something else to eat?  \nIs the temperature of your hot and cold food appropriate? Are your meats tender enough?", true), 0, 9, 12);
body.AddElement(new ControlText("text8", "•	Response to concerns. Do you talk to staff about your concerns?  What is their response? ", true), 0, 10, 12);
body.AddElement(new ControlText("text9", "•	Unmet needs.   Do you feel free to talk to staff (and your family) about needs that are not being met?  ", true), 0, 11, 12);
body.AddElement(new ControlText("text10", "•    Activities. Can you please share your thoughts about the activities offered here? Do the activity programs meet your interests and needs?\n  Do you participate in activities?    \nAre there enough help and supplies available so that everyone who wants to can participate?", true), 0, 12, 12);
body.AddElement(new ControlText("text11", "•    Costs.  Are residents here informed by the facility about which items and services are paid by Medicare or Medicaid?\n Are you aware of any changes in the care any resident received after paying for their own care, and changed to Medicaid paying?  ", true), 0, 13, 12);
body.AddElement(new ControlText("text12", "•    Medicaid Policy.  Please tell me what the ALF told you about whether they admit and keep residents whose stay if paid by the state (Medicaid).\n   When were you told about this?  Did the home tell you if they would allow you to stay if you ran out of money, and had to apply to the state for assistance?\n How did they give you the information, in writing or verbally? Did the home tell you what might happen if they quit taking state pay?", true), 0, 14, 12);
body.AddElement(new ControlText("text13", "•	Building. What do you think about the air and temperature in your room; in the dining and activity rooms?\n  Does the lighting in your room allow you to do whatever you want to do?\n  Is it generally noisy or quiet?  How about at night?", true), 0, 15, 12);
body.AddElement(new ControlText("text14", "•	Other.  Is there anything else about life here in the facility that you would like to discuss?\n Thank the group for their time.  After the interview, follow up on concerns that need further investigation. ", true), 0, 16, 12);

body.AddElement(new ElementSpacer("space2"),0,17,12);
body.AddElement(new ControlText("notes", "Notes", true), 0, 18, 12);
form.AddElement(body);*/

/*Form G
Form form = new Form("FormG");
            LayoutGrid head = new LayoutGrid("Head");
            head.AddElement(new ControlText("resName", "RESIDENT NAME"), 0, 0, 4);
            head.AddElement(new ControlInteger("resNum", "RESIDENT NUMBER"), 4, 0, 2);
            head.AddElement(new ControlText("roomNum", "ROOM NUMBER"), 6, 0, 2);
            head.AddElement(new ControlLabel("lab1", "PAY STATUS"), 8, 0, 4, false);
            ControlBoolean[] paystat = {new ControlBoolean("private", "Private"),
                                 new ControlBoolean("state", "State")};
            head.AddElement(new ControlRadio("paystat", paystat), 8, 1, 4, false);
            head.AddElement(new ControlText("agreement", "Brief Review of Negotiated Service Agreement:", true), 0, 2, 12);
            head.AddElement(new ControlLabel("labela", "The questions in Section B – K below are intended as a guide and should not prevent the interviewer from asking\n more questions or obtaining more data if concerns are identified.  If you are concerned about the answers, \nplease investigate further.\n\nIntroductory questions: The interviewer may want to consider one of the following questions as a lead to the interview."), 0, 3, 12, false);

            form.AddElement(head);

            LayoutGrid body = new LayoutGrid("body");
            ControlBoolean[] interview = {new ControlBoolean("resInterview", "Resident Interview"),
                                 new ControlBoolean("repInterview", "Representative Interview")};
            body.AddElement(new ControlRadio("interview", interview), 0, 0, 4, false);


            body.AddElement(new ControlLabel("lab1", "A.	The following are REQUIRED questions and MUST be asked during the interview.\nCheck “Y,” if the answer is yes; check “N,” if the answer is no and document the interviewee’s response; or \ncheck “D” if the interviewee declined to answer the question."), 0, 1, 12);




            body.AddElement(new ControlLabel("question1", "Can you make choices about the care and \nservices you receive here at the facility?"), 0, 2, 4, false);
            ControlBoolean[] radioOptions = {new ControlBoolean("yes", "Y"),
                                 new ControlBoolean("no", "N"),
                                 new ControlBoolean("d", "D") };
            body.AddElement(new ControlRadio("rad1", radioOptions), 4, 2, 3, false);
            body.AddElement(new ControlText("notes1", "Notes", true), 6, 2, 5);
            body.AddElement(new ControlLabel("question2", "If you have a roommate, were you informed \nyou would have a roommate? \nCould you change roommates if you wanted to?"), 0, 3, 4, false);
            ControlBoolean[] radioOptions1 = {new ControlBoolean("yes1", "Y"),
                                 new ControlBoolean("no1", "N"),
                                 new ControlBoolean("d1", "D") };
            body.AddElement(new ControlRadio("rad2", radioOptions1), 4, 3, 3, false);
            body.AddElement(new ControlText("notes2", "Notes", true), 6, 3, 5);
            body.AddElement(new ControlLabel("question3", "Do you have an opportunity to participate in \ncommunity activities?"), 0, 4, 4, false);
            ControlBoolean[] radioOptions2 = {new ControlBoolean("yes2", "Y"),
                                 new ControlBoolean("no2", "N"),
                                 new ControlBoolean("d2", "D") };
            body.AddElement(new ControlRadio("rad3", radioOptions2), 4, 4, 3, false);
            body.AddElement(new ControlText("notes3", "Notes", true), 6, 4, 5);
            body.AddElement(new ControlLabel("question4", "Can you choose who visits you and when?"), 0, 5, 4, false);
            ControlBoolean[] radioOptions3 = {new ControlBoolean("yes3", "Y"),
                                 new ControlBoolean("no3", "N"),
                                 new ControlBoolean("d3", "D") };
            body.AddElement(new ControlRadio("rad4", radioOptions3), 4, 5, 3, false);
            body.AddElement(new ControlText("notes4", "Notes", true), 6, 5, 5);
            body.AddElement(new ControlLabel("question5", "Do they pay attention to what you have to say?"), 0, 6, 4, false);
            ControlBoolean[] radioOptions4 = {new ControlBoolean("yes4", "Y"),
                                 new ControlBoolean("no4", "N"),
                                 new ControlBoolean("d4", "D") };
            body.AddElement(new ControlRadio("rad5", radioOptions4), 4, 6, 3, false);
            body.AddElement(new ControlText("notes5", "Notes", true), 6, 6, 5);
            body.AddElement(new ControlLabel("question6", "Can you choose to lock your door?"), 0, 7, 4, false);
            ControlBoolean[] radioOptions5 = {new ControlBoolean("yes5", "Y"),
                                 new ControlBoolean("no5", "N"),
                                 new ControlBoolean("d5", "D") };
            body.AddElement(new ControlRadio("rad6", radioOptions5), 4, 7, 3, false);
            body.AddElement(new ControlText("notes6", "Notes", true), 6, 7, 5);
            body.AddElement(new ControlLabel("question7", "Do you have access to food anytime?"), 0, 8, 4, false);
            ControlBoolean[] radioOptions6 = {new ControlBoolean("yes6", "Y"),
                                 new ControlBoolean("no6", "N"),
                                 new ControlBoolean("d6", "D") };
            body.AddElement(new ControlRadio("rad7", radioOptions6), 4, 8, 3, false);
            body.AddElement(new ControlText("notes7", "Notes", true), 6, 8, 5);
            body.AddElement(new ControlLabel("question8", "Do you receive services in the community?"), 0, 9, 4, false);
            ControlBoolean[] radioOptions7 = {new ControlBoolean("yes7", "Y"),
                                 new ControlBoolean("no7", "N"),
                                 new ControlBoolean("d7", "D") };
            body.AddElement(new ControlRadio("rad8", radioOptions7), 4, 9, 3, false);
            body.AddElement(new ControlText("notes8", "Notes", true), 6, 9, 5);

            body.AddElement(new ControlLabel("lab3", "B.	 Care and Service Needs"), 0, 10, 12);
            body.AddElement(new ControlBoolean("help3", "What kind of help do you get from the staff?"), 0, 11, 6, false);
            body.AddElement(new ControlText("othertext1", "Other: ", true), 6, 11, 6, false);
            body.AddElement(new ControlBoolean("needs", "How well does staff meet your needs?"), 0, 12, 6, false);
            body.AddElement(new ControlBoolean("noC1", "No Concerns"), 6, 12, 6, false);

            body.AddElement(new ControlLabel("lab4", "C.	 Support of Personal Relationships (if the resident has family or significant others)"), 0, 13, 12);
            body.AddElement(new ControlBoolean("c1", "Does staff give you time and space to meet / visit \nwith friends and family who come to visit?"), 0, 14, 6, false);
            body.AddElement(new ControlText("othertext2", "Other: ", true), 6, 14, 6, false);
            body.AddElement(new ControlBoolean("c2", "Are you able to make personal phone calls without \nbeing overheard?"), 0, 15, 6, false);
            body.AddElement(new ControlBoolean("noC2", "No Concerns"), 6, 15, 6, false);

            body.AddElement(new ControlLabel("lab5", "D.	 Reasonable House Rules"), 0, 16, 12);
            body.AddElement(new ControlBoolean("D1", "Tell me about the rules of the facility."), 0, 17, 6, false);
            body.AddElement(new ControlText("othertext3", "Other: ", true), 6, 17, 6, false);
            body.AddElement(new ControlBoolean("D2", "What have you been told about how long you can stay \nup at night or how early or late you can watch TV?"), 0, 18, 6, false);
            body.AddElement(new ControlBoolean("noC3", "No Concerns"), 6, 18, 6, false);

            body.AddElement(new ControlLabel("E", "E.	Respect of Individuality, Independence, Personal Choice, Dignity"), 0, 19, 12);
            body.AddElement(new ControlBoolean("E1", "Does the staff here know about your preferences?"), 0, 20, 6, false);
            body.AddElement(new ControlText("othertext4", "Other: ", true), 6, 20, 6, false);
            body.AddElement(new ControlBoolean("E2", "What kinds of things do you make choices about?"), 0, 21, 6, false);
            body.AddElement(new ControlBoolean("noC4", "No Concerns"), 6, 21, 6, false);
            body.AddElement(new ControlBoolean("E3", "How does the staff treat you?  Speak to you?"), 0, 23, 6, false);
            body.AddElement(new ControlBoolean("E4", "Do you have any concerns about how you are treated?"), 0, 24, 6, false);

            body.AddElement(new ControlLabel("F", "F.	 Homelike Environment"), 0, 25, 12);
            body.AddElement(new ControlBoolean("F1", "What is your room like?"), 0, 26, 6, false);
            body.AddElement(new ControlText("othertext5", "Other: ", true), 6, 26, 6, false);
            body.AddElement(new ControlBoolean("F2", "Are you comfortable there?"), 0, 27, 6, false);
            body.AddElement(new ControlBoolean("noC5", "No Concerns"), 6, 27, 6, false);
            body.AddElement(new ControlBoolean("F3", "What personal items were you allowed to bring when \nyou came here?"), 0, 28, 6, false);
            body.AddElement(new ControlBoolean("F4", "Is the temperature here comfortable to you?"), 0, 29, 6, false);

            body.AddElement(new ControlLabel("G", "G.	 Response to Concerns"), 0, 30, 12);
            body.AddElement(new ControlBoolean("G1", "Do you feel like you can tell someone if you don’t like \nit here?"), 0, 31, 6, false);
            body.AddElement(new ControlText("othertext6", "Other: ", true), 6, 31, 6, false);
            body.AddElement(new ControlBoolean("G2", "Who would you talk to if you had concerns?"), 0, 32, 6, false);
            body.AddElement(new ControlBoolean("noC6", "No Concerns"), 6, 32, 6, false);
            body.AddElement(new ControlBoolean("G3", "What do you think they would do about it?"), 0, 33, 6, false);

            body.AddElement(new ControlLabel("H", "H.	 Sense of Well-Being and Safety"), 0, 34, 12);
            body.AddElement(new ControlBoolean("H1", "Do you feel safe here?"), 0, 35, 6, false);
            body.AddElement(new ControlText("othertext7", "Other: ", true), 6, 35, 6, false);
            body.AddElement(new ControlBoolean("H2", "Does anything make you feel uncomfortable here?"), 0, 36, 6, false);
            body.AddElement(new ControlBoolean("noC7", "No Concerns"), 6, 36, 6, false);

            body.AddElement(new ControlLabel("I", "I.	 Meals / Snacks / Preferences"), 0, 37, 12);
            body.AddElement(new ControlBoolean("I1", "How is the food here?"), 0, 38, 6, false);
            body.AddElement(new ControlText("othertext8", "Other: ", true), 6, 38, 6, false);
            body.AddElement(new ControlBoolean("I2", "If you can’t eat something or don’t like something, \nwhat kind of replacement does the home offer you?"), 0, 39, 6, false);
            body.AddElement(new ControlBoolean("no8", "No Concerns"), 6, 39, 6, false);
            body.AddElement(new ControlBoolean("I3", "How often do you get the foods you like to eat?"), 0, 40, 6, false);

            body.AddElement(new ControlLabel("J", "J.	 Activities"), 0, 41, 12);
            body.AddElement(new ControlBoolean("J1", "What activities are offered to you by the facility?"), 0, 42, 6, false);
            body.AddElement(new ControlText("othertext9", "Other: ", true), 6, 42, 6, false);
            body.AddElement(new ControlBoolean("J2", "What kinds of things did you do for fun and relaxation\n before you came here?"), 0, 43, 6, false);
            body.AddElement(new ControlBoolean("noC9", "No Concerns"), 6, 43, 6, false);
            body.AddElement(new ControlBoolean("J3", "Are there activities you would like to do that you are \nnot offered?"), 0, 44, 6, false);
            body.AddElement(new ControlBoolean("J4", "Is there anything you wanted to do and the facility \nhelped you do it?"), 0, 45, 6, false);

            body.AddElement(new ControlLabel("K", "K.	 Notice"), 0, 46, 12);
            body.AddElement(new ControlBoolean("K1", "Do you handle your own finances or does someone \nhelp you with that?"), 0, 47, 6, false);
            body.AddElement(new ControlText("othertext10", "Other: ", true), 6, 47, 6, false);
            body.AddElement(new ControlBoolean("K2", "What were you told about paying for your care here \nand the facility’s policy about admitting and keeping \nresidents whose stay is paid for by the state \n(Medicaid)?"), 0, 48, 6, false);
            body.AddElement(new ControlBoolean("noC10", "No Concerns"), 6, 48, 6, false);
            body.AddElement(new ControlBoolean("K3", "When and how were you told about this?	"), 0, 49, 6, false);

            body.AddElement(new ControlLabel("lastLabel", "Leave a contact number for the resident to be able to contact you / RCS staff in the future."), 0, 50, 12);

            body.AddElement(new ControlText("footnotes", "Notes", true), 0, 51, 12);


            form.AddElement(body);
*/

//might want to add function to keep adding contacts
/*Form H 
 Form form = new Form("FormH");
            LayoutStackPanel layoutStackPanel = new LayoutStackPanel("inspectionType");
            layoutStackPanel.AddElement(new ControlLabel("lab1", "Inspection Type"));
            layoutStackPanel.AddElement(new ControlBoolean("initial", "Initial"));
            layoutStackPanel.AddElement(new ControlBoolean("full", "Full"));
            layoutStackPanel.AddElement(new ControlBoolean("followup", "Follow up"));
            layoutStackPanel.AddElement(new ControlBoolean("monitering", "Monitoring"));
            layoutStackPanel.AddElement(new ControlBoolean("complaint", "Complaint"));
            layoutStackPanel.AddElement(new ControlInteger("number", "Number"));
            form.AddElement(layoutStackPanel);
            form.AddElement(new ElementSpacer("spacer"));

            LayoutGrid body = new LayoutGrid("body");
            body.AddElement(new ControlText("resName", "RESIDENT NAME"), 0, 0, 6);
            body.AddElement(new ControlText("resNum", "RESIDENT NUMBER"), 6, 0, 3);
            body.AddElement(new ControlDate("date", "DATE OF INTERVIEW"), 9, 0, 3);
            body.AddElement(new ControlText("contactName", "CONTACT NAME AND NUMBER"), 0, 1, 6);
            body.AddElement(new ControlText("relationship", "RELATIONSHIP TO RESIDENT"), 6, 1, 6);
            body.AddElement(new ControlText("notes1", "NOTES", true), 0, 2, 12);

            List<GridElement> contact = new List<GridElement>();
            contact.Add(new GridElement( new ElementSpacer("spacer",10), 0, 0, 12, 1, false));
            contact.Add(new GridElement(new ControlText("Contact", "CONTACT NAME AND NUMBER"), 0, 3, 6));
            contact.Add(new GridElement(new ControlDate("date2", "DATE OF INTERVIEW"), 6, 3, 3));
            contact.Add(new GridElement(new ControlText("relationship2", "RELATIONSHIP TO RESIDENT"), 9, 3, 3));
            contact.Add(new GridElement(new ControlText("NOTES2", "NOTES", true), 0, 4, 12));
            LayoutRepeatGrid newContact = new LayoutRepeatGrid("contacts",contact, "Add Contact");
            body.AddElement(newContact, 0, 3, 12, false);

            body.AddElement(new ElementSpacer("spacer1"),0,4,12,1,false);

            body.AddElement(new ControlText("finalNotes", "Additional Notes", true), 0, 5, 12);
            form.AddElement(body);*/

/*Form I
Form form = new Form("FormI");
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
             body.AddElement(new ControlLabel("lab1", "Quality of Life/Resident Rights"), 0, 0, 12, 1, true);
             ControlBoolean[] yesno1 = { new ControlBoolean("yes1", "YES"), new ControlBoolean("no1", "NO") };
             body.AddElement(new ControlRadio("yesno1", yesno1), 0, 1, 2, false);
             body.AddElement(new ControlLabel("qq1", "Furnishing, floors, walls, and ceilings"), 2, 1, 10, false);
             ControlBoolean[] yesno2 = { new ControlBoolean("yes2", "YES"), new ControlBoolean("no2", "NO") };
             body.AddElement(new ControlRadio("yesno2", yesno2), 0, 2, 2, false);
             body.AddElement(new ControlLabel("qq2", "Presence of objectionable odors"), 2, 2, 10, false);
             ControlBoolean[] yesno3 = { new ControlBoolean("yes3", "YES"), new ControlBoolean("no3", "NO") };
             body.AddElement(new ControlRadio("yesno3", yesno3), 0, 3, 2, false);
             body.AddElement(new ControlLabel("qq3", "Housekeeping supply area"), 2, 3, 10, false);
             ControlBoolean[] yesno4 = { new ControlBoolean("yes4", "YES"), new ControlBoolean("no4", "NO") };
             body.AddElement(new ControlRadio("yesno4", yesno4), 0, 4, 2, false);
             body.AddElement(new ControlLabel("qq4", "Laundry – separate areas for clean and soiled linen"), 2, 4, 10, false);
             ControlBoolean[] yesno5 = { new ControlBoolean("yes5", "YES"), new ControlBoolean("no5", "NO") };
             body.AddElement(new ControlRadio("yesno5", yesno5), 0, 5, 2, false);
             body.AddElement(new ControlLabel("qq5", "Infection control practices of staff"), 2, 5, 10, false);
             ControlBoolean[] yesno6 = { new ControlBoolean("yes6", "YES"), new ControlBoolean("no6", "NO") };
             body.AddElement(new ControlRadio("yesno6", yesno6), 0, 6, 2, false);
             body.AddElement(new ControlLabel("qq6", "Hand washing"), 2, 6, 10, false);
             ControlBoolean[] yesno7 = { new ControlBoolean("yes7", "YES"), new ControlBoolean("no7", "NO") };
             body.AddElement(new ControlRadio("yesno7", yesno7), 0, 7, 2, false);
             body.AddElement(new ControlLabel("qq7", "Temperature (68°+ wake hours / 60°+ sleep hours)"), 2, 7, 10, false);
             ControlBoolean[] yesno8 = { new ControlBoolean("yes8", "YES"), new ControlBoolean("no8", "NO") };
             body.AddElement(new ControlRadio("yesno8", yesno8), 0, 8, 2, false);
             body.AddElement(new ControlLabel("qq8", "Adequate ventilation in resident rooms and common areas"), 2, 8, 10, false);
             ControlBoolean[] yesno9 = { new ControlBoolean("yes9", "YES"), new ControlBoolean("no9", "NO") };
             body.AddElement(new ControlRadio("yesno9", yesno9), 0, 9, 2, false);
             body.AddElement(new ControlLabel("qq9", "Adequate lighting in resident rooms and common areas"), 2, 9, 10, false);
             ControlBoolean[] yesno10 = { new ControlBoolean("yes10", "YES"), new ControlBoolean("no10", "NO") };
             body.AddElement(new ControlRadio("yesno10", yesno10), 0, 10, 2, false);
             body.AddElement(new ControlLabel("qq10", "Safe water temperature in resident rooms and sinks utilized by residents"), 2, 10, 10, false);
             ControlBoolean[] yesno11 = { new ControlBoolean("yes11", "YES"), new ControlBoolean("no11", "NO") };
             body.AddElement(new ControlRadio("yesno11", yesno11), 0, 11, 2, false);
             body.AddElement(new ControlLabel("qq11", "Cleanliness of resident equipment maintained in good repair"), 2, 11, 10, false);
             body.AddElement(new ControlText("notes1", "NOTES", true), 0, 12, 12, false);

             body.AddElement(new ControlLabel("lab2", "Safety"), 0, 13, 12);
             ControlBoolean[] yesno14 = { new ControlBoolean("yes14", "YES"), new ControlBoolean("no14", "NO") };
             body.AddElement(new ControlRadio("yesno14", yesno14), 0, 14, 2, false);
             body.AddElement(new ControlLabel("qq14", "Prevention of resident access to storage of: \n" +
                 "•Cleaning supplies     •Cleaning carts       •Storage closet" + "\n" + "•Toxic materials     •Medications	"), 2, 14, 10, false);
             ControlBoolean[] yesno15 = { new ControlBoolean("yes15", "YES"), new ControlBoolean("no15", "NO") };
             body.AddElement(new ControlRadio("yesno15", yesno15), 0, 15, 2, false);
             body.AddElement(new ControlLabel("qq15", "Access to outdoors including dementia care unit" + "\n•Safe walking areas" + "\n•Walking areas protected from the elements" + "\n•Can summon staff in an emergency"), 2, 15, 10, false);
             ControlBoolean[] yesno16 = { new ControlBoolean("yes16", "YES"), new ControlBoolean("no16", "NO") };
             body.AddElement(new ControlRadio("yesno16", yesno16), 0, 16, 2, false);
             body.AddElement(new ControlLabel("qq16", "System to inform and permit exit without sounding alarm"), 2, 16, 10, false);
             ControlBoolean[] yesno17 = { new ControlBoolean("yes17", "YES"), new ControlBoolean("no17", "NO") };
             body.AddElement(new ControlRadio("yesno17", yesno17), 0, 17, 2, false);
             body.AddElement(new ControlLabel("qq17", "Secure outdoor space\n" + "•	Accessible to residents without staff\n•	Surrounded by walls or fences at least 72” high\n•	Firm, stable walking surfaces and outdoor furniture"), 2, 17, 10, false);
             ControlBoolean[] yesno18 = { new ControlBoolean("yes18", "YES"), new ControlBoolean("no18", "NO") };
             body.AddElement(new ControlRadio("yesno18", yesno18), 0, 18, 2, false);
             body.AddElement(new ControlLabel("qq18", "Emergency / disaster preparedness\n " + "•Emergency lighting      •First Aid supplies\n•Disaster plan	    •Staff responsibilities"), 2, 18, 10, false);
             body.AddElement(new ControlText("notes2", "NOTES", true), 0, 19, 12, false);


             body.AddElement(new ControlLabel("lab3", "Common Bathrooms"), 0, 20, 12);
             ControlBoolean[] yesno21 = { new ControlBoolean("yes21", "YES"), new ControlBoolean("no21", "NO") };
             body.AddElement(new ControlRadio("yesno21", yesno21), 0, 21, 2, false);
             body.AddElement(new ControlLabel("cq", "Common bathrooms are:"), 2, 21, 10, false);
             body.AddElement(new ControlLabel("clab", "•	Safe / clean / adequate lighting / grab bars(if applicable for resident needs)\n•	Accessible for all resident / privacy available"), 2, 22, 10, false);
             LayoutGrid bathroom = new LayoutGrid("bathroom");

             bathroom.AddElement(new ControlInteger("temp1", "•Water temperature: °F"), 2, 0, 2, false);
             bathroom.AddElement(new ControlDate("tDate1", "date"), 4, 0, 2, false);
             bathroom.AddElement(new ControlText("tTime1", "time"), 6, 0, 2, false);
             bathroom.AddElement(new ControlText("tPlace1", "place"), 8, 0, 4, false);
            FormElement[] array = { bathroom };
             LayoutRepeatGrid bathrooms = new LayoutRepeatGrid("bathrooms", array, "Add new Bathroom");
             body.AddElement(bathrooms, 0, 23, 12, false);
             body.AddElement(new ControlText("notes3", "NOTES", true), 0, 24, 12, false);

             body.AddElement(new ControlLabel("lab4", "Physical Environment - Outdoors"), 0, 25, 12);
             ControlBoolean[] yesno26 = { new ControlBoolean("yes26", "YES"), new ControlBoolean("no26", "NO") };
             body.AddElement(new ControlRadio("yesno26", yesno26), 0, 26, 2, false);
             body.AddElement(new ControlLabel("pq26", "Stairs / steps / ramps in good repair"), 2, 26, 10, false);
             ControlBoolean[] yesno27 = { new ControlBoolean("yes27", "YES"), new ControlBoolean("no27", "NO") };
             body.AddElement(new ControlRadio("yesno27", yesno27), 0, 27, 2, false);
             body.AddElement(new ControlLabel("pq27", "Hand rails"), 2, 27, 10, false);
             ControlBoolean[] yesno28 = { new ControlBoolean("yes28", "YES"), new ControlBoolean("no28", "NO") };
             body.AddElement(new ControlRadio("yesno28", yesno28), 0, 28, 2, false);
             body.AddElement(new ControlLabel("pq28", "Garbage / refuse"), 2, 28, 10, false);
             ControlBoolean[] yesno29 = { new ControlBoolean("yes29", "YES"), new ControlBoolean("no29", "NO") };
             body.AddElement(new ControlRadio("yesno29", yesno29), 0, 29, 2, false);
             body.AddElement(new ControlLabel("pq29", "Presence of pests"), 2, 29, 10, false);
             ControlBoolean[] yesno30 = { new ControlBoolean("yes30", "YES"), new ControlBoolean("no30", "NO") };
             body.AddElement(new ControlRadio("yesno30", yesno30), 0, 30, 2, false);
             body.AddElement(new ControlLabel("pq30", "General maintenance of sidewalks / walkways"), 2, 30, 10, false);

            body.AddElement(new ControlLabel("lastLabel", "Use Attachment I – Environmental Observations and Attachment P- Food Service Observations for all full\ninspections.  \n\nContinue with Attachment O for further observations if the facility has a contract for AL, EARC, or EARC – \nSpecialty Dementia Care."), 0, 31, 12);

             body.AddElement(new ControlText("notes4", "NOTES", true), 0, 32, 12, false);

             form.AddElement(body);*/

/*Form form = new Form("FormJ");
             LayoutStackPanel layoutStackPanel = new LayoutStackPanel("inspectionType");
             layoutStackPanel.AddElement(new ControlLabel("lab1", "Inspection Type"));
             layoutStackPanel.AddElement(new ControlBoolean("initial", "Initial"));
             layoutStackPanel.AddElement(new ControlBoolean("full", "Full"));
             layoutStackPanel.AddElement(new ControlBoolean("followup", "Follow up"));
             layoutStackPanel.AddElement(new ControlBoolean("monitering", "Monitoring"));
             layoutStackPanel.AddElement(new ControlBoolean("complaint", "Complaint"));
             layoutStackPanel.AddElement(new ControlInteger("number", "Number"));
             form.AddElement(layoutStackPanel);
             form.AddElement(new ElementSpacer("spacer1"));

             LayoutGrid body = new LayoutGrid("Body");
             body.AddElement(new ControlText("name", "NAME"), 0, 0, 3);
             body.AddElement(new ControlInteger("id", "ID NO."), 3, 0, 1);
             body.AddElement(new ControlDate("DOB", "DATE OF BIRTH"), 4, 0, 2);
             body.AddElement(new ControlInteger("roomNum", "ROOM NO."), 6, 0, 1);
             body.AddElement(new ControlDate("moveIn", "MOVE-IN-DATE"), 7, 0, 2);
             body.AddElement(new ControlText("pay", "PAY STATUS"), 9, 0, 2);
             body.AddElement(new ControlText("family", "FAMILY/MEMBER/RESIDENT’S REPRESENTATIVE/PHONE"), 0, 1, 6);
             body.AddElement(new ControlText("history", "PERTINENT MEDICAL HISTORY/DIAGNOSES", true), 6, 1, 6);

             body.AddElement(new ControlLabel("assessment", "Assessment"), 2, 2, 10);
             ControlBoolean[] yesno1 = { new ControlBoolean("yes1", "YES"), new ControlBoolean("no1", "NO"), new ControlBoolean("na1", "N/A") };
             body.AddElement(new ControlRadio("yesno1", yesno1), 0, 3, 2, false);
			 body.AddElement(new ControlLabel("pq1", "Pre-admission (for residents admitted in last six months)."), 2, 3, 10, false);
             ControlBoolean[] yesno2 = { new ControlBoolean("yes2", "YES"), new ControlBoolean("no2", "NO"), new ControlBoolean("na2", "N/A") };
             body.AddElement(new ControlRadio("yesno2", yesno2), 0, 4, 2, false);
             body.AddElement(new ControlLabel("pq2", "Annual to meet resident’s needs or semi-annual for EARC – Specialized Dementia Care contract."), 2, 4, 10, false);
             ControlBoolean[] yesno3 = { new ControlBoolean("yes3", "YES"), new ControlBoolean("no3", "NO"), new ControlBoolean("na3", "N/A") };
             body.AddElement(new ControlRadio("yesno3", yesno3), 0, 5, 2, false);
             body.AddElement(new ControlLabel("pq3", "Limited for change of condition as needed."), 2, 5, 10, false);

             body.AddElement(new ControlText("notes1", "NOTES", true), 0, 6, 12, false);
 
             body.AddElement(new ControlLabel("monitering", "Monitoring Resident’s Well-Being"), 2, 7, 10);
            ControlBoolean[] yesno4 = { new ControlBoolean("yes4", "YES"), new ControlBoolean("no4", "NO"), new ControlBoolean("na4", "N/A") };
            body.AddElement(new ControlRadio("yesno4", yesno4), 0, 8, 2, false);
            body.AddElement(new ControlLabel("pq4", "Documented."), 2, 8, 10, false);
            ControlBoolean[] yesno5 = { new ControlBoolean("yes5", "YES"), new ControlBoolean("no5", "NO"), new ControlBoolean("na5", "N/A") };
            body.AddElement(new ControlRadio("yesno5", yesno5), 0, 9, 2, false);
            body.AddElement(new ControlLabel("pq5", "Action taken as needed."), 2, 9, 10, false);
            body.AddElement(new ControlText("notes2", "NOTES", true), 0, 10, 12, false);

             body.AddElement(new ControlLabel("negotiated", "Negotiated Service Agreement (NSA)"), 2, 11, 10);
            ControlBoolean[] yesno6 = { new ControlBoolean("yes6", "YES"), new ControlBoolean("no6", "NO"), new ControlBoolean("na6", "N/A") };
            body.AddElement(new ControlRadio("yesno6", yesno6), 0, 12, 2, false);
            body.AddElement(new ControlLabel("pq6", "Initial on admission and completed within 30 days (for residents admitted in last six months)."), 2, 12, 10, false);
            ControlBoolean[] yesno7 = { new ControlBoolean("yes7", "YES"), new ControlBoolean("no7", "NO"), new ControlBoolean("na7", "N/A") };
            body.AddElement(new ControlRadio("yesno7", yesno7), 0, 13, 2, false);
            body.AddElement(new ControlLabel("pq7", "Updated as necessary."), 2, 13, 10, false);
            ControlBoolean[] yesno8 = { new ControlBoolean("yes8", "YES"), new ControlBoolean("no8", "NO"), new ControlBoolean("na8", "N/A") };
            body.AddElement(new ControlRadio("yesno8", yesno8), 0, 14, 2, false);
            body.AddElement(new ControlLabel("pq8", "Contents meet resident’s needs and preferences.\n•	Defined roles and responsibilities of resident, staff, resident’s representative, outside agency if \n\tused, and alternate plan when necessary.\n•	Times services will be delivered including frequency and approximate time of day.\n•	Resident’s preferences for activities and how supported.\n•	Identifies and incorporates Resident Arranged Services (if applicable).\n•	Identifies and incorporates External Health Providers (if applicable)"), 2, 14, 10, false);
            body.AddElement(new ControlText("notes3", "NOTES", true), 0, 15, 12, false);

            LayoutStackPanel panel = new LayoutStackPanel("medservs");
             panel.AddElement(new ControlLabel("medServ", "Medication Services:  "));
             panel.AddElement(new ControlBoolean("ind", "Independent"));
             panel.AddElement(new ControlBoolean("assist", "Assistance"));
             panel.AddElement(new ControlBoolean("admin", "Administration"));

             body.AddElement(panel, 2, 16, 10);

            ControlBoolean[] yesno9 = { new ControlBoolean("yes9", "YES"), new ControlBoolean("no9", "NO"), new ControlBoolean("na9", "N/A") };
            body.AddElement(new ControlRadio("yesno9", yesno9), 0, 17, 2, false);
            body.AddElement(new ControlLabel("pq9", "Family / plan."), 2, 17, 10, false);
            ControlBoolean[] yesno10 = { new ControlBoolean("yes10", "YES"), new ControlBoolean("no10", "NO"), new ControlBoolean("na10", "N/A") };
            body.AddElement(new ControlRadio("yesno10", yesno10), 0, 18, 2, false);
            body.AddElement(new ControlLabel("pq10", "Facility."), 2, 18, 10, false);
            ControlBoolean[] yesno11 = { new ControlBoolean("yes11", "YES"), new ControlBoolean("no11", "NO"), new ControlBoolean("na11", "N/A") };
            body.AddElement(new ControlRadio("yesno11", yesno11), 0, 19, 2, false);
            body.AddElement(new ControlLabel("pq11", "Appropriate for resident abilities and needs."), 2, 19, 10, false);
            ControlBoolean[] yesno12 = { new ControlBoolean("yes12", "YES"), new ControlBoolean("no12", "NO"), new ControlBoolean("na12", "N/A") };
            body.AddElement(new ControlRadio("yesno12", yesno12), 0, 20, 2, false);
            body.AddElement(new ControlLabel("pq12", "Review of medication record."), 2, 20, 10, false);
            ControlBoolean[] yesno13 = { new ControlBoolean("yes13", "YES"), new ControlBoolean("no13", "NO"), new ControlBoolean("na13", "N/A") };
            body.AddElement(new ControlRadio("yesno13", yesno13), 0, 21, 2, false);
            body.AddElement(new ControlLabel("pq13", "Documentation of refusal (if applicable)"), 2, 21, 10, false);
            body.AddElement(new ControlText("notes4", "NOTES", true), 0, 22, 12, false);

             body.AddElement(new ControlLabel("intermitted", "Intermittent Nursing Services Provided"), 2, 23, 10);

            ControlBoolean[] yesno14 = { new ControlBoolean("yes14", "YES"), new ControlBoolean("no14", "NO"), new ControlBoolean("na14", "N/A") };
            body.AddElement(new ControlRadio("yesno14", yesno14), 0, 24, 2, false);
            body.AddElement(new ControlLabel("pq14", "Nursing Service System developed."), 2, 24, 10, false);
            ControlBoolean[] yesno15 = { new ControlBoolean("yes15", "YES"), new ControlBoolean("no15", "NO"), new ControlBoolean("na15", "N/A") };
            body.AddElement(new ControlRadio("yesno15", yesno15), 0, 25, 2, false);
            body.AddElement(new ControlLabel("pq15", "Services identified and appropriate."), 2, 25, 10, false);
            body.AddElement(new ControlText("notes5", "NOTES", true), 0, 26, 12, false);

             body.AddElement(new ControlLabel("mod", "Modified / Therapeutic Diet"), 2, 27, 10);

            ControlBoolean[] yesno16 = { new ControlBoolean("yes16", "YES"), new ControlBoolean("no16", "NO"), new ControlBoolean("na16", "N/A") };
            body.AddElement(new ControlRadio("yesno16", yesno16), 0, 28, 2, false);
            body.AddElement(new ControlLabel("pq16", "Receiving Food Services as ordered."), 2, 28, 10, false);
            ControlBoolean[] yesno17 = { new ControlBoolean("yes17", "YES"), new ControlBoolean("no17", "NO"), new ControlBoolean("na17", "N/A") };
            body.AddElement(new ControlRadio("yesno17", yesno17), 0, 29, 2, false);
            body.AddElement(new ControlLabel("pq17", "Receiving eating assistance."), 2, 29, 10, false);

            body.AddElement(new ControlText("notes6", "NOTES", true), 0, 30, 12, false);

             body.AddElement(new ControlText("finalNotes", "Addtional Notes"), 0, 31, 12);

             form.AddElement(body);*/

/*FormL
Form form = new Form("FormL");
LayoutStackPanel layoutStackPanel = new LayoutStackPanel("inspectionType");
layoutStackPanel.AddElement(new ControlLabel("lab1", "Inspection Type"));
layoutStackPanel.AddElement(new ControlBoolean("initial", "Initial"));
layoutStackPanel.AddElement(new ControlBoolean("full", "Full"));
layoutStackPanel.AddElement(new ControlBoolean("followup", "Follow up"));
layoutStackPanel.AddElement(new ControlBoolean("monitering", "Monitoring"));
layoutStackPanel.AddElement(new ControlBoolean("complaint", "Complaint"));
layoutStackPanel.AddElement(new ControlInteger("number", "Number"));
form.AddElement(layoutStackPanel);
LayoutGrid grid = new LayoutGrid("body");
grid.AddElement(new ControlText("notes", "NOTES", true), 0, 0, 12);
form.AddElement(grid);*/

/*FromM
Form form = new Form("FormM");
            LayoutStackPanel layoutStackPanel = new LayoutStackPanel("inspectionType");
            layoutStackPanel.AddElement(new ControlLabel("lab1", "Inspection Type"));
            layoutStackPanel.AddElement(new ControlBoolean("initial", "Initial"));
            layoutStackPanel.AddElement(new ControlBoolean("full", "Full"));
            layoutStackPanel.AddElement(new ControlBoolean("followup", "Follow up"));
            layoutStackPanel.AddElement(new ControlBoolean("monitering", "Monitoring"));
            layoutStackPanel.AddElement(new ControlBoolean("complaint", "Complaint"));
            layoutStackPanel.AddElement(new ControlInteger("number", "Number"));
            form.AddElement(layoutStackPanel);
            LayoutGrid head = new LayoutGrid("head");
            head.AddElement(new ControlLabel("issues", "ISSUES"), 0, 0, 3);
            head.AddElement(new ControlLabel("res", "RESIDENT /\n STAFF NO."), 3, 0, 1);
            head.AddElement(new ControlLabel("scope", "SCOPE/CONCERNS"), 4, 0, 5);
            head.AddElement(new ControlLabel("wac/rcw", "WAC/RCW,\n(CONSULTATION, CITATION)"), 9, 0, 3);
            LayoutGrid body = new LayoutGrid("body");
            body.AddElement(new ControlText("issuesa", "", true), 0, 1, 3);
            body.AddElement(new ControlInteger("resa", ""), 3, 1, 1);
            body.AddElement(new ControlText("scopea", "", true), 4, 1, 5);
            body.AddElement(new ControlText("wac/rcwa", "", true), 9, 1, 3);

            LayoutRepeatGrid grid = new LayoutRepeatGrid("mainbody", new FormElement[] { body }, "Add Issue");
            form.AddElement(head);
            form.AddElement(grid);


form.AddElement(body);*/
/*Form form = new Form("FormN");
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
            body.AddElement(new ControlLabel("label", "For all contracts the provider must develop and provide services as agreed upon in a negotiated service agreement \ndeveloped according to WAC 388-78Aincluding reasonable accommodations as required by RCW 70.129.  \nThe negotiated service agreement must be approved by the Case Manager.\nContract: Adult Residential Care(ARC)\n\tService Standards: 388 - 110 - 240\n\t•	Negotiated service agreement.\n\t•	Personal care services.\n\nContract:  Assisted Living(AL)\n\tStructural Requirements: 388 - 110 - 140\n\t•	Private apartment - like unit.\n\t•	Meet standards for type “B” dwelling if constructed after 09 / 01 / 04(1) – (2).\n\t•	Married couples are permitted to share an AL apartment without exemption if they understand they have a right to a private apartment and both request to share.\n\t•	Non-married roommates sharing a private apartment will require an exemption.\n\tService Standards:  388-110-150\n\t•	Negotiated service agreement.\n\t•	Homelike environment.\n\t•	Provide the following:\n\t\t1.	Intermittent Nursing services.\n\t\t2.	Medication administration.\n\t\t3.	Personal care services.\n\t\t4.	Supportive services that promote independence and self-sufficiency.\n\t\t5.	Generic personal care items.\n\t\t6.	Access to an on-site washing machine and dryer.\n\t\t7.	Make beverages and snacks available to residents\n\nContract:  Enhanced Adult Residential Care (EARC)\n\tService Standards:  388-110-220\n\t•	No more than two residents per room.\n\t•	Negotiated service agreement.\n\t•	Provide the following:\n\t\t1.	Intermittent Nursing services\n\t\t2.	Medication administration.\n\t\t3.	Personal care services.\n\t\t4.	Supportive services that promote independence and self-sufficiency.\n\nContract: Enhanced Adult Residential Care – Specialized Dementia Care(SDC) *\n\t\t*Participating facilities are listed at http://adsaweb.dshs.wa.gov/hcs/SDCP/\n\tService Standards: 388 - 110 - 220(2) and(3)\n\t•	Meet the requirements of the EARC for service standards 388 - 110 - 220(1):\n\t•	Supportive services.\t•	Full reassessment semi - annually.\n\t•	24 hour awake staff responsive to resident’s needs.\n\t•	Additional policies for:\n\t\t1.Wandering.\n\t\t2.Actions to be taken regarding elopement.\n\t\t3.Consultation resources to address behavioral issues.\n\t•	Continuing Ed 12 hours / year requirement for staff to include 6 hours related to dementia.  \n\t•	Assistance with bathing and toileting.  \n\t•	Generic personal care items.  \n\t•	Assistance with eating.  \n\t\t1.Routine extensive assistance – oversight, supervision, cuing and encouragement.  \n\t\t2.Occasional total assistance for all necessary physical assistance(tube feeding and IV feeding are not required).\n\t•	Daily activities.\n\t\t1.Opportunities for independent, self directed activities.\n\t\t2.Individual activities.\n\t\t3.Group activities.\n\t\t4.Activities that accommodate variations in mood, energy and preferences – based upon individual resident schedules and interests.\n\tEnvironment:\n\t•	Multiple common areas – Vary in size and arrangement.\n\t•	Outdoor area – At least one outdoor area.\n\t\t1.Accessible to resident without staff assistance.\n\t\t2.Surrounded by walls or fences at least 72 inches high.\n\t\t3.Protected from direct sunshine and rain throughout the day.\n\t\t4.Firm, stable and slip resistant walking surfaces free of abrupt changes and appropriate for wheelchairs and walkers.\n\t\t5.Suitable outdoor furniture.\n\t\t6.No poisonous or toxic plants.\n\t•	Areas used by residents.\n\t\t1.Residential atmosphere – opportunities for privacy, socialization and wandering.\n\t\t2.Public address system is used only for emergencies.\n\t•	Resident room.1.Furnished and / or decorated personal to resident based on needs and preferences.\n\t\t2.Accessible to resident without staff assistance. "), 0, 0, 12);
            form.AddElement(body);*/

/*Form form = new Form("FormO");
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
            body.AddElement(new ControlLabel("QoL", "Quality of Life/Resident Rights:  WAC 3288-110-140(5)"), 0, 0, 12);
            body.AddElement(new ControlText("QoL1", "Assisted Living Contract \n•   Homelike, smoke free common areas with sufficient space for socialization to meet residents:", true), 0, 1, 12, false);

            body.AddElement(new ControlLabel("PE", "Physical Environment – Interior:"), 0, 2, 12);
            body.AddElement(new ControlText("PE1", "Assisted Living Contract:  WAC 388-110-140 \n• 	Meeting space outside apartment: ", true), 0, 3, 12, false);
            body.AddElement(new ControlText("PE2", "•	Access by resident to on-site washing machine and dryer:", true), 0, 4, 12, false);
            body.AddElement(new ControlText("PE3", "•	Private apartment – note roommate situation (no exemption required if spouse): :", true), 0, 5, 12, false);
            body.AddElement(new ControlLabel("P4", "•	Resident room – meeting the requirements of a type “B” dwelling:"), 0, 6, 12, false);
            body.AddElement(new ControlText("PE5", "1.	180 square feet in an existing ALF:", true), 1, 7, 11, false);
            body.AddElement(new ControlText("PE6", "	220 square feet in a new ALF:  ", true), 1, 8, 11, false);
            body.AddElement(new ControlText("PE7", "2.	Separate bathroom with sink, toilet, and shower or bathtub:  ", true), 1, 9, 11, false);
            body.AddElement(new ControlText("PE8", "3.	Lockable entry door:  ", true), 1, 10, 11, false);
            body.AddElement(new ControlText("PE9", "4.	Kitchen with refrigerator, microwave or stove top, counter or table, kitchen sink: ", true), 1, 11, 11, false);
            body.AddElement(new ControlText("PE10", "5.	New ALF (CRS project number issued09/01/2004 or after) includes storage for utensils / supplies,\ncounter surface with knee space and wired for phone:  ", true), 1, 12, 11, false);
            body.AddElement(new ControlText("PE11", "6.	New ALF must also have a private mailbox:  ", true), 1, 13, 11, false);

            body.AddElement(new ControlLabel("EARCa", "EARC:  WAC 388-110-220(1)"), 0, 14, 12);
            body.AddElement(new ControlText("EARC1", "•	Resident apartment – no more than two residents per room:", true), 0, 15, 12, false);

            body.AddElement(new ControlLabel("EARCb", "EARC – Specialty Dementia Care Contract:  WAC 388-110-220(2)(3)"), 0, 16, 12);
            body.AddElement(new ControlText("EARC2", "•	Residential atmosphere:", true), 0, 17, 12, false);
            body.AddElement(new ControlLabel("EARCc", "•	Area for privacy and socialization:"), 0, 18, 12, false);
            body.AddElement(new ControlText("EARC3", "1.	Opportunity for wandering:", true), 1, 19, 11, false);
            body.AddElement(new ControlText("EARC4", "2.	Resident room is furnished / decorated with personal items based on needs and preferences:", true), 1, 20, 11, false);
            body.AddElement(new ControlText("EARC5", "3.	Resident has access to room at all times without staff assistance:", true), 1, 21, 11, false);
            body.AddElement(new ControlText("EARC6", "•	Multiple common areas – varying in size and arrangement:", true), 0, 22, 12, false);
            body.AddElement(new ControlText("EARC7", "•	Environmental cues to stimulate activity:", true), 0, 23, 12, false);
            body.AddElement(new ControlText("EARC8", "•	Communication System:  if public address system (used only for emergencies)", true), 0, 24, 12, false);

            body.AddElement(new ControlLabel("PEE", "Physical Environment – Exterior "), 0, 25, 12);
            body.AddElement(new ControlText("PEE1", "Assisted Living Contract: WAC 388-110-140 (5) \n•	Access to outdoor areas available to all residents.", true), 0, 26, 12, false);
            body.AddElement(new ControlText("PEE2", "EARC – Specialty Dementia Care Contract:\nOutdoor area – at least one outdoor area.WAC 388 - 110 - 220(3)\n•	Accessible to residents without staff assistance:", true), 0, 27, 12, false);
            body.AddElement(new ControlText("PEE3", "•	Garden area:", true), 0, 28, 12, false);
            body.AddElement(new ControlText("PEE4", "•	Surrounded by walls and fences  at least 72 inches high:", true), 0, 29, 12, false);
            body.AddElement(new ControlText("PEE5", "•	Outdoor area protected from sun or rain throughout day:", true), 0, 30, 12, false);
            body.AddElement(new ControlText("PEE6", "•	Suitable outdoor furniture:", true), 0, 31, 12, false);
            body.AddElement(new ControlLabel("PEEa", "•	Paths and walkways"), 0, 32, 12, false);
            body.AddElement(new ControlText("PEE7", "1.	Encourage exploration and walking:", true), 1, 33, 11, false);
            body.AddElement(new ControlText("PEE8", "2.	Walking surfaces are firm, stable, slip-resistant, and free from abrupt changes, suitable for wheelchairs \nand walkers:", true), 1, 34, 11, false);
            body.AddElement(new ControlText("PEE9", "3.	Plants are non-toxic, non-poisonous, non- thorny, and not covering the walkway:", true), 1, 35, 11, false);

            body.AddElement(new ControlText("notes", "NOTES", true), 0, 36, 12);
            form.AddElement(body);
form.AddElement(body);*/

/*
 Form form = new Form("FormP");
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
        body.AddElement(new ControlLabel("lab1", "Food Services:  General observation of kitchen and staff (wear a hair restraint per regulation and facility policy)."), 0, 0, 12);
        body.AddElement(new ControlBoolean("FS1", "", System.Windows.Controls.Orientation.Horizontal), 0, 1, 1, false);
        body.AddElement(new ControlLabel("FSLab1", "Overall cleanliness of kitchen area (6505)"), 1, 1, 11, false);
        body.AddElement(new ControlBoolean("FS2", "", System.Windows.Controls.Orientation.Horizontal), 0, 2, 1, false);
        body.AddElement(new ControlLabel("FSLab2", "Proper hand hygiene and glove use (02305 and 02310) during food preparation and service"), 1, 2, 11, false);
        body.AddElement(new ControlBoolean("FS3", "", System.Windows.Controls.Orientation.Horizontal), 0, 3, 1, false);
        body.AddElement(new ControlLabel("FSLab3", "Staff cleanliness, use of hair restraints and hygienic practices (02325, 02335, 02410)"), 1, 3, 11, false);
        body.AddElement(new ControlBoolean("FS4", "", System.Windows.Controls.Orientation.Horizontal), 0, 4, 1, false);
        body.AddElement(new ControlLabel("FSLab4", "Food stored with proper temperature controls (for example, no potentially hazardous foods, such as beef, chicken, pork  thawing \nat room temperature) (03510) "), 1, 4, 11, false);
        body.AddElement(new ControlBoolean("FS5", "", System.Windows.Controls.Orientation.Horizontal), 0, 5, 1, false);
        body.AddElement(new ControlLabel("FSLab5", "Food from approved sources (03200) (for example food from known providers, no home prepared items) "), 1, 5, 11, false);
        body.AddElement(new ControlBoolean("FS6", "", System.Windows.Controls.Orientation.Horizontal), 0, 6, 1, false);
        body.AddElement(new ControlLabel("FSLab6", "No ill food workers present  (02220)"), 1, 6, 11, false);
        body.AddElement(new ControlBoolean("FS7", "", System.Windows.Controls.Orientation.Horizontal), 0, 7, 1, false);
        body.AddElement(new ControlLabel("FSLab7", "Chemicals labeled and properly stored (07200)"), 1, 7, 11, false);
        body.AddElement(new ControlBoolean("FS8", "", System.Windows.Controls.Orientation.Horizontal), 0, 8, 1, false);
        body.AddElement(new ControlLabel("FSLab8", "Person in charge to provide a copy of the food handlers’ cards for meal preparation staff observed during the meal observed in this \ninspection. (02120)"), 1, 8, 11, false);
        body.AddElement(new ControlBoolean("FS9", "", System.Windows.Controls.Orientation.Horizontal), 0, 9, 1, false);
        body.AddElement(new ControlLabel("FSLab9", "Person in Charge describes process for staff to report illnesses and procedures used when an ill food workers reports an illness \n(02205, 02220, 02225)"), 1, 9, 11, false);
        body.AddElement(new ControlBoolean("FS10", "", System.Windows.Controls.Orientation.Horizontal), 0, 10, 1, false);
        body.AddElement(new ControlLabel("FSLab10", "Person in Charge or designee describes proper dishwashing procedure that follow manufacture guidelines for temperature or \nchemical controls (04555, 04560) "), 1, 10, 11, false);
        body.AddElement(new ControlBoolean("FS11", "", System.Windows.Controls.Orientation.Horizontal), 0, 11, 1, false);
        body.AddElement(new ControlLabel("FSLab11", "Person in Charge or designee describes steps taken to prevent cross-contamination of food items (03306)"), 1, 11, 11, false);
        body.AddElement(new ControlText("notes1", "Notes", true), 0, 12, 12, false);

        body.AddElement(new ControlLabel("lab2", "Food Preparation and Service:  Observe for proper food preparation, thawing of frozen items, areas used for food preparation, and \nproper temperature controls, for example."), 0, 13, 12);
        body.AddElement(new ControlBoolean("FPS1", "", System.Windows.Controls.Orientation.Horizontal), 0, 14, 1, false);
        body.AddElement(new ControlLabel("FPSLab1", "Person in Charge or designee describes how food contact surfaces are thoroughly cleaned/rinsed/sanitized \n(4640 washing, 04645 rinsing, 04700 sanitization) "), 1, 14, 11, false);
        body.AddElement(new ControlBoolean("FPS2", "", System.Windows.Controls.Orientation.Horizontal), 0, 15, 1, false);
        body.AddElement(new ControlLabel("FPSLab2", "Person in Charge describes process to check food temperatures   "), 1, 15, 11, false);
        body.AddElement(new ControlBoolean("FPS3", "", System.Windows.Controls.Orientation.Horizontal), 0, 16, 1, false);
        body.AddElement(new ControlLabel("FPSLab3", "Person in Charge or designee identifies proper cooking time and temperatures for potentially hazardous foods \n(for example, poultry 165°F, ground meat at least 155°F, fish and other meats 145°F) "), 1, 16, 11, false);
        body.AddElement(new ControlBoolean("FPS4", "", System.Windows.Controls.Orientation.Horizontal), 0, 17, 1, false);
        body.AddElement(new ControlLabel("FPSLab4", "Person in Charge or designee describes how food items are properly reheated (03400)  "), 1, 17, 11, false);
        body.AddElement(new ControlBoolean("FPS5", "", System.Windows.Controls.Orientation.Horizontal), 0, 18, 1, false);
        body.AddElement(new ControlLabel("FPSLab5", "No bare hand contact with ready to eat foods, except during the washing of fruits and vegetables (03300) "), 1, 18, 11, false);
        body.AddElement(new ControlBoolean("FPS6", "", System.Windows.Controls.Orientation.Horizontal), 0, 19, 1, false);
        body.AddElement(new ControlLabel("FPSLab6", "Proper hand hygiene and glove use (see above)"), 1, 19, 11, false);
        body.AddElement(new ControlBoolean("FPS7", "", System.Windows.Controls.Orientation.Horizontal), 0, 20, 1, false);
        body.AddElement(new ControlLabel("FPSLab7", "Fruits and vegetables are thoroughly rinsed (washed) (03318) "), 1, 20, 11, false);
        body.AddElement(new ControlBoolean("FPS8", "", System.Windows.Controls.Orientation.Horizontal), 0, 21, 1, false);
        body.AddElement(new ControlLabel("FPSLab8", "Hot foods held at ≥135°F prior to serving  (03525) \n(facility can check food temperature in your presence or you can check temperature of food with your sanitized thermometer)"), 1, 21, 11, false);
        body.AddElement(new ControlBoolean("FPS9", "", System.Windows.Controls.Orientation.Horizontal), 0, 22, 1, false);
        body.AddElement(new ControlLabel("FPSLab9", "Cold foods held at ≤41°F prior to serving (03525) \n(facility can check food temperature in your presence or you can check temperature of food with your sanitized thermometer) "), 1, 22, 11, false); 
        body.AddElement(new ControlText("notes2", "Notes", true), 0, 23, 12, false);

        body.AddElement(new ControlLabel("lab3", "Food Storage:  Observe for food storage to prevent contamination and to promote proper temperature controls."), 0, 24, 12);
        body.AddElement(new ControlBoolean("FST1", "", System.Windows.Controls.Orientation.Horizontal), 0, 25, 1, false);
        body.AddElement(new ControlLabel("FSTLab1", "Store rooms free from rodents and pests (06550)"), 1, 25, 11, false);
        body.AddElement(new ControlBoolean("FST2", "", System.Windows.Controls.Orientation.Horizontal), 0, 26, 1, false);
        body.AddElement(new ControlLabel("FSTLab2", "Refrigerator temperature is maintained at ≤41°F (internal temperature of potentially hazardous food must be  at ≤41°F) (03525) "), 1, 26, 11, false);
        body.AddElement(new ControlBoolean("FST3", "", System.Windows.Controls.Orientation.Horizontal), 0, 27, 1, false);
        body.AddElement(new ControlLabel("FSTLab3", "Foods are frozen in freezer (no specific temperature requirement) (03500)"), 1, 27, 11, false);
        body.AddElement(new ControlBoolean("FST4", "", System.Windows.Controls.Orientation.Horizontal), 0, 28, 1, false);
        body.AddElement(new ControlLabel("FSTLab4", "Raw meats stored below or away from ready to eat food  (03306)"), 1, 28, 11, false);
        body.AddElement(new ControlBoolean("FST5", "", System.Windows.Controls.Orientation.Horizontal), 0, 29, 1, false);
        body.AddElement(new ControlLabel("FSTLab5", "Potentially hazardous foods are properly cooled (within two hours going from 135°F to  70°F and then to ≤41°F within a total of six \nhours or following the rapid cooling procedure of continuous cooling in a shallow layer of 2 inches or less, uncovered, protected \nfrom cross contamination, in cooling equipment maintaining an ambient air temperature of ≤41°F or other methods as described in \nregulation) (03515)"), 1, 29, 11, false);
        body.AddElement(new ControlText("notes3", "Notes", true), 0, 30, 12, false);

        body.AddElement(new ControlLabel("lab4", "Food Storage:  Observe for food storage to prevent contamination and to promote proper temperature controls."), 0, 31, 12);
        body.AddElement(new ControlLabel("lab4a", "•	Menus:"), 0, 32, 12,false);
        body.AddElement(new ControlBoolean("FST2m1", "", System.Windows.Controls.Orientation.Horizontal), 1, 33, 1, false);
        body.AddElement(new ControlLabel("FSTLab2m1", "Provide Variety"), 2, 33, 10, false);
        body.AddElement(new ControlBoolean("FST2m2", "", System.Windows.Controls.Orientation.Horizontal), 1, 34, 1, false);
        body.AddElement(new ControlLabel("FSTLab2m2", "Are nutritious, meets the residents’ dietary needs"), 2, 34, 10, false);
        body.AddElement(new ControlBoolean("FST2m3", "", System.Windows.Controls.Orientation.Horizontal), 1, 35, 1, false);
        body.AddElement(new ControlLabel("FSTLab2m3", "Are palatable and served at proper temperature (if issues with food palatability temperature and/or palatability, consider \nobtaining a meal sample)"), 2, 35, 10, false);
        body.AddElement(new ControlBoolean("FST2m4", "", System.Windows.Controls.Orientation.Horizontal), 1, 36, 1, false);
        body.AddElement(new ControlLabel("FSTLab2m4", "Are attractively served"), 2, 36, 10, false);
        body.AddElement(new ControlBoolean("FST2m5", "", System.Windows.Controls.Orientation.Horizontal), 1, 37, 1, false);
        body.AddElement(new ControlLabel("FSTLab2m5", "Alternate choices for entrees are available"), 2, 37, 10, false);
        body.AddElement(new ControlBoolean("FST2m6", "", System.Windows.Controls.Orientation.Horizontal), 1, 38, 1, false);
        body.AddElement(new ControlLabel("FSTLab2m6", "Prescribed diets available per diet manual"), 2, 38, 10, false);
        body.AddElement(new ControlBoolean("FST2m7", "", System.Windows.Controls.Orientation.Horizontal), 1, 39, 1, false);
        body.AddElement(new ControlLabel("FSTLab2m7", "Menus are posted"), 2, 39, 10, false);

        body.AddElement(new ControlLabel("lab4b", "•	Dining Observation:"), 0, 40, 12, false);
        body.AddElement(new ControlBoolean("FST2d1", "", System.Windows.Controls.Orientation.Horizontal), 1, 41, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d1", "Residents who need assistance for eating or swallowing concerns receive it timely, appropriately and in a dignified manner"), 2, 41, 10, false);
        body.AddElement(new ControlBoolean("FST2d2", "", System.Windows.Controls.Orientation.Horizontal), 1, 42, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d2", "Meals are distributed in a timely manner"), 2, 42, 10, false);
        body.AddElement(new ControlBoolean("FST2d3", "", System.Windows.Controls.Orientation.Horizontal), 1, 43, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d3", "For each sampled resident being observed, identify any special needs and interventions planned to meet their needs"), 2, 43, 10, false);
        body.AddElement(new ControlBoolean("FST2d4", "", System.Windows.Controls.Orientation.Horizontal), 1, 44, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d4", "Tables adjusted to accommodate wheelchairs"), 2, 44, 10, false);
        body.AddElement(new ControlBoolean("FST2d5", "", System.Windows.Controls.Orientation.Horizontal), 1, 45, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d5", "Residents prepared for meals, dentures, glasses and/or hearing aides are in place"), 2, 45, 10, false);
        body.AddElement(new ControlBoolean("FST2d6", "", System.Windows.Controls.Orientation.Horizontal), 1, 46, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d6", "Adaptive equipment is available per need"), 2, 46, 10, false);
        body.AddElement(new ControlBoolean("FST2d7", "", System.Windows.Controls.Orientation.Horizontal), 1, 47, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d7", "Residents at the same table are served and assisted concurrently"), 2, 47, 10, false);
        body.AddElement(new ControlBoolean("FST2d8", "", System.Windows.Controls.Orientation.Horizontal), 1, 48, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d8", "Sufficient staff are available for the distribution of meals and assistance"), 2, 48, 10, false);
        body.AddElement(new ControlBoolean("FST2d9", "", System.Windows.Controls.Orientation.Horizontal), 1, 49, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d9", "Sufficient time is allowed for residents to eat"), 2, 49, 10, false);
        body.AddElement(new ControlBoolean("FST2d10", "", System.Windows.Controls.Orientation.Horizontal), 1, 50, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d10", "Sufficient  dining space available in all dining areas"), 2, 50, 10, false);
        body.AddElement(new ControlBoolean("FST2d11", "", System.Windows.Controls.Orientation.Horizontal), 1, 51, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d11", "Dining atmosphere is pleasant"), 2, 51, 10, false);
        body.AddElement(new ControlBoolean("FST2d12", "", System.Windows.Controls.Orientation.Horizontal), 1, 52, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d12", "Family members are accommodated for dining with their resident"), 2, 52, 10, false);
        body.AddElement(new ControlBoolean("FST2d13", "", System.Windows.Controls.Orientation.Horizontal), 1, 53, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d13", "Meals are provided as written on posted menu"), 2, 53, 10, false);
        body.AddElement(new ControlBoolean("FST2d14", "", System.Windows.Controls.Orientation.Horizontal), 1, 54, 1, false);
        body.AddElement(new ControlLabel("FSTLab2d14", "Meals provided in resident rooms are served promptly to ensure proper"), 2, 54, 10, false);
        body.AddElement(new ControlText("notes4", "Notes", true), 0, 55, 12, false);

        body.AddElement(new ControlText("notes5", "Additional Notes", true), 0, 56, 12);

        form.AddElement(body);
 */

/*Form form = new Form("FormQ");
        LayoutStackPanel layoutStackPanel = new LayoutStackPanel("inspectionType");
        layoutStackPanel.AddElement(new ControlLabel("lab1", "Inspection Type"));
        layoutStackPanel.AddElement(new ControlBoolean("initial", "Initial"));
        layoutStackPanel.AddElement(new ControlBoolean("full", "Full"));
        layoutStackPanel.AddElement(new ControlBoolean("followup", "Follow up"));
        layoutStackPanel.AddElement(new ControlBoolean("monitering", "Monitoring"));
        layoutStackPanel.AddElement(new ControlBoolean("complaint", "Complaint"));
        layoutStackPanel.AddElement(new ControlInteger("number", "Number"));
        form.AddElement(layoutStackPanel);
        form.AddElement(new ElementSpacer("spacer"));
        LayoutGrid body = new LayoutGrid("body");
        body.AddElement(new ControlLabel("lab1", "This form is completed only after a problem with medications has been identified."), 0, 0, 12);
        body.AddElement(new ControlLabel("lab2", "RESIDENT NAME AND ID NUMBER"), 0, 1, 3);
        body.AddElement(new ControlLabel("lab3", "DRUG PRESCRIPTION NAME,\nDOSE AND FORM"), 3, 1, 3);
        body.AddElement(new ControlLabel("lab4", "OBSERVATION OF \nADMINISTRATION"), 6, 1, 3);
        body.AddElement(new ControlLabel("lab5", "DRUG ORDER WRITTEN \nAS (WHEN DIFFERENT \nFROM OBSERVATION"), 9, 1, 3);
        LayoutGrid pass = new LayoutGrid("medicationPass");
        pass.AddElement(new ControlText("resname", "RESIDENT NAME"), 0, 0, 3, false);
        pass.AddElement(new ControlInteger("id", "ID NUMBER"), 0, 1, 3, false);
        pass.AddElement(new ControlText("drugname", ""), 3, 0, 3, false);
        pass.AddElement(new ControlText("observation", ""), 6, 0, 3, false);
        pass.AddElement(new ControlText("drugOrder", ""), 9, 0, 3, false);
        LayoutRepeatGrid drug = new LayoutRepeatGrid("drug", new FormElement[] { pass }, "Add Resident");
        body.AddElement(drug, 0, 2, 12, false);
        body.AddElement(new ControlText("notes", "Notes", true), 0, 3, 12);

        form.AddElement(body);
 */


/*
Form form = new Form("testForm");
LayoutGrid grid = new LayoutGrid("ddd");
grid.AddElement(new ControlLabel("d", "Imbefore the toerhh "), 0, 0, 12);
form.AddElement(grid);
LayoutRepeatGrid repeatGrid = new LayoutRepeatGrid("body", "addrow");
repeatGrid.AddRepeatableElement(new ControlLabel("sometest", "some text"), 0, 0, 12);
form.AddElement(repeatGrid);

LayoutGrid bodyafter = new LayoutGrid("asd");
bodyafter.AddElement(new ControlLabel("asddd", "Im after adding"),0,0,12);
form.AddElement(bodyafter);
this.scrollView.Content = form.UIelement;

string fileName = Path.Combine(UserPrefs.GetFormDirectory(), form.name + UserPrefs.FORM_EXTENSION);
// this.scrollView.Content = form.UIelement;
 XmlSerializer ser = new XmlSerializer(typeof(Form));
using (TextWriter writer = new StreamWriter(fileName))
 {
     ser.Serialize(writer, form);
 }
 */
