   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      4    .Novaelectrosbit.Pages.MainSubPages.ProfilePage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      8res(clr-namespace:Novaelectrosbit.Properties     5      X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      $	��594��5      $	��760��6      FontMain  N� 
FontFamily#  [  5      .��5	      � $��0,0,9,0q�6    � RowDefinitions 5
   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      .+�5   
   �� -   5         ��Name$ BtnMainPageBack��5      $
��Left=�6*   *   $Novaelectrosbit.Properties.Resources   
LCCProfile#��Z 6L   $��20(�6�     SweetWhiteBlue#��[ 6�   $��0q�5      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 0��6%   � 5   
   $��1��6   $	��200��6   ��5      �� 5       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,0&�67   .��5      �  � Color$ #2C4357��6#    � Offset$ 0Q�63   � 5      $ #1C5071��6#   $	 0.5Q�63   � 5      $ #076194��6#   $ 1Q�63   5      	 � ColumnDefinitions	 5      �� 5      $
��auto �6#   �� 5      �� 5      $
��auto �6#   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  $
��10,0q�6&   $��Center=�64   $��Center=�6O   $	��100��6l   $	��100��6y   
   Kind$
 AccountCircleOutline=�6�   
�������6�   �� 5      $��1��6   $
��30,0q�6)   $
��Left=�67   $��Center=�6R   .+�5       �� $
��Left=�6   
�������$��16(�6^   ��63   �� *FIO+6^   �� 5!      $
��Left=�6   
������� �� ContentStringFormat$ Пол: {0}��6x   ��63   �� *	StrGender+ �� TargetNullValue$  ��6x   �� 5"      $
��Left=�6   
�������$$ Дата рождения: {0}��6z   ��63   �� *DTBirthdate+$  ��6z   5#      �� 5$      -   5        $ BtnProfileEdit��5$      $��2��6-   $��5q�6=   $	��Top=�6H   $��Right=�6`   
����������#076194$��0q�5%   *   ���#076194+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�6T    * &MaterialDesignFloatingActionMiniButton#���  6�   ��5$   |   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ Pencil=�5%   �   5&      � 5'   
   $��2��6   $��15q�6    5(      �� 5)      $
��auto �6    �� 5*      $	��1.5 �6    �� 5+      $
��auto �6    �� 5,      $	��1.5 �6    �� 5-      $
��auto �6    �� 5.      $	��1.5 �6    �� 5/      $
��auto �6    �� 50      $	��1.5 �6    	 52      �� 53      �� 54      �� 55      .+�57      �� $��0q�6      TelephoneAndEmail#��Z 6    	 LHead#��[ 6T   � 58      $��1��6     Definition1#��[ 6!   �� 59      $��2��6   $��	0,15,0,15q�6!      	Telephone#��Z 64     LDescription#��[ 6a   � 5:      $��3��6   #��[ 6    �� 5;      $��4��6   $��	0,15,0,15q�6!      Email2#��Z 64   #��[ 6^   � 5<      $��5��6   #��[ 6    �� 5=      $��6��6   $��	0,15,0,15q�6!      	Password2#��Z 64   #��[ 6a   � 5>      $��7��6   #��[ 6    %  Xceed.Wpf.Toolkit.MaskedTextBox  5?      -   5          Name$ 
LTelephone��5?   !   $��2��65   $��1��6B   $��Center=�6R   $��Center=�6o      Mask$ +8(000)000-00-00��6�   $��0q�6�   
������  �� 
IsReadOnly . 6�   �� 5@      -   5         ��Name$ LEmail��5@      $��4��6$   $��1��61   $��	0,15,0,15q�6A   $��Center=�6T   $��Center=�6q   ��6�   �� *Email+G� 5A      -   5         G�Name$ PBoxPassword��5A      $��6��60   $��1��6=   $��Center=�6M   $��Center=�6h   {�.  6�   �� 5B      -   5        $ BtnPhoneEdit��5B      $��5q�6+   $��2��66   $��2��6F   $��Right=�6S   $��Center=�6o   $��20��6�   $��20��6�     SecondaryHueMidBrush#���  6�   $��0q�5C      
������ $ Depth0=�6C   
������  / +MaterialDesignFloatingActionSecondaryButton#���  6�   ��5B   �     $ PencilOutline=�5C   �   �� 5D      -   5        $ BtnEmailEdit��5D      $��5q�6+   $��2��66   $��4��6F   $��Right=�6S   $��Center=�6o   $��20��6�   $��20��6�   #���  6�   $��0q�5E      
������ $ Depth0=�6C   
������ #���  6�   ��5D   �     $ PencilOutline=�5E   �   �� 5F      -   5        $ BtnPasswordEdit��5F      $��5q�6.   $��2��69   $��6��6I   $��Right=�6V   $��Center=�6r   $��20��6�   $��20��6�   #���  6�   $��0q�5G      
������ $ Depth0=�6C   
������ #���  6�   ��5F   �     $ PencilOutline=�5G   �   5H      5I      5J      