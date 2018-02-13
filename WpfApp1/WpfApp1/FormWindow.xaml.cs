
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

        //TODO: form k , d
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

            /*Form E
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
            body.AddElement(new ControlText("text4", "•	Dignity respected (those with and without ability to speak for selves). How do staff members treat the residents\n here, not just yourselves, but others who cannot speak for themselves?  \nDo they try to accommodate residents’ wishes where possible? ", true), 0, 6, 12);
            body.AddElement(new ControlText("text5", "•	Abuse and neglect.  Are you aware of any residents that are abused or neglected here?  Are you aware of anytime\n when a resident had property taken away from them by staff?  Is there enough staff here to take care of everyone? ", true), 0, 7, 12);
            body.AddElement(new ControlText("text6", "•	Personal belongings / Loss or theft.  Can residents have their own belongings in their rooms if they want to?  Does\n the facility make efforts to prevent loss, theft of destruction of property? ", true), 0, 8, 12);
            body.AddElement(new ControlText("text7", "•	Meals and food service. Can you please describe what the food is like here?  If you do not like some\n food, do they give you something else to eat?  \nIs the temperature of your hot and cold food appropriate? Are your meats tender enough?", true), 0, 9, 12);
            body.AddElement(new ControlText("text8", "•	Response to concerns. Do you talk to staff about your concerns?  What is their response? ", true), 0, 10, 12);
            body.AddElement(new ControlText("text9", "•	Unmet needs.   Do you feel free to talk to staff (and your family) about needs that are not being met?  ", true), 0, 11, 12);
            body.AddElement(new ControlText("text10", "•    Activities. Can you please share your thoughts about the activities offered here? Do the activity programs meet your interests and needs?\n  Do you participate in activities?    \nAre there enough help and supplies available so that everyone who wants to can participate?", true), 0, 12, 12);
            body.AddElement(new ControlText("text11", "•    Costs.  Are residents here informed by the facility about which items and services are paid by Medicare or Medicaid?\n Are you aware of any changes in the care any resident received after paying for their own care, and changed to Medicaid paying?  ", true), 0, 13, 12);
            body.AddElement(new ControlText("text12", "•    Medicaid Policy.  Please tell me what the ALF told you about whether they admit and keep residents whose stay if paid by the state (Medicaid).\n   When were you told about this?  Did the home tell you if they would allow you to stay if you ran out of money, and had to apply to the state for assistance?\n How did they give you the information, in writing or verbally? Did the home tell you what might happen if they quit taking state pay?", true), 0, 14, 12);
            body.AddElement(new ControlText("text13", "•	Building. What do you think about the air and temperature in your room; in the dining and activity rooms?\n  Does the lighting in your room allow you to do whatever you want to do?\n  Is it generally noisy or quiet?  How about at night?", true), 0,15, 12);
            body.AddElement(new ControlText("text14", "•	Other.  Is there anything else about life here in the facility that you would like to discuss?\n Thank the group for their time.  After the interview, follow up on concerns that need further investigation. ", true), 0, 16, 12);

            body.AddElement(new ControlText("notes", "Notes", true), 0, 17, 12);
            form.AddElement(body);*/

            /*Form G
            Form form = new Form("FormG");
            LayoutGrid head = new LayoutGrid("Head");
            head.AddElement(new ControlText("resName", "RESIDENT NAME"), 0, 0, 4);
            head.AddElement(new ControlInteger("resNum", "RESIDENT NUMBER"), 4, 0, 2);
            head.AddElement(new ControlText("roomNum", "ROOM NUMBER"), 6, 0, 2);
            head.AddElement(new ControlLabel("lab1", "PAY STATUS"), 8, 0, 4,1,false);
            head.AddElement(new ControlBoolean("private", "Private"), 8, 1, 2, 1, false);
            head.AddElement(new ControlBoolean("state", "State"), 10, 1, 2, 1, false);
            head.AddElement(new ControlText("agreement", "Brief Review of Negotiated Service Agreement:", true), 0, 2, 12);

            form.AddElement(head);

            LayoutGrid body = new LayoutGrid("body");
            body.AddElement(new ControlBoolean("resInterview", "Resident Interview"),0,0,2,1,false);
            body.AddElement(new ControlBoolean("repInterview", "Representative Interview"), 2, 0, 2, 1, false);

            body.AddElement(new ControlLabel("lab1", "A.	The following are REQUIRED questions and MUST be asked during the interview.\nCheck “Y,” if the answer is yes; check “N,” if the answer is no and document the interviewee’s response; or \ncheck “D” if the interviewee declined to answer the question."), 0, 1, 12);

            body.AddElement(new ControlLabel("question1", "Can you make choices about the care and \nservices you receive here at the facility?"), 0, 2, 4,1,false);
            body.AddElement(new ControlBoolean("y1", "Y"),4,2,1,1,false);
            body.AddElement(new ControlBoolean("n1", "N"), 5, 2, 1, 1, false);
            body.AddElement(new ControlBoolean("d1", "D"), 6, 2, 1, 1, false);
            body.AddElement(new ControlText("notes1", "Notes", true), 7, 2, 5);
            body.AddElement(new ControlLabel("question2", "If you have a roommate, were you informed \nyou would have a roommate? \nCould you change roommates if you wanted to?"), 0, 3, 4, 1, false);
            body.AddElement(new ControlBoolean("y2", "Y"), 4, 3, 1, 1, false);
            body.AddElement(new ControlBoolean("n2", "N"), 5, 3, 1, 1, false);
            body.AddElement(new ControlBoolean("d2", "D"), 6, 3, 1, 1, false);
            body.AddElement(new ControlText("notes2", "Notes", true), 7, 3, 5);
            body.AddElement(new ControlLabel("question3", "Do you have an opportunity to participate in \ncommunity activities?"), 0, 4, 4, 1, false);
            body.AddElement(new ControlBoolean("y3", "Y"), 4, 4, 1, 1, false);
            body.AddElement(new ControlBoolean("n3", "N"), 5, 4, 1, 1, false);
            body.AddElement(new ControlBoolean("d3", "D"), 6, 4, 1, 1, false);
            body.AddElement(new ControlText("notes3", "Notes", true), 7, 4, 5);
            body.AddElement(new ControlLabel("question4", "Can you choose who visits you and when?"), 0, 5, 4, 1, false);
            body.AddElement(new ControlBoolean("y4", "Y"), 4, 5, 1, 1, false);
            body.AddElement(new ControlBoolean("n4", "N"), 5, 5, 1, 1, false);
            body.AddElement(new ControlBoolean("d4", "D"), 6, 5, 1, 1, false);
            body.AddElement(new ControlText("notes4", "Notes", true), 7, 5, 5);
            body.AddElement(new ControlLabel("question5", "Do they pay attention to what you have to say?"), 0, 6, 4, 1, false);
            body.AddElement(new ControlBoolean("y5", "Y"), 4, 6, 1, 1, false);
            body.AddElement(new ControlBoolean("n5", "N"), 5, 6, 1, 1, false);
            body.AddElement(new ControlBoolean("d5", "D"), 6, 6, 1, 1, false);
            body.AddElement(new ControlText("notes5", "Notes", true), 7, 6, 5);
            body.AddElement(new ControlLabel("question6", "Can you choose to lock your door?"), 0, 7, 4, 1, false);
            body.AddElement(new ControlBoolean("y6", "Y"), 4, 7, 1, 1, false);
            body.AddElement(new ControlBoolean("n6", "N"), 5, 7, 1, 1, false);
            body.AddElement(new ControlBoolean("d6", "D"), 6, 7, 1, 1, false);
            body.AddElement(new ControlText("notes6", "Notes", true), 7, 7, 5);
            body.AddElement(new ControlLabel("question7", "Do you have access to food anytime?"), 0, 8, 4, 1, false);
            body.AddElement(new ControlBoolean("y7", "Y"), 4, 8, 1, 1, false);
            body.AddElement(new ControlBoolean("n7", "N"), 5, 8, 1, 1, false);
            body.AddElement(new ControlBoolean("d7", "D"), 6, 8, 1, 1, false);
            body.AddElement(new ControlText("notes7", "Notes", true), 7, 8, 5);
            body.AddElement(new ControlLabel("question8", "Do you receive services in the community?"), 0, 9, 4, 1, false);
            body.AddElement(new ControlBoolean("y8", "Y"), 4, 9, 1, 1, false);
            body.AddElement(new ControlBoolean("n8", "N"), 5, 9, 1, 1, false);
            body.AddElement(new ControlBoolean("d8", "D"), 6, 9, 1, 1, false);
            body.AddElement(new ControlText("notes8", "Notes", true), 7, 9, 5);

            body.AddElement(new ControlLabel("lab3", "B.	 Care and Service Needs"), 0, 10, 12);
            body.AddElement(new ControlBoolean("help3","What kind of help do you get from the staff?"),0,11,6,1,false);
            body.AddElement(new ControlText("othertext1", "Other: ",true), 6,11,6,1,false);
            body.AddElement(new ControlBoolean("needs", "How well does staff meet your needs?"),0,12,6,1,false);
            body.AddElement(new ControlBoolean("noC1", "No Concerns"), 6, 12, 6, 1, false);

            body.AddElement(new ControlLabel("lab4", "C.	 Support of Personal Relationships (if the resident has family or significant others)"), 0, 13, 12);
            body.AddElement(new ControlBoolean("c1", "Does staff give you time and space to meet / visit \nwith friends and family who come to visit?"), 0, 14, 6, 1, false);
            body.AddElement(new ControlText("othertext2", "Other: ",true), 6, 14, 6, 1, false);
            body.AddElement(new ControlBoolean("c2", "Are you able to make personal phone calls without \nbeing overheard?"), 0, 15, 6, 1, false);
            body.AddElement(new ControlBoolean("noC2", "No Concerns"), 6, 15, 6, 1, false);

            body.AddElement(new ControlLabel("lab5", "D.	 Reasonable House Rules"), 0, 16, 12);
            body.AddElement(new ControlBoolean("D1", "Tell me about the rules of the facility."), 0, 17, 6, 1, false);
            body.AddElement(new ControlText("othertext3", "Other: ",true), 6, 17, 6, 1, false);
            body.AddElement(new ControlBoolean("D2", "What have you been told about how long you can stay \nup at night or how early or late you can watch TV?"), 0, 18, 6, 1, false);
            body.AddElement(new ControlBoolean("noC3", "No Concerns"), 6, 18, 6, 1, false);

            body.AddElement(new ControlLabel("E", "E.	Respect of Individuality, Independence, Personal Choice, Dignity"), 0, 19, 12);
            body.AddElement(new ControlBoolean("E1", "Does the staff here know about your preferences?"), 0, 20, 6, 1, false);
            body.AddElement(new ControlText("othertext4", "Other: ",true), 6, 20, 6, 1, false);
            body.AddElement(new ControlBoolean("E2", "What kinds of things do you make choices about?"), 0, 21, 6, 1, false);
            body.AddElement(new ControlBoolean("noC4", "No Concerns"), 6, 21, 6, 1, false);
            body.AddElement(new ControlBoolean("E3", "How does the staff treat you?  Speak to you?"), 0, 23, 6, 1, false);
            body.AddElement(new ControlBoolean("E4", "Do you have any concerns about how you are treated?"), 0, 24, 6, 1, false);

            body.AddElement(new ControlLabel("F", "F.	 Homelike Environment"), 0, 25, 12);
            body.AddElement(new ControlBoolean("F1", "What is your room like?"), 0, 26, 6, 1, false);
            body.AddElement(new ControlText("othertext5", "Other: ",true), 6, 26, 6, 1, false);
            body.AddElement(new ControlBoolean("F2", "Are you comfortable there?"), 0, 27, 6, 1, false);
            body.AddElement(new ControlBoolean("noC5", "No Concerns"), 6, 27, 6, 1, false);
            body.AddElement(new ControlBoolean("F3", "What personal items were you allowed to bring when \nyou came here?"), 0, 28, 6, 1, false);
            body.AddElement(new ControlBoolean("F4", "Is the temperature here comfortable to you?"), 0, 29, 6, 1, false);

            body.AddElement(new ControlLabel("G", "G.	 Response to Concerns"), 0, 30, 12);
            body.AddElement(new ControlBoolean("G1", "Do you feel like you can tell someone if you don’t like \nit here?"), 0, 31, 6, 1, false);
            body.AddElement(new ControlText("othertext6", "Other: ",true), 6, 31, 6, 1, false);
            body.AddElement(new ControlBoolean("G2", "Who would you talk to if you had concerns?"), 0, 32, 6, 1, false);
            body.AddElement(new ControlBoolean("noC6", "No Concerns"), 6, 32, 6, 1, false);
            body.AddElement(new ControlBoolean("G3", "What do you think they would do about it?"), 0, 33, 6, 1, false);

            body.AddElement(new ControlLabel("H", "H.	 Sense of Well-Being and Safety"), 0, 34, 12);
            body.AddElement(new ControlBoolean("H1", "Do you feel safe here?"), 0, 35, 6, 1, false);
            body.AddElement(new ControlText("othertext7", "Other: ",true), 6, 35, 6, 1, false);
            body.AddElement(new ControlBoolean("H2", "Does anything make you feel uncomfortable here?"), 0, 36, 6, 1, false);
            body.AddElement(new ControlBoolean("noC7", "No Concerns"), 6, 36, 6, 1, false);

            body.AddElement(new ControlLabel("I", "I.	 Meals / Snacks / Preferences"), 0, 37, 12);
            body.AddElement(new ControlBoolean("I1", "How is the food here?"), 0, 38, 6, 1, false);
            body.AddElement(new ControlText("othertext8", "Other: ",true), 6, 38, 6, 1, false);
            body.AddElement(new ControlBoolean("I2", "If you can’t eat something or don’t like something, \nwhat kind of replacement does the home offer you?"), 0, 39, 6, 1, false);
            body.AddElement(new ControlBoolean("no8", "No Concerns"), 6, 39, 6, 1, false);
            body.AddElement(new ControlBoolean("I3", "How often do you get the foods you like to eat?"), 0, 40, 6, 1, false);

            body.AddElement(new ControlLabel("J", "J.	 Activities"), 0, 41, 12);
            body.AddElement(new ControlBoolean("J1", "What activities are offered to you by the facility?"), 0, 42, 6, 1, false);
            body.AddElement(new ControlText("othertext9", "Other: ",true), 6,42, 6, 1, false);
            body.AddElement(new ControlBoolean("J2", "What kinds of things did you do for fun and relaxation\n before you came here?"), 0, 43, 6, 1, false);
            body.AddElement(new ControlBoolean("noC9", "No Concerns"), 6, 43, 6, 1, false);
            body.AddElement(new ControlBoolean("J3", "Are there activities you would like to do that you are \nnot offered?"), 0, 44, 6, 1, false);
            body.AddElement(new ControlBoolean("J4", "Is there anything you wanted to do and the facility \nhelped you do it?"), 0, 45, 6, 1, false);

            body.AddElement(new ControlLabel("K", "K.	 Notice"), 0, 46, 12);
            body.AddElement(new ControlBoolean("K1", "Do you handle your own finances or does someone \nhelp you with that?"), 0,47, 6, 1, false);
            body.AddElement(new ControlText("othertext10", "Other: ", true), 6, 47, 6, 1, false);
            body.AddElement(new ControlBoolean("K2", "What were you told about paying for your care here \nand the facility’s policy about admitting and keeping \nresidents whose stay is paid for by the state \n(Medicaid)?"), 0, 48, 6, 1, false);
            body.AddElement(new ControlBoolean("noC10", "No Concerns"), 6, 48, 6, 1, false);
            body.AddElement(new ControlBoolean("K3", "When and how were you told about this?	"), 0, 49, 6, 1, false);

            body.AddElement(new ControlText("footnotes", "Notes", true), 0, 50, 12);


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

            LayoutGrid body = new LayoutGrid("body");
            body.AddElement(new ControlText("resName", "RESIDENT NAME"), 0, 0, 6);
            body.AddElement(new ControlText("resNum", "RESIDENT NUMBER"), 6, 0, 3);
            body.AddElement(new ControlDate("date", "DATE OF INTERVIEW"), 9, 0, 3);
            body.AddElement(new ControlText("contactName", "CONTACT NAME AND NUMBER"), 0, 1, 6);
            body.AddElement(new ControlText("relationship", "RELATIONSHIP TO RESIDENT"), 6, 1, 6);
            body.AddElement(new ControlText("notes1", "NOTES", true), 0, 2, 12);

            //this is that start of a new contact
            body.AddElement(new ControlText("Contact", "CONTACT NAME AND NUMBER"), 0, 3, 6);
            body.AddElement(new ControlDate("date2", "DATE OF INTERVIEW"), 6, 3, 3);
            body.AddElement(new ControlText("relationship2", "RELATIONSHIP TO RESIDENT"), 9, 3, 3);
            body.AddElement(new ControlText("NOTES2", "NOTES", true), 0, 4, 12);

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
            body.AddElement(new ControlBoolean("y1", "YES"), 0, 1, 1, 1, false);
            body.AddElement(new ControlBoolean("n1", "NO"), 1, 1, 1, 1, false);
            body.AddElement(new ControlLabel("qq1", "Presence of objectionable odors"), 2, 1, 10,1 ,false);
            body.AddElement(new ControlBoolean("y2", "YES"), 0, 2, 1, 1, false);
            body.AddElement(new ControlBoolean("n2", "NO"), 1, 2, 1, 1, false);
            body.AddElement(new ControlLabel("qq2", "Housekeeping supply area"), 2, 2, 10, 1, false);
            body.AddElement(new ControlBoolean("y3", "YES"), 0, 3, 1, 1, false);
            body.AddElement(new ControlBoolean("n3", "NO"), 1, 3, 1, 1, false);
            body.AddElement(new ControlLabel("qq3", "Laundry – separate areas for clean and soiled linen"), 2, 3, 10, 1, false);
            body.AddElement(new ControlBoolean("y4", "YES"), 0, 4, 1, 1, false);
            body.AddElement(new ControlBoolean("n4", "NO"), 1, 4, 1, 1, false);
            body.AddElement(new ControlLabel("qq4", "Infection control practices of staff"), 2, 4, 10, 1, false);
            body.AddElement(new ControlBoolean("y5", "YES"), 0, 5, 1, 1, false);
            body.AddElement(new ControlBoolean("n5", "NO"), 1, 5, 1, 1, false);
            body.AddElement(new ControlLabel("qq5", "Hand washing"), 2, 5, 10, 1, false);
            body.AddElement(new ControlBoolean("y6", "YES"), 0, 6, 1, 1, false);
            body.AddElement(new ControlBoolean("n6", "NO"), 1, 6, 1, 1, false);
            body.AddElement(new ControlLabel("qq6", "Temperature (68o+ wake hours / 60o+ sleep hours)"), 2, 6, 10, 1, false);
            body.AddElement(new ControlBoolean("y7", "YES"), 0, 7, 1, 1, false);
            body.AddElement(new ControlBoolean("n7", "NO"), 1, 7, 1, 1, false);
            body.AddElement(new ControlLabel("qq7", "Adequate ventilation in resident rooms and common areas"), 2, 7, 10, 1, false);
            body.AddElement(new ControlBoolean("y8", "YES"), 0, 8, 1, 1, false);
            body.AddElement(new ControlBoolean("n8", "NO"), 1, 8, 1, 1, false);
            body.AddElement(new ControlLabel("qq8", "Adequate lighting in resident rooms and common areas"), 2, 8, 10, 1, false);
            body.AddElement(new ControlBoolean("y9", "YES"), 0, 9, 1, 1, false);
            body.AddElement(new ControlBoolean("n9", "NO"), 1, 9, 1, 1, false);
            body.AddElement(new ControlLabel("qq9", "Safe water temperature in resident rooms and sinks utilized by residents"), 2, 9, 10, 1, false);
            body.AddElement(new ControlBoolean("y10", "YES"), 0, 10, 1, 1, false);
            body.AddElement(new ControlBoolean("n10", "NO"), 1, 10, 1, 1, false);
            body.AddElement(new ControlLabel("qq10", "Cleanliness of resident equipment maintained in good repair"), 2, 10, 10, 1, false);
            body.AddElement(new ControlText("notes1", "NOTES", true), 0, 11, 12,1, false);

            body.AddElement(new ControlLabel("lab2", "Safety"), 0, 12, 12);
            body.AddElement(new ControlBoolean("sy1", "YES"), 0, 13, 1, 1, false);
            body.AddElement(new ControlBoolean("sn1", "NO"), 1, 13, 1, 1, false);
            body.AddElement(new ControlLabel("sq1", "Prevention of resident access to storage of: \n" +
                "•Cleaning supplies     •Cleaning carts       •Storage closet" +"\n" +"•Toxic materials     •Medications	"), 2, 13, 10, 1, false);
            body.AddElement(new ControlBoolean("sy2", "YES"), 0, 14, 1, 1, false);
            body.AddElement(new ControlBoolean("sn2", "NO"), 1, 14, 1, 1, false);
            body.AddElement(new ControlLabel("sq2", "Access to outdoors including dementia care unit"+"\n•Safe walking areas"+"\n•Walking areas protected from the elements"+"\n•Can summon staff in an emergency"), 2, 14, 10, 1, false);
            body.AddElement(new ControlBoolean("sy3", "YES"), 0, 15, 1, 1, false);
            body.AddElement(new ControlBoolean("sn3", "NO"), 1, 15, 1, 1, false);
            body.AddElement(new ControlLabel("sq3", "System to inform and permit exit without sounding alarm"), 2, 15, 10, 1, false);
            body.AddElement(new ControlBoolean("sy4", "YES"), 0, 16, 1, 1, false);
            body.AddElement(new ControlBoolean("sn4", "NO"), 1, 16, 1, 1, false);
            body.AddElement(new ControlLabel("sq4", "Secure outdoor space\n"+"•	Accessible to residents without staff\n•	Surrounded by walls or fences at least 72” high\n•	Firm, stable walking surfaces and outdoor furniture"), 2, 16, 10, 1, false);
            body.AddElement(new ControlBoolean("sy5", "YES"), 0, 17, 1, 1, false);
            body.AddElement(new ControlBoolean("sn5", "NO"), 1, 17, 1, 1, false);
            body.AddElement(new ControlLabel("sq5", "Emergency / disaster preparedness\n "+ "•Emergency lighting      •First Aid supplies\n•Disaster plan	    •Staff responsibilities"), 2, 17, 10, 1, false);
            body.AddElement(new ControlText("notes2", "NOTES", true), 0, 18, 12, 1, false);

            body.AddElement(new ControlLabel("lab3", "Common Bathrooms"), 0, 19, 12);
            body.AddElement(new ControlBoolean("cy", "YES"), 0, 20, 1, 1, false);
            body.AddElement(new ControlBoolean("cn", "NO"), 1, 20, 1, 1, false);
            body.AddElement(new ControlLabel("cq", "Common bathrooms are:"), 2, 20, 10, 1, false);
            body.AddElement(new ControlLabel("clab", "•	Safe / clean / adequate lighting / grab bars(if applicable for resident needs)\n•	Accessible for all resident / privacy available"), 2, 21, 10, 1, false);
            //maybe add more bathrooms?
            body.AddElement(new ControlInteger("temp1", "•Water temperature: °F"), 2, 22, 2, 1, false);
            body.AddElement(new ControlDate("tDate1", "date"), 4, 22, 2, 1, false);
            body.AddElement(new ControlText("tTime1", "time"), 6, 22, 2, 1, false);
            body.AddElement(new ControlText("tPlace1", "place"), 8, 22, 4, 1, false);
            body.AddElement(new ControlInteger("temp2", "•Water temperature: °F"), 2, 23, 2, 1, false);
            body.AddElement(new ControlDate("tDate2", "date"), 4, 23, 2, 1, false);
            body.AddElement(new ControlText("tTime2", "time"), 6, 23, 2, 1, false);
            body.AddElement(new ControlText("tPlace2", "place"), 8, 23, 4, 1, false);
            body.AddElement(new ControlText("notes3", "NOTES", true), 0, 24, 12, 1, false);

            body.AddElement(new ControlLabel("lab4", "Physical Environment - Outdoors"), 0, 25, 12);
            body.AddElement(new ControlBoolean("py1", "YES"), 0, 26, 1, 1, false);
            body.AddElement(new ControlBoolean("pn1", "NO"), 1, 26, 1, 1, false);
            body.AddElement(new ControlLabel("pq1", "Stairs / steps / ramps in good repair"), 2, 26, 10, 1, false);
            body.AddElement(new ControlBoolean("py2", "YES"), 0, 27, 1, 1, false);
            body.AddElement(new ControlBoolean("pn2", "NO"), 1, 27, 1, 1, false);
            body.AddElement(new ControlLabel("pq2", "Hand rails"), 2, 27, 10, 1, false);
            body.AddElement(new ControlBoolean("py3", "YES"), 0, 28, 1, 1, false);
            body.AddElement(new ControlBoolean("pn3", "NO"), 1, 28, 1, 1, false);
            body.AddElement(new ControlLabel("pq3", "Garbage / refuse"), 2, 28, 10, 1, false);
            body.AddElement(new ControlBoolean("py4", "YES"), 0, 29, 1, 1, false);
            body.AddElement(new ControlBoolean("pn4", "NO"), 1, 29, 1, 1, false);
            body.AddElement(new ControlLabel("pq4", "Presence of pests"), 2, 29, 10, 1, false);
            body.AddElement(new ControlBoolean("py5", "YES"), 0, 30, 1, 1, false);
            body.AddElement(new ControlBoolean("pn5", "NO"), 1, 30, 1, 1, false);
            body.AddElement(new ControlLabel("pq5", "General maintenance of sidewalks / walkways"), 2, 30, 10, 1, false);
            body.AddElement(new ControlText("notes4", "NOTES", true), 0, 31, 12, 1, false);

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

            LayoutGrid body = new LayoutGrid("Body");
            body.AddElement(new ControlText("name", "NAME"), 0, 0, 3);
            body.AddElement(new ControlInteger("id", "ID NO."),3,0,1);
            body.AddElement(new ControlDate("DOB", "DATE OF BIRTH"), 4, 0, 2);
            body.AddElement(new ControlInteger("roomNum", "ROOM NO."), 6, 0, 1);
            body.AddElement(new ControlDate("moveIn", "MOVE-IN-DATE"), 7, 0, 2);
            body.AddElement(new ControlText("pay", "PAY STATUS"), 9, 0, 2);
            body.AddElement(new ControlText("family", "FAMILY/MEMBER/RESIDENT’S REPRESENTATIVE/PHONE"), 0, 1, 6);
            body.AddElement(new ControlText("history", "PERTINENT MEDICAL HISTORY/DIAGNOSES"), 6, 1, 6);

            body.AddElement(new ControlLabel("assessment", "Assessment"), 3, 2, 9);
            body.AddElement(new ControlLabel("yesLab1", "Yes"), 0, 2, 1);
            body.AddElement(new ControlLabel("noLab", "No"), 1, 2, 1);
            body.AddElement(new ControlLabel("naLab", "N/A"), 2, 2, 1);

            body.AddElement(new ControlBoolean("ay1", ""), 0, 3, 1, 1, false);
            body.AddElement(new ControlBoolean("an1", ""), 1, 3, 1, 1, false);
            body.AddElement(new ControlBoolean("ana1", ""), 2, 3, 1, 1, false);
            body.AddElement(new ControlLabel("aq1", "Pre-admission (for residents admitted in last six months)."), 3, 3, 9, 1, false);
            body.AddElement(new ControlBoolean("ay2", ""), 0, 4, 1, 1, false);
            body.AddElement(new ControlBoolean("an2", ""), 1, 4, 1, 1, false);
            body.AddElement(new ControlBoolean("ana2", ""), 2, 4, 1, 1, false);
            body.AddElement(new ControlLabel("aq2", "Annual to meet resident’s needs or semi-annual for EARC – Specialized Dementia Care contract."), 3, 4, 9, 1, false);
            body.AddElement(new ControlBoolean("ay3", ""), 0, 5, 1, 1, false);
            body.AddElement(new ControlBoolean("an3", ""), 1, 5, 1, 1, false);
            body.AddElement(new ControlBoolean("ana3", ""), 2, 5, 1, 1, false);
            body.AddElement(new ControlLabel("aq3", "Limited for change of condition as needed."), 3, 5, 9, 1, false);
            body.AddElement(new ControlText("notes1", "NOTES", true), 0, 6, 12, 1, false);

            body.AddElement(new ControlLabel("monitering", "Monitoring Resident’s Well-Being"), 3, 7, 9);
            body.AddElement(new ControlLabel("yesLab2", "Yes"), 0, 7, 1);
            body.AddElement(new ControlLabel("noLab2", "No"), 1, 7, 1);
            body.AddElement(new ControlLabel("naLab2", "N/A"), 2, 7, 1);

            body.AddElement(new ControlBoolean("my1", ""), 0, 8, 1, 1, false);
            body.AddElement(new ControlBoolean("mn1", ""), 1, 8, 1, 1, false);
            body.AddElement(new ControlBoolean("mna1", ""), 2, 8, 1, 1, false);
            body.AddElement(new ControlLabel("mq1", "Documented."), 3, 8, 9, 1, false);
            body.AddElement(new ControlBoolean("my2", ""), 0, 9, 1, 1, false);
            body.AddElement(new ControlBoolean("mn2", ""), 1,9, 1, 1, false);
            body.AddElement(new ControlBoolean("mna2", ""), 2, 9, 1, 1, false);
            body.AddElement(new ControlLabel("mq2", "Action taken as needed."), 3, 9, 9, 1, false);
            body.AddElement(new ControlText("notes2", "NOTES", true), 0, 10, 12, 1, false);

            body.AddElement(new ControlLabel("negotiated", "Negotiated Service Agreement (NSA)"), 3, 11, 9);
            body.AddElement(new ControlLabel("yesLab3", "Yes"), 0, 11, 1);
            body.AddElement(new ControlLabel("noLab3", "No"), 1, 11, 1);
            body.AddElement(new ControlLabel("naLab3", "N/A"), 2, 11, 1);

            body.AddElement(new ControlBoolean("ny1", ""), 0, 12, 1, 1, false);
            body.AddElement(new ControlBoolean("nn1", ""), 1, 12, 1, 1, false);
            body.AddElement(new ControlBoolean("nna1", ""), 2, 12, 1, 1, false);
            body.AddElement(new ControlLabel("nq1", "Initial on admission and completed within 30 days (for residents admitted in last six months)."), 3, 12, 9, 1, false);
            body.AddElement(new ControlBoolean("ny2", ""), 0, 13, 1, 1, false);
            body.AddElement(new ControlBoolean("nn2", ""), 1, 13, 1, 1, false);
            body.AddElement(new ControlBoolean("nna2", ""), 2, 13, 1, 1, false);
            body.AddElement(new ControlLabel("nq2", "Updated as necessary"), 3, 13, 9, 1, false);
            body.AddElement(new ControlBoolean("ny3", ""), 0, 14, 1, 1, false);
            body.AddElement(new ControlBoolean("nn3", ""), 1, 14, 1, 1, false);
            body.AddElement(new ControlBoolean("nna3", ""), 2, 14, 1, 1, false);
            body.AddElement(new ControlLabel("nq3", "Contents meet resident’s needs and preferences.\n•	Defined roles and responsibilities of resident, staff, resident’s representative, outside agency if \n\tused, and alternate plan when necessary.\n•	Times services will be delivered including frequency and approximate time of day.\n•	Resident’s preferences for activities and how supported.\n•	Identifies and incorporates Resident Arranged Services (if applicable).\n•	Identifies and incorporates External Health Providers (if applicable)"), 3, 14, 9, 1, false);
            body.AddElement(new ControlText("notes3", "NOTES", true), 0, 15, 12, 1, false);

            LayoutStackPanel panel = new LayoutStackPanel("medservs");
            panel.AddElement(new ControlLabel("medServ", "Medication Services:  "));
            panel.AddElement(new ControlBoolean("ind", "Independent"));
            panel.AddElement(new ControlBoolean("assist", "Assistance"));
            panel.AddElement(new ControlBoolean("admin", "Administration"));

            body.AddElement(panel, 3, 16, 9);
            body.AddElement(new ControlLabel("yesLab4", "Yes"), 0, 16, 1);
            body.AddElement(new ControlLabel("noLab4", "No"), 1, 16, 1);
            body.AddElement(new ControlLabel("naLab4", "N/A"), 2, 16, 1);

            body.AddElement(new ControlBoolean("msy1", ""), 0, 17, 1, 1, false);
            body.AddElement(new ControlBoolean("msn1", ""), 1, 17, 1, 1, false);
            body.AddElement(new ControlBoolean("msa1", ""), 2, 17, 1, 1, false);
            body.AddElement(new ControlLabel("msq1", "Family / plan."), 3, 17, 9, 1, false);
            body.AddElement(new ControlBoolean("msy2", ""), 0, 18, 1, 1, false);
            body.AddElement(new ControlBoolean("msn2", ""), 1, 18, 1, 1, false);
            body.AddElement(new ControlBoolean("msa2", ""), 2, 18, 1, 1, false);
            body.AddElement(new ControlLabel("msq2", "Facility"), 3, 18, 9, 1, false);
            body.AddElement(new ControlBoolean("msy3", ""), 0, 19, 1, 1, false);
            body.AddElement(new ControlBoolean("msn3", ""), 1, 19, 1, 1, false);
            body.AddElement(new ControlBoolean("msa3", ""), 2, 19, 1, 1, false);
            body.AddElement(new ControlLabel("msq3", "Appropriate for resident abilities and needs"), 3, 19, 9, 1, false);
            body.AddElement(new ControlBoolean("msy4", ""), 0, 20, 1, 1, false);
            body.AddElement(new ControlBoolean("msn4", ""), 1, 20, 1, 1, false);
            body.AddElement(new ControlBoolean("msa4", ""), 2, 20, 1, 1, false);
            body.AddElement(new ControlLabel("msq4", "Review of medication record."), 3, 20, 9, 1, false);
            body.AddElement(new ControlBoolean("msy5", ""), 0, 21, 1, 1, false);
            body.AddElement(new ControlBoolean("msn5", ""), 1, 21, 1, 1, false);
            body.AddElement(new ControlBoolean("msa5", ""), 2, 21, 1, 1, false);
            body.AddElement(new ControlLabel("msq5", "Documentation of refusal (if applicable)"), 3, 21, 9, 1, false);
            body.AddElement(new ControlText("notes4", "NOTES", true), 0, 22, 12, 1, false);

            body.AddElement(new ControlLabel("intermitted", "Intermittent Nursing Services Provided"), 3, 23, 9);
            body.AddElement(new ControlLabel("yesLab5", "Yes"), 0, 23, 1);
            body.AddElement(new ControlLabel("noLab5", "No"), 1, 23, 1);
            body.AddElement(new ControlLabel("naLab5", "N/A"), 2, 23, 1);

            body.AddElement(new ControlBoolean("iy1", ""), 0, 24, 1, 1, false);
            body.AddElement(new ControlBoolean("in1", ""), 1, 24, 1, 1, false);
            body.AddElement(new ControlBoolean("ia1", ""), 2, 24, 1, 1, false);
            body.AddElement(new ControlLabel("iq1", "Nursing Service System developed."), 3, 24, 9, 1, false);
            body.AddElement(new ControlBoolean("iy2", ""), 0, 25, 1, 1, false);
            body.AddElement(new ControlBoolean("in2", ""), 1, 25, 1, 1, false);
            body.AddElement(new ControlBoolean("ia2", ""), 2, 25, 1, 1, false);
            body.AddElement(new ControlLabel("iq2", "Services identified and appropriate."), 3, 25, 9, 1, false);
            body.AddElement(new ControlText("notes5", "NOTES", true), 0, 26, 12, 1, false);

            body.AddElement(new ControlLabel("mod", "Modified / Therapeutic Diet"), 3, 27, 9);
            body.AddElement(new ControlLabel("yesLab6", "Yes"), 0, 27, 1);
            body.AddElement(new ControlLabel("noLab6", "No"), 1, 27, 1);
            body.AddElement(new ControlLabel("naLab6", "N/A"), 2, 27, 1);

            body.AddElement(new ControlBoolean("mty1", ""), 0, 28, 1, 1, false);
            body.AddElement(new ControlBoolean("mtn1", ""), 1, 28, 1, 1, false);
            body.AddElement(new ControlBoolean("mta1", ""), 2, 28, 1, 1, false);
            body.AddElement(new ControlLabel("mtq1", "Receiving Food Services as ordered."), 3, 28, 9, 1, false);
            body.AddElement(new ControlBoolean("mty2", ""), 0, 29, 1, 1, false);
            body.AddElement(new ControlBoolean("mtn2", ""), 1, 29, 1, 1, false);
            body.AddElement(new ControlBoolean("mta2", ""), 2, 29, 1, 1, false);
            body.AddElement(new ControlLabel("mtq2", "Receiving eating assistance."), 3, 29, 9, 1, false);
            body.AddElement(new ControlText("notes6", "NOTES", true), 0, 30, 12, 1, false);

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
            LayoutGrid body = new LayoutGrid("body");
            body.AddElement(new ControlLabel("issues", "ISSUES"),0,0,3);
            body.AddElement(new ControlLabel("res", "RESIDENT /\n STAFF NO."), 3, 0, 1);
            body.AddElement(new ControlLabel("scope", "SCOPE/CONCERNS"), 4, 0, 5);
            body.AddElement(new ControlLabel("wac/rcw", "WAC/RCW,\n(CONSULTATION, CITATION)"), 9, 0, 3);
            body.AddElement(new ControlText("issuesa", "", true), 0, 1, 3);
            body.AddElement(new ControlInteger("resa", ""), 3, 1, 1);
            body.AddElement(new ControlText("scopea", "",true), 4, 1, 5);
            body.AddElement(new ControlText("wac/rcwa", "",true), 9, 1, 3);


            form.AddElement(body);*/

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
            LayoutGrid body = new LayoutGrid("body");
            body.AddElement(new ControlLabel("QoL", "Quality of Life/Resident Rights:  WAC 3288-110-140(5)"), 0, 0, 12);
            body.AddElement(new ControlText("QoL1","Assisted Living Contract \n•   Homelike, smoke free common areas with sufficient space for socialization to meet residents:", true), 0, 1, 12,1, false);

            body.AddElement(new ControlLabel("PE", "Physical Environment – Interior:"), 0, 2, 12);
            body.AddElement(new ControlText("PE1", "Assisted Living Contract:  WAC 388-110-140 \n• 	Meeting space outside apartment: ", true), 0, 3, 12, 1, false);
            body.AddElement(new ControlText("PE2", "•	Access by resident to on-site washing machine and dryer:", true), 0, 4, 12, 1, false);
            body.AddElement(new ControlText("PE3", "•	Private apartment – note roommate situation (no exemption required if spouse): :", true), 0, 5, 12, 1, false);
            body.AddElement(new ControlLabel("P4", "•	Resident room – meeting the requirements of a type “B” dwelling:"), 0, 6, 12,1,false);
            body.AddElement(new ControlText("PE5", "1.	180 square feet in an existing ALF:", true), 1, 7, 11, 1, false);
            body.AddElement(new ControlText("PE6", "	220 square feet in a new ALF:  ", true), 1, 8, 11, 1, false);
            body.AddElement(new ControlText("PE7", "2.	Separate bathroom with sink, toilet, and shower or bathtub:  ", true), 1, 9, 11, 1, false);
            body.AddElement(new ControlText("PE8", "3.	Lockable entry door:  ", true), 1, 10, 11, 1, false);
            body.AddElement(new ControlText("PE9", "4.	Kitchen with refrigerator, microwave or stove top, counter or table, kitchen sink: ", true), 1, 11, 11, 1, false);
            body.AddElement(new ControlText("PE10", "5.	New ALF (CRS project number issued09/01/2004 or after) includes storage for utensils / supplies,\ncounter surface with knee space and wired for phone:  ", true), 1, 12, 11, 1, false);
            body.AddElement(new ControlText("PE11", "6.	New ALF must also have a private mailbox:  ", true), 1, 13, 11, 1, false);

            body.AddElement(new ControlLabel("EARCa", "EARC:  WAC 388-110-220(1)"), 0, 14, 12);
            body.AddElement(new ControlText("EARC1", "•	Resident apartment – no more than two residents per room:", true), 0, 15, 12, 1, false);

            body.AddElement(new ControlLabel("EARCb", "EARC – Specialty Dementia Care Contract:  WAC 388-110-220(2)(3)"), 0, 16, 12);
            body.AddElement(new ControlText("EARC2", "•	Residential atmosphere:", true), 0, 17, 12, 1, false);
            body.AddElement(new ControlLabel("EARCc", "•	Area for privacy and socialization:"), 0, 18, 12, 1, false);
            body.AddElement(new ControlText("EARC3", "1.	Opportunity for wandering:", true), 1, 19, 11, 1, false);
            body.AddElement(new ControlText("EARC4", "2.	Resident room is furnished / decorated with personal items based on needs and preferences:", true), 1, 20, 11, 1, false);
            body.AddElement(new ControlText("EARC5", "3.	Resident has access to room at all times without staff assistance:", true), 1, 21, 11, 1, false);
            body.AddElement(new ControlText("EARC6", "•	Multiple common areas – varying in size and arrangement:", true), 0, 22, 12, 1, false);
            body.AddElement(new ControlText("EARC7", "•	Environmental cues to stimulate activity:", true), 0, 23, 12, 1, false);
            body.AddElement(new ControlText("EARC8", "•	Communication System:  if public address system (used only for emergencies)", true), 0, 24, 12, 1, false);

            body.AddElement(new ControlLabel("PEE", "Physical Environment – Exterior "), 0, 25, 12);
            body.AddElement(new ControlText("PEE1", "Assisted Living Contract: WAC 388-110-140 (5) \n•	Access to outdoor areas available to all residents.", true), 0, 26, 12, 1, false);
            body.AddElement(new ControlText("PEE2", "EARC – Specialty Dementia Care Contract:\nOutdoor area – at least one outdoor area.WAC 388 - 110 - 220(3)\n•	Accessible to residents without staff assistance:", true), 0, 27, 12, 1, false);
            body.AddElement(new ControlText("PEE3", "•	Garden area:", true), 0, 28, 12, 1, false);
            body.AddElement(new ControlText("PEE4", "•	Surrounded by walls and fences  at least 72 inches high:", true), 0, 29, 12, 1, false);
            body.AddElement(new ControlText("PEE5", "•	Outdoor area protected from sun or rain throughout day:", true), 0, 30, 12, 1, false);
            body.AddElement(new ControlText("PEE6", "•	Suitable outdoor furniture:", true), 0, 31, 12, 1, false);
            body.AddElement(new ControlLabel("PEEa", "•	Paths and walkways"), 0, 32, 12, 1, false);
            body.AddElement(new ControlText("PEE7", "1.	Encourage exploration and walking:",true), 1, 33, 11, 1, false);
            body.AddElement(new ControlText("PEE8", "2.	Walking surfaces are firm, stable, slip-resistant, and free from abrupt changes, suitable for wheelchairs \nand walkers:",true), 1, 34, 11, 1, false);
            body.AddElement(new ControlText("PEE9", "3.	Plants are non-toxic, non-poisonous, non- thorny, and not covering the walkway:",true), 1, 35, 11, 1, false);

            body.AddElement(new ControlText("notes", "NOTES", true), 0, 36, 12);
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
