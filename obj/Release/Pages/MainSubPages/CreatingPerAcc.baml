   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 7    1Novaelectrosbit.Pages.MainSubPages.CreatingPerAcc   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  2res(clr-namespace:Novaelectrosbit.Properties  .s&clr-namespace:System;assembly=mscorlib  $
��1030��$	��710��   FontMain  N� 
FontFamily#  [  .��� $��0,0,9,0q� � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+��� *   $Novaelectrosbit.Properties.Resources   PerAccCreate#��Z $	��5,0q� 	 LHead#��[ � -    �Name$ GridRequisites��$��1��  GridRightInfo#��[  � ColumnDefinitions �� $
��auto ��� $
��auto ��� $��* ��� $
��auto ��� $
��auto � �� $
��auto ��� $
��auto ��� $	��1.5 ��� $
��auto ��� $	��1.5 ��� $
��auto ��� $	��1.5 ��� $
��auto ��� $	��1.5 ��� $
��auto ��� $
��auto �.+��� $	��5,0q�   GeneralInfo#��Z $��17(�#��[ �� $��1��$��Center=�   PerAccNumber2#��Z   LDescription#��[ %  Xceed.Wpf.Toolkit.MaskedTextBox  -     Name$ TBoxPerAccNumber��$��1��$��1��$��
15,5,15,15q�$	��305��   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist	   
HelperText#	 Z 
   Mask$
 00000-000-00��4  .Xceed.Wpf.Toolkit.Primitives.ValueRangeTextBox   BeepOnError .    ValueDataType" ��
���   � ! MaterialDesignOutlinedTextBox#��[    Value �� *	PerAccNum+ �� UpdateSourceTrigger$ PropertyChanged=�� $��2��  Definition3#��[ �� $��3��$��Center=�   RegistrationAddress#��Z #��[ �� -    ��Name$ CBoxRegAddress��$��3��$��1��$��
15,5,15,15q�$
��Left=�$	��300�� �� 
IsEditable .  �� IsTextSearchEnabled .  �� DisplayMemberPath$ RegAddressStr��
���   �#	 Z   PrimaryHueMidBrush#���   " MaterialDesignOutlinedComboBox#��[  �� SelectedItem �� *RegistationAddress+$ PropertyChanged=� �� Mode$ OneWayToSource=��� -    ��Name$ BtnRegAddressAdd��$��3��$��2��$
��Left=�$��0,0,0,10q�   RegAddressCreate � ToolTip# Z 
����������#076194$��0q����#076194+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=� * &MaterialDesignFloatingActionMiniButton#���  ��0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	PencilAdd=�� $��4��#��[ �� $��5��$��Center=�   CountOfLiving#��Z #��[ �� -    ��Name$ TBoxCountOfLiving��$��5��$��1��$��
15,5,15,15q�$
��Left=�$��Center=�$	��300��#	 Z 
���   �#��[ ���� *CountOfLiving+$ PropertyChanged=�� $��6��#��[ �� $��7��$��Center=�   CountOfRooms#��Z #��[ �� -   $ TBoxCountOfRooms��$��7��$��1��$��
15,5,15,15q�$
��Left=�$��Center=�$	��300��#	 Z 
���   �#��[ ���� *CountOfRooms+$ PropertyChanged=�� $��8��#��[ �� $��9��$��Center=�   
LivingArea#��Z #��[ �� -   $ TBoxLivingArea��$��9��$��1��$��
15,5,15,15q�$
��Left=�$��Center=�$	��300��#	 Z 
���   �#��[ ���� *
LivingArea+$ 	LostFocus=��� $��1��$��3��$��Center=�$��Right=�   SurnameOwner#��Z #��[ �� -   $ TBoxSurname��$��1��$��4��$��
15,5,15,15q�$
��Left=�$��Center=�  �� 	MaxLength$  50��$	��300��#	 Z 
���   �#��[ ���� *SurnameOwner+$ PropertyChanged=��� $��3��$��3��$��Center=�$��Right=�!   FirstnameOwner#��Z! #��[ �� -	   $ TBoxFirstname��$��3��$��4��$��
15,5,15,15q�$
��Left=�$��Center=�$  30��$	��300��#	 Z 
���   �#��[ ���� *FirstnameOwner+$ PropertyChanged=��� $��5��$��3��$��Center=�$��Right=�"   MiddlenameOwner#��Z" #��[ �� -
   $ TBoxMiddlename��$��5��$��4��$��
15,5,15,15q�$
��Left=�$��Center=�$  60��$	��300��#	 Z 
���   �#��[ ���� *MiddlenameOwner+$ PropertyChanged=��� $��7��$��3��$��Center=�#   GeneralArea#��Z# #��[ �� -   $ TBoxGeneralArea��$��7��$��4��$��
15,5,15,15q�$
��Left=�$��Center=�$	��300��#	 Z 
���   �#��[ ���� *GeneralArea+$ 	LostFocus=�� -   $ GridCounter��$��2��#��[  �� $
��auto ��� $
��auto ��� $��* � �� $
��auto ��� $
��auto �.+��� $	��5,0q�$��Счетчик��#��[ $��17(��� $��1��$��Center=�$   SelectCounter#��Z$ #��[ �� -   $ CBoxCounter��$��1��$��1��$��	15,0,15,0q�$
��Left=�$	��300�� .  . $ 
NumAndDate��
���   �#	 Z #���  #��[  �� *	Counter+$ PropertyChanged=�$ OneWayToSource=��� -   $ BtnCounterAdd��$��1��$��2��$
��Left=�%   CounterCreate# Z% 
����������#076194$��0q����#076194$ Depth0=�#���  ��  $ 	PencilAdd=�� -   $ 
GridTariff��$��3��#��[  �� $
��auto ��� $
��auto ��� $��* � �� $
��auto ��� $
��auto �.+��� $��
Тариф��#��[ $��17(��� $��1��$��Center=�&   SelectTariff#��Z& #��[ �� -   $ 
CBoxTariff��$��1��$��1��$��	15,0,15,0q�$
��Left=�$	��300�� .  . $
 Name��
���   �#	 Z #���  #��[  �� *Tariff+$ PropertyChanged=�$ OneWayToSource=��� -   $ BtnTariffAdd��$��1��$��2��$
��Left=�'   TariffCreate# Z' 
����������#076194$��0q����#076194$ Depth0=�#���  ��  $ 	PencilAdd=��� -   $ 	BtnCreate��$��4��$��3��$��20q�$��Center=�(   PerAccCreateCaps#��Z( 
������� !	 MaterialDesignFlatMidBgButton#��[	 