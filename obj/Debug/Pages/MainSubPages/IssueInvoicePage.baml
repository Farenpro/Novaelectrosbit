   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      9    3Novaelectrosbit.Pages.MainSubPages.IssueInvoicePage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      2res(clr-namespace:Novaelectrosbit.Properties  5      .s&clr-namespace:System;assembly=mscorlib  5      $	��750��5      $	��750��6      FontMain  N� 
FontFamily#  [  5	      .��5
      � $��0,0,7,0q�6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� *   $Novaelectrosbit.Properties.Resources   IssueInvoice#��Z 6   $	��5,0q�6@    	 LHead#��[ 6M   �� 5   
   -   5         ��Name$ BtnAutoIssue��5      $��1��6'   $��5q�64      	AutoIssue#��Z 6?   
�������6   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ DGRequisites��5      $��2��6)   $��5q�66   
�������
��� ���
���   �   AutoGenerateColumns .     CanUserAddRows .     SelectionUnit$ FullRow=�6�   	   CanUserDeleteRows	 .  
   
IsReadOnly
 .  �� SelectedValuePath$ PersonalAccount��5   ?      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 6%      Header$	 ЛC��62   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *PersonalAccount+  5      $
 auto 6%   $ ФИО��62    6?   �� *
FIOOwner+  5      $
 auto 6%   $ Тек. показ.��62    6G   �� *NowMR+  5      $
 auto 6%   $" Дата тек. показ.��62    6L   �� *	NowMRDate+  5      $
 auto 6%   $ Пред. показ.��62    6H   �� *LastMR+  5      $
 auto 6%   $$ Дата пред. показ.��62    6M   �� *
LastMRDate+  5      $
 auto 6%   $, &Оплата текущий месяц��62    6P   �� *
FinalStr+4  .System.Windows.Controls.DataGridTemplateColumn  5      $ * 6)   $0 *Выставить счет вручную��63      CellTemplate 5      �� 5      .R�5      �� $ BtnIssueInvoiceManually��6%   -   5        $��5q�5   F   $	��Top=�6m      ManuallyIssue#��Z 6�     SecondaryHueMidBrush#���  6�   
���   �$��1q�6$  +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�5    %   {�5   Q   �� *Issue+5!      5"      5$         ColumnHeaderStyle 5&      �� 5'       �� 
TargetType=	  7System.Windows.Controls.Primitives.DataGridColumnHeader" 	 6   .�5(      ��  �� Property � �� �� Value
 �   �63   5)         	CellStyle 5+      �� 5,      *
  $System.Windows.Controls.DataGridCell" 
 6    �� Triggers 5-      P� 5.       P� Property �@
 
IsSelected P� Value . . �5/      ��  � ��
 � ���6<   50      52      54      55      56      