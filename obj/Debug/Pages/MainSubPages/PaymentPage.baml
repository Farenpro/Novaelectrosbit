   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      4    .Novaelectrosbit.Pages.MainSubPages.PaymentPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      8res(clr-namespace:Novaelectrosbit.Properties     5      $	��594��5      $	��760��6      FontMain  N� 
FontFamily#  [  5      .��5      � $��0,0,9,0q�6    � RowDefinitions 5	   
   �� 5
      $
��auto �6   �� 5      $
��auto �6   �� 5      $	��1.5 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� -   5         ��Name$ BtnMainPageBack��5      $
��Left=�6*   *   $Novaelectrosbit.Properties.Resources   Payment#��Z 6L   $��20(�6�     SweetWhiteBlue#��[ 6�   $��0q�5      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 0��6%   �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6#     PColorLGray#��[ 6<   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  $��20q�6&   $��40��62   $��40��6=      Kind$ HomeCity=�6I     SecondaryHueMidBrush#���  6Z   �� 5      $��Center=�6    	 LHead#��[ 6P   ��6/   �� *ShortAddress+6P   5      � 5   
   $��2��6   
�������6   �� 5   
   $��3��6   $ 
Horizontal=�6"   .+�5      �� $��30��6   $��60��6    $��	15,0,20,0q�6+   $2��,/Resources/NovaelectrosbitShortLOGOBlack.png��6>   �� 5      .+�5      �� $
��Left=�6      OOONES#��Z 63   #���  6]   �� 5       �� ContentStringFormat$% Лицевой счет: №{0}��6F   ��6   �� *RequisitesPersonalAccount+6F   5      5      � 5   
   $��4��6   	 � ColumnDefinitions	 5      �� 5       $
��auto �6#   �� 5!      $
��auto �6#    5#      �� 5$      $
��auto �6    �� 5%      $
��auto �6    �� 5&      $
��auto �6    �� 5'      $
��auto �6    �� 5(      $
��auto �6    �� 5)      $
��auto �6    �� 5*      $
��auto �6    .+�5,      �� 
   	EmailBill#��Z
 6     LDescription#��[ 6A   �� 5-      -   5         ��Name$ 	TBoxEmail��5-      $��1��6)   $	��5,0q�66   $
��Left=�6C   $	��300��6^      RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# Z 6m   
���   � ! MaterialDesignOutlinedTextBox#��[ 5.   &   ��5-   �   �� *Email+ �� Mode$ OneTime=�5.   &   �� 5/      $��1��6      	PayAdvice#��Z 6$   $��9(�6Q   �� 50      $��1��6   $��1��6&   $ Vertical=�66   .+�51      �� $��0,10,0,0q�6      PayQuestion#��Z 6*   $��9(�6Y   �� 52      -   5         ��Name$ 
AddRecSumm��52         RecSumm#��Z 60   $��Center=�6X     
TBkHelpBtn#��[ 6�   53      �� 54      $��3��6   $��1��6&   $ Vertical=�66   .+�55      �� $��3��6   $��1��6%      LastMR#��Z 65   #��[ 6_   $��Center=�6�   �� 56      $��4��6   $��1��6)    " MaterialDesignCaptionTextBlock#��[ 6X   $��Center=�6�   ��69   �� *LastMRAndDate+6�   �� 57      $��5��6   $��1��6%      RecToPaySumm#��Z 65   #��[ 6e   $��Center=�6�   �� 58      $��6��6   $��1��6)   #��[ 6P   $��Center=�6�   ��69   �� *Final+6�   59      �� 5:      $��3��6   $��5,20,0,0q�6!      	FinalSumm#��Z 63   #��[ 6`   �� 5;      -   5        $ TBoxPaySumm��5;      $��4��6+   $	��5,0q�68   $
��Left=�6E   $	��300��6`   # Z 6o   
���   �#��[ 5<   &   �� 5=      -   5         ��Name$ 	CBoxAgree��5=      $��5��6*   $
��5,20q�67      PayAgree#��Z 6E   #���  5>       (	 $MaterialDesignUserForegroundCheckBox#��[	 6L   �� 5?      -   5        $ BtnPay��5?      $��6��6%   $��5q�62      PayBankCard#��Z 6=   
�������{�.  6�   5@      5A      5B      