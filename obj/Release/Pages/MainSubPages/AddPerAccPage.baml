   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 6    0Novaelectrosbit.Pages.MainSubPages.AddPerAccPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  2res(clr-namespace:Novaelectrosbit.Properties  .s&clr-namespace:System;assembly=mscorlib  $	��594��$	��760��   FontMain  N� 
FontFamily#  [  .��� $��0,0,9,0q� � RowDefinitions �� $
��auto ��� $
��auto �.+��� -    ��Name$ BtnMainPageBack��$
��Left=�*   $Novaelectrosbit.Properties.Resources   ConnectPerAcc#��Z $��0q�+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 0��$��20(�  SweetWhiteBlue#��[ � $��1��$��5,10,0,0q� � ColumnDefinitions �� $
��auto ��� $
��auto � �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+���    PerAccNumber#��Z   LDescription#��[ %  Xceed.Wpf.Toolkit.MaskedTextBox  -     Name$ TBoxPerAccNumber��$��1��$
��Left=�$	��5,0q�$	��305��   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist	   
HelperText#	 Z 
   Mask$
 00000-000-00��4  .Xceed.Wpf.Toolkit.Primitives.ValueRangeTextBox   BeepOnError .    ValueDataType" ��
���   � ! MaterialDesignOutlinedTextBox#��[ '  !MaterialDesignThemes.Wpf.PackIcon  $��1��$��1��$��30��$��30��   PerAccToolTip � ToolTip# Z   IconInfo#��[ �� $��2��$��5,20,0,0q�   PerAccRelationStatus#��Z #��[ �� -    ��Name$ CBoxResponsiblePerson��$��3��$	��5,0q�$
��Left=�$	��300�� �� DisplayMemberPath$
 Name��
���   � " MaterialDesignOutlinedComboBox#��[ �� -   $ 
BtnConnect��$��4��$��10q�   Connect#��Z 
�������