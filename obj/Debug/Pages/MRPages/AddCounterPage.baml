   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      2    ,Novaelectrosbit.Pages.MRPages.AddCounterPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      8res(clr-namespace:Novaelectrosbit.Properties     5      $	��760��5      $	��730��6   $	��730��6    $	��760��6/   $��16(�6?   *   $Novaelectrosbit.Properties.Resources    CounterCreate N� Title# Z  5         FontMain N� 
FontFamily# [  66   .��5      �  � RowDefinitions 5	   
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
��auto �6   �� 5      $
��auto �6    � ColumnDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� #��Z  6    	 LHead#��[ 6A   �� 5   
   $��1��6      
CounterNum#��Z 6     LDescription#��[ 6K   �� 5    
   -   5         ��Name$ TBoxCounterNum��5       $��2��6*   $
��10,0q�67   $
��Left=�6E   $	��300��6`      RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z 6o   	 �� 	MaxLength$	 30��6�   
���   � ! MaterialDesignOutlinedTextBox#��[ 5!   &   ��5    �   �� *
CounterNum+
 �� UpdateSourceTrigger$
 PropertyChanged=�5!   &   �� 5"   
   $��3��6   $��5,15,0,0q�6      InstallDate#��Z 6/   #��[ 6^   (  "System.Windows.Controls.DatePicker  5#   
   -   5          Name$ DPInstallDate��5#      $��4��6,   $
��10,0q�69   $
��Left=�6G   $	��300��6b   # Z 6q      FirstDayOfWeek$ Monday=�6  |�.     BirthdateToolTip � ToolTip# Z 5$      
���   �*  $MaterialDesignThemes.Wpf.ThemeAssist   Theme$ Light=�6^    $  MaterialDesignOutlinedDatePicker#��[ 6�      SelectedDate 5#   �   �� *InstallDate+$
 PropertyChanged=� �� Mode$ OneWayToSource=�5$   �   �� 5%   
   $��5��6      CounterValue#��Z 6   #��[ 6M   �� 5&   
   -   5        $ TBoxCounterValue��5&      $��6��6,   $��	10,0,0,15q�69   $
��Left=�6L   $	��300��6g   # Z 6v   
���   �#��[ 5'   &   ��5&   �   �� *CounterValue+$
 	LostFocus=�5'   &   �� 5(   
   $��7��6   $��5,15,0,0q�6      CounterBrand#��Z 6/   #��[ 6_   �� 5)   
   -   5         ��Name$ CBoxCounterBrand��5)      $��8��6-   $��
15,5,15,15q�6:   $
��Left=�6N   $	��300��6i    �� 
IsEditable .  �� IsTextSearchEnabled .  �� DisplayMemberPath$
 Name��6  
���   �# Z 5*   &     PrimaryHueMidBrush#���  6u    " MaterialDesignOutlinedComboBox#��[ 6�    �� SelectedItem 5)   x   �� *CounterBrand+$
 PropertyChanged=�$ OneWayToSource=�5*   �   �� 5+   
   -   5         ��Name$ BtnBrandAdd��5+      $��8��6&   $��1��63   $
��Left=�6C   $��0,0,0,10q�6^      CounterBrandCreate# Z 6�   
����������#076194$��0q�5,   *   ���#076194+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�6T    * &MaterialDesignFloatingActionMiniButton#���  6�   ��5+   p   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	PencilAdd=�5,   �   �� 5-   
   $��9��6   $��5,5,0,0q�6      SettingIndicators#��Z 6.   #��[ 6c   �� 5.   
   -   5        $ TBoxSettingIndicators��5.      $��10��61   $��	10,0,0,15q�6?   $
��Left=�6R   $	��300��6m   # Z 6|   
���   �#��[ 5/   &   ��5.   �   �� *SettingIndicators+$
 PropertyChanged=�5/   &   �� 50   
   $��11��6   $��5,15,0,0q�6      TransformCoefficient#��Z 60   #��[ 6h   �� 51   
   -   5        $ TBoxTransformCoeff��51      $��12��6.   $
��10,0q�6<   $
��Left=�6J   $	��300��6e   # Z 6t   
���   �#��[ 52   &   ��51   �   �� *TransformCoefficient+$
 	LostFocus=�52   &   �� 53   
   $��1��6   $��2��6       
MPIEndDate#��Z  6-   #��[ 6[     54   
   -   5        $ DPMPIEndDate��54      $��2��6+   $��2��68   $
��10,0q�6H   $
��Left=�6V   $	��300��6q   # Z 6�   $ Monday=�6-  |�.  # Z 55      
���   �$ Light=�6^   #��[ 6�    54   �   �� *
MPIEndDate+$
 PropertyChanged=�$ OneWayToSource=�55   �   �� 56   
   $��3��6   $��2��6   !   CounterInstallPlace#��Z! 6-   #��[ 6d   �� 57   
   -	   5        $ CBoxInstallPlace��57      $��4��6-   $��2��6:   $��
15,5,15,15q�6J   $
��Left=�6^   $	��300��6y    .  . $
 Name��6  
���   �# Z 58   &   #���  6u   #��[ 6�    57   �   �� *InstallPlace+$
 PropertyChanged=�$ OneWayToSource=�58   �   �� 59   
   $��5��6   $��2��6   "   CounterResponsiblePerson#��Z" 6-   #��[ 6i   �� 5:   
   -
   5        $ CBoxExplRespPerson��5:      $��6��6/   $��2��6<   $��
15,5,15,15q�6L   $
��Left=�6`   $	��300��6{    .  . $
 Name��6  
���   �# Z 5;   &   #���  6u   #��[ 6�    5:   �   �� *ExplRespPerson+$
 PropertyChanged=�$ OneWayToSource=�5;   �   �� 5<   
   $��7��6   $��2��6   #   NetworkOrganisation#��Z# 6-   #��[ 6d   �� 5=   
   -   5        $ CBoxNetworkOrg��5=      $��8��6+   $��2��68   $��
15,5,15,15q�6H   $
��Left=�6\   $	��300��6w    .  . $
 Name��6  
���   �# Z 5>   &   #���  6u   #��[ 6�    5=   �   �� *NetworkOrganisation+$
 PropertyChanged=�$ OneWayToSource=�5>   �   �� 5?   
   $��9��6   $��2��6   $   	BuildType#��Z$ 6-   #��[ 6Z   �� 5@   
   -   5        $ CBoxBuildType��5@      $��10��6*   $��2��68   $��
15,5,15,15q�6H   $
��Left=�6\   $	��300��6w    .  . $
 Name��6  
���   �# Z 5A   &   #���  6u   #��[ 6�    5@   �   �� *	BuildType+$
 PropertyChanged=�$ OneWayToSource=�5A   �   �� 5B   
   $��11��6   $��2��6   %   NameASKUESystem#��Z% 6.   #��[ 6a   �� 5C   
   -   5        $ TBoxASKUESName��5C      $��12��6*   $��2��68   $
��15,0q�6H   $
��Left=�6V   $	��300��6q   $	 50��6�   
���   �#��[ 5D   &   ��5C   �   �� *
ASKUESName+$
 PropertyChanged=�5D   &   � 5E   
   $��13��6    5F      �� 5G      �� 5H      .+�5J      �� -   5        $ BtnAdd��5J      $��10,20q�6%   
&   Add#��Z& 64   
�������6p   �� 5K      $��1��6     LHelpBtn#��[ 6$   .��5L      �� -   5        ' ��Name$' 	TBkCancel��5L      (   Cancel#��Z( 6/    	 
TBkHelpBtn#��[	 6�   5M      5N      5O      5P      