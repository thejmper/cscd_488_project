
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

            /*Form G*/
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
