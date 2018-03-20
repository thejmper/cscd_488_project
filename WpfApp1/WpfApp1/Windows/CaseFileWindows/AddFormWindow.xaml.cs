using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

using ALInspectionApp.CaseObject;
using ALInspectionApp.Users;

namespace ALInspectionApp.Windows.CaseFileWindows
{
    /// <summary>
    /// Interaction logic for AddFormWindow.xaml
    /// </summary>
    public partial class AddFormWindow : Window
    {
        public AddFormWindow()
        {
            InitializeComponent();
            //grabs the set of form templates we've loaded from the database and display it
            //on a grid that can be easily referenced.
            this.formTemplateList.ItemsSource = UserPrefs.formtemplates;
        }

        /// <summary>
        /// add the selected form to the user report.
        /// TODO: make this work for adding multiple forms.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Form form = (Form)this.formTemplateList.SelectedItems[0];
                UserPrefs.report.AddForm(form);
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        /// <summary>
        /// add a form to the user report if that form is double-clicked.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ListViewItem_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var item = sender as ListViewItem;
            if(item != null)
            {
                try
                {
                    Form form = (Form)item.DataContext;
                    UserPrefs.report.AddForm(form);
                    this.Close();
                } catch(Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }
    }
}
