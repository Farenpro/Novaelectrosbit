   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      5    /Novaelectrosbit.Pages.MRPages.AddRegAddressPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      8res(clr-namespace:Novaelectrosbit.Properties     5      $	��515��5      $	��400��6   $	��400��6    $	��515��6/   $��16(�6?   *   $Novaelectrosbit.Properties.Resources    RegAddressCreate N� Title# Z  5         FontMain N� 
FontFamily# [  69   .��5      �  � RowDefinitions 5	   
   �� 5
      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6    � ColumnDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� #��Z  6    	 LHead#��[ 6D   �� 5   
   $��1��6      Locality#��Z 6     LDescription#��[ 6I   �� 5   
   -   5         ��Name$ CBoxLocality��5      $��2��6)   $��
15,5,15,15q�66   $
��Left=�6J   $	��300��6e    �� 
IsEditable .  �� IsTextSearchEnabled . 	 �� DisplayMemberPath$	 LocalityStr��6�   
���   �
   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z
 5   &     PrimaryHueMidBrush#���  6u    " MaterialDesignOutlinedComboBox#��[ 6�    �� SelectedItem 5   t   �� *
Locality+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ OneWayToSource=�5   �   �� 5   
   -   5         ��Name$ BtnLocalityAdd��5      $��2��6)   $��1��66   $
��Left=�6F   $��0,0,0,10q�6a    � ToolTip# Z  6�   
����������#076194$��0q�5   *   ���#076194+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�6T    * &MaterialDesignFloatingActionMiniButton#���  6�   ��5   s   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	PencilAdd=�5   �   �� 5    
   $��3��6      Street#��Z 6   #��[ 6G   �� 5!   
   -   5        $ 
CBoxStreet��5!      $��4��6'   $��
15,5,15,15q�64   $
��Left=�6H   $	��300��6c    .  . $	 	PrefixStr��6�   
���   �# Z
 5"   &   #���  6u   #��[ 6�    5!   r   �� *Street+$ PropertyChanged=�$ OneWayToSource=�5"   �   �� 5#   
   -   5        $ BtnStreetAdd��5#      $��4��6'   $��1��64   $
��Left=�6D   $��0,0,0,10q�6_   # Z  6�   
����������#076194$��0q�5$   *   ���#076194$ Depth0=�6T   #���  6�   ��5#   q     $ 	PencilAdd=�5$   �   �� 5%   
   $��5��6      House#��Z 6   #��[ 6F   �� 5&   
   -   5         ��Name$ 	TBoxHouse��5&      $��6��6%   $
��10,0q�62   $
��Left=�6@   $	��300��6[   # Z
 6j    �� 	MaxLength$ 10��6�   
���   � ! MaterialDesignOutlinedTextBox#��[ 5'   &   ��5&   �   �� *House+$ PropertyChanged=�5'   &   �� 5(   
   $��7��6   $��5,15,0,0q�6      Flat#��Z 6/   #��[ 6W   �� 5)   
   -   5        $ TBoxFlat��5)      $��8��6$   $
��10,0q�61   $
��Left=�6?   $	��300��6Z   
���   �#��[ 5*   &   ��5)   i   �� *Flat+$ PropertyChanged=�5*   &   � 5+   
   $��9��6    5,      �� 5-      �� 5.      .+�50      �� -   5        $ BtnAdd��50      $��10,20q�6%   
   Add#��Z 64   
�������6p   �� 51      $��1��6     LHelpBtn#��[ 6$   .��52      �� -   5         ��Name$ 	TBkCancel��52         Cancel#��Z 6/     
TBkHelpBtn#��[ 6�   53      54      55      56      