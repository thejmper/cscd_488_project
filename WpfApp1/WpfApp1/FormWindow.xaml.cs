
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
            form.AddElement(new ControlLabel("label01", "this is a label that has a small amount of text"));
            form.AddElement(new ControlLabel("label02", "this is a label that has lots of text. \n It even has a second line. \n\n\n\n\n Look at all these lines!"));

            string fileName = Path.Combine(UserPrefs.GetFormDirectory(), form.name + UserPrefs.FORM_EXTENSION);

            XmlSerializer ser = new XmlSerializer(typeof(Form));
            using (TextWriter writer = new StreamWriter(fileName))
            {
                ser.Serialize(writer, form);
            }

        }
    }
}
