   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      R    LNovaelectrosbit.Pages.MainSubPages.PerAccSubPages.TabPages.PerAccHistoryPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      2res(clr-namespace:Novaelectrosbit.Properties  5      $	��581��5         FontMain  N� 
FontFamily#  [  5      .��5      �  � RowDefinitions 5	   
   �� 5
      $
��auto �6   �� 5      $
��auto �6   �� 5      $	��1.5 �6   �� 5      $
��auto �6   �� 5      $	��1.5 �6   �� 5      $
��auto �6   .+�5   
   ��   SweetWhiteBlue#��[ 6   .+�5      �� *   $Novaelectrosbit.Properties.Resources   History#��Z 6    	 LHead#��[ 6?   5      �� 5   
   -   5         ��Name$ 
TCSubPages��5      $��1��6)   .  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ 
PrimaryMid=�6e      
Background
 �����.@�5      ��    Indications#��Z 6   �� 5         Payments#��Z 6   �� 5         Receipts#��Z 6   5      � 5   
   $��2��6   
���   �6   �� 5   
   -   5        	 ��Name$	 
CBoxPeriod��5      $��3��6'   $��	5,10,5,10q�64   
 �� SelectedIndex$
 0��6G   
���   � " MaterialDesignOutlinedComboBox#���  6�   .@�5      ��    Last3Months#��Z 6   �� 5         Last6Months#��Z 6   �� 5         LastYear#��Z 6   �� 5         AllTime#��Z 6   5      � 5    
   $��4��6   
�������6   �� 5!   
   -   5         ��Name$ LNoData��5!      $��5��6!      NoData#��Z 6.   $y�	Collapsed=�6X     LDescription#��[ 6o   &   System.Windows.Controls.DataGrid  5"   
   -   5          Name$
 DGMR��5"      $��5��6!   $��5q�6.   
�������
��� ���   HeadersVisibility$
 None=�6`      AutoGenerateColumns .     CanUserAddRows .     SelectionUnit$
 Cell=�6�      SelectionMode$ Single=�6�      CanUserDeleteRows .     
IsReadOnly . $y�	Collapsed=�5#   ?      Columns 5$      4  .System.Windows.Controls.DataGridTemplateColumn  5%         CellTemplate 5&      �� 5'      .R�5(      '  !MaterialDesignThemes.Wpf.PackIcon  $
��auto��66      Kind$ CalendarRange=�6C     SecondaryHueMidBrush#���  6X   5)      5+      0  *System.Windows.Controls.DataGridTextColumn  5,      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 6%   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 62   �� *IndicationsDateStr+  5-      $ * 6%    6/   �� *
TariffName+  5.      $ * 6%    6/   �� *IndicationsStr+   	CellStyle 50      �� 51       �� 
TargetType*
  $System.Windows.Controls.DataGridCell" 
 6     �� Triggers  52      P� 53      ! P� Property! �@
 
IsSelected" P� Value" . . �54      �� # �� Property# � ��$ �� Value
$ � ���6<   55      57      59        5:   
   -   5        $ 
DGPayments��5:      $��5��6'   $��5q�64   
�������
��� ���$
 None=�6g    .   .  $
 Cell=�6�    .   . $y�	Collapsed=�5;   ?    5<        5=       5>      �� 5?      .R�5@        $
��auto��66   $ CalendarRange=�6C   #���  6X   5A      5C        5D      $
 auto 6%    62   �� *
PayDateStr+  5E      $ * 6%    6/   �� *
Credited+  5F      $ * 6%    6/   �� *PayAmountStr+ 5H      �� 5I      " 
 6     5J      P� 5K      ! �@
 
IsSelected" . . �5L      �� # � ��
$ � ���6<   5M      5O      5Q        5R   
   -   5        $ 
DGReceipts��5R      $��5��6'   $��5q�64   
�������
��� ���$
 None=�6f    .   .  $ FullRow=�6�    .   . $y�	Collapsed=�5S   ?   % �� SelectedValuePath$% PayDate��6V    5T        5U       5V      �� 5W      .R�5X        $ CalendarRange=�66   #���  6K   5Y      5[        5\      $ * 6%    6/   �� *
PayDateStr+  5]      $ * 6%    6/   �� *BalanceAfterPayStr+&   	CellStyle& 5^      �� 5_      " 
 6    .�5`      �� # � ��$ 6;   �� *BalanceBrush+5a      5c        5d       5e      �� 5f      .R�5g      �� ' ��Name$' BtnPrintReceipt��6%   -   5        $��5q�5g   >   $	��Top=�6I   (   PrintReceipt#��Z( 6a   #���  6�   
������ $��0q�6�   
�������+  %MaterialDesignThemes.Wpf.ShadowAssist)   ShadowDepth$) Depth0=�5h   %   5i      5k       5m      �� 5n      " 
 6     5o      P� 5p      ! �@
 
IsSelected" . . �5q      �� # � ��
$ � ���6<   5r      5t      5v      5w      5x      