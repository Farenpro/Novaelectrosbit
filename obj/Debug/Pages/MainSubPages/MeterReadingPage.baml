   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      9    3Novaelectrosbit.Pages.MainSubPages.MeterReadingPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      8res(clr-namespace:Novaelectrosbit.Properties     5      $	��594��5      $	��760��6      FontMain  N� 
FontFamily#  [  5      .��5      � $��0,0,9,0q�6    � RowDefinitions 5	   
   �� 5
      $
��auto �6   �� 5      $
��auto �6   �� 5      $	��1.5 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� -   5         ��Name$ BtnMainPageBack��5      $
��Left=�6*   *   $Novaelectrosbit.Properties.Resources   MRPerAcc#��Z 6L   $��20(�6�     SweetWhiteBlue#��[ 6�   $��0q�5      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 0��6%   �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6"     PColorLGray#��[ 6;   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  $��20q�6&      Kind$ HomeCity=�62   $��40��6B   $��40��6M     SecondaryHueMidBrush#���  6Y   �� 5      $��Center=�6    	 LHead#��[ 6P   ��6/   �� *ShortAddress+6P   5      � 5   
   $��2��6   
�������6   �� 5   
   $��3��6   $ 
Horizontal=�6"   .+�5      �� $��30��6   $��60��6    $��	15,0,20,0q�6+   $2��,/Resources/NovaelectrosbitShortLOGOBlack.png��6>   �� 5      .+�5      �� $
��Left=�6      OOONES#��Z 63   #���  6]   �� 5       �� ContentStringFormat$% Лицевой счет: №{0}��6F   ��6   �� *RequisitesPersonalAccount+6F   5      5      � 5   
   $��4��6   	 � ColumnDefinitions	 5      �� 5       $
��auto �6#   �� 5!      $
��auto �6#   �� 5"      $
��auto �6#   �� 5#      $
��auto �6#    5%      �� 5&      $
��auto �6    �� 5'      $
��auto �6    �� 5(      $
��auto �6    �� 5)      $
��auto �6    �� 5*      $
��auto �6    .+�5,      �� $��20q�6   $ 
Horizontal=�6%   .+�5-        $��30��6*   $��30��65   $ Counter=�6A   �� 5.      $> 8Счетчик №{0} - Электроснабжение��67   ��6   �� *
CounterNum+67   5/      �� 50      $��1��6   $��20,0,0,0q�6!   $
��Left=�63   
   
InputMRint#��Z
 6N   �� 51      $��2��6   $��20,0,0,0q�6!      MRNow#��Z 63     LDescription#��[ 6\   �� 52      $��1��6   $��1��6!   $��20,0,0,0q�61      Tariff#��Z 6C   #��[ 6m   �� 53      $��2��6   $��1��6!   $��20,0,0,0q�61   ��6C   �� *
TariffName+�� 54      -   5         ��Name$ TBoxMR��54      $��3��6&   $��20,0,0,0q�63      RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z 6E   
���   � ! MaterialDesignOutlinedTextBox#��[ 55      �� 56      $��3��6   $��1��6!   $��20,0,0,0q�61   $E ?Последние переданные
показания, {0}��6b   #��[ 6�   ��6C   �� *
LastMRDate+6�   �� 57      $��4��6   $��1��6!   ��61   �� *LastMR+�� 58      -   5        $ BtnTransferMR��58      $��4��6,   $��20q�69   $��Center=�6E      TransferMRCaps#��Z 6`   
������� ! MaterialDesignFlatMidBgButton#��[ 6�   59      5:      5;      