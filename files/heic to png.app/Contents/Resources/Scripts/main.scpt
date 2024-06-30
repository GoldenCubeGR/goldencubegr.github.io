FasdUAS 1.101.10   ��   ��    k             l     ��  ��    &   Function to convert HEIC to PNG     � 	 	 @   F u n c t i o n   t o   c o n v e r t   H E I C   t o   P N G   
  
 i         I      �� ���� $0 convertheictopng convertHEICtoPNG      o      ���� 0 	inputfile 	inputFile   ��  o      ���� 0 
outputfile 
outputFile��  ��    Q     '     k           l   ��  ��    4 . Use the 'sips' command to convert HEIC to PNG     �   \   U s e   t h e   ' s i p s '   c o m m a n d   t o   c o n v e r t   H E I C   t o   P N G      I   �� ��
�� .sysoexecTEXT���     TEXT  b        b    
   !   b     " # " m     $ $ � % % & s i p s   - s   f o r m a t   p n g   # n     & ' & 1    ��
�� 
strq ' o    ���� 0 	inputfile 	inputFile ! m    	 ( ( � ) )    - - o u t    n   
  * + * 1    ��
�� 
strq + o   
 ���� 0 
outputfile 
outputFile��     ,�� , L     - - m    ��
�� boovtrue��    R      �� .��
�� .ascrerr ****      � **** . o      ���� 0 errmsg errMsg��    k    ' / /  0 1 0 I   $�� 2��
�� .sysodlogaskr        TEXT 2 b      3 4 3 m     5 5 � 6 6  E r r o r :   4 o    ���� 0 errmsg errMsg��   1  7�� 7 L   % ' 8 8 m   % &��
�� boovfals��     9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = !  Choose multiple HEIC files    > � ? ? 6   C h o o s e   m u l t i p l e   H E I C   f i l e s <  @ A @ l     B���� B r      C D C I    ���� E
�� .sysostdfalis    ��� null��   E �� F G
�� 
prmp F m     H H � I I : S e l e c t   H E I C   f i l e s   t o   c o n v e r t : G �� J K
�� 
ftyp J J     L L  M�� M m     N N � O O  p u b l i c . h e i c��   K �� P��
�� 
mlsl P m    	��
�� boovtrue��   D o      ���� 0 
inputfiles 
inputFiles��  ��   A  Q R Q l     ��������  ��  ��   R  S T S l     �� U V��   U 6 0 Initialize a counter for successful conversions    V � W W `   I n i t i a l i z e   a   c o u n t e r   f o r   s u c c e s s f u l   c o n v e r s i o n s T  X Y X l    Z���� Z r     [ \ [ m    ����   \ o      ���� .0 successfulconversions successfulConversions��  ��   Y  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l    a���� a I   �� b��
�� .sysodlogaskr        TEXT b m     c c � d d  l o a d i n g . . . . .��  ��  ��   `  e f e l     ��������  ��  ��   f  g h g l     �� i j��   i ) # Iterate through each selected file    j � k k F   I t e r a t e   t h r o u g h   e a c h   s e l e c t e d   f i l e h  l m l l   � n���� n X    � o�� p o k   * � q q  r s r l  * *�� t u��   t Q K Remove the .heic extension from the file name and set the output file path    u � v v �   R e m o v e   t h e   . h e i c   e x t e n s i o n   f r o m   t h e   f i l e   n a m e   a n d   s e t   t h e   o u t p u t   f i l e   p a t h s  w x w r   * 3 y z y l  * / {���� { n   * / | } | 1   - /��
�� 
psxp } l  * - ~���� ~ c   * -  �  o   * +���� 0 	inputfile 	inputFile � m   + ,��
�� 
TEXT��  ��  ��  ��   z o      ���� 0 
outputfile 
outputFile x  � � � Z   4 W � ����� � D   4 ; � � � o   4 7���� 0 
outputfile 
outputFile � m   7 : � � � � � 
 . h e i c � l  > S � � � � r   > S � � � n   > O � � � 7  A O�� � �
�� 
ctxt � m   G I����  � m   J N������ � o   > A���� 0 
outputfile 
outputFile � o      ���� 0 
outputfile 
outputFile � + % Remove the last 5 characters (.heic)    � � � � J   R e m o v e   t h e   l a s t   5   c h a r a c t e r s   ( . h e i c )��  ��   �  � � � r   X c � � � b   X _ � � � o   X [���� 0 
outputfile 
outputFile � m   [ ^ � � � � �  . p n g � o      ���� 0 
outputfile 
outputFile �  � � � l  d d��������  ��  ��   �  � � � l  d d�� � ���   � #  Call the conversion function    � � � � :   C a l l   t h e   c o n v e r s i o n   f u n c t i o n �  � � � r   d s � � � I   d o�� ����� $0 convertheictopng convertHEICtoPNG �  � � � n   e h � � � 1   f h��
�� 
psxp � o   e f���� 0 	inputfile 	inputFile �  ��� � o   h k���� 0 
outputfile 
outputFile��  ��   � o      ���� &0 conversionsuccess conversionSuccess �  � � � l  t t��������  ��  ��   �  ��� � Z   t � � ����� � o   t w���� &0 conversionsuccess conversionSuccess � r   z  � � � [   z } � � � o   z {���� .0 successfulconversions successfulConversions � m   { |����  � o      ���� .0 successfulconversions successfulConversions��  ��  ��  �� 0 	inputfile 	inputFile p o    ���� 0 
inputfiles 
inputFiles��  ��   m  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Display the result    � � � � &   D i s p l a y   t h e   r e s u l t �  � � � l  � � ����� � Z   � � � ��� � � ?   � � � � � o   � ����� .0 successfulconversions successfulConversions � m   � �����   � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � � � � � 4 C o n v e r s i o n   s u c c e s s f u l   f o r   � o   � ����� .0 successfulconversions successfulConversions � m   � � � � � � �    f i l e s !��  ��   � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � � J N o   f i l e s   w e r e   c o n v e r t e d   s u c c e s s f u l l y .��  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � � ���   � ������ $0 convertheictopng convertHEICtoPNG
�� .aevtoappnull  �   � **** � �� ���� � ����� $0 convertheictopng convertHEICtoPNG�� �� ���  �  ��~� 0 	inputfile 	inputFile�~ 0 
outputfile 
outputFile��   � �}�|�{�} 0 	inputfile 	inputFile�| 0 
outputfile 
outputFile�{ 0 errmsg errMsg �  $�z (�y�x�w 5�v
�z 
strq
�y .sysoexecTEXT���     TEXT�x 0 errmsg errMsg�w  
�v .sysodlogaskr        TEXT�� ( ��,%�%��,%j OeW X  �%j Of � �u ��t�s � ��r
�u .aevtoappnull  �   � **** � k     � � �  @ � �  X � �  _ � �  l � �  ��q�q  �t  �s   � �p�p 0 	inputfile 	inputFile � �o H�n N�m�l�k�j�i c�h�g�f�e�d�c�b ��a�` ��_�^ � � �
�o 
prmp
�n 
ftyp
�m 
mlsl�l 
�k .sysostdfalis    ��� null�j 0 
inputfiles 
inputFiles�i .0 successfulconversions successfulConversions
�h .sysodlogaskr        TEXT
�g 
kocl
�f 
cobj
�e .corecnte****       ****
�d 
TEXT
�c 
psxp�b 0 
outputfile 
outputFile
�a 
ctxt�`���_ $0 convertheictopng convertHEICtoPNG�^ &0 conversionsuccess conversionSuccess�r �*����kv�e� E�OjE�O�j 
O m�[��l kh  ��&�,E` O_ a  _ [a \[Zk\Za 2E` Y hO_ a %E` O*��,_ l+ E` O_  
�kE�Y h[OY��O�j a �%a %j 
Y 	a j 
 ascr  ��ޭ