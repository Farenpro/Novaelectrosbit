   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      3    -Novaelectrosbit.Pages.MainSubPages.PerAccPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      8res(clr-namespace:Novaelectrosbit.Properties     5      $	��594��5      $	��760��6      FontMain  N� 
FontFamily#  [  5      .��5      � $��0,0,9,0q�6    � RowDefinitions 5	   
   �� 5
      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   � $��0��6   $	��200��6   ��5      �� 5       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,0&�67   .��5      �  � Color$ #2C4357��6#    � Offset$ 0Q�63   � 5      $ #1C5071��6#   $	 0.5Q�63   � 5      $ #076194��6#   $ 1Q�63   5       � ColumnDefinitions 5      �� 5      $
��auto �6#   �� 5      $
��auto �6#    5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    .+�5!      �� $��5,0,0,0q�6    �� Orientation$ 
Horizontal=�6*   .+�5"      �� $��60��6   $��60��6$   $-��'/Resources/NovaelectrosbitShortLOGO.png��6/   �� 5#       �� ContentStringFormat$" Лицевой счет: {0}��6G     
LWhiteText#��[ 6o   ��6   �� *RequisitesPersonalAccount+6o   5$      �� 5%      $��1��6   $��18(�6B   #��[ 6P   ��6!   �� *ShortAddress+6P   �� 5&      $��2��6   $��Bottom=�6!     
LLGrayText#��[ 6Z   ��6<   �� *	StatusStr+6Z   �� 5'      $��2��6   $��1��6!   $��Bottom=�61   #��[ 6i   ��6L   �� *
DTStatus+6i   �� 5(      $��3��6   $��5,0,0,0q�6&   $ 
Horizontal=�67   .+�5)      �� $��Center=�6   	 �� Padding$	 5,0,0,0q�67   
 �� TextAlignment$
 Center=�6I   
�������$��	Underline{�6s   $��21(�6�   �� 5*      �6   �� *BalanceAfterPay+ �� Mode$ OneWay=���6H   �� *BalanceColor+ �� 5+      *   $Novaelectrosbit.Properties.Resources
   Rub#�Z 6   5,      �� 5-      -   5         ��Name$ BtnBalanceRefresh��5-      
������ 
�������$��0q�6�   
������ ��64   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ Refresh=�   Size$ 20X�6�   5.      �� 5/      $��3��6   $��1��6!   $ 
{0} дня��6N   $��21(�6n   #��[ 6|   ��61   �� *
MREnding+6|   �� 50      -   5        $ BtnPay��50      $��4��6%   $��5q�62   
   Pay#��Z 6=   
�������6y   �� 51      -   5        $ BtnTransferMR��51      $��4��6,   $��1��69   $��5q�6I      
TransferMR#��Z 6T   
�������6�   52      �� 53   
   -   5         ��Name$ 
TCSubPages��53      $��1��6)   .  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ 
PrimaryMid=�6e      
Background
 �����.@�54      ��    History#��Z 6   �� 55         PerAccRequisites#��Z 6   56      57      �� 58   
   $��2��6   $��5q�6$   $	��470��6/   ��. $
��Auto=�6a   .��59       � -   5          �Name$ PerAccPageFrame��59        � NavigationUIVisibility$ Hidden=�6-   5:      5;      5<      