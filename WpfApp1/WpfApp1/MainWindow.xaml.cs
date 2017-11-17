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
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfApp1.UIItems;
using WpfApp1.UIItems.Forms;
using WpfApp1.UIItems.ItemClasses;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //int MAX_WIDTH = 1500;

        public MainWindow()
        {
            InitializeComponent();

            //create a scrollable stack panel!
            ScrollViewer scrollViewer = new ScrollViewer();
            scrollViewer.VerticalScrollBarVisibility = ScrollBarVisibility.Auto;
            scrollViewer.HorizontalScrollBarVisibility = ScrollBarVisibility.Auto;

            // Create a StackPanel and Add children
            StackPanel myStackPanel = new StackPanel();

            //create the generic form header!
            StackPanel facilityNamePanel = new StackPanel();
                Label nameLabel = new Label();
                nameLabel.Content = "Assisted Living Facility Name";
            facilityNamePanel.Children.Add(nameLabel);
                TextBox name = new TextBox();
                facilityNamePanel.Children.Add(name);

            Border facilityName = new Border();
            facilityName.BorderBrush = Brushes.Black;
            facilityName.BorderThickness = new Thickness(1);

            facilityName.Child = facilityNamePanel;



            StackPanel facilityNoPanel = new StackPanel();
                Label noLabel = new Label();
                noLabel.Content = "License Number";
            facilityNoPanel.Children.Add(noLabel);
                TextBox no = new TextBox();
                facilityNoPanel.Children.Add(no);

            Grid headerGrid = new Grid();

            //create cols
            for (int x = 0; x < 12; x++)
            {
                headerGrid.ColumnDefinitions.Add(new ColumnDefinition());
            }

            Grid.SetRow(facilityName, 0);
            Grid.SetColumn(facilityName, 0);
            Grid.SetColumnSpan(facilityName, 9);
                headerGrid.Children.Add(facilityName);

            Grid.SetRow(facilityNoPanel, 0);
            Grid.SetColumn(facilityNoPanel, 9);
            Grid.SetColumnSpan(facilityNoPanel, 3);
                headerGrid.Children.Add(facilityNoPanel);

            myStackPanel.Children.Add(headerGrid);

            scrollViewer.Content = myStackPanel;

            TabItem tab = new TabItem();
            tab.Content = scrollViewer;

            main.Items.Add(tab);

            

        }
    }
}
