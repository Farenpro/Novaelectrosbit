   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      ,    &Novaelectrosbit.Pages.RegistrationPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      2res(clr-namespace:Novaelectrosbit.Properties  5      .s&clr-namespace:System;assembly=mscorlib  5      *   $Novaelectrosbit.Properties.Resources    Registration N� Title# Z  5      $	��610��65   $	��760��6B   $	��760��6N   $	��610��6]   $��16(�6m      FontMain N� 
FontFamily# [  6�   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6    � ColumnDefinitions 5   
   �� 5      $	��410 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� #��Z  6   $��20(�6@    	 LHead#��[ 6N   �� 5   
   $��2��6      
TelephoneS#��Z 6     LDescription#��[ 6K   %  Xceed.Wpf.Toolkit.MaskedTextBox  5   
   -   5          Name$ TBoxTelephone��5      $��3��64   $	��5,0q�6A   $
��Left=�6N   $	��300��6i      RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z 6x   	   Mask$	 +8(000)000-00-00��6  4  .Xceed.Wpf.Toolkit.Primitives.ValueRangeTextBox
   BeepOnError
 .    ValueDataType" ��5          IncludeLiteralsInValue .  
���   � ! MaterialDesignOutlinedTextBox#��[ 6r      Value 5   �   �� *	Telephone+ �� UpdateSourceTrigger$ PropertyChanged=�5    r   �� 5!   
   $��4��6   $��5,20,0,0q�6      EmailS#��Z 6/   #��[ 6Y   �� 5"   
   -   5         ��Name$ 	TBoxEmail��5"      $��5��6%   $	��5,0q�62   $
��Left=�6?   $	��300��6Z    �� 	MaxLength$ 50��6i   # Z 6x   
���   �#��[ 5#   b   ��6   �� *Email+$ PropertyChanged=�6b   �� 5$   
   $��6��6   $��5,20,0,0q�6      ComeUpPassS#��Z 6/   #��[ 6^   � 5%   
   $��7��6    5&      �� 5'      $
��auto �6#   �� 5(      $
��auto �6#   �� 5)      $
��auto �6#   .+�5+      G� -   5         G�Name$ PBoxPassword��5+      $��2��60   $	��5,0q�6A   $
��Left=�6N   $	��300��6i    G� 	MaxLength$ 50��6x   # Z 6�   
���   � % !MaterialDesignOutlinedPasswordBox#��[ 5,      �� 5-      -   5        $ PBoxPasswordVisible��5-      $��2��63   $	��5,0q�6D   $
��Left=�6Q   $	��300��6l   $ 50��6{   # Z 6�   $y�Hidden=�6�   
���   �#��[ 5.      d� 5/      -   5         d�Name$ 	TBDisplay��5/      $��0��6.   $��1��6;   $��Center=�6K   $��35��6g   $��35��6s   
���   � * &MaterialDesignActionAccentToggleButton#��[ 50   W   ��5/   ~   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ EyeOff=�1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   	OnContent 6�     $	 Eye=�50   W   '  !MaterialDesignThemes.Wpf.PackIcon  51      $��2��6&   $��2��66   $��Center=�6G   $��40��6d   $��60��6p      IconInfoToolTip � ToolTip# Z 6{     IconInfo#��[ 52   &   53      �� 54   
   $��8��6   $��5,20,0,0q�6      
RetryPassS#��Z 6/   #��[ 6]   � 55   
   $��9��6    56      �� 57      $
��auto �6#   �� 58      $
��auto �6#   .+�5:      G� -   5        $ PBoxPasswordAgain��5:      $��2��65   $	��5,0q�6F   $
��Left=�6S   $	��300��6n   $ 50��6}   # Z 6�   
���   �#��[ 5;      �� 5<      -   5        $ PBoxPasswordAgainVisible��5<      $��2��68   $	��5,0q�6I   $
��Left=�6V   $	��300��6q   $ 50��6�   $8 2Обязательно для заполнения��6�   
���   �$y�Hidden=�6�   #��[ 5=      d� 5>      -   5        $ 
TBDisplay2��5>      $��0��6/   $��1��6<   $��Center=�6L   $��35��6g   $��35��6t   
���   �#��[ 5?   Y   ��5>        $ EyeOff=� 6�     $	 Eye=�5?   Y   5@      �� 5A   
   $��2��6   $��1��6      UserSurname#��Z 6-   #��[ 6\   �� 5B   
   -	   5        $ TBoxSurname��5B      $��1��6'   $��3��67   $	��5,0q�6D   $
��Left=�6Q   $	��300��6l   $ 50��6{   
���   �#��[ 6�   ��6�   �� *	Surname+$ PropertyChanged=�6�   �� 5C   
   $��4��6   $��1��6      UserFirstnameS#��Z 6-   #��[ 6_   �� 5D   
   -
   5        $ TBoxFirstname��5D      $��1��6)   $��5��69   $	��5,0q�6F   $
��Left=�6S   $	��300��6n   $ 30��6}   # Z 6�   
���   �#��[ 5E   &   ��5D   �   �� *	Firstname+$ PropertyChanged=�5E   &   �� 5F   
   $��6��6   $��1��6      UserMiddlename#��Z 6-   #��[ 6_   �� 5G   
   -   5        $ TBoxMiddlename��5G      $��1��6*   $��7��6:   $	��5,0q�6G   $
��Left=�6T   $	��300��6o   $ 60��6~   
���   �#��[ 5H      ��5G   �   �� *
Middlename+$ PropertyChanged=�5H      �� 5I   
   $��8��6   $��1��6      Gender#��Z 6-   #��[ 6W   �� 5J   
   -   5         ��Name$ 
CBoxGender��5J      $��9��6'   $��1��64   $	��5,0q�6D   $
��Left=�6Q   $	��300��6l     �� DisplayMemberPath$
  Name��6�   
���   � " MaterialDesignOutlinedComboBox#��[ 5K   '   ! �� SelectedIndex! 5J   {   �� *Gender+$ PropertyChanged=�" �� Mode$" OneWayToSource=�5K   '   �� 5L   
   -   5        # ��Name$# BtnCBoxClear��5L      $��9��6'   $��2��64     BtnClear#��[ 6�   ��6D     $ Eraser=�6�   �� 5M   
   $��10��6   $��1��6   $   	Birthdate#��Z$ 6.   #��[ 6[   (  "System.Windows.Controls.DatePicker  5N   
   -   5        %  Name$% DPBirthdate��5N      $��11��6*   $��1��68   $	��5,0q�6H   $
��Left=�6U   $	��300��6p   &   FirstDayOfWeek$& Monday=�6�   |�.  '   BirthdateToolTip# Z' 5O      
���   �*	  $MaterialDesignThemes.Wpf.ThemeAssist( 	  Theme$( Light=�6^    $	  MaterialDesignOutlinedDatePicker#��[	 6�   )   SelectedDate) 5N      �� *	Birthdate+$ PropertyChanged=�$" OneWayToSource=�5O   �   �� 5P   
   -   5        $# 
BtnDPClear��5P      $��11��6%   $��2��63   #��[ 6�   ��6\     $ Eraser=�6�   �� 5Q   
   $��10��6   $��5,17,0,0q�6   *   PersonalDataAgree#��Z* 60   $��9(�6e     
 MaterialDesignDarkBackground#��[
 6r   #��[ 5R      �� 5S   
   -   5        $# BtnContinue��5S      $��11��6&   $	��5,0q�64   $��Center=�6A   $	��300��6\   +   Continue#��Z+ 6�   
������� ! MaterialDesignFlatMidBgButton#��[ 6�   ��6k   �� , �� ElementName$, DPBirthdate��- �� Path$- Height�6�   5T      5U      