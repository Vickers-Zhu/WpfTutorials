   M S B A M L   `   `   `  ����F  BWpfLecture2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WpfLecture2WpfLecture2  5   	       WpfLecture2.MainWindow3   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WpfLecture2     5   	     � Title$  MainWindow3��5   	   $	��450��6   $	��800��6*    � 	Resources 5	       
  rewind H� Drawing � Brush � Geometry E� IsFilled E� IsClosed � Points E� 
StartPoint  step	 �� 
TargetType
 �� Triggers P� Property P� Value �� Property �� Value  revImage �� Angle  roundBtn �� 
TargetType A�Name �� Triggers �� 
TargetName �� ScaleX �� ScaleY 	 myBar � Value  progressPie � 	Resources2   ,WpfLecture2.ValueMinMaxToIsLargeArcConverter  Key-   'WpfLecture2.ValueMinMaxToPointConverter'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Name   States   System.Windows.VisualState   Name   
Storyboard	 W� To g� Duration �� 
TargetName  �� TargetProperty	! �� To" F�Name# �� Point$ �� Size% �� SweepDirection& �� Point  cvtArcPoint' `� 	Converter( �� Path) �� RelativeSource* �� 
IsLargeArc  cvtLargeArc��%  &	        &	 O    '�� #    &	 �    &	 �    &	 �    &	 C    7  7  H� 5
   
    5      � 5      
 �   � 5      B� 5      .��5      E� $
 True��6)   $
 True��69   .��5   "   �  �    ��������62   5      E� 5      $
 True��6)   $
 True��69   $
 50,0&�6I   .��5   "   �  �   ��� �� �����62   5      5      5      5      H� 5   
    5      � 5      
 �   � 5      B� 5      .��5      E� $
 True��6)   $
 True��69   .��5    "   �  �    �� �����62   5!      5"      5$      5&      �� 5'   
   "	 ��6   
 5(      P� 5)       � {�$ False��6/   . �5*      ��  � ��$ 7q�6/   5+      .�5-      ��  � ��$ 2q�6(   �� 5.       � ��$ 3q�6'   5/      �� 50   
   "	 ��6   .�51      ��  �@J�RenderTransformOrigin$ 0.5 0.5&�66   �� 52       � z� 53      �� 54      $	 180Q�6&   56      57      �� 58   
   " ��6+   .R�59      � .+�5:      A� $ outerCircle��6   #��z��6/   #��z��6S   $��1��6z   �� 5;      5<       5=      P� 5>       �@J�IsMouseOver$
 True��61   . �5?      �� $ outerCircle��6    � ��
 �����6F   5@      P� 5A       � ��$
 True��6/   . �5B      ��  �@J�RenderTransformOrigin$ 0.5 0.5&�6>   �� 5C       � z� 5D      �� 5E      $ .9Q�6-   $ .9Q�69   5G      5H      5J      �� 5K   
   " �6   .R�5L      � .+�5M      �� $��
PART_Track��6   #��z��6+   
�������6U   �� 5N      $��PART_Indicator��6   $
��Left=�6/   #��z 6J   5O      5P      �� 5Q   
   " �6    5R      ��  5S      cvtLargeArc 69     5T      cvtArcPoint 64   5U      .R�5V      (�  5\        5]      $ CommonStates��6'   . 5^        $ Determinate��6&     5_      $ Indeterminate��6&   . 5`      �� .��5a   "   W�  062   $ 0:0:0.5D�69   $	 pie��6L   $  Opacity�6h   �� 5b   "   
! Yellow61   $ 0:0:0.5D�6=   $ 
background��6P   $*  $(Shape.Fill).(SolidColorBrush.Color)�5c   1   5d      5e      5f      .��5h      � .+�5i      A� $ 
background��6   #��z��62   #��z��6Y   $��20��5j      $��20��6)   #��z��65   F� 5k      $	" pie��6   #��z��6(   ��5l      B� 5m      .��5n   "   E� $ 10,10&�6-   .��5o   &   �� $
# 10,0&�62   �� 5p   &   $$ 10,10��61   $% 	Clockwise=�6>   & 5q   *   `� 5r   .   8'   .1�5s   2   �� $( Value�6l   ) 6:   �� *TemplatedParent+6l   �� 5t   2   $( Minimum�6l   ) 6:   �� *TemplatedParent+6l   �� 5u   2   $( Maximum�6l   ) 6:   �� *TemplatedParent+6l   5v   /   * 5x   *   `� 5y   .   8'  .1�5z   2   �� $( Value�6l   ) 6:   �� *TemplatedParent+6l   �� 5{   2   $( Minimum�6l   ) 6:   �� *TemplatedParent+6l   �� 5|   2   $( Maximum�6l   ) 6:   �� *TemplatedParent+6l   5}   /   5   '   5�   #   5�      5�      5�      5�      5�      5�      + J� CommandBindings+ 5�      )  #System.Windows.Input.CommandBinding  5�   
   -   5           WpfLecture2.MainWindow3,   ProgressStepCommand-   Command#- Z, 5�      6i     5�   
   -   5        .   ProgressRewindCommand#- Z. 5�      6m   .��5�      �� .+�5�   
   � -   5        $
��pbar��5�      $��30��6"   $��6 6 6 3q�6.   #��[ 6?   � 5�   
   -   5        $��pbar2��5�      $��3q�6#   $��30��6.   #��[ 6i    6:   �� / �� ElementName$
/ pbar��$( Value�6i   �� 5�   
   0 �� Orientation$0 
Horizontal=�6   $��30��6.   $	��3 0q�6:   .+�5�      �� #��Z. 6   $��-1��6R   ��6h   %  System.Windows.Markup.Reference  1   Name$
1 pbar��.��5�      �� #��[  6   2 J� RenderTransformOrigin$2 0.5 0.5&�69   #��[ 6Y   5�      �� 5�      #��[ 6   #��Z, 6:   $��-1��6u   ��6�     $
1 pbar��.��5�      �� #��[ 6   $2 0.5,0.5&�67   #��[ 6W   5�      �� 5�      #��[ 6   #��Z, 6:   $��1��6u   ��6�     $
1 pbar��.��5�      �� #��[ 6   5�      �� 5�      #��Z. 6   $��1��6R   ��6g     $
1 pbar��.��5�      �� #��[  6   5�      �� 5�      $��Nieokreślony��6   3 d� 	IsChecked3 6.   �� $/ pbar2��$( IsIndeterminate�5�      5�      5�      