   M S B A M L   `   `   `  ����I  EWpfColorPicker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:WpfColorPickerWpfColorPicker  5   	       WpfColorPicker.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:WpfColorPicker     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	         windowBackgroundBrush �� Color,  &WpfColorPicker.SlidersToColorConverter  sliderToColorConverter  colorLabelStyle �� 
TargetType �� Property �� Value  colorSliderStyle �� 
StartPoint �� EndPoint � Offset	 � Color��%;  &	        &	 #     &	 6     &	 �     '�� +    �� 5
   
   $ 	LightBlue��69     5   
   6(   �� 5   
   " ��6)   .�5      ��  � ��$ 16(�6*   �� 5       � ��$ Arial)�6,   �� 5       � ��$
 Bold"�6,   �� 5       � ��$
 0 ,3q�6(   5      �� 5   
   " ��6*   .�5      ��  �@�Minimum$ 0Q�6)   �� 5       �@�Maximum$  255 Q�6)   �� 5       �@�SmallChange$ 1Q�6-   �� 5       �@��TickFrequency$ 1Q�6/   �� 5       �@��IsSnapToTickEnabled . 65   �� 5       � ��$
 5 ,0q�6(   5      �� 5   
   " ��6   .�5      ��  � ��$ 2q�61   �� 5       � ��
 �����6-   �� 5       � �� 5       �� 5!      $ 0.5 , 0&�6*   $ 0.5 , 1&�6@   .��5"      � $ 0Q�6'   $
	 Blue��63   6C   � 5#      $	 0.5Q�6'   $	 DarkBlue��65   6I   � 5$      $ 1Q�6'   $
	 Blue��63   6C   5%      5'      �� 5(       � ��
 �����6,   �� 5)       � ��$ 3q�6(   �� 5*       � ��$
 Bold"�6,   5+      5,      .��5-      � #��[  6   
 � RowDefinitions
 5.   
   �� 5/      $
��Auto �6   �� 50      $
��Auto �6   �� 51      $
��Auto �6   �� 52      $��* �6    � ColumnDefinitions 54   
   �� 55      $��80 �6   �� 56      $��* �6   �� 57      $��80 �6   .+�59   
   �� #��[ 6   .��6<   Red6A   �� 5:   
   -   5        $��	redSlider��5:   ?   #��[ 6   $��1��6Q    � Value$ 0Q�6b   �� 5;   
   $��0��6�   $��2��6�   ��6   ��  �� ElementName$ 	redSlider�� �� Path$ Value� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5=   
   #��[ 6   $��1��6<   .��6J   Green6Q   �� 5>   
   -   5        $��greenSlider��5>   ?   #��[ 6   $��1��6S   $��1��6a   $ 0Q�6r   �� 5?   
   $��1��6�   $��2��6�   ��6   �� $ greenSlider��$ Value�$ TwoWay=�$ PropertyChanged=�6�   �� 5A   
   #��[ 6   $��2��6<   .��6J   Blue6P   �� 5B   
   -   5        $��
blueSlider��5B   ?   #��[ 6   $��2��6R   $��1��6`   $ 0Q�6q   �� 5C   
   $��2��6�   $��2��6�   ��6   �� $ 
blueSlider��$ Value�$ TwoWay=�$ PropertyChanged=�6�   �� 5E   
   $��3��6   $��1��6"   ��5F      `� 5G       `� 	Converter# [ 6    `� Mode$  OneWay =�6V   .1�5H      �� $  redSlider ��6   $  Value �69   �� 5I      $  greenSlider ��6   $  Value �6;   �� 5J      $  blueSlider ��6   $  Value �6:   5K      5M      5O      5P      