   M S B A M L   `   `   `  ���� J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem +    %Novaelectrosbit.Pages.PaySimulatePage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     X TXceed.Wpf.Toolkit, Version=4.3.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  2res(clr-namespace:Novaelectrosbit.Properties  .s&clr-namespace:System;assembly=mscorlib  $	��600��$	��590��$	��600��$	��600��   FontMain  N� 
FontFamily#  [  *   $Novaelectrosbit.Properties.Resources   PayTitle N� Title# Z .���  � RowDefinitions �� $
��auto ��� $	��1.5 ��� $
��auto ��� $	��1.5 ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+���  �� Orientation$ 
Horizontal=�$��Center=�$��0,0,0,10q�.+��� $&�� /Resources/BankLogos/GPBLOGO.png���� 
   GPB#��Z $��Center=�$��22(�  SecondaryHueDarkBrush#���  $��Impact)�� $��1��
�������� -    �Name$ GridPayInfo��$��2��$��Center=�$��	0,10,0,10q� � ColumnDefinitions �� $
��auto ��� $
��auto ��� $
��auto � �� $
��auto ��� $
��auto �.+�A� $��2��
�������$��40��$��40��
��������� $��1��
   NES#��Z $��10(�$��Center=��� -   	 ��Name$	 
LRequistes��$��2��$��Center=�
 �� ContentStringFormat$ 
 Оплата по ЛС:{0}��$��10(����� *RequisitesPersonalAccount+�� -   $	 LSummPay��$��1��$��2��$
 {0} ₽��#���  $��Impact)�$��16(����� *	SummPay+� $��3��
�������#  MaterialDesignThemes.Wpf.Card  -     Name$ mDCardPayCardBack��$��4��$��Center=�$��250,50,10,0q�$	��300��
�������.���  �� $��30 ��� $��30 ��� $
��auto �.+�� 
������ � $��1��
��������� $��2��$��Right=�$��0,0,0,20q�.+�%  Xceed.Wpf.Toolkit.MaskedTextBox  -     Name$ TBoxCVC��$��5,5,5,5q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	CVC2/CVV2��   Mask$	 000��4  .Xceed.Wpf.Toolkit.Primitives.ValueRangeTextBox   BeepOnError .    IncludeLiteralsInValue .     ValueDataType" ��
���   �   
Background
 ����� ! MaterialDesignOutlinedTextBox#��[    Value �� *
CardCVV2+ �� UpdateSourceTrigger$ PropertyChanged=���    PayCardDesc#��Z $��8(�  LDescription#��[   -   $ mDCardPayCardFront��$��4��$��10q�$��Center=�$��Center=�
�������.���  �� $
��auto ��� $
��auto ��� $
��auto �.+��� $��Center=�$ 
Horizontal=�.+��� $&�� /Resources/BankLogos/MIRLOGO.png��  
ImgPayLogo#��[ �� $%��/Resources/BankLogos/MCLOGO.png��#��[ �� $*��$/Resources/BankLogos/MAESTROLOGO.png��#��[ �� $'��!/Resources/BankLogos/VISALOGO.png��#��[   -   $ TBoxCardNum��$��1��$	��5,0q�$
��Left=�$	��300��   CardNum# Z $ 0000 0000 0000 0000�� .  .  " ��
���   �
 �����#��[  �� *	CardNum+$ PropertyChanged=��� $��2��$��5,15,0,5q�$��Center=�$ 
Horizontal=�.+�  -   $ TBoxCardMonth��$��5q�   Month# Z $ 00�� .  .  " ��
���   �
 �����#��[  �� *	CardMonth+$ PropertyChanged=��� $��/��$��Center=�  -	   $ TBoxCardYear��$��5q�   Year# Z $ 00�� .  .  " ��
���   �
 �����#��[  �� *
CardYear+$ PropertyChanged=�  -
   $ mDCardFinal��$��4��$��10q�$��Center=�$��Center=�
�������$y�	Collapsed=�.���  �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto � �� $
��auto ��� $
��auto �.+��� $��2��   PayCompleteSuccess#��Z $��14(�
��� � �  LPayInfo#��[ �� $��1��   Seller#��Z #��[ �� $��1��$��2��#��Z   	LPayInfo2#��[ �� $��2��   Description#��Z #��[ �� -   $	 LDesc��$��2��$��2��#��[ �� $��3��#��Z #��[ �� -   $	 LCardNumSecured��$��3��$��2��#��[ �� $��4��   TransID#��Z #��[ �� -   $	 LTransID��$��4��$��2��#��[ �� $��5��   DateTime#��Z #��[ �� -   $	 LDateTimeNow��$��5��$��2��#��[ �� $��6��   AuthCode#��Z #��[ �� -   $	 	LAuthCode��$��6��$��2��#��[ �� $��7��
   RRN#��Z #��[ �� -   $
	 LRRN��$��7��$��2��#��[ �� $��8��    Summ#��Z   	 LHead#��[ $��12(��� -   $	 
LSummPrice��$��8��$��2��#��[ �� -   ! ��Name$! 
ImgGifLoad��$��4��$	��217��$y�	Collapsed=�"  WpfAnimatedGif.ImageBehavior"   RepeatBehavior$" 3x���� -   $! ImgGifSuccess��$��4��$	��217��$y�	Collapsed=�$" 1x���� -   # ��Name$# 	SPBtnsPay��$��5��  	SPBtnsPay#��[ .+��� -   $ ��Name$$ 	BtnCancel��%   
CancelCaps#��Z% 
�������
������ 
��������� -   $$ BtnPay��$��20,0,0,0q�&   PayCaps#��Z& #���  
������ 
��������� -   $# SPBtnsFinal��$��5��$y�	Collapsed=�#��[ .+��� -   $$ BtnPrint��'   Print#��Z' 
�������
������ 
��������� -   $$ BtnBack��$��20,0,0,0q�(   PayBack#��Z( #���  
������ 
��������� $��6��$��0,20,0,0q�$��Center=�$��10(�)   PayProtectInfo#��Z) #��[ �� $��7��$ 
Horizontal=�$��Center=�.+��� $+��%/Resources/BankLogos/MIRCheckLOGO.png�� 	 ImgPayLogo2#��[	 �� $+��%/Resources/BankLogos/PCICheckLOGO.png��#��[	 �� $*��$/Resources/BankLogos/MCCheckLOGO.png��#��[	 �� $,��&/Resources/BankLogos/VISACheckLOGO.png��#��[	 �� $��8��$��Center=�$��10(�*   BankInfo#��Z* #��[ 