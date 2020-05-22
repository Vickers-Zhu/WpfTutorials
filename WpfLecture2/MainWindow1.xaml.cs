using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace WpfLecture2
{
    /// <summary>
    /// Interaction logic for MainWindow1.xaml
    /// </summary>
    public partial class MainWindow1 : Window
    {
        public MainWindow1()
        {
            InitializeComponent();
            tbNotepad.AddHandler(PreviewKeyDownEvent, new KeyEventHandler(TextBox_PreviewKeyDown), true);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
        }

        private void TextBox_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            this.Title = "Hi!";
        }

        private void Window_KeyUp(object sender, KeyEventArgs e)
        {

            this.Title = e.Key.ToString();
        }

        private void Window_PreviewKeyUp(object sender, KeyEventArgs e)
        {
        }

        private void Window_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.A)
                e.Handled = true;
        }
    }
}
