   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  2    ,Novaelectrosbit.Pages.MRPages.AddCounterPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     8res(clr-namespace:Novaelectrosbit.Properties     $	��760��$	��730��$	��730��$	��760��$��16(�*   $Novaelectrosbit.Properties.Resources    CounterCreate N� Title# Z     FontMain N� 
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
��auto ��� $
��auto � � ColumnDefinitions �� $
��auto ��� $
��auto ��� $
��auto �.+��� #��Z   	 LHead#��[ �� $��1��   
CounterNum#��Z   LDescription#��[ �� -    ��Name$ TBoxCounterNum��$��2��$
��10,0q�$
��Left=�$	��300��   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z 	 �� 	MaxLength$	 30��
���   � ! MaterialDesignOutlinedTextBox#��[ ���� *
CounterNum+
 �� UpdateSourceTrigger$
 PropertyChanged=��� $��3��$��5,15,0,0q�   InstallDate#��Z #��[ (  "System.Windows.Controls.DatePicker  -     Name$ DPInstallDate��$��4��$
��10,0q�$
��Left=�$	��300��# Z    FirstDayOfWeek$ Monday=�|�.     BirthdateToolTip � ToolTip# Z 
���   �*  $MaterialDesignThemes.Wpf.ThemeAssist   Theme$ Light=� $  MaterialDesignOutlinedDatePicker#��[    SelectedDate �� *InstallDate+$
 PropertyChanged=� �� Mode$ OneWayToSource=��� $��5��   CounterValue#��Z #��[ �� -   $ TBoxCounterValue��$��6��$��	10,0,0,15q�$
��Left=�$	��300��# Z 
���   �#��[ ���� *CounterValue+$
 	LostFocus=��� $��7��$��5,15,0,0q�   CounterBrand#��Z #��[ �� -    ��Name$ CBoxCounterBrand��$��8��$��
15,5,15,15q�$
��Left=�$	��300�� �� 
IsEditable .  �� IsTextSearchEnabled .  �� DisplayMemberPath$
 Name��
���   �# Z   PrimaryHueMidBrush#���   " MaterialDesignOutlinedComboBox#��[  �� SelectedItem �� *CounterBrand+$
 PropertyChanged=�$ OneWayToSource=��� -    ��Name$ BtnBrandAdd��$��8��$��1��$
��Left=�$��0,0,0,10q�   CounterBrandCreate# Z 
����������#076194$��0q����#076194+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=� * &MaterialDesignFloatingActionMiniButton#���  ��0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	PencilAdd=��� $��9��$��5,5,0,0q�   SettingIndicators#��Z #��[ �� -   $ TBoxSettingIndicators��$��10��$��	10,0,0,15q�$
��Left=�$	��300��# Z 
���   �#��[ ���� *SettingIndicators+$
 PropertyChanged=��� $��11��$��5,15,0,0q�   TransformCoefficient#��Z #��[ �� -   $ TBoxTransformCoeff��$��12��$
��10,0q�$
��Left=�$	��300��# Z 
���   �#��[ ���� *TransformCoefficient+$
 	LostFocus=��� $��1��$��2��    
MPIEndDate#��Z  #��[   -   $ DPMPIEndDate��$��2��$��2��$
��10,0q�$
��Left=�$	��300��# Z $ Monday=�|�.  # Z 
���   �$ Light=�#��[  �� *
MPIEndDate+$
 PropertyChanged=�$ OneWayToSource=��� $��3��$��2��!   CounterInstallPlace#��Z! #��[ �� -	   $ CBoxInstallPlace��$��4��$��2��$��
15,5,15,15q�$
��Left=�$	��300�� .  . $
 Name��
���   �# Z #���  #��[  �� *InstallPlace+$
 PropertyChanged=�$ OneWayToSource=��� $��5��$��2��"   CounterResponsiblePerson#��Z" #��[ �� -
   $ CBoxExplRespPerson��$��6��$��2��$��
15,5,15,15q�$
��Left=�$	��300�� .  . $
 Name��
���   �# Z #���  #��[  �� *ExplRespPerson+$
 PropertyChanged=�$ OneWayToSource=��� $��7��$��2��#   NetworkOrganisation#��Z# #��[ �� -   $ CBoxNetworkOrg��$��8��$��2��$��
15,5,15,15q�$
��Left=�$	��300�� .  . $
 Name��
���   �# Z #���  #��[  �� *NetworkOrganisation+$
 PropertyChanged=�$ OneWayToSource=��� $��9��$��2��$   	BuildType#��Z$ #��[ �� -   $ CBoxBuildType��$��10��$��2��$��
15,5,15,15q�$
��Left=�$	��300�� .  . $
 Name��
���   �# Z #���  #��[  �� *	BuildType+$
 PropertyChanged=�$ OneWayToSource=��� $��11��$��2��%   NameASKUESystem#��Z% #��[ �� -   $ TBoxASKUESName��$��12��$��2��$
��15,0q�$
��Left=�$	��300��$	 50��
���   �#��[ ���� *
ASKUESName+$
 PropertyChanged=�� $��13�� �� �� .+��� -   $ BtnAdd��$��10,20q�
&   Add#��Z& 
��������� $��1��  LHelpBtn#��[ .���� -   ' ��Name$' 	TBkCancel��(   Cancel#��Z(  	 
TBkHelpBtn#��[	 