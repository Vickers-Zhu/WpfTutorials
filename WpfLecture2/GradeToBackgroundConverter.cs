using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;

namespace WpfLecture2
{
    class GradeToBackgroundConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (targetType != typeof(Brush))
                throw new ArgumentException("Can only convert to Brush", "targetType");
            decimal grade = decimal.Parse(value.ToString());
            return grade switch {
                _ when grade < 3.0m => Brushes.OrangeRed,
                _ when grade >= 3.0m && grade < 4.0m => Brushes.Yellow,
                _ when grade >= 4.0m => Brushes.Green,
                _ => Brushes.Transparent
            };
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture) => DependencyProperty.UnsetValue;
    }
}
