   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  D    >Novaelectrosbit.Pages.MRPages.RegAddressSubPages.StreetAddPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     8res(clr-namespace:Novaelectrosbit.Properties     $	��340��$	��370��$	��370��$	��340��$��16(�*   $Novaelectrosbit.Properties.Resources    	StreetAdd N� Title# Z     FontMain N� 
FontFamily# [  .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+��� #��Z   	 LHead#��[ �� $��1��   Prefix#��Z   LDescription#��[ �� -    ��Name$ CBoxPrefixType��$��2��$��
15,5,15,15q�$
��Left=�$	��300�� �� 
IsEditable .  �� IsTextSearchEnabled .  �� DisplayMemberPath$
 Name��
���   �	   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist
   
HelperText#
 Z	   PrimaryHueMidBrush#���   " MaterialDesignOutlinedComboBox#��[  �� SelectedItem �� *
PrefixType+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ OneWayToSource=��� $��3��$��5,0,0,0q�   Street#��Z #��[ �� -    ��Name$ 
TBoxStreet��$��4��$
��15,0q�$
��Left=�$	��300�� �� 	MaxLength$ 50��#
 Z	 
���   � ! MaterialDesignOutlinedTextBox#��[ ���� *Street+$ PropertyChanged=�� $��5�� � ColumnDefinitions �� �� .+��� -    ��Name$ BtnAdd��$��10,30q�
   Add#��Z 
��������� $��1��  LHelpBtn#��[ .���� -    ��Name$ 	TBkCancel��   Cancel#��Z   
TBkHelpBtn#��[ 