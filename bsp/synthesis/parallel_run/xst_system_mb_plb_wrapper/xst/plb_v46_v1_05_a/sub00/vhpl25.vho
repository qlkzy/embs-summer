       H ��        Sq�l                  :   implementation  �         @  Y  .�  :�  ]�  }  �A  ��  ��  � A 8� D9 O� [� s �! �1 A  "� *� Q� Y� q �) �! �a ��  � 0i K� [a �q �� Б �� � E� l� �� �� � �Y  � 0! 7� ?� �! �� f� ! �� �� 	q� 
!� F� 8� �� � / qi c� �� I  *�   D  A  2�  >�  a�  ��  �)  �i  ީ  �� ) <i H! S� _� z� �9 �	 � ) � &� .� U� ]y t� � �	 �I � $� 4Q O� _I �Y �i �y �� "� I� p� �� �� �� A $i 4	 ;� C� �9 �y jq "	 �� �� 	u� 
%� B� 5 �� � 2�  �  �  [ uQ g� �� 1        Ky [ j� zY �� �� �� 9y � 	Q 	#� 	;I 	�� wi � �Y �� �9 B� �� _� �y �� a  �       �  �          v �          A     S  ��     #)  '  A     :   DEV_ADDR_DECODE_WIDTH  A  �     !    Y     �  q  �     Y     �]  u2         Y     �-  }         @     2�     :   DCR_NUM_REGS  2�  �     !    .�     �  *�  �     S  �U     Bi  >�     :   NUMREG_BITS  >�  �     !    :�     �  6�  �     Y     ��  .�         @      J9      Q4     FQ  N!      U�     S  $     :�  R	  J9     @     N!     v  �^     J9      a�     s   000  �^  a�     :   MERR_DETECT_OFFSET  a�  �     !    ]�     U�  Y�  �     @      iy      Q4     e�  ma      u1     S  $     :�  qI  iy     @     ma     v  �^     iy      ��     s   001  �^  ��     :   MDRIVE_PEAR_OFFSET  ��  �     !    }     u1  y  �     @      ��      Q4     ��  ��      �q     S  $     :�  ��  ��     @     ��     v  �^     ��      �)     s   010  �^  �)     :   RNW_ERR_OFFSET  �)  �     !    �A     �q  �Y  �     @      ��      Q4     �  ��      ��     S  $     :�  ��  ��     @     ��     v  �^     ��      �i     s   011  �^  �i     :   LCK_ERR_OFFSET  �i  �     !    ��     ��  ��  �     @      �9      Q4     �Q  �!      ��     S  $     :�  �	  �9     @     �!     v  �^     �9      ީ     s   100  �^  ީ     :   ADDR_OFFSET  ީ  �     !    ��     ��  ��  �     @      �y      Q4     �  �a      �1     S  $     :�  �I  �y     @     �a     v  �^     �y      ��     s   101  �^  ��     :   BYTE_EN_OFFSET  ��  �     !    �     �1  �  �     @     �      Q4    � 	�     q     S  $     :� � �     @    	�     v  �^    �     )     s   110  �^ )     :   SIZE_TYPE_OFFSET )  �     !   A    q Y  �     @     $�      Q4    ! (�     0�     S  $     :� ,� $�     @    (�     v  �^    $�     <i     s   111  �^ <i     :   CTRL_OFFSET <i  �     !    8�    0� 4�  �     @     H!     :   INTR_EN_BIT H!  �    .� !  # D9     � @Q  �     @    S�     :   
SW_RST_BIT S�  �    J !  $ O�     � L	  �     @    _�     :   
TST_EN_BIT _�  �    ei !  % [�     � W�  �         kI        o1         z�     v  �^         o1     :   arg o1 cy     !  ( kI     ga     cy     :   	or_reduce z�  �     v  ��         z�     5  ( s        �^  FV cy w  �         �� cy    ��        �q �i �Q �9     v  ��         ��     :   result �� ~�     �  ) ��    ��  � ~�     �  +      ^ �� ~�      �    kI  } �A     v �    �Y     �         ��        � �A    �� �i     !  , ��     �A �A �)     :   i � �)     >    kI �� ��     S .    �� �� ��     Y    � ��         Y    ^ ��         �  -     �� �� �)     4  ,     �) ~�     l  /     �� ~�     t     s ~�  �     :   plb_dcrack_i �	  �     p  5 �!    ��  �      �     @     ��      Q4    �� ��     ܑ     S  $     iz ة ��     @    ��     v  �^    ��     �     V     ܑ �a     
    �y  ^ �I      ܑ    �a �     :   dcr_dbus_d1 �  �     p  8 �1    ܑ �I      �     @     ��      Q4    � ��     �     S  $     ]� �� ��     @    ��     v  �^    ��     )     V     � q     
    �  ^ Y      �    q )     :   dcr_abus_d1 )  �     p  9 A    � Y      �     :   dcr_read_d1 �  �     p  :     ��  �      �     :   dcr_write_d1 &�  �     p  ; "�    ��  �      �     :   wdtmtimeout_d1 .�  �     p  > *�    ��  �      �     @     6i      Q4    2� :Q     B!     S  $     :� >9 6i     @    :Q     v  �^    6i     U�     V     B! I�     
    F	  ^ M�      B!    I� U�     :   arbaddrselreg_d1 U�  �     p  ? Q�    B! M�      �     :   
plb_rnw_d1 ]y  �     p  @ Y�    ��  �      �     @     eI      Q4    aa i1     m     @    eI     v  �^    eI     t�     :   plb_abus_d1 t�  �     p  A q    m |�      �     
    eI  � |�      m    x� t�     @     ��      Q4    �� �q     �A     S  $     FR �Y ��     @    �q     v  �^    ��     �     :   plb_uabus_d1 �  �     p  C �)    �A ��      �     
    ��  � ��      �A    �� �     @     ��      Q4    �� �i     �9     S �     R
 �� �i     @    ��     S  $    �� �Q ��     @    �i     v  �^    ��     �	     :   	plb_be_d1 �	  �     p  D �!    �9 ��      �     
    ��  � ��      �9    �� �	     @     ҩ      Q4    �� ֑     �y     @    ҩ     v  �^    ҩ     �I     :   plb_size_d1 �I  �     p  E �a    �y �      �     
    ҩ  � �      �y    �1 �I     @     ��      Q4    � ��     ��     @    ��     v  �^    ��     �     :   plb_type_d1 �  �     p  F ��    �� 	Y      �     
    ��  � 	Y      ��    q �     @     )      Q4    A      �     S  $     :� � )     @         v  �^    )     $�     :   m_lockerr_d1 $�  �     p  G  �    � ,�      �     
    )  � ,�      �    (� $�     :   dcr_address_valid 4Q  �     p  J 0i    ��  �      �     @     <!      Q4    89 @	     G�     S  $     :� C� <!     @    @	     v  �^    <!     O�     :   dcr_abus_slice O�  �     p  K K�    G� Wy      �     
    <!  � Wy      G�    S� O�     :   dcr_plb_access _I  �     p  L [a    ��  �      �     @     g      Q4    c1 k     r�     S  $     iz n� g     @    k     v  �^    g     �Y     V     r� z�     
    v�  ^ ~�      r�    z� �Y     :   	read_data �Y  �     p  O �q    r� ~�      �     @     �)      Q4    �A �     ��     S  $     iz �� �)     @    �     v  �^    �)     �i     V     �� ��     
    ��  ^ ��      ��    �� �i     :   	pear_addr �i  �     p  Q ��    �� ��      �     @     �9      Q4    �Q �!     ��     S  $     iz �	 �9     @    �!     v  �^    �9     �y     V     �� ��     
    ��  ^ ̩      ��    �� �y     :   pear_byte_en �y  �     p  R Б    �� ̩      �     @     �I      Q4    �a �1     �     S  $     iz � �I     @    �1     v  �^    �I     ��     V     � ��     
    ��  ^ �      �    �� ��     :   pear_size_type ��  �     p  S ��    � �      �     @     Y      Q4    �q A          S  $     iz ) Y     @    A     v  �^    Y     "�     V      �     
    �  ^ �          � "�     :   clear_error "�  �     p  T �     �      �     @     *i      Q4    &� .Q     6!     S  $     iz 29 *i     @    .Q     v  �^    *i     I�     V     6! =�     
    :	  ^ A�      6!    =� I�     :   pesr_merr_detect I�  �     p  U E�    6! A�      �     @     Qy      Q4    M� Ua     ]1     S  $     iz YI Qy     @    Ua     v  �^    Qy     p�     V     ]1 e     
    a  ^ h�      ]1    e p�     :   pesr_lck_err p�  �     p  V l�    ]1 h�      �     @     x�      Q4    t� |q     �A     S  $     iz �Y x�     @    |q     v  �^    x�     ��     V     �A �     
    �)  ^ ��      �A    � ��     :   pesr_mdrive_pear ��  �     p  W ��    �A ��      �     @     ��      Q4    �� ��     �Q     S  $     iz �i ��     @    ��     v  �^    ��     ��     V     �Q �!     
    �9  ^ �	      �Q    �! ��     :   pesr_rnw_err ��  �     p  X ��    �Q �	      �     @     Ʃ      Q4    �� ʑ     �a     S  $     iz �y Ʃ     @    ʑ     v  �^    Ʃ     ��     V     �a �1     
    �I  ^ �      �a    �1 ��     :   pacr ��  �     p  Y �    �a �      �     @     ��      Q4    �� �     �q     S  $     :� �� ��     @    �     v  �^    ��     A     :   enable_pesr_update A  �     p  [ �Y    �q 	      �     
    ��  � 	      �q    ) A     @     �      Q4    � �     �     S  $     :� � �     @    �     v  �^    �     $i     :   locked $i  �     p  \  �    � ,9      �     
    �  � ,9      �    (Q $i     :   not_locked_PEAR 4	  �     p  ] 0!    ��  �      �     :   pesr_mdrive_pear_ce ;�  �     p  ^ 7�    ��  �      �     :   tst_en C�  �     p  a ?�    ��  �      �     � �!         Ky       h     G�  ު              �     >    � D9 SI     � Oa         [     @               i     SI ��              �     >    � O� b�     � _         j�     @              j     b� ��              �     >    � [� r�     � n�         zY     @              m     r� ?�              �                         �� ��       ��     ��  �\ ��     S �!     ��  F ��     S ��    �) � ��     S �!     �� o5 �	     �  ^         ��     o  v     �� *�         �	     V     B! ��     
    ��  ^ �i      B!    �� �Q     � �i         �9     o  w     �Q Q�         �	     �  ^         �	     o  x     �! Y�         �	     V         ��     
    �a  ^ ��      m    �� ��     � ��         �I     @     �a     @    �a      Q4    đ �y     ��     o  y     �� q         �	     V     �A �     
    �1  ^ �      �A    � ��     � �         ��     o  z     �� �)         �	     V     �9 �     
    �  ^ �      �9    � �q     � �         �Y     o  {     �q �!         �	     V         �)     
    �  ^       �y    �) �     �          �     @     �     @    �      Q4    
� �     �)     o  |     � �a         �	     V         i     
    1�  ^ "Q      ��    i &9     � "Q         5�     @     1�     @    1�      Q4    *! .	     i     o  }     &9 ��         �	     V     � =�     
    9�  ^ A�      �    =� Ey     � A�         Ia     o  ~     Ey  �         �	     S �^    U Q1     � MI         Y     Y    �� �         o  �     Q1 *�         �i     � *         `�     o  �     \� Q�         �i     � $�         h�     o  �     d� Y�         �i     � <j         pq     o  �     l� q         �i     � W�         xA     o  �     tY �)         �i     � z�         �     o  �     |) �!         �i     � �Z         ��     o  �     �� �a         �i     � ��         ��     o  �     �� ��         �i     � �"         ��     o  �     ��  �         �i     r          �<   	 Y `� h� pq xA � �� �� �� ��     v  ��         �9     U     �!     FV  FV  �� �Q  �     T   = �9  �     r         ��   	 �� �9 �	 �I �� �Y � 5� Ia ��     <  u        �	 �i ��     r         ��    �� ��     <  t        �� ~A     a  r �� ~A     ��  �     :   PLB_BUS_REGS �y  �     E  r �� ��  �     @     �I      �    �a �1     �     S  $     :� � �I     @    �1         ^� ��        b� � �I    Z� ��     3  � f� �  �     :   i � �     !  � ��     �I �I ��                         V� Z�       ��     ��  �\ �Y     S �!     ��  F �Y     S ��    � �q S     S �!     �� o5 K1     >    E� ��  �     �  ^          �     o  �     � �)         K1     >    E� �� Ca     >    � �� �     S �^    (	  9     >    Q� �� �     S  ޮ    +� /� Q     >    E� �� Q     S .    3� 7�  9     S  ޮ    ;� ?y $!     �  9         Ca     Y    �� �         Y     � �         Y     �� *�         Y    � �         Y    ^ i         Y     � �         Y     �� Q         o  �     $! �         GI     r          �<    Ca O     r         �A     � O     <  �        K1 GI S     r         �Y    O V�     <  �        S �     a  � ^� �     �� �     :   MERR_DETECT_PROCESS b� �     E  � ^� Z� �     :   PESR_MERR_DETECT_GEN jq  �     E  � f� ��  �     @     rA      �    nY v)     ��     S  $     :� z rA     @    v)         Q ��        9 �� rA    i ��     3  � ! }�  �     :   i �� }�     !  � ��     rA rA ��                         � i       ��     ��  �\ �Q     S �!     ��  F �Q     S ��    �� �i 
�     S �!     �� o5 �     >    l� �� ��     �  ^         ��     o  �     �	 �!         �     >    l� �� ��     >    � �� ��     S �^    �� �     >    Q� �� �y     S  ޮ    ۹ ߡ �I     >     � �� �I     S  ޮ    � �q �     >    l� �� �     S .    �Y �A �     S  ޮ    �) � ��     � �         ��     Y    �� ��         Y     � ��         Y     �� *�         Y     � �y         Y     �� �a         Y    � �I         Y    ^ �1         Y     � ��         Y     �� �         o  �     �� ��         ��     r          �<    �� �     r         �9    �� �     <  �        � �� 
�     r         �Q    � �     <  �        
� ��     a  � Q ��     �� }�     :   LCK_ERR_PROCESS 9 }�     E  � Q i }�     :   PESR_LCK_ERR_GEN "	  �     E  � ! ��  �     @     )�      �    %� -�     AI     S  $     :� 1� )�     @    -�         �	 =a        �� AI )�    t �9 9y     3  � �� 5�  �     :   i AI 5�     !  � =a     )� )� 9y     >    �Y =a t     >    Q� =a M     S  ޮ    `� dq X�     >    l� =a T�     S �^    hY X�     S  ޮ    lA p) \�     � X�         t     Y     � I         Y     �� *�         Y    �� P�         Y     � M         Y     �� T�           �     \� E1             5�     >    �� =a {�     \    >�W w� �9     \    >�'  �� �9     >    �Y =a ��     \    >�� �� �9     \    >�� Y� �9     >    � =a �Q     \    >� �i �9       � �	 >�g    �! {� � �� �� �Q     5�     7    >��  ެ         :   PESR_RNW_ERR_FF_I �� 5�     E  � �	 �9 5�     :   RNW_ERR_GENERATE ��  �     E  � �� 9y  �                         �) �     @     �y      �    �� �a     �     S  $     :� �I �y     @    �a         �        � �y    �A �)     !  � �     �y �y �1     :   i � �1     >     � � �A     >    l� � ١     >    �� � ١     S  ޮ    �q �Y ݉     � ١         �A     Y     � ��         Y     �� չ         o  �     ݉ ��         �1     4  �     �1 ��     a  � �� ��    l� ��  �     :   ISLOCKED_PROCESS ��  �     E  � �� �  �     S s    	� 	 �     S �^    	i 	�     � 	 �         	Q     Y    kI  �         Y    �� ��           �     	� 0!              �     S  ޮ    		 	� 	!     � 	9         	#�     Y     � *�         Y     �� 0!           �     	! 7�              �     @     	+�      �    	'� 	/�     	C     S  $     :� 	3y 	+�     @    	/�         	j) 	?1        	n 	C 	+�    	fA 	;I     3  � 	q� 	7a  �     :   i 	C 	7a     !  � 	?1     	+� 	+� 	;I     >    �� 	?1 	J�     \    >�W 	G 	fA     \    >�'  �� 	fA     \    >�� 7� 	fA     >    Q� 	?1 	Z�     \    >�� 	V� 	fA     >    � 	?1 	bY     \    >� 	^q 	fA       � 	j) >�g    �! 	J� 	N� 	R� 	Z� 	bY     	7a     :   PESR_MDRIVE_PEAR_FF_I 	n 	7a     E  � 	j) 	fA 	7a     :   MDRIVE_PEAR_GENERATE 	u�  �     E  � 	q� 	;I  �     S 
l     :�  iz 	}�                  	y�    	�� 	Ϲ 	�� 
� 	��     ;  � 
!� 	}�  �      Q4     :� 	�i     	�9     S  $     iz 	�Q 	��     @    	�i     q    E� 	�� 	��     V     	�� 	�	     
    	�!  ^ 	��      	��    	�	 	��     � 	��         	��     v  �^    	��               �     	�� 	�9             	}�      Q4     :� 	�y     	�I     S  $     iz 	�a 	��     @    	�y     q    l� 	�� 	Ϲ     V     	�� 	�     
    	�1  ^ 	�      	��    	� 	��     � 	�         	Ϲ     v  �^    	��               �     	�� 	�I             	}�      Q4     :� 	׉     	�Y     S  $     iz 	�q 	ӡ     @    	׉     q    �� 	ӡ 	��     V     	ӡ 	�)     
    	�A  ^ 	�      	��    	�) 	��     � 	�         	��     v  �^    	ӡ               �     	�� 	�Y             	}�      Q4     :� 	��     
i     S  $     iz 
� 	��     @    	��     q    �� 	�� 
�     V     	�� 
9     
    

Q  ^ 
!      
�    
9 
	     � 
!         
�     v  �^    	��               �     
	 
i             	}�     :   NUMMASTERS_LT_DCRDWIDTH 
%�  �     E  � 
!� 	��  �                         s� wi       ��     ��  �\ 
5I     S �!     ��  F 
5I     S ��    
-y 
1a o�     S �!     �� o5 g�     V     �� 
A     
    
=  ^ 
D�      ��    
A 
H�     � 
D�         
L�     o  �     
H� ��         g�     V     �� 
T�     
    
P�  ^ 
Xq      ��    
T� 
\Y     � 
Xq         
`A     o  �     
\Y Б         g�     V     � 
h     
    
d)  ^ 
k�      �    
h 
o�     � 
k�         
s�     o  �     
o� ��         g�     S �!    ?�  F 
�     S �!    "�  F 
�     S ��    
w� 
{� 
�Q     S �!    [a  F 
�Q     S ��    
� 
�i 
�!     S �!    �!  ^ 
�!     S ��    
�Q 
�9 �9     S F�    K�  �� }i     � �1         
��     o  �     
�� ��         }i     S F�    K�  � J�     @     
��      Q4    
�� 
�I     
�     S �     R
 
�a 
�I     @    
�y     S  $    
�y 
�1 
��     @    
�I     q    Б 
�� 
�A     @     
��      Q4    
� 
͡     
�q     S �     R
 
ɹ 
͡     @    
��     S  $    
�� 
щ 
��     @    
͡     q    �1 
�� 
�Y     � 
�q         
�A     o  �     
�Y 
�         J�      �    Б  u4 +a 
�     S  $    
�) 
�� 
��     S  $     FR 
�� 
�     @     
��      Q4    
� 
��      i      �    Б  u4 /I 
��     S  $    
�� 
�� 
��     @    
��     q    Б 
�� ;      �     ��  u4 31 9     S  $    Q ! �     S  $     FR 	 9     @     !      Q4    9 �     #�      �     ��  u4 7 �     S  $    � � �     @    �     q     �� � 'y     � #�         ;     @            @            @            @            o  �     'y  i         J�     v  ��         B�     U     F�     �^  �^  �� >�  �     T   = B�  �     r         
��    
�A ; �Q     S F�    K� A y�     @     VY      Q4    Rq ZA     ^)     @    VY     q    �� VY u�     @     e�      Q4    b i�     m�     @    e�     q    �1 e� q�     � m�         u�     o  �     q� ^)         y�     r         N�    u� �Q     r         
�	    
�� �Q     <  �        }i J� y� �9     r         
�!    �Q k�     S  ޮ    @� D� �	     S �!    �!  F H�     � q         ��     o       �� ��         H�     @     ��      Q4    �� �a     �1     S �     R
 �y �a     @    ��     S  $    �� �I ��     @    �a     q    Б �� �     � �!         �     o       � �1         H�      �    Б  u4 ! ��     S  $    �� ù ˉ     S  $     FR ǡ ��     @     ù      Q4    �� �Y     �)      �    Б  u4 
	 �Y     S  $    �q �A ˉ     @    �Y     q    Б ˉ �      �    �)  u4 � ��     S  $    � �� �     S  $     FR �� ��     @     ��      Q4    �� ��     �Q      �    �)  u4 � ��     S  $    � �i �     @    ��     q    �) � 9     � �Q         �     @            @            @            @            o       9 �)         H�     @     �      Q4    � !y     %a     @    �     q    �� � <�     S 8�    �a �� -1     � )I         <�     v  �^         5     U     8�     �^  �^  �^ 1  �     T   & 5  �     o  
     -1 %a         H�     Y     � *�         Y     �� 0!         r         �	    �� � � <� k�     � ��         PY     o       Lq ��         c�     � Б         X)     o       TA Б         c�     � ��         _�     o       \ ��         c�     r          �<    PY X) _� k�     r         
91    
L� 
`A 
s� k�     <  �        g� �9 H� c� o�     r         
5I    k� s�     <  �        o� 
)�     a  �     
)�     ��  �                         � �       ��     ��  �\ �	     S �!     ��  F �	     S ��    9 �! �1     �  ��         ��     o       �� �1         �1     �  ��         ��     o       �� A         �1     �  �*         �y     o       ��          �1     �  �Z         �I     o       �a "�         �1     r         �	    �� �� �y �I �     <          �1 {Q     a   �� {Q     ��  �     :   DCR_BUS_REGS ��  �     E   �� �  �     S .    ŉ �q ��     � ��         �Y     Y    �          Y    ^ "�           (     �� 0i              �     S w�     Y �) �     @     �A                  �A    �� ��     ;  * � �  �     � 0i         ��       +     �� [a             �     :   ZERO_DEVADDR_BITS_GEN �  �     E  * � ��  �     S w�     Y �i �Q     @    ��                  ��    + �9     ;  . / �Q  �     @     	     >    A  ! �     @     �     >     u2 � �     S z�    y a �     S  ޮ    #I '1 �     � �         +     Y    kN 	         Y    s �         Y     � 0i         Y     �� �           /     � [a             �Q     :   ONE_DEVADDR_BITS_GEN 2�  �     E  . / �9  �     S 7     Y :� >�     @    6�       l  �  v  ^  F  #.  '  *�  .�  2�  �   �  x  `  H  #0  '  +   .�  2�  6�  :�  >�  Bp  FX  J@  N(  R  U�  Y�  ]�  a�  e�  i�  mh  qP  u8  y   }  ��  ��  ��  ��  ��  �x  �`  �H  �0  �  �   ��  ��  ��  ��  ��  �p  �X  �@  �(  �  ��  ��  ��  ް  � � H (� H( [� o8 �� �H �� �X �� �h �� x   2� F Y� m  �� �0 �� �@ �� �P �� 	` � 0p C� W� k ~� � �� �( ̰ �8 �� H � .X A� Uh h� |x �  �� � ʘ �  � 0 � ,@ ?� SP f� z` �� �p �� Ȁ � �  � *( =� Q8 d� xH �� �X �� �h �� �x   � ( ;� O  b� v0 �� �@ �� �P �� �` �� p %� 9� M `� t �� �( �� �8 �� �H �� 	X 	#� 	7h 	J� 	^x 	r  	�� 	� 	�� 	�  	Ө 	�0 	�� 
@ 
!� 
5P 
H� 
\` 
o� 
�p 
�� 
�� 
� 
ѐ 
� 
�� ( � 38 F� ZH m� �X �� �h �� �x �  �� 
 � 1  D� X0 k� @ �� �P �� �` �� �p � � / B� V i� }( �� �8 �� �H �� �X � h ,� @x T  g� { �� �  �� �0 ܸ �@ � P *� >` Q� ep x� �� � �� � ڠ �( � 8 (� <H O� cX v� �h �� �x �  ؈ � ��   &� :0 M� a@ t� �P �� �` �� �p �� ��  $� 8 K� _( r� �8 �� �H �� �X �� �h � "x 6  I� ] p� �  �� �0 �� �@ �� �P �  ` 3� Gp Z� n� � �� � �� �( � �8 
� H 1� EX X� lh � �x �  �� � � �  � 0 /� C@ V� jP }� �` �� �p �� ߀ � �  -� A( T� h8 {� �H �� �X �� �h �� x   +� ? R� f  y� �0 �� �@ �� �P �� ` � )p <� P� d w� � �� �( Ű �8 ��  H � 'X :� Nh a� ux �  �� � Ø �  � �0 � %@ 8� LP _� s` �� �p �� �� � � � � #( 6� J8 ]� qH �� �X �� �h �� �x �  � ! 4� H  [� o0 �� �@ �� �P �� �` �� p � 2� F Y� m �� �( �� �8 �� �H �� 	X � 0h C� Wx k  ~� � �� �  ̨ �0 �  @  �  .P  A�  U`  h�  |p  ��  ��  �  ʐ  �  � !( !� !,8 !?� !SH !f� !zX !�� !�h !�� !�x !�  !� " "� "*  "=� "Q0 "d� "x@ "�� "�P "�� "�` "�� "�p # � #� #( #;� #O #b� #v( #�� #�8 #�� #�H #�� #�X #�� $h $%� $9x $M  $`� $t $�� $�  $�� $�0 $ո $�@ $�� %P %#� %7` %J� %^p %q� %�� %� %�� %� %Ӡ %�( %�� &8 &!� &5H &H� &\X &o� &�h &�� &�x &�  &ш &� &�� '  '� '30 'F� 'Z@ 'm� '�P '�� '�` '�� '�p '�� '�� (
 (� (1 (D� (X( (k� (8 (�� (�H (�� (�X (�� (�h )� )x )/  )B� )V )i� )}  )�� )�0 )�� )�@ )�� )�P *� *` *,� *@p *S� *g� *{ *�� *� *�� *�( *ܰ *�8 +� +H +*� +>X +Q� +eh +x� +�x +�  +�� +� +ژ +�  ,� ,0 ,(� ,<@ ,O� ,cP ,v� ,�` ,�� ,�p ,�� ,؀ ,� ,�� - -&� -:( -M� -a8 -t� -�H -�� -�X -�� -�h -�� -�x .  .$� .8 .K� ._  .r� .�0 .�� .�@ .�� .�P .�� .�` /� /"p /5� /I� /] /p� /� /�� /�( /�� /�8 /�� /�H 0� 0 X 03� 0Gh 0Z� 0nx 0�  0�� 0� 0�� 0�  0� 0�0 1
� 1@ 11� 1EP 1X� 1l` 1� 1�p 1�� 1�� 1� 1� 1� 2� 2( 2/� 2C8 2V� 2jH 2}� 2�X 2�� 2�h 2�� 2�x 2�  3� 3 3-� 3A  3T� 3h0 3{� 3�@ 3�� 3�P 3�� 3�` 3�� 4p 4� 4+� 4? 4R� 4f 4y� 4�( 4�� 4�8 4�� 4�H 4�� 5X 5� 5)h 5<� 5Px 5d  5w� 5� 5�� 5�  5Ũ 5�0 5� 6 @ 6� 6'P 6:� 6N` 6a� 6up 6�� 6�� 6� 6Ð 6� 6� 6�( 7� 7%8 78� 7LH 7_� 7sX 7�� 7�h 7�� 7�x 7�  7� 7� 8� 8#  86� 8J0 8]� 8q@ 8�� 8�P 8�� 8�` 8�� 8�p 8�� 9� 9! 94� 9H 9[� 9o( 9�� 9�8 9�� 9�H 9�� 9�X 9�� :h :� :2x :F  :Y� :m :�� :�  :�� :�0 :θ :�@ :�� ;	P ;� ;0` ;C� ;Wp ;j� ;~� ;� ;�� ;� ;̠ ;�( ;� <8 <� <.H <A� <UX <h� <|h <�� <�x <�  <ʈ <� <� =  =� =,0 =?� =S@ =f� =zP =�� =�` =�� =�p =�� =� > >x >5� >\� >� >�H >�� >�( >�8 ?` ?7� ?O i�      /  6�  �8  � 	� 0 ,� L _� s  �� �0 �� �@ �� �P �� ` "� 6p I� ]� q �� � �� �( Ұ �8 �� H  � 4X G� [h n� �x �  �� � И �  �� 0 � 2@ E� YP l� �` �� �p �� ΀ � �� 	 � 0( C� W8 j� ~H �� �X �� �h �� �x   � . A� U  h� |0 �� �@ �� �P �� �` � p +� ?� S f� z �� �( �� �8 �� �H � X )� =h P� dx x  �� � �� �  ٨ �0 	 � 	@ 	'� 	;P 	N� 	b` 	u� 	�p 	�� 	�� 	� 	א 	� 	�� 
( 
%� 
98 
L� 
`H 
s� 
�X 
�� 
�h 
�� 
�x 
�  
��  #� 7  J� ^0 q� �@ �� �P �� �` �� �p � !� 5 H� \ o� �( �� �8 �� �H �� �X � h 2� Fx Z  m� � �� �  �� �0 � �@ 	� P 0� D` W� kp ~� �� � �� � � �( � 8 .� BH U� iX |� �h �� �x �  ވ � �   ,� @0 S� g@ z� �P �� �` �� �p �� �  *� > Q� e( x� �8 �� �H �� �X �� h � (x <  O� c v� �  �� �0 ĸ �@ �� �P � &` 9� Mp `� t� � �� �   �( � �8 � $H 7� KX ^� rh �� �x �  �� � � �  � "0 5� I@ \� pP �� �` �� �p �� � � �   3� G( Z� n8 �� �H �� �X �� �h �� 
x   1� E X� l  � �0 �� �@ �� �P �� ` � /p B� V� j }� � �� �( ˰ �8 �� H � -X @� Th g� {x �  �� � ɘ �  � 0 � +@ >� RP e� y` �� �p �� ǀ � �  � )( <� P8 c� wH �� �X �� �h �� �x    � ' :� N  a� u0 �� �@ �� �P �� �` �� p $� 8� L _� s �� �( �� �8 �� �H �� X "� 6h I� ]x q  �� � �� �  Ҩ �0 �� @  � 4P G� [` n� �p �� �� � А � ��  (  �  28  E�  YH  l�  �X  ��  �h  ��  �x  �   �� !	 !� !0  !C� !W0 !j� !~@ !�� !�P !�� !�` !�� !�p "� "� ". "A� "U "h� "|( "�� "�8 "�� "�H "�� "�X #� #h #+� #?x #S  #f� #z #�� #�  #�� #�0 #۸ #�@ $� $P $)� $=` $P� $dp $w� $�� $� $�� $� $٠ $�( % � %8 %'� %;H %N� %bX %u� %�h %�� %�x %�  %׈ %� %�� &  &%� &90 &L� &`@ &s� &�P &�� &�` &�� &�p &�� &�� ' '#� '7 'J� '^( 'q� '�8 '�� '�H '�� '�X '�� '�h (� (!x (5  (H� (\ (o� (�  (�� (�0 (�� (�@ (�� (�P )� )` )2� )Fp )Y� )m� )� )�� )� )�� )�( )� )�8 *	� *H *0� *DX *W� *kh *~� *�x *�  *�� *� *�� *�  +� +0 +.� +B@ +U� +iP +|� +�` +�� +�p +�� +ހ +� ,� , ,,� ,@( ,S� ,g8 ,z� ,�H ,�� ,�X ,�� ,�h ,�� -x -  -*� -> -Q� -e  -x� -�0 -�� -�@ -�� -�P -�� .` .� .(p .;� .O� .c .v� .� .�� .�( .İ .�8 .�� .�H /� /&X /9� /Mh /`� /tx /�  /�� /� / /�  /� /�0 0� 0$@ 07� 0KP 0^� 0r` 0�� 0�p 0�� 0�� 0� 0� 0� 1� 1"( 15� 1I8 1\� 1pH 1�� 1�X 1�� 1�h 1�� 1�x 1�  2� 2  23� 2G  2Z� 2n0 2�� 2�@ 2�� 2�P 2�� 2�` 2�� 3
p 3� 31� 3E 3X� 3l 3� 3�( 3�� 3�8 3�� 3�H 3�� 4X 4� 4/h 4B� 4Vx 4j  4}� 4� 4�� 4�  4˨ 4�0 4� 5@ 5� 5-P 5@� 5T` 5g� 5{p 5�� 5�� 5� 5ɐ 5� 5� 6( 6� 6+8 6>� 6RH 6e� 6yX 6�� 6�h 6�� 6�x 6�  6� 7 7� 7)  7<� 7P0 7c� 7w@ 7�� 7�P 7�� 7�` 7�� 7�p 7�� 8� 8' 8:� 8N 8a� 8u( 8�� 8�8 8�� 8�H 8�� 8�X 8�� 9h 9$� 98x 9L  9_� 9s 9�� 9�  9�� 9�0 9Ը 9�@ 9�� :P :"� :6` :I� :]p :p� :�� :� :�� :� :Ҡ :�( :�� ;8 ; � ;4H ;G� ;[X ;n� ;�h ;�� ;�x ;�  ;Ј ;� ;�� <  <� <20 <E� <Y@ <l� <�P <�� <�` <�� <�p <�� <�� =	 =� =0 =C� =W( =j� =~8 =�� =�H =�� =�X =�� =�h >� >� >A� >d� >�� >� >�� >�� >� ? 0 ??p ?V� m� 6�    a� B�     ;  3 qi >�  �     m     C  � a�     7     2�  Y a�     7     >�  ]� a�     7     J;  u2 a�     \     u3 A a�     \     �� 0i a�     \     �� [a a�       5 i�  C    JY NA R) e� V Y� ]� Fq >�     7     Y�  U�         :   DCR_BASEADDR_DECODE_I m� >�     E  5 i� a� >�     :   MULTI_DEVADDR_BITS_GEN uQ  �     E  3 qi B�  �     S  $     ]�  :� }!      Q4    y9 �	     ��     S  $     ]� �� }!     @    �	     q    A }! ��     � ��         ��       J     �� K�              �                         [� _�       ��     ��  �\ �I     S �!     ��  F �I     S ��    �y �a W�     S �!    [a  F �     S �!      F �     S ��    �1 � ��     S �!    �!  ^ ��     S ��    � �� P     S F�    K�  ]� HA     � E�         ��     o  Q     �� �q         HA     S F�    K�  } �)     � ��         �A     o  S     �Y �q         �)     r         �q    �A L)     S F�    K�  �A ��     � ��         ��     o  U     �� �q         ��     r         �    �� L)     S F�    K�  �� �i     � l�         �     o  W     � �q         �i     r         �    � L)     S F�    K�  �� �	     � ��         �!     o  Y     �9 �q         �	     r         �Q    �! L)     S F�    K�  � �     � Б         	�     o  [     � �q         �     r         �    	� L)     S F�    K� A I     � ��         a     o  ]     y �q         I     r         �    a L)     S F�    K� 8� ,�     � �         )     o  _     % �q         ,�     r         !1    ) L)     V     r� 4�     
    0�  ^ 8�      r�    4� <�     � 8�         @q     o  b     <� �q         DY     r          �<    @q L)     r         ��    �� L)     <  P       	 HA �) �� �i �	 � I ,� DY P     r         ��    L) S�     <  O        P W�     r         �I    S� [�     <  N        W� ��     a  L c� ��     ��  �     :   READDAT_REG g�  �     E  L c� _�  �     � �q         ��     S �!    [a  F w!     S �!      F w!     S ��    oQ s9 ~�     S �!    �!  F ~�     S ��    w! {	 ��     �    ~� ki ��     J    �� �� �y     �  ��         ��     �     �< �� ��       i     ��  �              �                         � ��       ��     ��  �\ �     S �!     ��  F �     S ��    �I �1 �)     S �!     �� o5 �Y     V      ��     
    ��  F ��          �� ��     � ��         ��     o  t     �� �         �Y     >    � D9 �     �  F         �     @             @             o  u     �Y �q         �Y     >    � O� ��     �  ^         ��     @            @            o  v     �� ��         �Y     >    � [� �!     �  ^         �!     @            @            o  w     �i �         �Y     S �!    "�  F ��     S �!    [a  F ��     S ��    �	 �� �     S �!    �!  ^ �     S ��    �� � �1     S F�    K�  ]� �a     � �1         a     o  }     y �         �a     S F�    K� 8� m9     >    � D9 2�     >    �1 D9 #     �          2�     @             @             @             o       # 1         m9     >    � O� M�     >    �1 O� >Y     � :q         M�     @            @            @            o  �     >Y 6�         m9     >    � [� iQ     >    �1 [� Y�     � U�         iQ     @            @            @            o  �     Y� Q�         m9     r         I    2� M� iQ �I     V      u	     
    q!  ^ x�          u	 |�     � x�         ��     o  �     |� �         �y     � �         ��     o  �     �� �         �y     r          �<    �� �� �I     r         �    a �I     <  |        �a m9 �y �1     r         �    �I �A     V      �     
    �  ^ ��          � ��     � ��         ��     o  �     �� �         �q     � �         ��     o  �     �� �         �q     r          �<    �� �� �A     r         �    �� � �� �! �A     <  s        �Y �1 �q �)     r         �    �A �     <  r        �) �a     a  p �� �a     ��  �     :   DCRWRITE_REG ��  �     E  p �� ��  �                         	y a       ��     ��  �\ �i     S �!     ��  F �i     S ��    ڙ ށ �     S .    �	 �� �9     S  ޮ    �� �� �!     � �9         �     Y    �  �*         Y    ^  �Z         Y     � �Q         Y     �� [a         o  �     �! �!         �     r         �i    � 	y     <  �        � ֱ     a  � I ֱ     ��  �     :   
DCRACK_REG 1  �     E  � I a  �     %     �  �  r  � �z     �      �   �/opt/york/cs/net/xilinx-design-suite-14.3-x86_64-1/14.3/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/plb_v46_v1_05_a/hdl/vhdl/dcr_regs.vhd   �         
       dcr_regs   implementation   plb_v46_v1_05_a      dcr_regs   implementation   plb_v46_v1_05_a      dcr_regs       plb_v46_v1_05_a      	pselect_f       proc_common_v3_00_a      standard       std      proc_common_pkg       proc_common_v3_00_a      std_logic_1164       ieee      vcomponents       unisim      family_support       proc_common_v3_00_a      	pselect_f   imp   proc_common_v3_00_a