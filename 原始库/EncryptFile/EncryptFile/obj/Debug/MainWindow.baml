   M S B A M L   `   `   `  ����F  BEncryptFile, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:EncryptFileEncryptFile  5   	       EncryptFile.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:EncryptFile     5   	     � Title$  文件加密��5   	   $	��450��6   $	��800��6#   .��5	      � .+�5
   
   �� $��文件��6   $
��Left=�6   $��	65,75,0,0q�68   $	��Top=�6K   $��35��6c   $��55��6o   $��20(�6z   �� 5   
   -   5         ��Name$ TxtFilePath��5      $
��Left=�6'   $��35��6B   $��
136,75,0,0q�6N   $	��Top=�6b   $	��374��6z   $��18(�6�   $��Center=�6�    �� IsUndoEnabled .   �� 
IsReadOnly . 6�   �� 5   
   -   5         ��Name$ BtnSelector��5      $��选择文件��6&   $
��Left=�65   $��
547,75,0,0q�6P   $	��Top=�6d   $	��170��6|   $��35��6�   $��18(�6�   6�   �� 5   
   -   5        $ TxtPassword��5      $
��Left=�6'   $	��186��6B   $��136,174,0,0q�6O    �� TextWrapping$
 Wrap=�6d   $	��Top=�6x   $	��374��6�   $��18(�6�   �� 5   
   $��密码��6   $
��Left=�6   $��
65,174,0,0q�68   $	��Top=�6L   $��20(�6d   $��55��6r   �� 5   
   -   5        $ BtnGen��5      $��生成��6!   $
��Left=�6.   $��547,174,0,0q�6I   $	��Top=�6^   $	��170��6v   $	��186��6�   $��20(�6�   5      5      