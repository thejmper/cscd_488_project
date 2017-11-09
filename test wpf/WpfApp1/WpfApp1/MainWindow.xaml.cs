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
using UIItems;
using UIItems.ItemClasses;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();


            /*   for (int i = 0; i < 5; i++)
             {
                 var column = new ColumnDefinition();
                 column.MinWidth = 300.0;
                 column.MaxWidth = 300.0;
                 gridd.ColumnDefinitions.Add(column);
             }
             for (int i = 0; i < 5; i++)
             {
                 var row = new RowDefinition();
                 row.MinHeight = 100.0;
                 row.MaxHeight = 100.0;
                 gridd.RowDefinitions.Add(row);
             }
             for (int i = 0; i < 5; i++)
             {
                 for (int j = 0; j < 5; j++)
                 {
                     Button button = new Button();
                     button.Content = "Button" + i;
                     Grid.SetColumn(button, i);
                     Grid.SetRow(button, j);
                     gridd.Children.Add(button);
                 }


                 //x = (x +1) % rows;
                // y = (y + 1)% col;
             }
             FormGrid fg = new FormGrid(5, 5);

             for (int i = 0; i < col; i++)
             {
                 var column = new ColumnDefinition();
                 column.MinWidth = 300.0;
                 column.MaxWidth = 300.0;
                 this.ColumnDefinitions.Add(column);
             }
             for (int i = 0; i < rows; i++)
             {
                 var row = new RowDefinition();
                 row.MinHeight = 300.0;
                 row.MaxHeight = 300.0;
                 this.RowDefinitions.Add(row);
             }
             //gr = fg;
             //this.Tab.Content = fg;
             //this.Tab.Content = new Button();
             Button dynamicButton = new Button();
              dynamicButton.Width = 240;
              dynamicButton.Height = 40;
              dynamicButton.Margin = new Thickness(100, 21, 0, 0);
              dynamicButton.Content = "Click me";
              Grid.SetRow(dynamicButton, 0);
              Grid.SetColumn(dynamicButton, 3);

              //this.grid.Children.Add(dynamicButton);

              dynamicButton.Click += button1_Click;

              Label dynamicLabel = new Label();

              dynamicLabel.Name = "NewLabel";
              dynamicLabel.Content = "TEST";
              dynamicLabel.Width = 240;
              dynamicLabel.Height = 30;
              dynamicLabel.Margin = new Thickness(0, 21, 0, 0);
              dynamicLabel.Foreground = new SolidColorBrush(Colors.White);
              dynamicLabel.Background = new SolidColorBrush(Colors.Black);

              Grid.SetRow(dynamicLabel, 0);
              Grid.SetColumn(dynamicLabel, 0);

              //this.grid.Children.Add(dynamicLabel);*/

            FormItems fi = new FormItems();
            fi.AddItem(new TextBoxUI(100,0, 100,200));
            foreach (UIItem item in fi.Items)
            {
                canvas.Children.Add(item.Element);
                
            }

        }
    }

    public class FormGrid : Grid
    {
        public FormGrid() : base()
        { }
        public FormGrid(int rows, int col) : base()
        {
            for (int i = 0; i < col; i++)
            {
                var column = new ColumnDefinition();
                column.MinWidth = 300.0;
                column.MaxWidth = 300.0;
                this.ColumnDefinitions.Add(column);
            }
            for (int i = 0; i < rows; i++)
            {
                var row = new RowDefinition();
                row.MinHeight = 300.0;
                row.MaxHeight = 300.0;
                this.RowDefinitions.Add(row);
            }
          

            /*for (int i = 0; i < rows * col; i++)
            {
                Button button = new Button();
                button.Content = "Button" + i;
                Grid.SetColumn(button, x);
                Grid.SetRow(button, y);
                this.Children.Add(button);
                x = (x +1) % rows;
                y = (y + 1)% col;
            }*/
            this.Children.Add(new Button());
        }
    }
}
