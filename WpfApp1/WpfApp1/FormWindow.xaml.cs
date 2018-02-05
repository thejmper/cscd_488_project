
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

            Form form = new Form("TestFormA");
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

            string fileName = Path.Combine(UserPrefs.GetFormDirectory(), form.name + UserPrefs.FORM_EXTENSION);
            //this.scrollView.Content = form.UIelement;
            XmlSerializer ser = new XmlSerializer(typeof(Form));
            using (TextWriter writer = new StreamWriter(fileName))
            {
                ser.Serialize(writer, form);
            }

        }
    }
}
