   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  4    .Novaelectrosbit.Pages.MainSubPages.ProfilePage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     8res(clr-namespace:Novaelectrosbit.Properties     X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  $	��594��$	��760��   FontMain  N� 
FontFamily#  [  .��� $��0,0,9,0q� � RowDefinitions �� $
��auto ��� $
��auto ��� .+��� -    ��Name$ BtnMainPageBack��$
��Left=�*   $Novaelectrosbit.Properties.Resources   
LCCProfile#��Z $��20(�  SweetWhiteBlue#��[ $��0q�+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 0��� $��1��$	��200������  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,0&�.���  � Color$ #2C4357�� � Offset$ 0Q�� $ #1C5071��$	 0.5Q�� $ #076194��$ 1Q�	 � ColumnDefinitions	 �� $
��auto ��� �� $
��auto �.+�'  !MaterialDesignThemes.Wpf.PackIcon  $
��10,0q�$��Center=�$��Center=�$	��100��$	��100��
   Kind$
 AccountCircleOutline=�
��������� $��1��$
��30,0q�$
��Left=�$��Center=�.+��� $
��Left=�
�������$��16(����� *FIO+�� $
��Left=�
������� �� ContentStringFormat$ Пол: {0}������ *	StrGender+ �� TargetNullValue$  ���� $
��Left=�
�������$$ Дата рождения: {0}������ *DTBirthdate+$  ���� -   $ BtnProfileEdit��$��2��$��5q�$	��Top=�$��Right=�
����������#076194$��0q����#076194+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=� * &MaterialDesignFloatingActionMiniButton#���  ��0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ Pencil=�� $��2��$��15q� �� $
��auto ��� $	��1.5 ��� $
��auto ��� $	��1.5 ��� $
��auto ��� $	��1.5 ��� $
��auto ��� $	��1.5 �	 �� �� �� .+��� $��0q�   TelephoneAndEmail#��Z  	 LHead#��[ � $��1��  Definition1#��[ �� $��2��$��	0,15,0,15q�   	Telephone#��Z   LDescription#��[ � $��3��#��[ �� $��4��$��	0,15,0,15q�   Email2#��Z #��[ � $��5��#��[ �� $��6��$��	0,15,0,15q�   	Password2#��Z #��[ � $��7��#��[ %  Xceed.Wpf.Toolkit.MaskedTextBox  -     Name$ 
LTelephone��$��2��$��1��$��Center=�$��Center=�   Mask$ +8(000)000-00-00��$��0q�
������  �� 
IsReadOnly . �� -    ��Name$ LEmail��$��4��$��1��$��	0,15,0,15q�$��Center=�$��Center=����� *Email+G� -    G�Name$ PBoxPassword��$��6��$��1��$��Center=�$��Center=�{�.  �� -   $ BtnPhoneEdit��$��5q�$��2��$��2��$��Right=�$��Center=�$��20��$��20��  SecondaryHueMidBrush#���  $��0q�
������ $ Depth0=�
������  / +MaterialDesignFloatingActionSecondaryButton#���  ��  $ PencilOutline=��� -   $ BtnEmailEdit��$��5q�$��2��$��4��$��Right=�$��Center=�$��20��$��20��#���  $��0q�
������ $ Depth0=�
������ #���  ��  $ PencilOutline=��� -   $ BtnPasswordEdit��$��5q�$��2��$��6��$��Right=�$��Center=�$��20��$��20��#���  $��0q�
������ $ Depth0=�
������ #���  ��  $ PencilOutline=�