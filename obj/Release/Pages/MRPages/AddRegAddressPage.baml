   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5    /Novaelectrosbit.Pages.MRPages.AddRegAddressPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     8res(clr-namespace:Novaelectrosbit.Properties     $	��515��$	��400��$	��400��$	��515��$��16(�*   $Novaelectrosbit.Properties.Resources    RegAddressCreate N� Title# Z     FontMain N� 
FontFamily# [  .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto � � ColumnDefinitions �� $
��auto ��� $
��auto ��� $
��auto �.+��� #��Z   	 LHead#��[ �� $��1��   Locality#��Z   LDescription#��[ �� -    ��Name$ CBoxLocality��$��2��$��
15,5,15,15q�$
��Left=�$	��300�� �� 
IsEditable .  �� IsTextSearchEnabled . 	 �� DisplayMemberPath$	 LocalityStr��
���   �
   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z
   PrimaryHueMidBrush#���   " MaterialDesignOutlinedComboBox#��[  �� SelectedItem �� *
Locality+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ OneWayToSource=��� -    ��Name$ BtnLocalityAdd��$��2��$��1��$
��Left=�$��0,0,0,10q� � ToolTip# Z  
����������#076194$��0q����#076194+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=� * &MaterialDesignFloatingActionMiniButton#���  ��0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	PencilAdd=��� $��3��   Street#��Z #��[ �� -   $ 
CBoxStreet��$��4��$��
15,5,15,15q�$
��Left=�$	��300�� .  . $	 	PrefixStr��
���   �# Z
 #���  #��[  �� *Street+$ PropertyChanged=�$ OneWayToSource=��� -   $ BtnStreetAdd��$��4��$��1��$
��Left=�$��0,0,0,10q�# Z  
����������#076194$��0q����#076194$ Depth0=�#���  ��  $ 	PencilAdd=��� $��5��   House#��Z #��[ �� -    ��Name$ 	TBoxHouse��$��6��$
��10,0q�$
��Left=�$	��300��# Z
  �� 	MaxLength$ 10��
���   � ! MaterialDesignOutlinedTextBox#��[ ���� *House+$ PropertyChanged=��� $��7��$��5,15,0,0q�   Flat#��Z #��[ �� -   $ TBoxFlat��$��8��$
��10,0q�$
��Left=�$	��300��
���   �#��[ ���� *Flat+$ PropertyChanged=�� $��9�� �� �� .+��� -   $ BtnAdd��$��10,20q�
   Add#��Z 
��������� $��1��  LHelpBtn#��[ .���� -    ��Name$ 	TBkCancel��   Cancel#��Z   
TBkHelpBtn#��[ 