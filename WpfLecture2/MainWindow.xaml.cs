using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace WpfLecture2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        private Random rand;
        private List<Student> students;
        public MainWindow()
        {
            rand = new Random();
            students = new List<Student>
            {
                new Student{FirstName="Ania", LastName="Nowak", GradeAverage=4.6m},
                new Student{FirstName="Franek", LastName="Kowalski", GradeAverage=3.2m},
                new Student{FirstName="Julia", LastName="Wiśniewska", GradeAverage=2.5m}
            };
            DataContext = students;
            InitializeComponent();
        }

        private void randomizeGradesClick(object sender, RoutedEventArgs e)
        {
            Student s = FindResource("student") as Student;
            s.GradeAverage = rand.Next(200, 500) / 100.0m;
        }
    }
}
