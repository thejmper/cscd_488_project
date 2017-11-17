using WpfApp1.UIItems.ItemClasses;

namespace WpfApp1.UIItems.Forms
{
    public class FormA : FormItems
    {
        public FormA() : base("FormA", "A")
        {

            this.AddItem(new LabelUI("Assisted Living Facility Name", 0, 0, 25, 1000));
            this.AddItem(new LabelUI("Licence number", 1000, 0, 25, 500));
            this.AddItem(new TextBoxUI(0, 25, 50, 1000, "ALName"));
            this.AddItem(new TextBoxUI(1000, 25, 50, 500, "LicenceNumber"));
            this.AddItem(new LabelUI("Inserpction Type: ", 0, 75, 25, -1));
            this.AddItem(new CheckBoxUI(100, 80, 75, 100, "FULL", "checkA"));

            this.AddItem(new SpliterUI(0, 120, MAX_WIDTH));

            this.AddItem(new LabelUI("Case Manager DDD/HCS", 0, 140, 25, 1000));
            this.AddItem(new TextBoxUI(0, 165, 25, 1000, "CaseManagerA"));

            this.AddItem(new LabelUI("Contact Date", 1000, 140, 25, 500));
            this.AddItem(new DatePickerUI(1000, 165, 25, 475, "ContractDate"));

            this.AddItem(new LabelUI("Comments", 0, 190, 25, MAX_WIDTH));
            this.AddItem(new TextBoxUI(0, 215, 100, MAX_WIDTH, "CommentsA1"));

            this.AddItem(new SpliterUI(0, 330, MAX_WIDTH));

            this.AddItem(new LabelUI("OMBUDS", 0, 355, 25, 1000));
            this.AddItem(new TextBoxUI(0, 380, 25, 1000, "OMBUDS"));

            this.AddItem(new LabelUI("Contact Date", 1000, 355, 25, 500));
            this.AddItem(new DatePickerUI(1000, 380, 25, 475, "ContractDateB"));

            this.AddItem(new LabelUI("Comments", 0, 400, 25, MAX_WIDTH));
            this.AddItem(new TextBoxUI(0, 425, 100, MAX_WIDTH, "CommentsA2"));

            this.AddItem(new SpliterUI(0, 550, MAX_WIDTH));

            this.AddItem(new LabelUI("Other Outside Agency", 0, 575, 25, 1000));
            this.AddItem(new TextBoxUI(0, 600, 25, 1000, "OOA"));

            this.AddItem(new LabelUI("Contact Date", 1000, 575, 25, 500));
            this.AddItem(new DatePickerUI(1000, 600, 25, 475, "ContractDateC"));

            this.AddItem(new LabelUI("Comments", 0, 625, 25, MAX_WIDTH));
            this.AddItem(new TextBoxUI(0, 650, 100, MAX_WIDTH, "CommentsA3"));

            this.AddItem(new SpliterUI(0, 775, MAX_WIDTH));

            this.AddItem(new LabelUI("Contracts: ", 0, 800, 25, -1));
            this.AddItem(new CheckBoxUI(75, 805, 75, 100, "AL", "checkAL"));
            this.AddItem(new CheckBoxUI(150, 805, 75, 100, "EARC", "checkEARC"));
            this.AddItem(new CheckBoxUI(225, 805, 75, 100, "ARC", "checkARC"));
            this.AddItem(new CheckBoxUI(300, 805, 75, 100, "Dementia", "checkDem"));
            this.AddItem(new CheckBoxUI(400, 805, 75, 100, "DDD", "checkDDD"));
            this.AddItem(new CheckBoxUI(475, 805, 75, 100, "Adult Day Care", "checkADC"));
            this.AddItem(new CheckBoxUI(600, 805, 75, 100, "None", "checkNone"));

            this.AddItem(new LabelUI("Current Exemptions", 0, 830, 25, MAX_WIDTH));
            this.AddItem(new TextBoxUI(0, 855, 100, MAX_WIDTH, "CurrentExemption"));

            this.AddItem(new SpliterUI(0, 980, MAX_WIDTH));

            this.AddItem(new LabelUI("Additional Notes", 0, 1015, 25, MAX_WIDTH));
            this.AddItem(new TextBoxUI(0, 1040, 100, MAX_WIDTH, "CurrentExemption"));
        }
    }
}
