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
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfApp1.FormItems;
namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //int MAX_WIDTH = 1500;

        private Form form;

        public MainWindow()
        {
            InitializeComponent();

            
            //create a scrollable stack panel!
            ScrollViewer scrollViewer = new ScrollViewer();
            scrollViewer.VerticalScrollBarVisibility = ScrollBarVisibility.Auto;
            scrollViewer.HorizontalScrollBarVisibility = ScrollBarVisibility.Auto;

            /*
            // Create a StackPanel and Add children
            StackPanel myStackPanel = new StackPanel();

            //create internal controls!
            FormControl faciltyName = new FormControl("Assisted Living Facility Name", new TextBox());
            FormControl facilityNumber = new FormControl("License Number", new TextBox());
            FormControl inspectionDate = new FormControl("Inspection Date", new DatePicker());
            FormControl licensorName = new FormControl("Licensor Name", new TextBox());


            LayoutGrid headerGrid = new LayoutGrid();


            headerGrid.AddElement(faciltyName.Bordered(), 0, 0, 9);
            headerGrid.AddElement(facilityNumber.Bordered(), 9, 0, 3);
            headerGrid.AddElement(inspectionDate.Bordered(), 0, 1, 3);
            headerGrid.AddElement(licensorName.Bordered(), 3, 1, 9);

            //Grid.SetRow(facilityNoPanel, 0);
            //Grid.SetColumn(facilityNoPanel, 9);
            //Grid.SetColumnSpan(facilityNoPanel, 4);
            //    headerGrid.Children.Add(facilityNoPanel);

            myStackPanel.Children.Add(headerGrid);
            
            //scrollViewer.Content = myStackPanel;
            */
            form = new Form("form");

            LayoutGrid grid = new LayoutGrid("header");
            grid.AddElement(new ControlText("name", "Assised living Facility Name"), 0, 0, 9, true);
            grid.AddElement(new ControlInteger("number", "License Number"), 9, 0, 3, true);


            form.AddElement(grid);

            scrollViewer.Content = form.UIelement;

            TabItem tab = new TabItem();
            tab.Content = scrollViewer;

            main.Items.Add(tab);
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            form.ShowMessage();
        }
    }
}
