   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      7    1Novaelectrosbit.Pages.MainSubPages.CreatingPerAcc   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      2res(clr-namespace:Novaelectrosbit.Properties  5      .s&clr-namespace:System;assembly=mscorlib  5      $
��1030��5      $	��710��6      FontMain  N� 
FontFamily#  [  5	      .��5
      � $��0,0,9,0q�6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� *   $Novaelectrosbit.Properties.Resources   PerAccCreate#��Z 6   $	��5,0q�6@    	 LHead#��[ 6M   � 5   
   -   5         �Name$ GridRequisites��5      $��1��6'     GridRightInfo#��[ 64    � ColumnDefinitions 5      �� 5      $
��auto �6#   �� 5      $
��auto �6#   �� 5      $��* �6#   �� 5      $
��auto �6#   �� 5      $
��auto �6#    5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $	��1.5 �6    �� 5      $
��auto �6    �� 5       $	��1.5 �6    �� 5!      $
��auto �6    �� 5"      $	��1.5 �6    �� 5#      $
��auto �6    �� 5$      $	��1.5 �6    �� 5%      $
��auto �6    �� 5&      $
��auto �6    .+�5(      �� $	��5,0q�6      GeneralInfo#��Z 6!   $��17(�6P   #��[ 6^   �� 5)      $��1��6   $��Center=�6!      PerAccNumber2#��Z 6<     LDescription#��[ 6m   %  Xceed.Wpf.Toolkit.MaskedTextBox  5*      -   5          Name$ TBoxPerAccNumber��5*   !   $��1��6;   $��1��6H   $��
15,5,15,15q�6Y   $	��305��6m      RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist	   
HelperText#	 Z 6�   
   Mask$
 00000-000-00��6  4  .Xceed.Wpf.Toolkit.Primitives.ValueRangeTextBox   BeepOnError .    ValueDataType" ��63  
���   � ! MaterialDesignOutlinedTextBox#��[ 5+   3      Value 5*   |   �� *	PerAccNum+ �� UpdateSourceTrigger$ PropertyChanged=�5+   3   � 5,      $��2��6     Definition3#��[ 6    �� 5-      $��3��6   $��Center=�6"      RegistrationAddress#��Z 6=   #��[ 6t   �� 5.      -   5         ��Name$ CBoxRegAddress��5.      $��3��6/   $��1��6<   $��
15,5,15,15q�6L   $
��Left=�6`   $	��300��6{    �� 
IsEditable .  �� IsTextSearchEnabled .  �� DisplayMemberPath$ RegAddressStr��6  
���   �#	 Z 5/   &     PrimaryHueMidBrush#���  6u    " MaterialDesignOutlinedComboBox#��[ 6�    �� SelectedItem 5.   �   �� *RegistationAddress+$ PropertyChanged=� �� Mode$ OneWayToSource=�5/   �   �� 50      -   5         ��Name$ BtnRegAddressAdd��50      $��3��6/   $��2��6<   $
��Left=�6L   $��0,0,0,10q�6g      RegAddressCreate � ToolTip# Z 6�   
����������#076194$��0q�51   *   ���#076194+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�6T    * &MaterialDesignFloatingActionMiniButton#���  6�   ��50   y   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	PencilAdd=�51   �   � 52      $��4��6   #��[ 6    �� 53      $��5��6   $��Center=�6!      CountOfLiving#��Z 6<   #��[ 6m   �� 54      -   5         ��Name$ TBoxCountOfLiving��54      $��5��61   $��1��6>   $��
15,5,15,15q�6N   $
��Left=�6b   $��Center=�6}   $	��300��6�   #	 Z 6�   
���   �#��[ 55   j   ��6   �� *CountOfLiving+$ PropertyChanged=�6j   � 56      $��6��6   #��[ 6    �� 57      $��7��6   $��Center=�6!      CountOfRooms#��Z 6<   #��[ 6l   �� 58      -   5        $ TBoxCountOfRooms��58      $��7��60   $��1��6=   $��
15,5,15,15q�6M   $
��Left=�6a   $��Center=�6|   $	��300��6�   #	 Z 6�   
���   �#��[ 59   i   ��6   �� *CountOfRooms+$ PropertyChanged=�6i   � 5:      $��8��6   #��[ 6    �� 5;      $��9��6   $��Center=�6!      
LivingArea#��Z 6<   #��[ 6j   �� 5<      -   5        $ TBoxLivingArea��5<      $��9��6.   $��1��6;   $��
15,5,15,15q�6K   $
��Left=�6_   $��Center=�6z   $	��300��6�   #	 Z 6�   
���   �#��[ 5=   a   ��6   �� *
LivingArea+$ 	LostFocus=�6a   �� 5>      $��1��6   $��3��6!   $��Center=�61   $��Right=�6L      SurnameOwner#��Z 6h   #��[ 6�   �� 5?      -   5        $ TBoxSurname��5?      $��1��6+   $��4��68   $��
15,5,15,15q�6H   $
��Left=�6\   $��Center=�6w     �� 	MaxLength$  50��6�   $	��300��6�   #	 Z 6�   
���   �#��[ 5@   i   ��6   �� *SurnameOwner+$ PropertyChanged=�6i   �� 5A      $��3��6   $��3��6!   $��Center=�61   $��Right=�6L   !   FirstnameOwner#��Z! 6h   #��[ 6�   �� 5B      -	   5        $ TBoxFirstname��5B      $��3��6-   $��4��6:   $��
15,5,15,15q�6J   $
��Left=�6^   $��Center=�6y   $  30��6�   $	��300��6�   #	 Z 6�   
���   �#��[ 5C   k   ��6   �� *FirstnameOwner+$ PropertyChanged=�6k   �� 5D      $��5��6   $��3��6!   $��Center=�61   $��Right=�6L   "   MiddlenameOwner#��Z" 6h   #��[ 6�   �� 5E      -
   5        $ TBoxMiddlename��5E      $��5��6.   $��4��6;   $��
15,5,15,15q�6K   $
��Left=�6_   $��Center=�6z   $  60��6�   $	��300��6�   #	 Z 6�   
���   �#��[ 5F   l   ��6   �� *MiddlenameOwner+$ PropertyChanged=�6l   �� 5G      $��7��6   $��3��6!   $��Center=�61   #   GeneralArea#��Z# 6L   #��[ 6{   �� 5H      -   5        $ TBoxGeneralArea��5H      $��7��6/   $��4��6<   $��
15,5,15,15q�6L   $
��Left=�6`   $��Center=�6{   $	��300��6�   #	 Z 6�   
���   �#��[ 5I   b   ��6   �� *GeneralArea+$ 	LostFocus=�6b   5J      � 5K   
   -   5        $ GridCounter��5K      $��2��6$   #��[ 61    5L      �� 5M      $
��auto �6#   �� 5N      $
��auto �6#   �� 5O      $��* �6#    5Q      �� 5R      $
��auto �6    �� 5S      $
��auto �6    .+�5U      �� $	��5,0q�6   $��Счетчик��6!   #��[ 63   $��17(�6R   �� 5V      $��1��6   $��Center=�6!   $   SelectCounter#��Z$ 6<   #��[ 6m   �� 5W      -   5        $ CBoxCounter��5W      $��1��6,   $��1��69   $��	15,0,15,0q�6I   $
��Left=�6\   $	��300��6w    .  . $ 
NumAndDate��6  
���   �#	 Z 5X   &   #���  6u   #��[ 6�    5W   �   �� *	Counter+$ PropertyChanged=�$ OneWayToSource=�5X   �   �� 5Y      -   5        $ BtnCounterAdd��5Y      $��1��6,   $��2��69   $
��Left=�6I   %   CounterCreate# Z% 6�   
����������#076194$��0q�5Z   *   ���#076194$ Depth0=�6T   #���  6�   ��5Y   d     $ 	PencilAdd=�5Z   �   5[      � 5\   
   -   5        $ 
GridTariff��5\      $��3��6#   #��[ 60    5]      �� 5^      $
��auto �6#   �� 5_      $
��auto �6#   �� 5`      $��* �6#    5b      �� 5c      $
��auto �6    �� 5d      $
��auto �6    .+�5f      �� $��
Тариф��6   #��[ 6$   $��17(�6C   �� 5g      $��1��6   $��Center=�6!   &   SelectTariff#��Z& 6<   #��[ 6l   �� 5h      -   5        $ 
CBoxTariff��5h      $��1��6+   $��1��68   $��	15,0,15,0q�6H   $
��Left=�6[   $	��300��6v    .  . $
 Name��6  
���   �#	 Z 5i   &   #���  6u   #��[ 6�    5h   �   �� *Tariff+$ PropertyChanged=�$ OneWayToSource=�5i   �   �� 5j      -   5        $ BtnTariffAdd��5j      $��1��6+   $��2��68   $
��Left=�6H   '   TariffCreate# Z' 6�   
����������#076194$��0q�5k   *   ���#076194$ Depth0=�6T   #���  6�   ��5j   c     $ 	PencilAdd=�5k   �   5l      �� 5m   
   -   5        $ 	BtnCreate��5m      $��4��6$   $��3��61   $��20q�6E   $��Center=�6Q   (   PerAccCreateCaps#��Z( 6l   
������� !	 MaterialDesignFlatMidBgButton#��[	 6�   5n      5o      