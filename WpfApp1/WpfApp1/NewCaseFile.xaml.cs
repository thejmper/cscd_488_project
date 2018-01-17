using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

using WpfApp1.Case;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for NewCaseFile.xaml
    /// </summary>
    public partial class NewCaseFile : Window
    {
        MainWindow mainWin;
        public NewCaseFile()
        {
            InitializeComponent();
            mainWin = ((MainWindow)Application.Current.MainWindow);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (FacilityName.Text == "" || FacilityNum.Text == "")
                return;
            int num;
            Int32.TryParse(FacilityNum.Text, out num);
            CaseFile caseFile = new CaseFile("adddd", FacilityName.Text, num);
            /*Report report = caseFile.AssignUser(new Users.User("ksmith", "password", "Kenny Smith"));

            Form template = new Form("formTemplate");
            Form anotherForm = new Form("anotherForm");

            report.AddForm(template);
            report.AddForm(anotherForm);

            Report anotherReport = caseFile.AssignUser(new Users.User("hhornblower", "theSea", "Horatio Hornblower"));
            anotherReport.AddForm(anotherForm);*/
            mainWin.caseFile = caseFile;
            mainWin.scrollView.Content = caseFile.UIelement;

            this.Close();
        }
    }
}
