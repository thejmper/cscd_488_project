using System;
using System.Collections.Generic;
using System.IO;
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




namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for FileExplorer.xaml
    /// </summary>
    public partial class FileExplorer : Window
    {

        private string DIRECTORY = "C:/Users/NIcK/Desktop/XML";
        public FileExplorer()
        {
            InitializeComponent();
            if (Directory.Exists(DIRECTORY))
            {
                string[] files = Directory.GetFiles(DIRECTORY);
                
                for(int row = 0; row<files.Length;row++)
                {
                    RowDefinition rowdef = new RowDefinition();
                    rowdef.MinHeight = 45;
                    Label filename = new Label();
                    filename.Content = files[row].Substring(DIRECTORY.Length +1);
                    Grid.SetRow(filename, row);
                    Grid.SetColumn(filename, 0);

                    Button load = new Button();
                    load.Content="load";
                    load.Name = "row" + row;
                    load.Click += Load_File;
                    load.Height = 25;
                    load.VerticalAlignment = VerticalAlignment.Top;
                    Grid.SetRow(load, row);
                    Grid.SetColumn(load, 1);

                    ExplorerGrid.Children.Add(filename);
                    ExplorerGrid.Children.Add(load);
                }
            }
            else
            {
                Label l = new Label();
                l.Content = "Directory with saved files not found";
                ExplorerGrid.Children.Add(l);

            }

        }

        private void Load_File(object sender, RoutedEventArgs e)
        {
            Button b = (Button)sender;
            string name = b.Name;
            name = name.Substring(3);
            int x;
            Int32.TryParse(name, out x);
            string[] files = Directory.GetFiles(DIRECTORY);

            
        }
    }
}
