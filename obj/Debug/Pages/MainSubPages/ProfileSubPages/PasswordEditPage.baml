   M S B A M L   `   `   `  ����J  FNovaelectrosbit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Novaelectrosbit.PropertiesNovaelectrosbit.Properties  5      I    CNovaelectrosbit.Pages.MainSubPages.ProfileSubPages.PasswordEditPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      8res(clr-namespace:Novaelectrosbit.Properties     5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      $	��485��5      $	��430��6   $	��430��6    $	��485��6/   $��16(�6?   *   $Novaelectrosbit.Properties.Resources    PasswordEdit N� Title# Z  5         FontMain N� 
FontFamily# [  65   .��5      �  � RowDefinitions 5	   
   �� 5
      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6    � ColumnDefinitions 5   
   �� 5      �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� #��Z  6    	 LHead#��[ 6@   �� 5   
   $��1��6   $��3��6      PasswordAdvice#��Z 61   $��12(�6c     LDescription#��[ 6q   �� 5   
   $��2��6   $��5,15,0,0q�6      CurPassword#��Z 6/   #��[ 6^   G� 5   
   -   5         G�Name$ PBoxPassword��5      $��3��6,   $	��5,0q�69   $
��Left=�6F   $	��300��6a    G� 	MaxLength$ 50��6p   	   RequiredFillIn)  #MaterialDesignThemes.Wpf.HintAssist
   
HelperText#
 Z	 6   
���   � % !MaterialDesignOutlinedPasswordBox#��[ 5   *   �� 5   
   -   5         ��Name$ PBoxPasswordVisible��5      $��3��6/   $	��5,0q�6<   $
��Left=�6I   $	��300��6d    �� 	MaxLength$ 50��6s   #
 Z	 6�   $y�Hidden=�6�   
���   � ! MaterialDesignOutlinedTextBox#��[ 5   *   d� 5    
   -   5         d�Name$ 	TBDisplay��5       $��3��6*   $��1��67   $
��Left=�6G   $��Center=�6b   $��38��6}   $��40��6�   
���   � * &MaterialDesignActionAccentToggleButton#��[ 5!   /   ��5    �   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ EyeOff=�1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   	OnContent 6�     $	 Eye=�5!   /   �� 5"   
   $��4��6   $��5,15,0,0q�6      ComeUpPassS#��Z 6/   #��[ 6^   G� 5#   
   -   5        $ PBoxNewPassword��5#      $��5��6/   $	��5,0q�6<   $
��Left=�6I   $	��300��6d   $ 50��6s   #
 Z	 6�   
���   �#��[ 5$   *   �� 5%   
   -   5        $ PBoxNewPasswordVisible��5%      $��5��62   $	��5,0q�6?   $
��Left=�6L   $	��300��6g   $ 50��6v   #
 Z	 6�   $y�Hidden=�6�   
���   �#��[ 5&   *   d� 5'   
   -   5        $ 
TBDisplay2��5'      $��5��6+   $��1��68   $
��Left=�6H   $��Center=�6c   $��38��6~   $��40��6�   
���   �#��[ 5(   /   ��5'   �     $ EyeOff=� 6�     $	 Eye=�5(   /   '  !MaterialDesignThemes.Wpf.PackIcon  5)   
   $��2��6"   $��5��62   $��0,0,15,0q�6?   $
��Left=�6Q   $��45��6l   $��55��6x      IconInfoToolTip � ToolTip# Z 6�     IconInfo#��[ 5*   "   �� 5+   
   $��6��6   $��5,15,0,0q�6      RepeatNewPassword#��Z 6/   #��[ 6d   G� 5,   
   -   5        $ PBoxNewPasswordAgain��5,      $��7��64   $	��5,0q�6A   $
��Left=�6N   $	��300��6i   $ 50��6x   #
 Z	 6�   
���   �#��[ 5-   *   �� 5.   
   -   5        $! PBoxNewPasswordAgainVisible��5.      $��7��67   $	��5,0q�6D   $
��Left=�6Q   $	��300��6l   $ 50��6{   #
 Z	 6�   $y�Hidden=�6�   
���   �#��[ 5/   *   d� 50   
   -	   5        $ 
TBDisplay3��50      $��7��6+   $��1��68   $
��Left=�6H   $��Center=�6c   $��38��6~   $��40��6�   
���   �#��[ 51   /   ��50   �     $ EyeOff=� 6�     $	 Eye=�51   /     52   
   $��2��6"   $��7��62   $��0,0,15,0q�6?   $
��Left=�6Q   $��45��6l   $��55��6x   # Z 6�   #��[ 53   "   � 54   
   $��8��6    55      �� 56      $
��auto �6#   �� 57      .+�59      �� -
   5         ��Name$ BtnSave��59      $��10,30q�6&      SavePassword#��Z 65   
�������6{   �� 5:      $��1��6     LHelpBtn#��[ 6$   .��5;      �� -   5         ��Name$ 	TBkCancel��5;         Cancel#��Z 6/     
TBkHelpBtn#��[ 6�   5<      5=      5>      5?      