   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  H    BNovaelectrosbit.Pages.MainSubPages.ProfileSubPages.GenInfoEditPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     8res(clr-namespace:Novaelectrosbit.Properties     $	��575��$	��370��$	��370��$	��575��$��16(�*   $Novaelectrosbit.Properties.Resources    PersonalInfoEdit N� Title# Z     FontMain N� 
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
��auto ��� $
��auto � � ColumnDefinitions �� $
��auto ��� $
��auto �.+��� #��Z   	 LHead#��[ �� $��1��   UserSurname#��Z   LDescription#��[ �� -    ��Name$ TBoxSurname��$��2��$
��10,0q�$
��Left=�$	��300�� �� 	MaxLength$ 50��
���   � ! MaterialDesignOutlinedTextBox#��[ ���� *	Surname+ �� UpdateSourceTrigger$ PropertyChanged=�	 �� Mode$	 OneTime=��� $��3��
   UserFirstnameS#��Z
 #��[ �� -   $ TBoxName��$��4��$
��10,0q�$
��Left=�$	��300��$ 30��   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z 
���   �#��[ ���� *Name+$ PropertyChanged=�$	 OneTime=��� $��5��$��5,20,0,0q�   UserMiddlename#��Z #��[ �� -   $ TBoxMiddlename��$��6��$
��10,0q�$
��Left=�$	��300��$ 60��
���   �#��[ ���� *
Middlename+$ PropertyChanged=�$	 OneTime=��� $��7��   Gender#��Z #��[ �� -    ��Name$ 
CBoxGender��$��9��$
��10,0q�$
��Left=�$	��300�� �� DisplayMemberPath$
 Name��
���   � " MaterialDesignOutlinedComboBox#��[  �� SelectedIndex �� *IntGenderID+$ PropertyChanged=�$	 OneTime=��� -    ��Name$ BtnCBoxClear��$��9��$��3��  BtnClear#��[ ��0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ Eraser=��� $��10��$
��10,0q�   	Birthdate#��Z #��[ (  "System.Windows.Controls.DatePicker  -     Name$ DPBirthdate��$��11��$
��10,0q�$
��Left=�$	��300��   BirthdateToolTip � ToolTip# Z    FirstDayOfWeek$ Monday=�|�.  
���   �*  $MaterialDesignThemes.Wpf.ThemeAssist   Theme$ Light=� $  MaterialDesignOutlinedDatePicker#��[    SelectedDate �� *	Birthdate+$ PropertyChanged=�$	 OneTime=��� -   $ 
BtnDPClear��$��11��$��3��#��[ ��  $ Eraser=�� $��12�� �� �� .+��� -   $ BtnSave��$��10,20q�   Save#��Z 
��������� $��1��  LHelpBtn#��[ .���� -	    ��Name$ 	TBkCancel��   Cancel#��Z   
TBkHelpBtn#��[ 