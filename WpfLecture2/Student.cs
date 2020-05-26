using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Runtime.CompilerServices;
using System.Runtime.ExceptionServices;
using System.Text;
using System.Windows.Controls;

namespace WpfLecture2
{ 
    class Student : INotifyPropertyChanged, INotifyDataErrorInfo
    {
        private string firstName;
        private string lastName;
        private decimal gradeAverage;

        public string FirstName
        {
            get => firstName;
            set
            {
                if (firstName == value)
                    return;
                firstName = value;
                OnPropertyChanged();
            }
        }
        public string LastName
        {
            get => lastName;
            set
            {
                if (lastName == value)
                    return;
                lastName = value;
                OnPropertyChanged();
            }
        }
        public decimal GradeAverage
        {
            get => gradeAverage;
            set
            {
                /*if (value < 2 || value > 5)
                    throw new ArgumentOutOfRangeException("value", "Grade average must be between 2 and 5");*/
                if (gradeAverage == value)
                    return;
                bool hadErrors = HasErrors;
                gradeAverage = value;
                OnPropertyChanged();
                if (hadErrors || HasErrors)
                    ErrorsChanged?.Invoke(this, new DataErrorsChangedEventArgs("GradeAverage"));
            }
        }

        public bool HasErrors => GradeAverage < 2.0m || GradeAverage > 5.0m;

        public event PropertyChangedEventHandler PropertyChanged;
        public event EventHandler<DataErrorsChangedEventArgs> ErrorsChanged;

        public IEnumerable GetErrors(string propertyName)
        {
            if (!string.IsNullOrEmpty(propertyName) && propertyName != "GradeAverage")
                yield break;
            if (GradeAverage < 2.0m)
                yield return "Grade average cannot be less than 2.0";
            if (GradeAverage > 5.0m)
                yield return "Grade average cannot be more than 5.0";
        }

        protected void OnPropertyChanged([CallerMemberName] string propertyName = "")
        {
            if (!string.IsNullOrEmpty(propertyName))
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
