   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  9    3Novaelectrosbit.Pages.MainSubPages.MeterReadingPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     8res(clr-namespace:Novaelectrosbit.Properties     $	��594��$	��760��   FontMain  N� 
FontFamily#  [  .��� $��0,0,9,0q� � RowDefinitions �� $
��auto ��� $
��auto ��� $	��1.5 ��� $
��auto ��� $
��auto �.+��� -    ��Name$ BtnMainPageBack��$
��Left=�*   $Novaelectrosbit.Properties.Resources   MRPerAcc#��Z $��20(�  SweetWhiteBlue#��[ $��0q�+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 0���� $��1�� �� Orientation$ 
Horizontal=�  PColorLGray#��[ .+�'  !MaterialDesignThemes.Wpf.PackIcon  $��20q�   Kind$ HomeCity=�$��40��$��40��  SecondaryHueMidBrush#���  �� $��Center=� 	 LHead#��[ ���� *ShortAddress+� $��2��
��������� $��3��$ 
Horizontal=�.+��� $��30��$��60��$��	15,0,20,0q�$2��,/Resources/NovaelectrosbitShortLOGOBlack.png���� .+��� $
��Left=�   OOONES#��Z #���  ��  �� ContentStringFormat$% Лицевой счет: №{0}������ *RequisitesPersonalAccount+� $��4��	 � ColumnDefinitions	 �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto � �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+��� $��20q�$ 
Horizontal=�.+�  $��30��$��30��$ Counter=��� $> 8Счетчик №{0} - Электроснабжение������ *
CounterNum+�� $��1��$��20,0,0,0q�$
��Left=�
   
InputMRint#��Z
 �� $��2��$��20,0,0,0q�   MRNow#��Z   LDescription#��[ �� $��1��$��1��$��20,0,0,0q�   Tariff#��Z #��[ �� $��2��$��1��$��20,0,0,0q����� *
TariffName+�� -    ��Name$ TBoxMR��$��3��$��20,0,0,0q�   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z 
���   � ! MaterialDesignOutlinedTextBox#��[ �� $��3��$��1��$��20,0,0,0q�$E ?Последние переданные
показания, {0}��#��[ ���� *
LastMRDate+�� $��4��$��1������ *LastMR+�� -   $ BtnTransferMR��$��4��$��20q�$��Center=�   TransferMRCaps#��Z 
������� ! MaterialDesignFlatMidBgButton#��[ 