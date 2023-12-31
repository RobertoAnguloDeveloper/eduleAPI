PGDMP  -    ,            
    {            edule    16.1    16.1 �    y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            {           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            |           1262    16811    edule    DATABASE     x   CREATE DATABASE edule WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE edule;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            }           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16812 
   classrooms    TABLE     f   CREATE TABLE public.classrooms (
    id integer NOT NULL,
    classroom_name character varying(50)
);
    DROP TABLE public.classrooms;
       public         heap    postgres    false    4            �            1259    16815    classrooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.classrooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.classrooms_id_seq;
       public          postgres    false    4    215            ~           0    0    classrooms_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.classrooms_id_seq OWNED BY public.classrooms.id;
          public          postgres    false    216            �            1259    16816    combined_user    TABLE     8  CREATE TABLE public.combined_user (
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
       public         heap    postgres    false    4            �            1259    16821    comments    TABLE     t   CREATE TABLE public.comments (
    id integer NOT NULL,
    comment text,
    score integer,
    user_id integer
);
    DROP TABLE public.comments;
       public         heap    postgres    false    4            �            1259    16826    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    218    4                       0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    219            �            1259    17066    current_cycles    TABLE     �   CREATE TABLE public.current_cycles (
    id integer NOT NULL,
    current_day integer,
    update_date character varying(255),
    incident_description text
);
 "   DROP TABLE public.current_cycles;
       public         heap    postgres    false    4            �            1259    17065    current_cycles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.current_cycles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.current_cycles_id_seq;
       public          postgres    false    4    250            �           0    0    current_cycles_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.current_cycles_id_seq OWNED BY public.current_cycles.id;
          public          postgres    false    249            �            1259    16827    cycles    TABLE     f   CREATE TABLE public.cycles (
    id integer NOT NULL,
    cycle_number integer,
    day_id integer
);
    DROP TABLE public.cycles;
       public         heap    postgres    false    4            �            1259    16830    cycles_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.cycles_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cycles_id_seq1;
       public          postgres    false    220    4            �           0    0    cycles_id_seq1    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.cycles_id_seq1 OWNED BY public.cycles.id;
          public          postgres    false    221            �            1259    16831    days    TABLE     N   CREATE TABLE public.days (
    id integer NOT NULL,
    day_number integer
);
    DROP TABLE public.days;
       public         heap    postgres    false    4            �            1259    16834    days_id_seq    SEQUENCE     �   CREATE SEQUENCE public.days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.days_id_seq;
       public          postgres    false    222    4            �           0    0    days_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.days_id_seq OWNED BY public.days.id;
          public          postgres    false    223            �            1259    16835    hours_id_seq    SEQUENCE     }   CREATE SEQUENCE public.hours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999999
    CACHE 1;
 #   DROP SEQUENCE public.hours_id_seq;
       public          postgres    false    4            �            1259    16836    hours    TABLE     �   CREATE TABLE public.hours (
    id integer DEFAULT nextval('public.hours_id_seq'::regclass) NOT NULL,
    hour time without time zone
);
    DROP TABLE public.hours;
       public         heap    postgres    false    224    4            �            1259    16840 
   hours_days    TABLE     e   CREATE TABLE public.hours_days (
    id integer NOT NULL,
    day_id integer,
    hour_id integer
);
    DROP TABLE public.hours_days;
       public         heap    postgres    false    4            �            1259    16843    hours_days_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hours_days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.hours_days_id_seq;
       public          postgres    false    226    4            �           0    0    hours_days_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.hours_days_id_seq OWNED BY public.hours_days.id;
          public          postgres    false    227            �            1259    16844    parents    TABLE     �  CREATE TABLE public.parents (
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
       public         heap    postgres    false    4            �            1259    16849    parents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.parents_id_seq;
       public          postgres    false    228    4            �           0    0    parents_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.parents_id_seq OWNED BY public.parents.id;
          public          postgres    false    229            �            1259    16850    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    role_name character varying(50),
    role_description character varying(255)
);
    DROP TABLE public.roles;
       public         heap    postgres    false    4            �            1259    16853    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    230    4            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    231            �            1259    16854 	   schedules    TABLE     v   CREATE TABLE public.schedules (
    id integer NOT NULL,
    hour_day_id integer,
    subject_classroom_id integer
);
    DROP TABLE public.schedules;
       public         heap    postgres    false    4            �            1259    16857    schedules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.schedules_id_seq;
       public          postgres    false    232    4            �           0    0    schedules_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.schedules_id_seq OWNED BY public.schedules.id;
          public          postgres    false    233            �            1259    16858    students    TABLE     �  CREATE TABLE public.students (
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
       public         heap    postgres    false    4            �            1259    16863    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public          postgres    false    4    234            �           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public          postgres    false    235            �            1259    16864    subjects    TABLE     �   CREATE TABLE public.subjects (
    id integer NOT NULL,
    subject_name character varying(100) NOT NULL,
    description text NOT NULL
);
    DROP TABLE public.subjects;
       public         heap    postgres    false    4            �            1259    16869    subjects_classrooms    TABLE     �   CREATE TABLE public.subjects_classrooms (
    id integer NOT NULL,
    subject_id integer NOT NULL,
    classroom_id integer NOT NULL
);
 '   DROP TABLE public.subjects_classrooms;
       public         heap    postgres    false    4            �            1259    16872    subjects_classrooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_classrooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.subjects_classrooms_id_seq;
       public          postgres    false    4    237            �           0    0    subjects_classrooms_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.subjects_classrooms_id_seq OWNED BY public.subjects_classrooms.id;
          public          postgres    false    238            �            1259    16873    subjects_hours_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_hours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ,   DROP SEQUENCE public.subjects_hours_id_seq;
       public          postgres    false    225    4            �           0    0    subjects_hours_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.subjects_hours_id_seq OWNED BY public.hours.id;
          public          postgres    false    239            �            1259    16874    subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.subjects_id_seq;
       public          postgres    false    236    4            �           0    0    subjects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;
          public          postgres    false    240            �            1259    16875    topic_contents    TABLE     �   CREATE TABLE public.topic_contents (
    id integer NOT NULL,
    activity text,
    pending_homework text,
    resources text,
    topic_id integer NOT NULL
);
 "   DROP TABLE public.topic_contents;
       public         heap    postgres    false    4            �            1259    16880    topic_contents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topic_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.topic_contents_id_seq;
       public          postgres    false    4    241            �           0    0    topic_contents_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.topic_contents_id_seq OWNED BY public.topic_contents.id;
          public          postgres    false    242            �            1259    16881    topics    TABLE     �   CREATE TABLE public.topics (
    id integer NOT NULL,
    topic_name character varying(100),
    description text,
    subject_id integer
);
    DROP TABLE public.topics;
       public         heap    postgres    false    4            �            1259    16886    topics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.topics_id_seq;
       public          postgres    false    243    4            �           0    0    topics_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;
          public          postgres    false    244            �            1259    16887    users    TABLE     �  CREATE TABLE public.users (
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
       public         heap    postgres    false    4            �            1259    16892    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    4    245            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    246            �            1259    16893    users_subjects    TABLE        CREATE TABLE public.users_subjects (
    id integer NOT NULL,
    subject_id integer NOT NULL,
    user_id integer NOT NULL
);
 "   DROP TABLE public.users_subjects;
       public         heap    postgres    false    4            �            1259    16896    users_subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.users_subjects_id_seq;
       public          postgres    false    247    4            �           0    0    users_subjects_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.users_subjects_id_seq OWNED BY public.users_subjects.id;
          public          postgres    false    248            o           2604    16897    classrooms id    DEFAULT     n   ALTER TABLE ONLY public.classrooms ALTER COLUMN id SET DEFAULT nextval('public.classrooms_id_seq'::regclass);
 <   ALTER TABLE public.classrooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            p           2604    16898    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218                       2604    17069    current_cycles id    DEFAULT     v   ALTER TABLE ONLY public.current_cycles ALTER COLUMN id SET DEFAULT nextval('public.current_cycles_id_seq'::regclass);
 @   ALTER TABLE public.current_cycles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            q           2604    16899 	   cycles id    DEFAULT     g   ALTER TABLE ONLY public.cycles ALTER COLUMN id SET DEFAULT nextval('public.cycles_id_seq1'::regclass);
 8   ALTER TABLE public.cycles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            r           2604    16900    days id    DEFAULT     b   ALTER TABLE ONLY public.days ALTER COLUMN id SET DEFAULT nextval('public.days_id_seq'::regclass);
 6   ALTER TABLE public.days ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            t           2604    16901    hours_days id    DEFAULT     n   ALTER TABLE ONLY public.hours_days ALTER COLUMN id SET DEFAULT nextval('public.hours_days_id_seq'::regclass);
 <   ALTER TABLE public.hours_days ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            u           2604    16902 
   parents id    DEFAULT     h   ALTER TABLE ONLY public.parents ALTER COLUMN id SET DEFAULT nextval('public.parents_id_seq'::regclass);
 9   ALTER TABLE public.parents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            v           2604    16903    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            w           2604    16904    schedules id    DEFAULT     l   ALTER TABLE ONLY public.schedules ALTER COLUMN id SET DEFAULT nextval('public.schedules_id_seq'::regclass);
 ;   ALTER TABLE public.schedules ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            x           2604    16905    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            y           2604    16906    subjects id    DEFAULT     j   ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);
 :   ALTER TABLE public.subjects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    236            z           2604    16907    subjects_classrooms id    DEFAULT     �   ALTER TABLE ONLY public.subjects_classrooms ALTER COLUMN id SET DEFAULT nextval('public.subjects_classrooms_id_seq'::regclass);
 E   ALTER TABLE public.subjects_classrooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            {           2604    16908    topic_contents id    DEFAULT     v   ALTER TABLE ONLY public.topic_contents ALTER COLUMN id SET DEFAULT nextval('public.topic_contents_id_seq'::regclass);
 @   ALTER TABLE public.topic_contents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            |           2604    16909 	   topics id    DEFAULT     f   ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);
 8   ALTER TABLE public.topics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            }           2604    16910    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245            ~           2604    16911    users_subjects id    DEFAULT     v   ALTER TABLE ONLY public.users_subjects ALTER COLUMN id SET DEFAULT nextval('public.users_subjects_id_seq'::regclass);
 @   ALTER TABLE public.users_subjects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            S          0    16812 
   classrooms 
   TABLE DATA                 public          postgres    false    215   ��       U          0    16816    combined_user 
   TABLE DATA                 public          postgres    false    217   0�       V          0    16821    comments 
   TABLE DATA                 public          postgres    false    218   J�       v          0    17066    current_cycles 
   TABLE DATA                 public          postgres    false    250   �       X          0    16827    cycles 
   TABLE DATA                 public          postgres    false    220   l�       Z          0    16831    days 
   TABLE DATA                 public          postgres    false    222   ^�       ]          0    16836    hours 
   TABLE DATA                 public          postgres    false    225   ٬       ^          0    16840 
   hours_days 
   TABLE DATA                 public          postgres    false    226   l�       `          0    16844    parents 
   TABLE DATA                 public          postgres    false    228   ��       b          0    16850    roles 
   TABLE DATA                 public          postgres    false    230   T�       d          0    16854 	   schedules 
   TABLE DATA                 public          postgres    false    232   K�       f          0    16858    students 
   TABLE DATA                 public          postgres    false    234   Դ       h          0    16864    subjects 
   TABLE DATA                 public          postgres    false    236   �       i          0    16869    subjects_classrooms 
   TABLE DATA                 public          postgres    false    237   R�       m          0    16875    topic_contents 
   TABLE DATA                 public          postgres    false    241   i�       o          0    16881    topics 
   TABLE DATA                 public          postgres    false    243   ��       q          0    16887    users 
   TABLE DATA                 public          postgres    false    245   H�       s          0    16893    users_subjects 
   TABLE DATA                 public          postgres    false    247   D�       �           0    0    classrooms_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.classrooms_id_seq', 1, false);
          public          postgres    false    216            �           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 1, false);
          public          postgres    false    219            �           0    0    current_cycles_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.current_cycles_id_seq', 1, true);
          public          postgres    false    249            �           0    0    cycles_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cycles_id_seq1', 30, true);
          public          postgres    false    221            �           0    0    days_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.days_id_seq', 1, false);
          public          postgres    false    223            �           0    0    hours_days_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hours_days_id_seq', 48, true);
          public          postgres    false    227            �           0    0    hours_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.hours_id_seq', 8, true);
          public          postgres    false    224            �           0    0    parents_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.parents_id_seq', 9, true);
          public          postgres    false    229            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    231            �           0    0    schedules_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.schedules_id_seq', 144, true);
          public          postgres    false    233            �           0    0    students_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.students_id_seq', 8, true);
          public          postgres    false    235            �           0    0    subjects_classrooms_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.subjects_classrooms_id_seq', 36, true);
          public          postgres    false    238            �           0    0    subjects_hours_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.subjects_hours_id_seq', 24, true);
          public          postgres    false    239            �           0    0    subjects_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.subjects_id_seq', 21, true);
          public          postgres    false    240            �           0    0    topic_contents_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.topic_contents_id_seq', 14, true);
          public          postgres    false    242            �           0    0    topics_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.topics_id_seq', 9, true);
          public          postgres    false    244            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 17, true);
          public          postgres    false    246            �           0    0    users_subjects_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.users_subjects_id_seq', 11, true);
          public          postgres    false    248            �           2606    16913    classrooms classrooms_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT classrooms_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT classrooms_pkey;
       public            postgres    false    215            �           2606    16915     combined_user combined_user_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.combined_user
    ADD CONSTRAINT combined_user_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.combined_user DROP CONSTRAINT combined_user_pkey;
       public            postgres    false    217            �           2606    16917    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    218            �           2606    17073 !   current_cycles current_cycle_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.current_cycles
    ADD CONSTRAINT current_cycle_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.current_cycles DROP CONSTRAINT current_cycle_pkey;
       public            postgres    false    250            �           2606    16919    cycles cycles_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cycles
    ADD CONSTRAINT cycles_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cycles DROP CONSTRAINT cycles_pkey;
       public            postgres    false    220            �           2606    16921    days days_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.days
    ADD CONSTRAINT days_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.days DROP CONSTRAINT days_pkey;
       public            postgres    false    222            �           2606    16923    hours_days hours_days_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.hours_days
    ADD CONSTRAINT hours_days_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.hours_days DROP CONSTRAINT hours_days_pkey;
       public            postgres    false    226            �           2606    16925    hours hours_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.hours
    ADD CONSTRAINT hours_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hours DROP CONSTRAINT hours_pkey;
       public            postgres    false    225            �           2606    16927    students identification_unique 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT identification_unique UNIQUE (identification);
 H   ALTER TABLE ONLY public.students DROP CONSTRAINT identification_unique;
       public            postgres    false    234            �           2606    16929    parents parents_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.parents
    ADD CONSTRAINT parents_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.parents DROP CONSTRAINT parents_pkey;
       public            postgres    false    228            �           2606    16931    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    230            �           2606    16933    schedules schedules_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.schedules DROP CONSTRAINT schedules_pkey;
       public            postgres    false    232            �           2606    16935    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    234            �           2606    16937 ,   subjects_classrooms subjects_classrooms_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.subjects_classrooms
    ADD CONSTRAINT subjects_classrooms_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.subjects_classrooms DROP CONSTRAINT subjects_classrooms_pkey;
       public            postgres    false    237            �           2606    16939    subjects subjects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public            postgres    false    236            �           2606    16941 "   topic_contents topic_contents_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.topic_contents
    ADD CONSTRAINT topic_contents_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.topic_contents DROP CONSTRAINT topic_contents_pkey;
       public            postgres    false    241            �           2606    16943    topics topics_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_pkey;
       public            postgres    false    243            �           2606    16945    parents unique_identi 
   CONSTRAINT     Z   ALTER TABLE ONLY public.parents
    ADD CONSTRAINT unique_identi UNIQUE (identification);
 ?   ALTER TABLE ONLY public.parents DROP CONSTRAINT unique_identi;
       public            postgres    false    228            �           2606    16947 '   students unique_identification_students 
   CONSTRAINT     l   ALTER TABLE ONLY public.students
    ADD CONSTRAINT unique_identification_students UNIQUE (identification);
 Q   ALTER TABLE ONLY public.students DROP CONSTRAINT unique_identification_students;
       public            postgres    false    234            �           2606    16949 !   users unique_identification_users 
   CONSTRAINT     f   ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_identification_users UNIQUE (identification);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT unique_identification_users;
       public            postgres    false    245            �           2606    16951    parents unique_username 
   CONSTRAINT     V   ALTER TABLE ONLY public.parents
    ADD CONSTRAINT unique_username UNIQUE (username);
 A   ALTER TABLE ONLY public.parents DROP CONSTRAINT unique_username;
       public            postgres    false    228            �           2606    16953 !   students unique_username_students 
   CONSTRAINT     `   ALTER TABLE ONLY public.students
    ADD CONSTRAINT unique_username_students UNIQUE (username);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT unique_username_students;
       public            postgres    false    234            �           2606    16955    users unique_username_users 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_username_users UNIQUE (username);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT unique_username_users;
       public            postgres    false    245            �           2606    16957    users users_identification_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_identification_key UNIQUE (identification);
 H   ALTER TABLE ONLY public.users DROP CONSTRAINT users_identification_key;
       public            postgres    false    245            �           2606    16959    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    245            �           2606    16961 "   users_subjects users_subjects_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.users_subjects
    ADD CONSTRAINT users_subjects_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.users_subjects DROP CONSTRAINT users_subjects_pkey;
       public            postgres    false    247            �           2606    17074 -   current_cycles current_cycle_current_day_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.current_cycles
    ADD CONSTRAINT current_cycle_current_day_fkey FOREIGN KEY (current_day) REFERENCES public.days(id);
 W   ALTER TABLE ONLY public.current_cycles DROP CONSTRAINT current_cycle_current_day_fkey;
       public          postgres    false    222    250    4745            �           2606    16962    students fk_classroom_student    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_classroom_student FOREIGN KEY (classroom_id) REFERENCES public.classrooms(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.students DROP CONSTRAINT fk_classroom_student;
       public          postgres    false    4737    234    215            �           2606    16967 *   subjects_classrooms fk_classrooms_subjects    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects_classrooms
    ADD CONSTRAINT fk_classrooms_subjects FOREIGN KEY (classroom_id) REFERENCES public.classrooms(id) NOT VALID;
 T   ALTER TABLE ONLY public.subjects_classrooms DROP CONSTRAINT fk_classrooms_subjects;
       public          postgres    false    4737    215    237            �           2606    16972    comments fk_comments_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_comments_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_comments_users;
       public          postgres    false    245    218    4783            �           2606    16977    hours_days fk_day    FK CONSTRAINT     x   ALTER TABLE ONLY public.hours_days
    ADD CONSTRAINT fk_day FOREIGN KEY (day_id) REFERENCES public.days(id) NOT VALID;
 ;   ALTER TABLE ONLY public.hours_days DROP CONSTRAINT fk_day;
       public          postgres    false    222    226    4745            �           2606    16982    hours_days fk_hour    FK CONSTRAINT     {   ALTER TABLE ONLY public.hours_days
    ADD CONSTRAINT fk_hour FOREIGN KEY (hour_id) REFERENCES public.hours(id) NOT VALID;
 <   ALTER TABLE ONLY public.hours_days DROP CONSTRAINT fk_hour;
       public          postgres    false    225    4747    226            �           2606    16987    schedules fk_hour_day    FK CONSTRAINT     }   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT fk_hour_day FOREIGN KEY (hour_day_id) REFERENCES public.hours_days(id);
 ?   ALTER TABLE ONLY public.schedules DROP CONSTRAINT fk_hour_day;
       public          postgres    false    226    4749    232            �           2606    16992    students fk_parent    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_parent FOREIGN KEY (parent_id) REFERENCES public.parents(id) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.students DROP CONSTRAINT fk_parent;
       public          postgres    false    4751    234    228            �           2606    16997    schedules fk_subject_classroom    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT fk_subject_classroom FOREIGN KEY (subject_classroom_id) REFERENCES public.subjects_classrooms(id);
 H   ALTER TABLE ONLY public.schedules DROP CONSTRAINT fk_subject_classroom;
       public          postgres    false    232    237    4771            �           2606    17002    users_subjects fk_subject_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_subjects
    ADD CONSTRAINT fk_subject_id FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.users_subjects DROP CONSTRAINT fk_subject_id;
       public          postgres    false    247    4769    236            �           2606    17007    topics fk_subject_id_classes    FK CONSTRAINT     �   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT fk_subject_id_classes FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.topics DROP CONSTRAINT fk_subject_id_classes;
       public          postgres    false    243    236    4769            �           2606    17012 *   subjects_classrooms fk_subjects_classrooms    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects_classrooms
    ADD CONSTRAINT fk_subjects_classrooms FOREIGN KEY (subject_id) REFERENCES public.subjects(id) NOT VALID;
 T   ALTER TABLE ONLY public.subjects_classrooms DROP CONSTRAINT fk_subjects_classrooms;
       public          postgres    false    236    237    4769            �           2606    17017 "   topic_contents fk_topic_content_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.topic_contents
    ADD CONSTRAINT fk_topic_content_id FOREIGN KEY (topic_id) REFERENCES public.topics(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.topic_contents DROP CONSTRAINT fk_topic_content_id;
       public          postgres    false    241    243    4775            �           2606    17022    users_subjects fk_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_subjects
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.users_subjects DROP CONSTRAINT fk_user_id;
       public          postgres    false    247    4783    245            �           2606    17027    users fk_users_roles    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_roles FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_roles;
       public          postgres    false    4757    245    230            �           2606    17032 "   cycles fkh0cealih0siplx7b4npvbrij8    FK CONSTRAINT        ALTER TABLE ONLY public.cycles
    ADD CONSTRAINT fkh0cealih0siplx7b4npvbrij8 FOREIGN KEY (day_id) REFERENCES public.days(id);
 L   ALTER TABLE ONLY public.cycles DROP CONSTRAINT fkh0cealih0siplx7b4npvbrij8;
       public          postgres    false    4745    220    222            S   t   x���v
Q���W((M��L�K�I,..���-Vs�	uV�0�QP7tT�T��Sp��s��tQp�W�����s���$�#�1Nc4ƈrט����5�@c�)w��|��� ��y�      U   
   x���          V   �   x���v
Q���W((M��L�K���M�+)Vs�	uV�0�QP��,V �D���������������������s�����������5�'F�v��/�H-�� d��L7�Q0��tc��
%�E)��
�6�� D�O�      v   w   x���v
Q���W((M��L�K.-*J�+�O�L�I-Vs�	uV�0�Q "u##c]CC]##+#+cK=CcSc]Su�PM?g?7O�?�O?wk... �!      X   �   x��Խ
�0��OqG�"�M���Ԫ����>��A� ��oo{@��C���Cߞ�a��|ߦǸ?�t�u�]�^V&��%ib8t�d%����q�����P�� ,C8�!r9C�G�R0D	�*R���� �"&�A%1�,�&FaPQ��AU1���0�.�Hۥ��u�`p]j���`P]t9dUT�0�.�`P]4��u�wZ�]J\�
ץ�Au��]��	=-�      Z   k   x���v
Q���W((M��L�KI�,Vs�	uV�0�Q0�T��Sp��s��tQp�W�����s���$��HG��|��:
���6�Q0!_����)���t�p��� Z�f�      ]   �   x���v
Q���W((M��L���/-*Vs�	uV�0�QP70�20 "uM?g?7O�?�O?wk.OB��̱��c�9���c4�ЀrsLA�Rn��#��1�cL�9 sL��� 㭚�      ^   <  x��ֽJ1��~�"���|?�d��uՁ%w�
Aq�»w�\�'��i򆜩�ws��\�����������}x|}�9�����vN�,��4�6�\���j(u����E7��Q0�2�X��8�D0�e��2��e2��2�r�����Q8t:bp�v����H�C�#	��,5[�~2��ݏ�p�~T����¡�Q�C����G���ſ����� ��'������X���ݏ)�[W�~����'¡�����8|?�����{8t?�.���¡�q��/g�C��ݏ'8t?>����p���~E?�
      `   �  x���]k�0���+r��R?�-�ٰ�sX�jw��к�����c-l0�Ɠ���<9z���%��U�!ώ�pZ65z��n��4uӖ�ME�f�n�ز�+�`�g"1��іd%��~�s)M��T��q���+B�9M��J{߿Ga��0x�='A�a���ǉ�7�.�~#]ɸȚ3��ma�еX$f��� Gn^��«\����q'�ό��>i9�*[��_���L�1��($��6W��2�X;a|T�ےj��0%�%��l�k�]�\���7-�����8ګɁʚ�����h�Z ���+�L���������a��g��oX1�����2W8N�`us������d��`�R��ڛ����l�s�*�q�ʸ�V�?a'�o�	N,      b   �   x���AO� ����VM��	[VI0-�ڰ@"��Ѓ�^ֵ��i�Mf�}y��t�`\
�����M�Mx%�DG\�6��Y�w)G�C��`�^耩��<��vL6(�@x��t��#��������� �񧇊��~W̤U��~�
�|@G�r�1*+�NN��Rg|�>'(o�ú����he��ty�q~��£�7�Rڎ�V�4�E�CX�>l�%Ӽ�_�����      d   y  x���Ok�A���sTXd2�OR�.�]���ZP�A(��&y�,���:�'�y������%O�s������㻗�_O?_��^������9$�ަ�)ݞO����N�˗�������d)�d���~���I�Nf�B�2�8$�6�e�~�̲����̲�8�MKV�2&1v�gF�^�H�`�E؂EGb�D1�`�ق���lA�Ka�`*
��`�(�lc{��OQ�=�<ʲ�п4
�] �� ]f �ق/�=ϛﰪ4[�U�ق�Ԫ4׈!�^�ʏ<Ui�`�ؘ�y���lA��^��7FU�-h~�們�ٸ0r4{�xnʲ�OS�[��lss��=�=`�j
s�����@7�ق>׆r���٥KX���v���).^B�Wu���zs�*�C߻뗰��&�ا+�g��x7$�&h䫅����h�@�h�F������ct��h@��[�p1���[dlؘ�?�3C�h�����W����-2+��&{6}k�C�h�怓��NF��\�2��+��eh��,�z[�U ft��
3�9ZjF���p3��rFs�&�nڵ�g<�~Fs�3�.���.P4z����h��G�9��F_��4���tM+t�vc4E�5���V��g����{��M��K�\]�
�5��]��{�ܱ/��ͣ�	] i��h�%��ڌ>�6&�-���N;"���b�`\w����k�#��kd��?��5*!<��*�~x�F-�-�uc�n�#��F3�'��_����j�5�'�QĄ"^����F��k2���G��+��-��y�}�"x���*V�2�X�L�xZ����o�ϓ�#[���K�qw���}19#(���w����Zb�      f      x���Mk�0�����la\?v�����M�*��=gM�H4b֕��f�<�!3��0��<9�E���$x��@Y{V�������_!�UV��߽d��� �����#*�=Qa������� �#JQ_�o>���-�R��ҧ�h��4+^p�|��8:䍗a��4��T�/���f�o�F����K��:$i����O.'���f��Q��f?�4�5�W(\B.�������ll30%�S/�^�=ed��%�b���T��-3��N��Z�s'Ӿ*�V)�K�q�<��u      h   >  x����N� ��>Ź�&�X���aGDX
��1\q�]
}��G؋YV�f���	��K���rIr�+�nQ9s�ś5��b�p���乐��x�3�+�=�6-�>���K;9���(V0���Q��'��y�Fj6 :�#}4��r`H���C����\�J� �i������.0E�*��|{�q����c��=�F3*�N�m�Vn�Y����U�9�~6LS����O�	z��r�BA�-hX�V�̿�cY��l/?���6�Bz��(FCÃ3z�A��X�$2(���+	���GbJ8&C�����?a�PI��|s�      i     x��ӽJAF�~��+���]�B~t ̀�؊YR"����wzAx��Owbڭ_F�i��u;�?��r;���wy���\/��"���~��;�d�^r�eN�m\��ʒ����c��%��Y%��9%��y%��%��uJ:��+�ޠd`z���Z�8�A}DχP/���1���L;�L{�L��M������D�ԝ���;EWw&�;[�3�3�3�3�-v&�;A������D�՝���;�Pw�Cl���e�      m   
   x���          o   �   x��ͻ
�@��>O1]D�=��$Q�.��`PXL|�b����/>m���@gaz_~�.��.��o:XE^Q�]�m^~Z���������9��rP[0֝�9������9C,!"���H����#0�"#"���ȉ�9C.!
"
��PH����#0�B�8�� � "�      q   �  x����r�0��<�n�3&�	6����;��$4��֊B��#��6}��XV+p�P����ٻZ����n��bS����䓮�a����{�.���i_ųi:F}g*a[��Ro;E��v!;%&�����Յ�Y�j5~�ʂ����:_mا���k^|�嗘bL��\҃�\�֣)��N,���Ӓ�ma+4L��z����Q��?S�	1%�U�!��V��H@�,�����`Q�Z�@��Y+ENx=@u���Ƅ)�K�f~�3��e�]h�&\c��u'}�@�q)�� �7�I1a�ECO �S����m�� ��*sG�8�FIM��M������|Co�4Ǆ�	RX�4��o��=�&��A��+��T����џ�ʩ�3W��a��"�g�,};Sy�SB?c%ɡ���9�[�,�}�D�ѩ�ZA�{&�����z������3��I��]�k�D�U'*��&��/�?9�R�D�^d�^ =-"�      s   �   x��ҽ
1�>O1��"���J�SG^��B�c�ߍ 3���;t'c��3��۴�a~�k��}���m�,4��-�,Zg��i=v������2S;�\���!T����Jv�U�C�%��B#A5|�u����ZdF����cI�>���s     