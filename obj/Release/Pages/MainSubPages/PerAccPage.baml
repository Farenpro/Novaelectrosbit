   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  3    -Novaelectrosbit.Pages.MainSubPages.PerAccPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     8res(clr-namespace:Novaelectrosbit.Properties     $	��594��$	��760��   FontMain  N� 
FontFamily#  [  .��� $��0,0,9,0q� � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto �.+�� $��0��$	��200������  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,0&�.���  � Color$ #2C4357�� � Offset$ 0Q�� $ #1C5071��$	 0.5Q�� $ #076194��$ 1Q� � ColumnDefinitions �� $
��auto ��� $
��auto � �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $��* �.+��� $��5,0,0,0q� �� Orientation$ 
Horizontal=�.+��� $��60��$��60��$-��'/Resources/NovaelectrosbitShortLOGO.png����  �� ContentStringFormat$" Лицевой счет: {0}��  
LWhiteText#��[ ���� *RequisitesPersonalAccount+�� $��1��$��18(�#��[ ���� *ShortAddress+�� $��2��$��Bottom=�  
LLGrayText#��[ ���� *	StatusStr+�� $��2��$��1��$��Bottom=�#��[ ���� *
DTStatus+�� $��3��$��5,0,0,0q�$ 
Horizontal=�.+��� $��Center=�	 �� Padding$	 5,0,0,0q�
 �� TextAlignment$
 Center=�
�������$��	Underline{�$��21(��� ��� *BalanceAfterPay+ �� Mode$ OneWay=����� *BalanceColor+ �� *   $Novaelectrosbit.Properties.Resources
   Rub#�Z �� -    ��Name$ BtnBalanceRefresh��
������ 
�������$��0q�
������ ��0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ Refresh=�   Size$ 20X��� $��3��$��1��$ 
{0} дня��$��21(�#��[ ���� *
MREnding+�� -   $ BtnPay��$��4��$��5q�
   Pay#��Z 
��������� -   $ BtnTransferMR��$��4��$��1��$��5q�   
TransferMR#��Z 
��������� -    ��Name$ 
TCSubPages��$��1��.  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ 
PrimaryMid=�   
Background
 �����.@���    History#��Z ��    PerAccRequisites#��Z �� $��2��$��5q�$	��470����. $
��Auto=�.�� � -     �Name$ PerAccPageFrame��  � NavigationUIVisibility$ Hidden=�