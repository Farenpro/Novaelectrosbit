   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 9    3Novaelectrosbit.Pages.MainSubPages.IssueInvoicePage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  2res(clr-namespace:Novaelectrosbit.Properties  .s&clr-namespace:System;assembly=mscorlib  $	��750��$	��750��   FontMain  N� 
FontFamily#  [  .��� $��0,0,7,0q� � RowDefinitions �� $
��auto ��� $
��auto ��� $��* �.+��� *   $Novaelectrosbit.Properties.Resources   IssueInvoice#��Z $	��5,0q� 	 LHead#��[ �� -    ��Name$ BtnAutoIssue��$��1��$��5q�   	AutoIssue#��Z 
�������&   System.Windows.Controls.DataGrid  -     Name$ DGRequisites��$��2��$��5q�
�������
��� ���
���   �   AutoGenerateColumns .     CanUserAddRows .     SelectionUnit$ FullRow=�	   CanUserDeleteRows	 .  
   
IsReadOnly
 .  �� SelectedValuePath$ PersonalAccount��   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto    Header$	 ЛC��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *PersonalAccount+  $
 auto $ ФИО�� �� *
FIOOwner+  $
 auto $ Тек. показ.�� �� *NowMR+  $
 auto $" Дата тек. показ.�� �� *	NowMRDate+  $
 auto $ Пред. показ.�� �� *LastMR+  $
 auto $$ Дата пред. показ.�� �� *
LastMRDate+  $
 auto $, &Оплата текущий месяц�� �� *
FinalStr+4  .System.Windows.Controls.DataGridTemplateColumn  $ * $0 *Выставить счет вручную��   CellTemplate �� .R��� $ BtnIssueInvoiceManually��-   $��5q�$	��Top=�   ManuallyIssue#��Z   SecondaryHueMidBrush#���  
���   �$��1q�+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�{��� *Issue+   ColumnHeaderStyle ��  �� 
TargetType=	  7System.Windows.Controls.Primitives.DataGridColumnHeader" 	 .���  �� Property � �� �� Value
 �   �   	CellStyle �� *
  $System.Windows.Controls.DataGridCell" 
  �� Triggers P�  P� Property �@
 
IsSelected P� Value . . ���  � ��
 � ���