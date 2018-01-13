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
using UIItems.Forms;
using UIItems.ItemClasses;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        int MAX_WIDTH = 1500;

        public MainWindow()
        {
            InitializeComponent();

            FormA a = new FormA();
            a.CreateTab(main);

            /*

            FormItems fi = new FormItems();
            fi.AddItem(new LabelUI("Assisted Living Facility Name", 0, 0, 25, 1000));
            fi.AddItem(new LabelUI("Licence number", 1000, 0, 25, 500));
            fi.AddItem(new TextBoxUI(0,25,50,1000, "ALName"));
            fi.AddItem(new TextBoxUI(1000, 25, 50, 500, "LicenceNumber"));
            fi.AddItem(new LabelUI("Inserpction Type: ", 0, 75, 25, -1));
            fi.AddItem(new CheckBoxUI(100, 80, 75, 100, "FULL", "checkA"));

            fi.AddItem(new SpliterUI(0, 120, MAX_WIDTH));

            fi.AddItem(new LabelUI("Case Manager DDD/HCS", 0, 140, 25, 1000));
            fi.AddItem(new TextBoxUI(0, 165, 25, 1000, "CaseManagerA"));

            fi.AddItem(new LabelUI("Contact Date", 1000, 140, 25, 500));
            fi.AddItem(new DatePickerUI(1000, 165, 25, 475, "ContractDate"));

            fi.AddItem(new LabelUI("Comments", 0, 190, 25, MAX_WIDTH));
            fi.AddItem(new TextBoxUI(0, 215, 100, MAX_WIDTH, "CommentsA1"));

            fi.AddItem(new SpliterUI(0, 330, MAX_WIDTH));

            fi.AddItem(new LabelUI("OMBUDS", 0, 355, 25, 1000));
            fi.AddItem(new TextBoxUI(0, 380, 25, 1000, "OMBUDS"));

            fi.AddItem(new LabelUI("Contact Date", 1000, 355, 25, 500));
            fi.AddItem(new DatePickerUI(1000, 380, 25, 475, "ContractDateB"));

            fi.AddItem(new LabelUI("Comments", 0, 400, 25, MAX_WIDTH));
            fi.AddItem(new TextBoxUI(0, 425, 100, MAX_WIDTH, "CommentsA2"));

            fi.AddItem(new SpliterUI(0, 550, MAX_WIDTH));

            fi.AddItem(new LabelUI("Other Outside Agency", 0, 575, 25, 1000));
            fi.AddItem(new TextBoxUI(0, 600, 25, 1000, "OOA"));

            fi.AddItem(new LabelUI("Contact Date", 1000, 575, 25, 500));
            fi.AddItem(new DatePickerUI(1000, 600, 25, 475, "ContractDateC"));

            fi.AddItem(new LabelUI("Comments", 0, 625, 25, MAX_WIDTH));
            fi.AddItem(new TextBoxUI(0, 650, 100, MAX_WIDTH, "CommentsA3"));

            fi.AddItem(new SpliterUI(0, 775, MAX_WIDTH));

            fi.AddItem(new LabelUI("Contracts: ", 0, 800, 25, -1));
            fi.AddItem(new CheckBoxUI(75, 805, 75, 100, "AL", "checkAL"));
            fi.AddItem(new CheckBoxUI(150, 805, 75, 100, "EARC", "checkEARC"));
            fi.AddItem(new CheckBoxUI(225, 805, 75, 100, "ARC", "checkARC"));
            fi.AddItem(new CheckBoxUI(300, 805, 75, 100, "Dementia", "checkDem"));
            fi.AddItem(new CheckBoxUI(400, 805, 75, 100, "DDD", "checkDDD"));
            fi.AddItem(new CheckBoxUI(475, 805, 75, 100, "Adult Day Care", "checkADC"));
            fi.AddItem(new CheckBoxUI(600, 805, 75, 100, "None", "checkNone"));

            fi.AddItem(new LabelUI("Current Exemptions", 0, 830, 25, MAX_WIDTH));
            fi.AddItem(new TextBoxUI(0, 855, 100, MAX_WIDTH, "CurrentExemption"));

            fi.AddItem(new SpliterUI(0, 980, MAX_WIDTH));

            fi.AddItem(new LabelUI("Additional Notes", 0, 1015, 25, MAX_WIDTH));
            fi.AddItem(new TextBoxUI(0, 1040, 100, MAX_WIDTH, "CurrentExemption"));


            foreach (UIItem item in fi.Items)
            {
                canvas.Children.Add(item.Element);
            }
            */
        }

        private void Load_Click(object sender, RoutedEventArgs e)
        {
            FileExplorer fe = new FileExplorer();
            fe.Show();
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
