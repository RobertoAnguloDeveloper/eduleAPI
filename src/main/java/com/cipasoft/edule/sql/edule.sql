PGDMP                  
    {            edule-3    16.0    16.0 (    q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            r           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            s           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            t           1262    17986    edule-3    DATABASE        CREATE DATABASE "edule-3" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "edule-3";
                postgres    false            K          0    17987 
   classrooms 
   TABLE DATA                 public          postgres    false    215   �       M          0    17991    comments 
   TABLE DATA                 public          postgres    false    217   7       n          0    18376    cycles 
   TABLE DATA                 public          postgres    false    250   Q       k          0    18364    cylces 
   TABLE DATA                 public          postgres    false    247   +       O          0    17997    days 
   TABLE DATA                 public          postgres    false    219   E       Q          0    18001    hours 
   TABLE DATA                 public          postgres    false    221   �       R          0    18004 
   hours_days 
   TABLE DATA                 public          postgres    false    222   "       g          0    18252    hours_subjects 
   TABLE DATA                 public          postgres    false    243   �       T          0    18013    parents 
   TABLE DATA                 public          postgres    false    224   �       V          0    18019    roles 
   TABLE DATA                 public          postgres    false    226   �        i          0    18333 	   schedules 
   TABLE DATA                 public          postgres    false    245   �!       X          0    18023    students 
   TABLE DATA                 public          postgres    false    228   �"       Z          0    18029    subjects 
   TABLE DATA                 public          postgres    false    230   �#       [          0    18034    subjects_classrooms 
   TABLE DATA                 public          postgres    false    231   �$       ^          0    18039    topic_contents 
   TABLE DATA                 public          postgres    false    234   �%       `          0    18045    topics 
   TABLE DATA                 public          postgres    false    236   �%       b          0    18051    users 
   TABLE DATA                 public          postgres    false    238   �%       d          0    18057    users_subjects 
   TABLE DATA                 public          postgres    false    240   g'       �           0    0    classrooms_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.classrooms_id_seq', 1, false);
          public          postgres    false    216            �           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 1, false);
          public          postgres    false    218            �           0    0    cycles_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cycles_id_seq', 1, false);
          public          postgres    false    248            �           0    0    cycles_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cycles_id_seq1', 30, true);
          public          postgres    false    249            �           0    0    days_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.days_id_seq', 1, false);
          public          postgres    false    220            �           0    0    hours_days_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hours_days_id_seq', 16, true);
          public          postgres    false    223            �           0    0    hours_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.hours_id_seq', 8, true);
          public          postgres    false    244            �           0    0    parents_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.parents_id_seq', 7, true);
          public          postgres    false    225            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    227            �           0    0    schedules_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.schedules_id_seq', 16, true);
          public          postgres    false    246            �           0    0    students_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.students_id_seq', 6, true);
          public          postgres    false    229            �           0    0    subjects_classrooms_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.subjects_classrooms_id_seq', 20, true);
          public          postgres    false    232            �           0    0    subjects_hours_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.subjects_hours_id_seq', 24, true);
          public          postgres    false    242            �           0    0    subjects_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.subjects_id_seq', 10, true);
          public          postgres    false    233            �           0    0    topic_contents_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.topic_contents_id_seq', 1, false);
          public          postgres    false    235            �           0    0    topics_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.topics_id_seq', 1, false);
          public          postgres    false    237            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 13, true);
          public          postgres    false    239            �           0    0    users_subjects_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.users_subjects_id_seq', 8, true);
          public          postgres    false    241            K   [   x���v
Q���W((M��L�K�I,..���-Vs�	uV�0�QP7tT״��$J�H��ꍁ�H0����M��I0��l> ZjU      M   
   x���          n   �   x���=
�@��>��R!Hvv7?XY�H��`!���ۛ�.�[>����0N����rr��}yλ�;/�����~r_����b�kM֐��(�M�	�z�t5��,��ʲ�,��+a�缴�7a��a��Ga�'aXc]_�5aX��5:a�C*aV��!�f¬�aVâ0�aI�X7X��0��
��0�*�\�(~rv�      k   
   x���          O   S   x���v
Q���W((M��L�KI�,Vs�	uV�0�Q0Դ��$��HG��e�:
�D(3�Q0!B����)��t̀ʸ� Q�B9      Q   j   x���v
Q���W((M��L���/-*Vs�	uV�0�QP70�20 "uMk.OB�@,H�`�`I��C4��4������� �$h� i0Ah�� I�i�      R   �   x��ѻ
�P���<Ŗ
A�sKB*�$m�K���R���y�����?5]}�%5}+���o��9��������NV��r��$�[xK{�h��=�|�}�����s�����3���n1��b�P��@|��4`�WЈ����/H�      g   �   x���M
�@��}O��B�&�Ǖ�.
R�V�BKAEP���3���}��'M��Ǟ��?�k�qs}.��2/�}?3�w�S��J��[o���F������dJ�&eʘR�q��*����bʡ�p�1P��j��k�G�0$b�Ib0�Ԁ$Y� LI�9�(����T�468���aN�'�]�nu��=T}}]~.      T   E  x���]O�0���+z�&b�G��WF������}'�VJ
d���sJ	K4��pΡO��m�-�����Î�ñ�-S��;����%�q�S���|�?���4�J�'�'�0ѐ���S����JǺ}X��{] ^����X�QP�s�I'؃�$U=Y�5x/R-�z l��Y�o	�;�#c��i
�4��s^*}�{Y*qf��M�׿㵈)#��]h� dlP:��Es%�͵R��.ٱ/#���G���-���k��d;��!�KK���p��� �L8�/t��?�ؑk2�j�iG�VQ�&O�d�脦�Qx������      V   �   x���1O�0���
o=�
	��P��;�)k�s"�ħ8���e��~��?���`���	��e�t�xqo�8����䄙S]�t�L�
�娡�uۙ�ZP}��3ZeT}�\ua�U���7��O��0���#d�z��Vg�]�-������H��O�����'��1��ٲ^>e�iA���#���U\�y��U�רo�      i   �   x���A
�0E�9�,��ۤ��r�E@*����
]��w2^��_�0����}��7�n��3�q���2��\m/;x�۟]b��K��^t5�/���QY=��]��'/����S_�x��N���̃.�{��Q�}�>Q�н� ��� �UTV��s?vv�l      X   0  x��RMk�0��+��BY�+Zz��,�B�m�Y0�1nm�}3I؂�� �13�{�Kմ��ѯ��?]Μu�\�<֧��o�;?x����YR8�(NR��Z�C'����ؖ	+EB�B�4�������k�x4�Z���}��4�#å�

���9�:əD�>�A����1��%�
R���(�7���i��b�2b+#�!#�3J���d�3,`�0���H����H��d����_����Y�f���[:y���6�V@�C �[�g�[3�� r�T�T?X�?��h��y�[�ݒ      Z   	  x����J�0�{�bnU�~��X�n0�K�zO���ۥI�g���L��D(�60�o�?C
�+��%��hyn��CIg��38�� }�ɳ4T��r#���a��:hG�U��cBp�A|=k�u1ؕ7p�����[�my��)+Ύ"���F�7A)s�(0^?�R�M[���z��HY�J���w�ޅ8��J:!��h�=�Ta�<�?���)ЌJ�B~��E���N��z�-���p''9��i)��1I~ �=      [   �   x���=
�@E�~VqK��$��,RHm�)�H�1���܀N�u�5m}�����܏7�	s�;\�x�5M���n�[�b��zk��
,AB�T�R0d�9AA�RPR�T��/�8��XB�=��}��0Rb��H]���#u"B��D5��g�      ^   
   x���          `   
   x���          b   �  x����R�0��<Eo��Д/�����m�&$N��>>�/�&���q�K�����lw;�?O�d6_>%ou)8���U����srEn�v���u�%e�X�PBɭU��~\KNA�2	��;T�s�b�S��2_��mkv	���`X�=h�*�>�)��iJ�� �I���БaX��pR9�5g��:�oR��}t�0��A����e����:��Y�����@P�\�O�c��:^�	��L����� �I����1�8v�\��M��|���5����9:F�cÁ3��Lb)�;�N/B\��^ ���H�zC�.�6����[jpҌ�*r�x7={���˯�];��&N�;�?h�U�1+���c�Β�̒U�Y�ڠp��Iu�<��l��	]P�u      d   z   x���v
Q���W((M��L�+-N-*�/.M�JM.)Vs�	uV�0�Q "#Mk.O��5�(����AG��$=&@:
�$�1j�Q0#I�P���9Iźt,H�ck��� ^~�     