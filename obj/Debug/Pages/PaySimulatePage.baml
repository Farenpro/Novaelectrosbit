   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      +    %Novaelectrosbit.Pages.PaySimulatePage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5      2res(clr-namespace:Novaelectrosbit.Properties  5      .s&clr-namespace:System;assembly=mscorlib  5      $	��600��5	      $	��590��6   $	��600��6&   $	��600��63      FontMain  N� 
FontFamily#  [  5
      *   $Novaelectrosbit.Properties.Resources   PayTitle N� Title# Z 6.   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $	��1.5 �6   �� 5      $
��auto �6   �� 5      $	��1.5 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��Center=�6.   $��0,0,0,10q�6K   .+�5      �� $&�� /Resources/BankLogos/GPBLOGO.png��6   �� 5      
   GPB#��Z 6   $��Center=�6;   $��22(�6V     SecondaryHueDarkBrush#���  6d   $��Impact)�6�   5      � 5   
   $��1��6   
�������6   � 5   
   -   5         �Name$ GridPayInfo��5      $��2��6$   $��Center=�61   $��	0,10,0,10q�6N    � ColumnDefinitions 5      �� 5      $
��auto �6#   �� 5      $
��auto �6#   �� 5       $
��auto �6#    5"      �� 5#      $
��auto �6    �� 5$      $
��auto �6    .+�5&      A� $��2��6   
�������$��40��64   $��40��6?   
�������6K   �� 5'      $��1��6   
   NES#��Z 6$   $��10(�6K   $��Center=�6Y   �� 5(      -   5        	 ��Name$	 
LRequistes��5(      $��2��6(   $��Center=�68   
 �� ContentStringFormat$ 
 Оплата по ЛС:{0}��6�   $��10(�6�   ��6S   �� *RequisitesPersonalAccount+6�   �� 5)      -   5        $	 LSummPay��5)      $��1��6&   $��2��63   $
 {0} ₽��6_   #���  6}   $��Impact)�6�   $��16(�6�   ��6C   �� *	SummPay+6�   5*      � 5+   
   $��3��6   
�������6   #  MaterialDesignThemes.Wpf.Card  5,   
   -   5          Name$ mDCardPayCardBack��5,      $��4��69   $��Center=�6F   $��250,50,10,0q�6c   $	��300��6x   
�������.��5-      �  5.      �� 5/      $��30 �6$   �� 50      $��30 �6$   �� 51      $
��auto �6$   .+�53      � 
������ 6   � 54      $��1��6   
�������6$   �� 55      $��2��6   $��Right=�6*   $��0,0,0,20q�6F   .+�56      %  Xceed.Wpf.Toolkit.MaskedTextBox  -   5          Name$ TBoxCVC��56   )   $��5,5,5,5q�6:   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	CVC2/CVV2��6K      Mask$	 000��6�   4  .Xceed.Wpf.Toolkit.Primitives.ValueRangeTextBox   BeepOnError .    IncludeLiteralsInValue .     ValueDataType" ��57       
���   �   
Background
 ����� ! MaterialDesignOutlinedTextBox#��[ 6�      Value 56   v   �� *
CardCVV2+ �� UpdateSourceTrigger$ PropertyChanged=�57   �   �� 58         PayCardDesc#��Z 6   $��8(�6K     LDescription#��[ 6X   59      5:      5;        5<   
   -   5        $ mDCardPayCardFront��5<      $��4��6:   $��10q�6G   $��Center=�6S   $��Center=�6p   
�������.��5=      �  5>      �� 5?      $
��auto �6$   �� 5@      $
��auto �6$   �� 5A      $
��auto �6$   .+�5C      �� $��Center=�6   $ 
Horizontal=�6:   .+�5D      �� $&�� /Resources/BankLogos/MIRLOGO.png��6     
ImgPayLogo#��[ 6F   �� 5E      $%��/Resources/BankLogos/MCLOGO.png��6   #��[ 6E   �� 5F      $*��$/Resources/BankLogos/MAESTROLOGO.png��6   #��[ 6J   �� 5G      $'��!/Resources/BankLogos/VISALOGO.png��6   #��[ 6G   5H        5I      -   5        $ TBoxCardNum��5I   %   $��1��6:   $	��5,0q�6G   $
��Left=�6T   $	��300��6o      CardNum# Z 6~   $ 0000 0000 0000 0000��6�    .  .  " ��5J   %   
���   �
 �����#��[ 6�    5I   �   �� *	CardNum+$ PropertyChanged=�5J   �   �� 5K      $��2��6   $��5,15,0,5q�6*   $��Center=�6<   $ 
Horizontal=�6Y   .+�5L        -   5        $ TBoxCardMonth��5L   )   $��5q�6@      Month# Z 6K   $ 00��6�    .  .  " ��5M      
���   �
 �����#��[ 6�    5L   �   �� *	CardMonth+$ PropertyChanged=�5M   �   �� 5N      $��/��6   $��Center=�6(     5O      -	   5        $ TBoxCardYear��5O   )   $��5q�6?      Year# Z 6J   $ 00��6�    .  .  " ��5P      
���   �
 �����#��[ 6�    5O   �   �� *
CardYear+$ PropertyChanged=�5P   �   5Q      5R      5S        5T   
   -
   5        $ mDCardFinal��5T      $��4��63   $��10q�6@   $��Center=�6L   $��Center=�6i   
�������$y�	Collapsed=�6�   .��5U      �  5V      �� 5W      $
��auto �6$   �� 5X      $
��auto �6$   �� 5Y      $
��auto �6$   �� 5Z      $
��auto �6$   �� 5[      $
��auto �6$   �� 5\      $
��auto �6$   �� 5]      $
��auto �6$   �� 5^      $
��auto �6$   �� 5_      $
��auto �6$    5a      �� 5b      $
��auto �6'   �� 5c      $
��auto �6'   .+�5e      �� $��2��6      PayCompleteSuccess#��Z 6,   $��14(�6b   
��� � �  LPayInfo#��[ 6�   �� 5f      $��1��6      Seller#��Z 6%   #��[ 6O   �� 5g      $��1��6   $��2��6%   #��Z 65     	LPayInfo2#��[ 6\   �� 5h      $��2��6      Description#��Z 6%   #��[ 6T   �� 5i      -   5        $	 LDesc��5i      $��2��6'   $��2��64   #��[ 6D   �� 5j      $��3��6   #��Z 6%   #��[ 6P   �� 5k      -   5        $	 LCardNumSecured��5k      $��3��61   $��2��6>   #��[ 6N   �� 5l      $��4��6      TransID#��Z 6%   #��[ 6P   �� 5m      -   5        $	 LTransID��5m      $��4��6*   $��2��67   #��[ 6G   �� 5n      $��5��6      DateTime#��Z 6%   #��[ 6Q   �� 5o      -   5        $	 LDateTimeNow��5o      $��5��6.   $��2��6;   #��[ 6K   �� 5p      $��6��6      AuthCode#��Z 6%   #��[ 6Q   �� 5q      -   5        $	 	LAuthCode��5q      $��6��6+   $��2��68   #��[ 6H   �� 5r      $��7��6   
   RRN#��Z 6%   #��[ 6L   �� 5s      -   5        $
	 LRRN��5s      $��7��6&   $��2��63   #��[ 6C   �� 5t      $��8��6       Summ#��Z  6%    	 LHead#��[ 6M   $��12(�6l   �� 5u      -   5        $	 
LSummPrice��5u      $��8��6,   $��2��69   #��[ 6I   5v      5w      �� 5x   
   -   5        ! ��Name$! 
ImgGifLoad��5x      $��4��6$   $	��217��61   $y�	Collapsed=�6A   "  WpfAnimatedGif.ImageBehavior"   RepeatBehavior$" 3x��6X   6~   �� 5y   
   -   5        $! ImgGifSuccess��5y      $��4��6'   $	��217��64   $y�	Collapsed=�6D   $" 1x��6[   6�   �� 5z   
   -   5        # ��Name$# 	SPBtnsPay��5z      $��5��6(     	SPBtnsPay#��[ 65   .+�5{      �� -   5        $ ��Name$$ 	BtnCancel��5{      %   
CancelCaps#��Z% 6(   
�������
������ 
�������6�   �� 5|      -   5        $$ BtnPay��5|      $��20,0,0,0q�6%   &   PayCaps#��Z& 67   #���  6b   
������ 
�������6�   5}      �� 5~   
   -   5        $# SPBtnsFinal��5~      $��5��6*   $y�	Collapsed=�67   #��[ 6N   .+�5      �� -   5        $$ BtnPrint��5      '   Print#��Z' 6'   
�������
������ 
�������6�   �� 5�      -   5        $$ BtnBack��5�      $��20,0,0,0q�6&   (   PayBack#��Z( 68   #���  6c   
������ 
�������6�   5�      �� 5�   
   $��6��6   $��0,20,0,0q�6   $��Center=�6/   $��10(�6L   )   PayProtectInfo#��Z) 6Z   #��[ 6�   �� 5�   
   $��7��6   $ 
Horizontal=�6"   $��Center=�6;   .+�5�      �� $+��%/Resources/BankLogos/MIRCheckLOGO.png��6    	 ImgPayLogo2#��[	 6C   �� 5�      $+��%/Resources/BankLogos/PCICheckLOGO.png��6   #��[	 6C   �� 5�      $*��$/Resources/BankLogos/MCCheckLOGO.png��6   #��[	 6B   �� 5�      $,��&/Resources/BankLogos/VISACheckLOGO.png��6   #��[	 6D   5�      �� 5�   
   $��8��6   $��Center=�6   $��10(�6:   *   BankInfo#��Z* 6H   #��[ 6t   5�      5�      