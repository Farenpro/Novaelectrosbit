   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      D    >Novaelectrosbit.Pages.MRPages.RegAddressSubPages.StreetAddPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      8res(clr-namespace:Novaelectrosbit.Properties     5      $	��340��5      $	��370��6   $	��370��6    $	��340��6/   $��16(�6?   *   $Novaelectrosbit.Properties.Resources    	StreetAdd N� Title# Z  5         FontMain N� 
FontFamily# [  62   .��5      �  � RowDefinitions 5	   
   �� 5
      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� #��Z  6    	 LHead#��[ 6=   �� 5   
   $��1��6      Prefix#��Z 6     LDescription#��[ 6G   �� 5   
   -   5         ��Name$ CBoxPrefixType��5      $��2��6+   $��
15,5,15,15q�68   $
��Left=�6L   $	��300��6g    �� 
IsEditable .  �� IsTextSearchEnabled .  �� DisplayMemberPath$
 Name��6  
���   �	   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist
   
HelperText#
 Z	 5   &     PrimaryHueMidBrush#���  6u    " MaterialDesignOutlinedComboBox#��[ 6�    �� SelectedItem 5   v   �� *
PrefixType+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ OneWayToSource=�5   �   �� 5   
   $��3��6   $��5,0,0,0q�6      Street#��Z 6.   #��[ 6X   �� 5   
   -   5         ��Name$ 
TBoxStreet��5      $��4��6&   $
��15,0q�63   $
��Left=�6A   $	��300��6\    �� 	MaxLength$ 50��6k   #
 Z	 5      
���   � ! MaterialDesignOutlinedTextBox#��[ 6u   ��5   z   �� *Street+$ PropertyChanged=�5   u   � 5   
   $��5��6    � ColumnDefinitions 5      �� 5      �� 5      .+�5      �� -   5         ��Name$ BtnAdd��5      $��10,30q�6%   
   Add#��Z 64   
�������6p   �� 5      $��1��6     LHelpBtn#��[ 6$   .��5      �� -   5         ��Name$ 	TBkCancel��5         Cancel#��Z 6/     
TBkHelpBtn#��[ 6�   5       5!      5"      5#      