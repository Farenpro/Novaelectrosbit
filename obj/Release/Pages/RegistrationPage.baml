   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem ,    &Novaelectrosbit.Pages.RegistrationPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  2res(clr-namespace:Novaelectrosbit.Properties  .s&clr-namespace:System;assembly=mscorlib  *   $Novaelectrosbit.Properties.Resources    Registration N� Title# Z  $	��610��$	��760��$	��760��$	��610��$��16(�   FontMain N� 
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
��auto ��� $
��auto ��� $
��auto � � ColumnDefinitions �� $	��410 ��� $
��auto ��� $
��auto �.+��� #��Z  $��20(� 	 LHead#��[ �� $��2��   
TelephoneS#��Z   LDescription#��[ %  Xceed.Wpf.Toolkit.MaskedTextBox  -     Name$ TBoxTelephone��$��3��$	��5,0q�$
��Left=�$	��300��   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z 	   Mask$	 +8(000)000-00-00��4  .Xceed.Wpf.Toolkit.Primitives.ValueRangeTextBox
   BeepOnError
 .    ValueDataType" ��   IncludeLiteralsInValue .  
���   � ! MaterialDesignOutlinedTextBox#��[    Value �� *	Telephone+ �� UpdateSourceTrigger$ PropertyChanged=��� $��4��$��5,20,0,0q�   EmailS#��Z #��[ �� -    ��Name$ 	TBoxEmail��$��5��$	��5,0q�$
��Left=�$	��300�� �� 	MaxLength$ 50��# Z 
���   �#��[ ���� *Email+$ PropertyChanged=��� $��6��$��5,20,0,0q�   ComeUpPassS#��Z #��[ � $��7�� �� $
��auto ��� $
��auto ��� $
��auto �.+�G� -    G�Name$ PBoxPassword��$��2��$	��5,0q�$
��Left=�$	��300�� G� 	MaxLength$ 50��# Z 
���   � % !MaterialDesignOutlinedPasswordBox#��[ �� -   $ PBoxPasswordVisible��$��2��$	��5,0q�$
��Left=�$	��300��$ 50��# Z $y�Hidden=�
���   �#��[ d� -    d�Name$ 	TBDisplay��$��0��$��1��$��Center=�$��35��$��35��
���   � * &MaterialDesignActionAccentToggleButton#��[ ��0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ EyeOff=�1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   	OnContent   $	 Eye=�'  !MaterialDesignThemes.Wpf.PackIcon  $��2��$��2��$��Center=�$��40��$��60��   IconInfoToolTip � ToolTip# Z   IconInfo#��[ �� $��8��$��5,20,0,0q�   
RetryPassS#��Z #��[ � $��9�� �� $
��auto ��� $
��auto �.+�G� -   $ PBoxPasswordAgain��$��2��$	��5,0q�$
��Left=�$	��300��$ 50��# Z 
���   �#��[ �� -   $ PBoxPasswordAgainVisible��$��2��$	��5,0q�$
��Left=�$	��300��$ 50��$8 2Обязательно для заполнения��
���   �$y�Hidden=�#��[ d� -   $ 
TBDisplay2��$��0��$��1��$��Center=�$��35��$��35��
���   �#��[ ��  $ EyeOff=�   $	 Eye=��� $��2��$��1��   UserSurname#��Z #��[ �� -	   $ TBoxSurname��$��1��$��3��$	��5,0q�$
��Left=�$	��300��$ 50��
���   �#��[ ���� *	Surname+$ PropertyChanged=��� $��4��$��1��   UserFirstnameS#��Z #��[ �� -
   $ TBoxFirstname��$��1��$��5��$	��5,0q�$
��Left=�$	��300��$ 30��# Z 
���   �#��[ ���� *	Firstname+$ PropertyChanged=��� $��6��$��1��   UserMiddlename#��Z #��[ �� -   $ TBoxMiddlename��$��1��$��7��$	��5,0q�$
��Left=�$	��300��$ 60��
���   �#��[ ���� *
Middlename+$ PropertyChanged=��� $��8��$��1��   Gender#��Z #��[ �� -    ��Name$ 
CBoxGender��$��9��$��1��$	��5,0q�$
��Left=�$	��300��  �� DisplayMemberPath$
  Name��
���   � " MaterialDesignOutlinedComboBox#��[ ! �� SelectedIndex! �� *Gender+$ PropertyChanged=�" �� Mode$" OneWayToSource=��� -   # ��Name$# BtnCBoxClear��$��9��$��2��  BtnClear#��[ ��  $ Eraser=��� $��10��$��1��$   	Birthdate#��Z$ #��[ (  "System.Windows.Controls.DatePicker  -   %  Name$% DPBirthdate��$��11��$��1��$	��5,0q�$
��Left=�$	��300��&   FirstDayOfWeek$& Monday=�|�.  '   BirthdateToolTip# Z' 
���   �*	  $MaterialDesignThemes.Wpf.ThemeAssist( 	  Theme$( Light=� $	  MaterialDesignOutlinedDatePicker#��[	 )   SelectedDate) �� *	Birthdate+$ PropertyChanged=�$" OneWayToSource=��� -   $# 
BtnDPClear��$��11��$��2��#��[ ��  $ Eraser=��� $��10��$��5,17,0,0q�*   PersonalDataAgree#��Z* $��9(�  
 MaterialDesignDarkBackground#��[
 #��[ �� -   $# BtnContinue��$��11��$	��5,0q�$��Center=�$	��300��+   Continue#��Z+ 
������� ! MaterialDesignFlatMidBgButton#��[ ���� , �� ElementName$, DPBirthdate��- �� Path$- Height�