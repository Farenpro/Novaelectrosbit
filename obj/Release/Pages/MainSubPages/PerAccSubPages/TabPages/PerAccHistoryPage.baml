   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  R    LNovaelectrosbit.Pages.MainSubPages.PerAccSubPages.TabPages.PerAccHistoryPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  2res(clr-namespace:Novaelectrosbit.Properties  $	��581��   FontMain  N� 
FontFamily#  [  .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $	��1.5 ��� $
��auto ��� $	��1.5 ��� $
��auto �.+���   SweetWhiteBlue#��[ .+��� *   $Novaelectrosbit.Properties.Resources   History#��Z  	 LHead#��[ �� -    ��Name$ 
TCSubPages��$��1��.  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ 
PrimaryMid=�   
Background
 �����.@���    Indications#��Z ��    Payments#��Z ��    Receipts#��Z � $��2��
���   ��� -   	 ��Name$	 
CBoxPeriod��$��3��$��	5,10,5,10q�
 �� SelectedIndex$
 0��
���   � " MaterialDesignOutlinedComboBox#���  .@���    Last3Months#��Z ��    Last6Months#��Z ��    LastYear#��Z ��    AllTime#��Z � $��4��
��������� -    ��Name$ LNoData��$��5��   NoData#��Z $y�	Collapsed=�  LDescription#��[ &   System.Windows.Controls.DataGrid  -     Name$
 DGMR��$��5��$��5q�
�������
��� ���   HeadersVisibility$
 None=�   AutoGenerateColumns .     CanUserAddRows .     SelectionUnit$
 Cell=�   SelectionMode$ Single=�   CanUserDeleteRows .     
IsReadOnly . $y�	Collapsed=�   Columns 4  .System.Windows.Controls.DataGridTemplateColumn     CellTemplate �� .R�'  !MaterialDesignThemes.Wpf.PackIcon  $
��auto��   Kind$ CalendarRange=�  SecondaryHueMidBrush#���  0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding �� *IndicationsDateStr+  $ *  �� *
TariffName+  $ *  �� *IndicationsStr+   	CellStyle ��  �� 
TargetType*
  $System.Windows.Controls.DataGridCell" 
   �� Triggers  P� ! P� Property! �@
 
IsSelected" P� Value" . . ��� # �� Property# � ��$ �� Value
$ � ���  -   $ 
DGPayments��$��5��$��5q�
�������
��� ���$
 None=� .   .  $
 Cell=� .   . $y�	Collapsed=�    �� .R�  $
��auto��$ CalendarRange=�#���    $
 auto  �� *
PayDateStr+  $ *  �� *
Credited+  $ *  �� *PayAmountStr+ �� " 
   P� ! �@
 
IsSelected" . . ��� # � ��
$ � ���  -   $ 
DGReceipts��$��5��$��5q�
�������
��� ���$
 None=� .   .  $ FullRow=� .   . $y�	Collapsed=�% �� SelectedValuePath$% PayDate��    �� .R�  $ CalendarRange=�#���    $ *  �� *
PayDateStr+  $ *  �� *BalanceAfterPayStr+&   	CellStyle& �� " 
 .��� # � ��$ �� *BalanceBrush+   �� .R��� ' ��Name$' BtnPrintReceipt��-   $��5q�$	��Top=�(   PrintReceipt#��Z( #���  
������ $��0q�
�������+  %MaterialDesignThemes.Wpf.ShadowAssist)   ShadowDepth$) Depth0=� �� " 
   P� ! �@
 
IsSelected" . . ��� # � ��
$ � ���