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
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PrintTest
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnPrint_Click(object sender, RoutedEventArgs e)
        {
            PrintDialog printDialog = new PrintDialog();
            if(printDialog.ShowDialog() == true)
            {
                FixedDocument doc = new FixedDocument();
                doc.DocumentPaginator.PageSize = new Size(printDialog.PrintableAreaWidth, printDialog.PrintableAreaHeight);

                FixedPage page = new FixedPage();
                page.Height = doc.DocumentPaginator.PageSize.Height;
                page.Width = doc.DocumentPaginator.PageSize.Width;

                TextBlock pageText = new TextBlock();
                pageText.Text = "This is the first page";
                pageText.FontSize = 40;
                pageText.Margin = new Thickness(96);
                page.Children.Add(pageText);

                PageContent pageContent = new PageContent();
                ((IAddChild)pageContent).AddChild(page);

                doc.Pages.Add(pageContent);

                printDialog.PrintDocument(doc.DocumentPaginator, "My First Document!");
            }
        }
    }
}
