PGDMP              	    
    {            edule    16.0    16.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17979    edule    DATABASE     {   CREATE DATABASE edule WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE edule;
                postgres    false            �            1259    17980 
   classrooms    TABLE     f   CREATE TABLE public.classrooms (
    id integer NOT NULL,
    classroom_name character varying(50)
);
    DROP TABLE public.classrooms;
       public         heap    postgres    false            �            1259    17983    classrooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.classrooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.classrooms_id_seq;
       public          postgres    false    215            �           0    0    classrooms_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.classrooms_id_seq OWNED BY public.classrooms.id;
          public          postgres    false    216            �            1259    18199    combined_user    TABLE     8  CREATE TABLE public.combined_user (
    id integer NOT NULL,
    email character varying(255),
    first_name character varying(255),
    identification character varying(255),
    last_name character varying(255),
    password character varying(255),
    role_id integer,
    username character varying(255)
);
 !   DROP TABLE public.combined_user;
       public         heap    postgres    false            �            1259    17984    comments    TABLE     t   CREATE TABLE public.comments (
    id integer NOT NULL,
    comment text,
    score integer,
    user_id integer
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    17989    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    217            �           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    218            �            1259    17990    cycles    TABLE     f   CREATE TABLE public.cycles (
    id integer NOT NULL,
    cycle_number integer,
    day_id integer
);
    DROP TABLE public.cycles;
       public         heap    postgres    false            �            1259    17993    cycles_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.cycles_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cycles_id_seq1;
       public          postgres    false    219            �           0    0    cycles_id_seq1    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.cycles_id_seq1 OWNED BY public.cycles.id;
          public          postgres    false    220            �            1259    17994    days    TABLE     N   CREATE TABLE public.days (
    id integer NOT NULL,
    day_number integer
);
    DROP TABLE public.days;
       public         heap    postgres    false            �            1259    17997    days_id_seq    SEQUENCE     �   CREATE SEQUENCE public.days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.days_id_seq;
       public          postgres    false    221            �           0    0    days_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.days_id_seq OWNED BY public.days.id;
          public          postgres    false    222            �            1259    17998    hours_id_seq    SEQUENCE     }   CREATE SEQUENCE public.hours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999999
    CACHE 1;
 #   DROP SEQUENCE public.hours_id_seq;
       public          postgres    false            �            1259    17999    hours    TABLE     �   CREATE TABLE public.hours (
    id integer DEFAULT nextval('public.hours_id_seq'::regclass) NOT NULL,
    hour time without time zone
);
    DROP TABLE public.hours;
       public         heap    postgres    false    223            �            1259    18003 
   hours_days    TABLE     e   CREATE TABLE public.hours_days (
    id integer NOT NULL,
    day_id integer,
    hour_id integer
);
    DROP TABLE public.hours_days;
       public         heap    postgres    false            �            1259    18006    hours_days_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hours_days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.hours_days_id_seq;
       public          postgres    false    225            �           0    0    hours_days_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.hours_days_id_seq OWNED BY public.hours_days.id;
          public          postgres    false    226            �            1259    18007    parents    TABLE     �  CREATE TABLE public.parents (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    identification character varying(30) NOT NULL,
    phone_number character varying(50) NOT NULL,
    address text NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(8) NOT NULL,
    id_type character varying,
    email character varying,
    cc character varying(255)
);
    DROP TABLE public.parents;
       public         heap    postgres    false            �            1259    18012    parents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.parents_id_seq;
       public          postgres    false    227            �           0    0    parents_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.parents_id_seq OWNED BY public.parents.id;
          public          postgres    false    228            �            1259    18013    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    role_name character varying(50),
    role_description character varying(255)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    18016    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    229            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    230            �            1259    18017 	   schedules    TABLE     v   CREATE TABLE public.schedules (
    id integer NOT NULL,
    hour_day_id integer,
    subject_classroom_id integer
);
    DROP TABLE public.schedules;
       public         heap    postgres    false            �            1259    18020    schedules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.schedules_id_seq;
       public          postgres    false    231            �           0    0    schedules_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.schedules_id_seq OWNED BY public.schedules.id;
          public          postgres    false    232            �            1259    18021    students    TABLE     �  CREATE TABLE public.students (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    identification character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(8) NOT NULL,
    classroom_id integer NOT NULL,
    parent_id integer NOT NULL,
    id_type character varying(255)
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    18026    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public          postgres    false    233            �           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public          postgres    false    234            �            1259    18027    subjects    TABLE     �   CREATE TABLE public.subjects (
    id integer NOT NULL,
    subject_name character varying(100) NOT NULL,
    description text NOT NULL
);
    DROP TABLE public.subjects;
       public         heap    postgres    false            �            1259    18032    subjects_classrooms    TABLE     �   CREATE TABLE public.subjects_classrooms (
    id integer NOT NULL,
    subject_id integer NOT NULL,
    classroom_id integer NOT NULL
);
 '   DROP TABLE public.subjects_classrooms;
       public         heap    postgres    false            �            1259    18035    subjects_classrooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_classrooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.subjects_classrooms_id_seq;
       public          postgres    false    236            �           0    0    subjects_classrooms_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.subjects_classrooms_id_seq OWNED BY public.subjects_classrooms.id;
          public          postgres    false    237            �            1259    18036    subjects_hours_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_hours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ,   DROP SEQUENCE public.subjects_hours_id_seq;
       public          postgres    false    224            �           0    0    subjects_hours_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.subjects_hours_id_seq OWNED BY public.hours.id;
          public          postgres    false    238            �            1259    18037    subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.subjects_id_seq;
       public          postgres    false    235            �           0    0    subjects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;
          public          postgres    false    239            �            1259    18038    topic_contents    TABLE     �   CREATE TABLE public.topic_contents (
    id integer NOT NULL,
    topic_name character varying(100) NOT NULL,
    activity text,
    pending_homework text,
    resources text,
    topic_id integer NOT NULL
);
 "   DROP TABLE public.topic_contents;
       public         heap    postgres    false            �            1259    18043    topic_contents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topic_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.topic_contents_id_seq;
       public          postgres    false    240            �           0    0    topic_contents_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.topic_contents_id_seq OWNED BY public.topic_contents.id;
          public          postgres    false    241            �            1259    18044    topics    TABLE     �   CREATE TABLE public.topics (
    id integer NOT NULL,
    topic_name character varying(100),
    description text,
    subject_id integer
);
    DROP TABLE public.topics;
       public         heap    postgres    false            �            1259    18049    topics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.topics_id_seq;
       public          postgres    false    242            �           0    0    topics_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;
          public          postgres    false    243            �            1259    18050    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    identification character varying(20) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100),
    role_id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    id_type character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    18055    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    244            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    245            �            1259    18056    users_subjects    TABLE        CREATE TABLE public.users_subjects (
    id integer NOT NULL,
    subject_id integer NOT NULL,
    user_id integer NOT NULL
);
 "   DROP TABLE public.users_subjects;
       public         heap    postgres    false            �            1259    18059    users_subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.users_subjects_id_seq;
       public          postgres    false    246            �           0    0    users_subjects_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.users_subjects_id_seq OWNED BY public.users_subjects.id;
          public          postgres    false    247            �           2604    18060    classrooms id    DEFAULT     n   ALTER TABLE ONLY public.classrooms ALTER COLUMN id SET DEFAULT nextval('public.classrooms_id_seq'::regclass);
 <   ALTER TABLE public.classrooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    18061    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    18062 	   cycles id    DEFAULT     g   ALTER TABLE ONLY public.cycles ALTER COLUMN id SET DEFAULT nextval('public.cycles_id_seq1'::regclass);
 8   ALTER TABLE public.cycles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    18063    days id    DEFAULT     b   ALTER TABLE ONLY public.days ALTER COLUMN id SET DEFAULT nextval('public.days_id_seq'::regclass);
 6   ALTER TABLE public.days ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    18064    hours_days id    DEFAULT     n   ALTER TABLE ONLY public.hours_days ALTER COLUMN id SET DEFAULT nextval('public.hours_days_id_seq'::regclass);
 <   ALTER TABLE public.hours_days ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    18065 
   parents id    DEFAULT     h   ALTER TABLE ONLY public.parents ALTER COLUMN id SET DEFAULT nextval('public.parents_id_seq'::regclass);
 9   ALTER TABLE public.parents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    18066    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    18067    schedules id    DEFAULT     l   ALTER TABLE ONLY public.schedules ALTER COLUMN id SET DEFAULT nextval('public.schedules_id_seq'::regclass);
 ;   ALTER TABLE public.schedules ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    18068    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    18069    subjects id    DEFAULT     j   ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);
 :   ALTER TABLE public.subjects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    235            �           2604    18070    subjects_classrooms id    DEFAULT     �   ALTER TABLE ONLY public.subjects_classrooms ALTER COLUMN id SET DEFAULT nextval('public.subjects_classrooms_id_seq'::regclass);
 E   ALTER TABLE public.subjects_classrooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    18071    topic_contents id    DEFAULT     v   ALTER TABLE ONLY public.topic_contents ALTER COLUMN id SET DEFAULT nextval('public.topic_contents_id_seq'::regclass);
 @   ALTER TABLE public.topic_contents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    18072 	   topics id    DEFAULT     f   ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);
 8   ALTER TABLE public.topics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �           2604    18073    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            �           2604    18074    users_subjects id    DEFAULT     v   ALTER TABLE ONLY public.users_subjects ALTER COLUMN id SET DEFAULT nextval('public.users_subjects_id_seq'::regclass);
 @   ALTER TABLE public.users_subjects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            �          0    17980 
   classrooms 
   TABLE DATA                 public          postgres    false    215   F�       �          0    18199    combined_user 
   TABLE DATA                 public          postgres    false    248   ��       �          0    17984    comments 
   TABLE DATA                 public          postgres    false    217   ˞       �          0    17990    cycles 
   TABLE DATA                 public          postgres    false    219   O�       �          0    17994    days 
   TABLE DATA                 public          postgres    false    221   )�       �          0    17999    hours 
   TABLE DATA                 public          postgres    false    224   ��       �          0    18003 
   hours_days 
   TABLE DATA                 public          postgres    false    225   �       �          0    18007    parents 
   TABLE DATA                 public          postgres    false    227   7�       �          0    18013    roles 
   TABLE DATA                 public          postgres    false    229   ��       �          0    18017 	   schedules 
   TABLE DATA                 public          postgres    false    231   ��       �          0    18021    students 
   TABLE DATA                 public          postgres    false    233   ��       �          0    18027    subjects 
   TABLE DATA                 public          postgres    false    235   �       �          0    18032    subjects_classrooms 
   TABLE DATA                 public          postgres    false    236   S�       �          0    18038    topic_contents 
   TABLE DATA                 public          postgres    false    240   M�       �          0    18044    topics 
   TABLE DATA                 public          postgres    false    242   '�       �          0    18050    users 
   TABLE DATA                 public          postgres    false    244   ۬       �          0    18056    users_subjects 
   TABLE DATA                 public          postgres    false    246   ��       �           0    0    classrooms_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.classrooms_id_seq', 1, false);
          public          postgres    false    216            �           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 1, false);
          public          postgres    false    218            �           0    0    cycles_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cycles_id_seq1', 30, true);
          public          postgres    false    220            �           0    0    days_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.days_id_seq', 1, false);
          public          postgres    false    222            �           0    0    hours_days_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hours_days_id_seq', 48, true);
          public          postgres    false    226            �           0    0    hours_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.hours_id_seq', 8, true);
          public          postgres    false    223            �           0    0    parents_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.parents_id_seq', 7, true);
          public          postgres    false    228            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    230            �           0    0    schedules_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.schedules_id_seq', 144, true);
          public          postgres    false    232            �           0    0    students_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.students_id_seq', 6, true);
          public          postgres    false    234            �           0    0    subjects_classrooms_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.subjects_classrooms_id_seq', 36, true);
          public          postgres    false    237            �           0    0    subjects_hours_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.subjects_hours_id_seq', 24, true);
          public          postgres    false    238            �           0    0    subjects_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.subjects_id_seq', 21, true);
          public          postgres    false    239            �           0    0    topic_contents_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.topic_contents_id_seq', 14, true);
          public          postgres    false    241            �           0    0    topics_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.topics_id_seq', 9, true);
          public          postgres    false    243            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 15, true);
          public          postgres    false    245            �           0    0    users_subjects_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.users_subjects_id_seq', 11, true);
          public          postgres    false    247            �           2606    18076    classrooms classrooms_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT classrooms_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT classrooms_pkey;
       public            postgres    false    215            �           2606    18205     combined_user combined_user_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.combined_user
    ADD CONSTRAINT combined_user_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.combined_user DROP CONSTRAINT combined_user_pkey;
       public            postgres    false    248            �           2606    18078    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    217            �           2606    18080    cycles cycles_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cycles
    ADD CONSTRAINT cycles_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cycles DROP CONSTRAINT cycles_pkey;
       public            postgres    false    219            �           2606    18082    days days_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.days
    ADD CONSTRAINT days_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.days DROP CONSTRAINT days_pkey;
       public            postgres    false    221            �           2606    18084    hours_days hours_days_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.hours_days
    ADD CONSTRAINT hours_days_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.hours_days DROP CONSTRAINT hours_days_pkey;
       public            postgres    false    225            �           2606    18086    hours hours_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.hours
    ADD CONSTRAINT hours_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hours DROP CONSTRAINT hours_pkey;
       public            postgres    false    224            �           2606    18088    students identification_unique 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT identification_unique UNIQUE (identification);
 H   ALTER TABLE ONLY public.students DROP CONSTRAINT identification_unique;
       public            postgres    false    233            �           2606    18090    parents parents_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.parents
    ADD CONSTRAINT parents_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.parents DROP CONSTRAINT parents_pkey;
       public            postgres    false    227            �           2606    18092    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    229            �           2606    18094    schedules schedules_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.schedules DROP CONSTRAINT schedules_pkey;
       public            postgres    false    231            �           2606    18096    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    233            �           2606    18098 ,   subjects_classrooms subjects_classrooms_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.subjects_classrooms
    ADD CONSTRAINT subjects_classrooms_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.subjects_classrooms DROP CONSTRAINT subjects_classrooms_pkey;
       public            postgres    false    236            �           2606    18100    subjects subjects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public            postgres    false    235            �           2606    18102 "   topic_contents topic_contents_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.topic_contents
    ADD CONSTRAINT topic_contents_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.topic_contents DROP CONSTRAINT topic_contents_pkey;
       public            postgres    false    240            �           2606    18104    topics topics_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_pkey;
       public            postgres    false    242            �           2606    18188    parents unique_identi 
   CONSTRAINT     Z   ALTER TABLE ONLY public.parents
    ADD CONSTRAINT unique_identi UNIQUE (identification);
 ?   ALTER TABLE ONLY public.parents DROP CONSTRAINT unique_identi;
       public            postgres    false    227            �           2606    18192 '   students unique_identification_students 
   CONSTRAINT     l   ALTER TABLE ONLY public.students
    ADD CONSTRAINT unique_identification_students UNIQUE (identification);
 Q   ALTER TABLE ONLY public.students DROP CONSTRAINT unique_identification_students;
       public            postgres    false    233            �           2606    18196 !   users unique_identification_users 
   CONSTRAINT     f   ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_identification_users UNIQUE (identification);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT unique_identification_users;
       public            postgres    false    244            �           2606    18190    parents unique_username 
   CONSTRAINT     V   ALTER TABLE ONLY public.parents
    ADD CONSTRAINT unique_username UNIQUE (username);
 A   ALTER TABLE ONLY public.parents DROP CONSTRAINT unique_username;
       public            postgres    false    227            �           2606    18194 !   students unique_username_students 
   CONSTRAINT     `   ALTER TABLE ONLY public.students
    ADD CONSTRAINT unique_username_students UNIQUE (username);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT unique_username_students;
       public            postgres    false    233            �           2606    18198    users unique_username_users 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_username_users UNIQUE (username);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT unique_username_users;
       public            postgres    false    244            �           2606    18106    users users_identification_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_identification_key UNIQUE (identification);
 H   ALTER TABLE ONLY public.users DROP CONSTRAINT users_identification_key;
       public            postgres    false    244            �           2606    18108    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    244            �           2606    18110 "   users_subjects users_subjects_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.users_subjects
    ADD CONSTRAINT users_subjects_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.users_subjects DROP CONSTRAINT users_subjects_pkey;
       public            postgres    false    246            �           2606    18111    students fk_classroom_student    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_classroom_student FOREIGN KEY (classroom_id) REFERENCES public.classrooms(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.students DROP CONSTRAINT fk_classroom_student;
       public          postgres    false    215    4785    233            �           2606    18116 *   subjects_classrooms fk_classrooms_subjects    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects_classrooms
    ADD CONSTRAINT fk_classrooms_subjects FOREIGN KEY (classroom_id) REFERENCES public.classrooms(id) NOT VALID;
 T   ALTER TABLE ONLY public.subjects_classrooms DROP CONSTRAINT fk_classrooms_subjects;
       public          postgres    false    4785    236    215            �           2606    18121    comments fk_comments_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_comments_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_comments_users;
       public          postgres    false    217    4829    244            �           2606    18126    hours_days fk_day    FK CONSTRAINT     x   ALTER TABLE ONLY public.hours_days
    ADD CONSTRAINT fk_day FOREIGN KEY (day_id) REFERENCES public.days(id) NOT VALID;
 ;   ALTER TABLE ONLY public.hours_days DROP CONSTRAINT fk_day;
       public          postgres    false    221    4791    225            �           2606    18131    hours_days fk_hour    FK CONSTRAINT     {   ALTER TABLE ONLY public.hours_days
    ADD CONSTRAINT fk_hour FOREIGN KEY (hour_id) REFERENCES public.hours(id) NOT VALID;
 <   ALTER TABLE ONLY public.hours_days DROP CONSTRAINT fk_hour;
       public          postgres    false    225    224    4793            �           2606    18136    schedules fk_hour_day    FK CONSTRAINT     }   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT fk_hour_day FOREIGN KEY (hour_day_id) REFERENCES public.hours_days(id);
 ?   ALTER TABLE ONLY public.schedules DROP CONSTRAINT fk_hour_day;
       public          postgres    false    225    231    4795            �           2606    18141    students fk_parent    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_parent FOREIGN KEY (parent_id) REFERENCES public.parents(id) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.students DROP CONSTRAINT fk_parent;
       public          postgres    false    4797    233    227            �           2606    18146    schedules fk_subject_classroom    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT fk_subject_classroom FOREIGN KEY (subject_classroom_id) REFERENCES public.subjects_classrooms(id);
 H   ALTER TABLE ONLY public.schedules DROP CONSTRAINT fk_subject_classroom;
       public          postgres    false    236    231    4817            �           2606    18151    users_subjects fk_subject_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_subjects
    ADD CONSTRAINT fk_subject_id FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.users_subjects DROP CONSTRAINT fk_subject_id;
       public          postgres    false    235    246    4815            �           2606    18156    topics fk_subject_id_classes    FK CONSTRAINT     �   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT fk_subject_id_classes FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.topics DROP CONSTRAINT fk_subject_id_classes;
       public          postgres    false    235    242    4815            �           2606    18161 *   subjects_classrooms fk_subjects_classrooms    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects_classrooms
    ADD CONSTRAINT fk_subjects_classrooms FOREIGN KEY (subject_id) REFERENCES public.subjects(id) NOT VALID;
 T   ALTER TABLE ONLY public.subjects_classrooms DROP CONSTRAINT fk_subjects_classrooms;
       public          postgres    false    235    236    4815            �           2606    18166 "   topic_contents fk_topic_content_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.topic_contents
    ADD CONSTRAINT fk_topic_content_id FOREIGN KEY (topic_id) REFERENCES public.topics(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.topic_contents DROP CONSTRAINT fk_topic_content_id;
       public          postgres    false    242    4821    240            �           2606    18171    users_subjects fk_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_subjects
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.users_subjects DROP CONSTRAINT fk_user_id;
       public          postgres    false    4829    244    246            �           2606    18176    users fk_users_roles    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_roles FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_roles;
       public          postgres    false    244    229    4803            �           2606    18181 "   cycles fkh0cealih0siplx7b4npvbrij8    FK CONSTRAINT        ALTER TABLE ONLY public.cycles
    ADD CONSTRAINT fkh0cealih0siplx7b4npvbrij8 FOREIGN KEY (day_id) REFERENCES public.days(id);
 L   ALTER TABLE ONLY public.cycles DROP CONSTRAINT fkh0cealih0siplx7b4npvbrij8;
       public          postgres    false    221    4791    219            �   [   x���v
Q���W((M��L�K�I,..���-Vs�	uV�0�QP7tT״��$J�H��ꍁ�H0����M��I0��l> ZjU      �   
   x���          �   t   x���v
Q���W((M��L�K���M�+)Vs�	uV�0�QP��,V �D�����������5�'f�p��/�H-��� d���1�Q0"�c�1
%�E)�
M�� �5=t      �   �   x���=
�@��>��R!Hvv7?XY�H��`!���ۛ�.�[>����0N����rr��}yλ�;/�����~r_����b�kM֐��(�M�	�z�t5��,��ʲ�,��+a�缴�7a��a��Ga�'aXc]_�5aX��5:a�C*aV��!�f¬�aVâ0�aI�X7X��0��
��0�*�\�(~rv�      �   S   x���v
Q���W((M��L�KI�,Vs�	uV�0�Q0Դ��$��HG��e�:
�D(3�Q0!B����)��t̀ʸ� Q�B9      �   j   x���v
Q���W((M��L���/-*Vs�	uV�0�QP70�20 "uMk.OB�@,H�`�`I��C4��4������� �$h� i0Ah�� I�i�      �   !  x��սJ�@��>W�RA$s��d���Y�]mşBAP\���M�+����f�!����c��������������{z~�;�O�w��CQ������io�M�;{���>���~���}���I�7�M���afο:@)�@1��8�nP�@G(#��P*��PVgO94���L�;�@�;X!��ts���@w�U:R��J�;�D�ph	��@w��@w�B�;���]���A�a	t���O	�F�p�	t�t����C��N�x��@w��@w�J�;�D�ph�C��.2�K      �   w  x���_o�0���}sK��?�^�8���ѽW�(Ц@L���[�5ٖ=�n�ɹ�r9��,��P��m�hE~�
"Y����9�G�s�8�-���U��<��q�p�OTc#��+�5p���J��k�@�\^�'Rª)����X���q���o����ys�b1�{�ӓ��:pW�(*�Ly�K�]��A�pXMIH+	�[����ہ�:��P{D�i�
p�w<�	�XXK*�pay4E��B�*�~O�R�-I�fI���qMLO��@#���b���i�r�Ӆc�d�T^��r��^yi��>����ǩOy��
x|�*���T��&I^��π�Iť�OS��E5}�C#}      �   �   x���1O�0���
o=�
	��P��;�)k�s"�ħ8���e��~��?���`���	��e�t�xqo�8����䄙S]�t�L�
�娡�uۙ�ZP}��3ZeT}�\ua�U���7��O��0���#d�z��Vg�]�-������H��O�����'��1��ٲ^>e�iA���#���U\�y��U�רo�      �   M  x���Kj1E�^Eh���'�<x��, �!��O}z�B�L�tJ�yu{x���t�������}������������������9�>~��!��<�C���o���y����������yط���<�k��ey�t���)� b9�T��{1��C���#��W�`�b<��/�0{� �0{x�a��kC�+�A�r<�({~�f<	ìj5�8��A$�Gz�T��L�g���q�ԕ�'�OB5����;�f<i?ѓ��j�=pN����_����D3��Q��94�ܨ��������3oJ3̍y�����f�=�%�T$8�^B��%4I<AC�7��$�.����-�{����a���3����ҙr;�	'1�eM0�!iM
�jhjc��&��h)Nx����D��N�^�t'��Jy«d�'���YR�pSҟ�+a�%Pp�̚�3�-
߫�S�ps�C)��L�«d��(��N��ww��(�ڗ\�4E
��UӤp��J�U�z���H��y��6�W�Z�S��>���%�
�|K�ck*��z9�W��S�<vO��ww��*����R<���'����D���W)��H��୕�aV�8�j�xۤ�p+ś?�g?��1Үp�Rf�Cd�_�ԥ�-�/,-���5�|x�@F��cM�E�X�"�%�(T�DN�%�P�˾ZU��<U��r��1j�"�Iq�<܇��{
Q0�G��p.�u�K�T�G�R�DܥM�Nq�6ܠ
&q�ُ6ܢ�D���y4���<\�.+�I�~\�%ר�"s�ڱh�q�~4�&��њ[W�����w�b      �     x����j�0��>En���&��K[���n����5#1����IR)x�C ?3��3�*�kT��74Lg)��\&��Šχ���B7��ϺU���4�/�g9&�#�Ζ��������)i��ȁ�R�R�⺌o����~MK����� ݋��n���`�#�<A�� ��E/�7��R
��$hnf[[#�V��"�r�C�&
˧W�`��g��CЌ^ϣ^��r���&wb�+:���@q��cЦ��Z����M�7Y����?��      �   )  x���ON� �}O�v��1���"�!b;)�=e���vR�A<�G��Y��Mؑ~�}��8)�L�*kԥ�/����J��,���{�)N�48� [�|v=��C�ˍ^�?'tw$V�&}�݌ɖ���#mm��"oG���B���w]?�F�wA�1E�(_)92҂�����G� �.i��B[S��o�>�8��r6!��hG� �-x�|k�x�� ���΅��������;���K�WaNA1�
䍒13���(�'	
�Q�\���S�a2G�*���$�!�*�      �   �   x��ҽJAF�~��+���]�R�X�&ڊY,���c�_��+��i��̻���`���h_���c�������S_��[�ߗ˹����y���l��������`tL���YF�8+�Gg#���	A������v�_�a���e�I��5-�E�9h["G}K�q���%�k]"C[����%4�u	�Z7Y�.���%rԺDNZ��k]"��%2h]"��%2�u	�m]BK[w�]��S�+      �   �   x���O�0��b7"r���AH��AkĨ��,z�9a����|���UV� /�h��ӥ-�*�كs�?e�� ����R��\~�8��ƛ;؉���1=K֋���WͷA�7��4)袠E��^T��2-䲐e�B~V�-lZ�ea�R��,�-bZ�e�RE�,��شb�[������JL+qY�e�JF+~����      �   �   x���A
�0��}N1�*��&iR\	vQ�
�z �B@L���v�npv����v}s�����3���'�����@1ोe�S|�qN�����;���J�J��P�,C��,FdY�,ga�"ˑ�8�YYga�D�'�s/�Y��0�U�Us�z������,      �   �  x����n�0�w�"�T!�@���(�(e�v1.52rަ�����ܛ>����;�ӷ�l����`[�R�V]r]���}�܅A3��v�t�&�ȹ�
���%�ªϗ��-Vl����A��-�a���1�e�4�2-�W�=�,���Nn��t+�����3���Ob�a{��(����,J��o�5'f��G��}�1%]		ʆ�����?J���(�`����K]y�o{��흠��eZ&�����Q �r�Z��k���&>�KC/�+��S����>J��3�!X�i+�P�܀��'ɠk��$�3�4âˆ��ڮ��(톯�����Y��¶Y�����/�	���zn�5��Q��l���������9�$�OB׭�����lY���M��5��h�8ž'�C����ޟd���/���      �   �   x��ѻ
�@��~��	!�RYX,�����"����l� sʯ��uc3Lp������\�_w��a~����Q��f��
x��f��&!�*�2������Be
A�2%��R����q*�#�mu�l�l\�g�.ßy     