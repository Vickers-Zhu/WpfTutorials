   M S B A M L   `   `   `  ����F  BWpfLecture2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WpfLecture2WpfLecture2  5   	       WpfLecture2.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WpfLecture2     5   	   $	��450��5   	   $	��800��6     � Title$  
MainWindow��6"    � 	Resources 5	        WpfLecture2.Student   student   	FirstName   LastName   GradeAverage,  &WpfLecture2.GradeToBackgroundConverter  backgroundConverter  studentTemplate �� DataType �� Path �� 	Converter � ColumnDefinitions	 � RowDefinitions
 �� StringFormat�� 5
   
   %L  &	        &	 >     &	 Q     7    5      $
 Adam��6,   $ Nowak��6=   $	 4.5~�6N     5      6/   �� 5      $ local.Student��63   .R�5      �� $��3q�6   ��6-   �� $ GradeAverage�8   ._�5      �  5      �� 5      $
��Auto �6/   �� 5      $
��Auto �6/   �� 5      	 5      �� 5      .+�5      �� ��6$   �� $ 	FirstName��� 5      $��1��6C   $	��5 0q�6S   ��6$   �� $ LastName�6S   �� 5      $��2��6b   ��6$   �� $ GradeAverage�$
 Średnia: {0}��6b   5      5      5      5      .��5       �� $��3q�6   .+�5!   
   �� $ �� IsSynchronizedWithCurrentItem$
 TrueY�6*   $��3q�6O   #��[ 6Z   ��6   �� 6Z   �� 5"   
   #��[ 6$   ��6   �� 6$   �� 5#   
   $��3q�63   ��6   �� $ 	FirstName�63   �� 5$   
   $��3q�62   ��6   �� $ LastName�62   �� 5%   
   $��3q�6R   ��6   �� $ GradeAverage� �� ValidatesOnExceptions$
 True��6R   �� 5&   
   -   5        $��Randomize grades��5&      $��3q�6I   5'      5(      