   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      H    BNovaelectrosbit.Pages.MainSubPages.ProfileSubPages.GenInfoEditPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      8res(clr-namespace:Novaelectrosbit.Properties     5      $	��575��5      $	��370��6   $	��370��6    $	��575��6/   $��16(�6?   *   $Novaelectrosbit.Properties.Resources    PersonalInfoEdit N� Title# Z  5         FontMain N� 
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
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6    � ColumnDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� #��Z  6    	 LHead#��[ 6D   �� 5   
   $��1��6      UserSurname#��Z 6     LDescription#��[ 6L   �� 5   
   -   5         ��Name$ TBoxSurname��5      $��2��6'   $
��10,0q�64   $
��Left=�6B   $	��300��6]    �� 	MaxLength$ 50��6l   
���   � ! MaterialDesignOutlinedTextBox#��[ 5   &   ��5   {   �� *	Surname+ �� UpdateSourceTrigger$ PropertyChanged=�	 �� Mode$	 OneTime=�5   &   �� 5    
   $��3��6   
   UserFirstnameS#��Z
 6   #��[ 6O   �� 5!   
   -   5        $ TBoxName��5!      $��4��6$   $
��10,0q�61   $
��Left=�6?   $	��300��6Z   $ 30��6i      RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z 6x   
���   �#��[ 5"   &   ��5!   �   �� *Name+$ PropertyChanged=�$	 OneTime=�5"   &   �� 5#   
   $��5��6   $��5,20,0,0q�6      UserMiddlename#��Z 6/   #��[ 6a   �� 5$   
   -   5        $ TBoxMiddlename��5$      $��6��6*   $
��10,0q�67   $
��Left=�6E   $	��300��6`   $ 60��6o   
���   �#��[ 5%   &   ��5$   ~   �� *
Middlename+$ PropertyChanged=�$	 OneTime=�5%   &   �� 5&   
   $��7��6      Gender#��Z 6   #��[ 6G   �� 5'   
   -   5         ��Name$ 
CBoxGender��5'      $��9��6'   $
��10,0q�64   $
��Left=�6B   $	��300��6]    �� DisplayMemberPath$
 Name��6�   
���   � " MaterialDesignOutlinedComboBox#��[ 5(   &    �� SelectedIndex 5'   l   �� *IntGenderID+$ PropertyChanged=�$	 OneTime=�5(   &   �� 5)   
   -   5         ��Name$ BtnCBoxClear��5)      $��9��6'   $��3��64     BtnClear#��[ 6�   ��6D   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ Eraser=�6�   �� 5*   
   $��10��6   $
��10,0q�6      	Birthdate#��Z 6,   #��[ 6Y   (  "System.Windows.Controls.DatePicker  5+   
   -   5          Name$ DPBirthdate��5+      $��11��6*   $
��10,0q�68   $
��Left=�6F   $	��300��6a      BirthdateToolTip � ToolTip# Z 6�      FirstDayOfWeek$ Monday=�6�   |�.  
���   �*  $MaterialDesignThemes.Wpf.ThemeAssist   Theme$ Light=�5,   )    $  MaterialDesignOutlinedDatePicker#��[ 6R      SelectedDate 5+   p   �� *	Birthdate+$ PropertyChanged=�$	 OneTime=�5,   R   �� 5-   
   -   5        $ 
BtnDPClear��5-      $��11��6%   $��3��63   #��[ 6�   ��6C     $ Eraser=�6�   � 5.   
   $��12��6    5/      �� 50      �� 51      .+�53      �� -   5        $ BtnSave��53      $��10,20q�6&      Save#��Z 65   
�������6s   �� 54      $��1��6     LHelpBtn#��[ 6$   .��55      �� -	   5         ��Name$ 	TBkCancel��55         Cancel#��Z 6/     
TBkHelpBtn#��[ 6�   56      57      58      59      