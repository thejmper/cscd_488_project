using System.IO;
using System.Xml.Serialization;
using System.Windows;

using ALInspectionApp.CaseObject;
using ALInspectionApp.Windows.UserWindows;
using ALInspectionApp.Windows.DevWindows;
using ALInspectionApp.Windows.CaseFileWindows;
using ALInspectionApp.Users;

namespace ALInspectionApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static MainWindow instance;

        public MainWindow()
        {
            instance = this;

            InitializeComponent();

            //FormWindow formWindow = new FormWindow();
            //formWindow.Show();
            //this.Close();           
            
            UserPrefs.OnLoad();

            Login loginWindow = new Login();
            loginWindow.ShowDialog();
            if (UserPrefs.user == null)
            {
                this.Close();
            }
            
            /*CaseFile test = new CaseFile("datetest", "datetest", 3);
            ControlDate date = new ControlDate("test", "enter date");
            LayoutGrid g = new LayoutGrid("name");
            g.AddElement(date, 0, 0, 4);
            Form A = new Form("testform");
            A.AddElement(g);
            Report r = new Report("testreport", "Nick Huff","nhuff", test);
            test.reports.Add(r);
            this.SetCaseFile(test);*/

        }
        
        //--helpers--//
        public void SetCaseFile()
        {            
            this.scrollView.Content = UserPrefs.caseFile.UIelement;
            UserPrefs.caseFile.onCaseFileChanged += CaseFileChangedHandler;
            UserPrefs.caseFile.onCaseFileSaved += CaseFileSavedHandler;

            this.Title = UserPrefs.caseFile.name;
        }
        public void SetCaseFile(CaseFile file)
        {
            UserPrefs.caseFile = file;
            this.SetCaseFile();
        }

        //--event handlers--//
        private void CaseFileChangedHandler()
        {
            this.Title = UserPrefs.caseFile.name + " (unsaved)";
        }
        private void CaseFileSavedHandler()
        {
            this.Title = UserPrefs.caseFile.name;
        }

        //--button handlers--//
        private void saveCaseFile_Click(object sender, RoutedEventArgs e)
        {
            if(UserPrefs.caseFile == null)
            {
                MessageBox.Show("Nothing to save");
                return;
            }

            System.Windows.Forms.SaveFileDialog save = new System.Windows.Forms.SaveFileDialog();

            save.InitialDirectory = UserPrefs.GetCasefileDirectory();
            save.DefaultExt = UserPrefs.CASEFILE_EXTENSION;
            save.AddExtension = true;
            save.FileName = UserPrefs.caseFile.name;

            if(save.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                CaseFile.SaveCaseFile(UserPrefs.caseFile, save.FileName);
            }         
        }
        private void newCaseFile_Click(object sender, RoutedEventArgs e)
        {
            NewCaseFile n = new NewCaseFile();
            n.ShowDialog();
        }
        private void loadCaseFile_Click(object sender, RoutedEventArgs e)
        {
            LoadOpenCaseFile loadOpenDialog = new LoadOpenCaseFile();
            loadOpenDialog.ShowDialog();

            this.SetCaseFile();

            /*
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextReader reader = new StreamReader(GetPath(@"\caseFile.csfl")))
            {
                CaseFile caseFile = (CaseFile)ser.Deserialize(reader);
                this.SetCaseFile(caseFile);
            }
            */
        }
        private void Login_Click(object sender, RoutedEventArgs e)
        {
            Login loginWindow = new Login();
            loginWindow.ShowDialog();
        }

        private void PrintFile_Click(object sender, RoutedEventArgs e)
        {
            if(UserPrefs.caseFile == null)
            {
                MessageBox.Show("No casefile loaded, cannot print!");
                return;
            }

            UserPrefs.caseFile.Print();
        }

        private void addForm_Click(object sender, RoutedEventArgs e)
        {
            if(UserPrefs.report == null)
            {
                MessageBox.Show("Can't add a new form, there is no active report!");
                return;
            }

            if (UserPrefs.report.isReadOnly)
            {
                MessageBox.Show("Can't add a new form. The report is read-only");
                return;
            }

            AddFormWindow addForm = new AddFormWindow();
            addForm.ShowDialog();
        }
        private void btnNewUser_Click(object sender, RoutedEventArgs e)
        {
            NewUser newUserWindow = new NewUser();
            newUserWindow.ShowDialog();
        }

        private void MergeFile_Click(object sender, RoutedEventArgs e)
        {
            if(UserPrefs.caseFile == null)
            {
                MessageBox.Show("No open case file, cannot merge!");
                return;
            }

            //TODO: Anthony, link this up.
            //CaseFile master = get casefile from web matching UserPrefs.caseFile id;
            //master.mergeIntoSelf(UserPrefs.casefile);

        }

        private void btnAssignUser_Click(object sender, RoutedEventArgs e)
        {
            AssignUser assignUserWindow = new AssignUser();
            assignUserWindow.ShowDialog();
        }

<<<<<<< HEAD
        private void btnCloseFile_Click(object sender, RoutedEventArgs e)
        {

=======
        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            CaseFile caseFile = UserPrefs.caseFile;
            if(caseFile != null && caseFile.hasUnsavedData)
            {
                string msg = "There are unsaved changes to the casefile! Close without saving?";
                MessageBoxResult result =
                  MessageBox.Show(
                    msg,
                    "Data App",
                    MessageBoxButton.YesNo,
                    MessageBoxImage.Warning);
                if (result == MessageBoxResult.No)
                {
                    // If user doesn't want to close, cancel closure
                    e.Cancel = true;
                }
            }
>>>>>>> 82c5ed9eb45c7f2dcc4369848b32dc2021de7875
        }
    }
}
 