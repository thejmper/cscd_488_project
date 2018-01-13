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

namespace bindingTest
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Person person;

        public MainWindow()
        {
            InitializeComponent();


            person = new Person();
            person.Name = "kenny";

            TextBox nameTextBox = new TextBox();
            Binding nameTextBinding = new Binding("Name");
            nameTextBinding.Source = person;
            nameTextBox.SetBinding(TextBox.TextProperty, nameTextBinding);

            main.Children.Add(nameTextBox);

            TextBox ageTextBox = new TextBox();
            Binding ageTextBinding = new Binding("age");
            ageTextBinding.Source = person;
            ageTextBox.SetBinding(TextBox.TextProperty, ageTextBinding);

            main.Children.Add(ageTextBox);

            //TextBlock nameBlock = new TextBlock();
            //BindingOperations.SetBinding(nameBlock, TextBlock.TextProperty, nameTextBinding);

            //main.Children.Add(nameBlock);


            //TextBlock ageBlock = new TextBlock();
            //BindingOperations.SetBinding(ageBlock, TextBlock.TextProperty, ageTextBinding);
            //main.Children.Add(ageBlock);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(person.Name + ", " + person.age);
        }
    }

    class Person
    {
        public string Name { get; set; }
        public int age { get; set; }
    }
}
