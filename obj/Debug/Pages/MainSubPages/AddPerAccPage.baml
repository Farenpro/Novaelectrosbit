   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      6    0Novaelectrosbit.Pages.MainSubPages.AddPerAccPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      2res(clr-namespace:Novaelectrosbit.Properties  5      .s&clr-namespace:System;assembly=mscorlib  5      $	��594��5      $	��760��6      FontMain  N� 
FontFamily#  [  5	      .��5
      � $��0,0,9,0q�6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� -   5         ��Name$ BtnMainPageBack��5      $
��Left=�6*   *   $Novaelectrosbit.Properties.Resources   ConnectPerAcc#��Z 6L   $��0q�5      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 0��6%   $��20(�6R     SweetWhiteBlue#��[ 6`   � 5   
   $��1��6   $��5,10,0,0q�6    � ColumnDefinitions 5      �� 5      $
��auto �6#   �� 5      $
��auto �6#    5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    .+�5      ��    PerAccNumber#��Z 6     LDescription#��[ 6D   %  Xceed.Wpf.Toolkit.MaskedTextBox  5      -   5          Name$ TBoxPerAccNumber��5   !   $��1��6;   $
��Left=�6H   $	��5,0q�6c   $	��305��6p      RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist	   
HelperText#	 Z 6   
   Mask$
 00000-000-00��6�   4  .Xceed.Wpf.Toolkit.Primitives.ValueRangeTextBox   BeepOnError .    ValueDataType" ��6�   
���   � ! MaterialDesignOutlinedTextBox#��[ 5   3   '  !MaterialDesignThemes.Wpf.PackIcon  5       $��1��6&   $��1��63   $��30��6C   $��30��6N      PerAccToolTip � ToolTip# Z 6Z     IconInfo#��[ 6�   �� 5!      $��2��6   $��5,20,0,0q�6!      PerAccRelationStatus#��Z 63   #��[ 6k   �� 5"      -   5         ��Name$ CBoxResponsiblePerson��5"      $��3��66   $	��5,0q�6C   $
��Left=�6P   $	��300��6k    �� DisplayMemberPath$
 Name��6z   
���   � " MaterialDesignOutlinedComboBox#��[ 5#   &   �� 5$      -   5        $ 
BtnConnect��5$      $��4��6)   $��10q�66      Connect#��Z 6B   
�������6�   5%      5&      5'      