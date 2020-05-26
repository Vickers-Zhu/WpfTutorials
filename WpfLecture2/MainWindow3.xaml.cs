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
    /// Interaction logic for MainWindow3.xaml
    /// </summary>
    public partial class MainWindow3 : Window
    {
        public static RoutedCommand ProgressStepCommand = new RoutedCommand("ProgressStep", typeof(MainWindow3));
        public static RoutedCommand ProgressRewindCommand = new RoutedCommand("ProgressRewind", typeof(MainWindow3));
        public MainWindow3()
        {
            InitializeComponent();
        }

        private void pbar_Step(object sender, ExecutedRoutedEventArgs e)
        {
            int param = int.Parse(e.Parameter.ToString());
            var bar = e.Source as ProgressBar;
            bar.Value += param;
        }

        private void pbar_CanStep(object sender, CanExecuteRoutedEventArgs e)
        {
            int param;
            if (e.Source == null || !(e.Source is ProgressBar) || e.Parameter == null || !int.TryParse(e.Parameter.ToString(), out param))
            {
                e.CanExecute = false;
                return;
            }
            if (param < 0)
                e.CanExecute = pbar.Value > pbar.Minimum;
            else
                e.CanExecute = pbar.Value < pbar.Maximum;
        }

        private void pbar_Rewind(object sender, ExecutedRoutedEventArgs e)
        {
            int param = int.Parse(e.Parameter.ToString());
            var bar = e.Source as ProgressBar;
            if (param < 0)
                bar.Value = bar.Minimum;
            else
                bar.Value = bar.Maximum;
        }
    }
}
