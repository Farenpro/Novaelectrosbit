   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  4    .Novaelectrosbit.Pages.MainSubPages.PaymentPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     8res(clr-namespace:Novaelectrosbit.Properties     $	��594��$	��760��   FontMain  N� 
FontFamily#  [  .��� $��0,0,9,0q� � RowDefinitions �� $
��auto ��� $
��auto ��� $	��1.5 ��� $
��auto ��� $
��auto �.+��� -    ��Name$ BtnMainPageBack��$
��Left=�*   $Novaelectrosbit.Properties.Resources   Payment#��Z $��20(�  SweetWhiteBlue#��[ $��0q�+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 0���� $��1�� �� Orientation$ 
Horizontal=�  PColorLGray#��[ .+�'  !MaterialDesignThemes.Wpf.PackIcon  $��20q�$��40��$��40��   Kind$ HomeCity=�  SecondaryHueMidBrush#���  �� $��Center=� 	 LHead#��[ ���� *ShortAddress+� $��2��
��������� $��3��$ 
Horizontal=�.+��� $��30��$��60��$��	15,0,20,0q�$2��,/Resources/NovaelectrosbitShortLOGOBlack.png���� .+��� $
��Left=�   OOONES#��Z #���  ��  �� ContentStringFormat$% Лицевой счет: №{0}������ *RequisitesPersonalAccount+� $��4��	 � ColumnDefinitions	 �� $
��auto ��� $
��auto � �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+��� 
   	EmailBill#��Z
   LDescription#��[ �� -    ��Name$ 	TBoxEmail��$��1��$	��5,0q�$
��Left=�$	��300��   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z 
���   � ! MaterialDesignOutlinedTextBox#��[ ���� *Email+ �� Mode$ OneTime=��� $��1��   	PayAdvice#��Z $��9(��� $��1��$��1��$ Vertical=�.+��� $��0,10,0,0q�   PayQuestion#��Z $��9(��� -    ��Name$ 
AddRecSumm��   RecSumm#��Z $��Center=�  
TBkHelpBtn#��[ �� $��3��$��1��$ Vertical=�.+��� $��3��$��1��   LastMR#��Z #��[ $��Center=��� $��4��$��1�� " MaterialDesignCaptionTextBlock#��[ $��Center=����� *LastMRAndDate+�� $��5��$��1��   RecToPaySumm#��Z #��[ $��Center=��� $��6��$��1��#��[ $��Center=����� *Final+�� $��3��$��5,20,0,0q�   	FinalSumm#��Z #��[ �� -   $ TBoxPaySumm��$��4��$	��5,0q�$
��Left=�$	��300��# Z 
���   �#��[ �� -    ��Name$ 	CBoxAgree��$��5��$
��5,20q�   PayAgree#��Z #���   (	 $MaterialDesignUserForegroundCheckBox#��[	 �� -   $ BtnPay��$��6��$��5q�   PayBankCard#��Z 
�������{�.  