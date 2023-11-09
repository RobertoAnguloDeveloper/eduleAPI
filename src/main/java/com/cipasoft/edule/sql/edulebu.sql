PGDMP              	    
    {            vincent    16.0    16.0 �    [           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            \           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ]           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ^           1262    18394    vincent    DATABASE     }   CREATE DATABASE vincent WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE vincent;
                postgres    false            �            1259    18395 
   classrooms    TABLE     f   CREATE TABLE public.classrooms (
    id integer NOT NULL,
    classroom_name character varying(50)
);
    DROP TABLE public.classrooms;
       public         heap    postgres    false            �            1259    18398    classrooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.classrooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.classrooms_id_seq;
       public          postgres    false    215            _           0    0    classrooms_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.classrooms_id_seq OWNED BY public.classrooms.id;
          public          postgres    false    216            �            1259    18399    comments    TABLE     t   CREATE TABLE public.comments (
    id integer NOT NULL,
    comment text,
    score integer,
    user_id integer
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    18404    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    217            `           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    218            �            1259    18405    cycles    TABLE     f   CREATE TABLE public.cycles (
    id integer NOT NULL,
    cycle_number integer,
    day_id integer
);
    DROP TABLE public.cycles;
       public         heap    postgres    false            �            1259    18408    cycles_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.cycles_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cycles_id_seq1;
       public          postgres    false    219            a           0    0    cycles_id_seq1    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.cycles_id_seq1 OWNED BY public.cycles.id;
          public          postgres    false    220            �            1259    18409    days    TABLE     N   CREATE TABLE public.days (
    id integer NOT NULL,
    day_number integer
);
    DROP TABLE public.days;
       public         heap    postgres    false            �            1259    18412    days_id_seq    SEQUENCE     �   CREATE SEQUENCE public.days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.days_id_seq;
       public          postgres    false    221            b           0    0    days_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.days_id_seq OWNED BY public.days.id;
          public          postgres    false    222            �            1259    18413    hours_id_seq    SEQUENCE     }   CREATE SEQUENCE public.hours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999999
    CACHE 1;
 #   DROP SEQUENCE public.hours_id_seq;
       public          postgres    false            �            1259    18414    hours    TABLE     �   CREATE TABLE public.hours (
    id integer DEFAULT nextval('public.hours_id_seq'::regclass) NOT NULL,
    hour time without time zone
);
    DROP TABLE public.hours;
       public         heap    postgres    false    223            �            1259    18418 
   hours_days    TABLE     e   CREATE TABLE public.hours_days (
    id integer NOT NULL,
    day_id integer,
    hour_id integer
);
    DROP TABLE public.hours_days;
       public         heap    postgres    false            �            1259    18421    hours_days_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hours_days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.hours_days_id_seq;
       public          postgres    false    225            c           0    0    hours_days_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.hours_days_id_seq OWNED BY public.hours_days.id;
          public          postgres    false    226            �            1259    18422    parents    TABLE     d  CREATE TABLE public.parents (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    cc character varying(30) NOT NULL,
    phone_number character varying(50) NOT NULL,
    address text NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(8) NOT NULL
);
    DROP TABLE public.parents;
       public         heap    postgres    false            �            1259    18427    parents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.parents_id_seq;
       public          postgres    false    227            d           0    0    parents_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.parents_id_seq OWNED BY public.parents.id;
          public          postgres    false    228            �            1259    18428    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    role_name character varying(50),
    role_description character varying(255)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    18431    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    229            e           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    230            �            1259    18432 	   schedules    TABLE     v   CREATE TABLE public.schedules (
    id integer NOT NULL,
    hour_day_id integer,
    subject_classroom_id integer
);
    DROP TABLE public.schedules;
       public         heap    postgres    false            �            1259    18435    schedules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.schedules_id_seq;
       public          postgres    false    231            f           0    0    schedules_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.schedules_id_seq OWNED BY public.schedules.id;
          public          postgres    false    232            �            1259    18436    students    TABLE     �  CREATE TABLE public.students (
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
       public         heap    postgres    false            �            1259    18441    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public          postgres    false    233            g           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public          postgres    false    234            �            1259    18442    subjects    TABLE     �   CREATE TABLE public.subjects (
    id integer NOT NULL,
    subject_name character varying(100) NOT NULL,
    description text NOT NULL
);
    DROP TABLE public.subjects;
       public         heap    postgres    false            �            1259    18447    subjects_classrooms    TABLE     �   CREATE TABLE public.subjects_classrooms (
    id integer NOT NULL,
    subject_id integer NOT NULL,
    classroom_id integer NOT NULL
);
 '   DROP TABLE public.subjects_classrooms;
       public         heap    postgres    false            �            1259    18450    subjects_classrooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_classrooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.subjects_classrooms_id_seq;
       public          postgres    false    236            h           0    0    subjects_classrooms_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.subjects_classrooms_id_seq OWNED BY public.subjects_classrooms.id;
          public          postgres    false    237            �            1259    18451    subjects_hours_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_hours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ,   DROP SEQUENCE public.subjects_hours_id_seq;
       public          postgres    false    224            i           0    0    subjects_hours_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.subjects_hours_id_seq OWNED BY public.hours.id;
          public          postgres    false    238            �            1259    18452    subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.subjects_id_seq;
       public          postgres    false    235            j           0    0    subjects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;
          public          postgres    false    239            �            1259    18453    topic_contents    TABLE     �   CREATE TABLE public.topic_contents (
    id integer NOT NULL,
    topic_name character varying(100) NOT NULL,
    activity text,
    pending_homework text,
    resources text,
    topic_id integer NOT NULL
);
 "   DROP TABLE public.topic_contents;
       public         heap    postgres    false            �            1259    18458    topic_contents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topic_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.topic_contents_id_seq;
       public          postgres    false    240            k           0    0    topic_contents_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.topic_contents_id_seq OWNED BY public.topic_contents.id;
          public          postgres    false    241            �            1259    18459    topics    TABLE     �   CREATE TABLE public.topics (
    id integer NOT NULL,
    topic_name character varying(100),
    description text,
    subject_id integer
);
    DROP TABLE public.topics;
       public         heap    postgres    false            �            1259    18464    topics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.topics_id_seq;
       public          postgres    false    242            l           0    0    topics_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;
          public          postgres    false    243            �            1259    18465    users    TABLE     �  CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    18470    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    244            m           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    245            �            1259    18471    users_subjects    TABLE        CREATE TABLE public.users_subjects (
    id integer NOT NULL,
    subject_id integer NOT NULL,
    user_id integer NOT NULL
);
 "   DROP TABLE public.users_subjects;
       public         heap    postgres    false            �            1259    18474    users_subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.users_subjects_id_seq;
       public          postgres    false    246            n           0    0    users_subjects_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.users_subjects_id_seq OWNED BY public.users_subjects.id;
          public          postgres    false    247            f           2604    18475    classrooms id    DEFAULT     n   ALTER TABLE ONLY public.classrooms ALTER COLUMN id SET DEFAULT nextval('public.classrooms_id_seq'::regclass);
 <   ALTER TABLE public.classrooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            g           2604    18476    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            h           2604    18477 	   cycles id    DEFAULT     g   ALTER TABLE ONLY public.cycles ALTER COLUMN id SET DEFAULT nextval('public.cycles_id_seq1'::regclass);
 8   ALTER TABLE public.cycles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            i           2604    18478    days id    DEFAULT     b   ALTER TABLE ONLY public.days ALTER COLUMN id SET DEFAULT nextval('public.days_id_seq'::regclass);
 6   ALTER TABLE public.days ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            k           2604    18479    hours_days id    DEFAULT     n   ALTER TABLE ONLY public.hours_days ALTER COLUMN id SET DEFAULT nextval('public.hours_days_id_seq'::regclass);
 <   ALTER TABLE public.hours_days ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            l           2604    18480 
   parents id    DEFAULT     h   ALTER TABLE ONLY public.parents ALTER COLUMN id SET DEFAULT nextval('public.parents_id_seq'::regclass);
 9   ALTER TABLE public.parents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            m           2604    18481    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            n           2604    18482    schedules id    DEFAULT     l   ALTER TABLE ONLY public.schedules ALTER COLUMN id SET DEFAULT nextval('public.schedules_id_seq'::regclass);
 ;   ALTER TABLE public.schedules ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            o           2604    18483    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            p           2604    18484    subjects id    DEFAULT     j   ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);
 :   ALTER TABLE public.subjects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    235            q           2604    18485    subjects_classrooms id    DEFAULT     �   ALTER TABLE ONLY public.subjects_classrooms ALTER COLUMN id SET DEFAULT nextval('public.subjects_classrooms_id_seq'::regclass);
 E   ALTER TABLE public.subjects_classrooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            r           2604    18486    topic_contents id    DEFAULT     v   ALTER TABLE ONLY public.topic_contents ALTER COLUMN id SET DEFAULT nextval('public.topic_contents_id_seq'::regclass);
 @   ALTER TABLE public.topic_contents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            s           2604    18487 	   topics id    DEFAULT     f   ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);
 8   ALTER TABLE public.topics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            t           2604    18488    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            u           2604    18489    users_subjects id    DEFAULT     v   ALTER TABLE ONLY public.users_subjects ALTER COLUMN id SET DEFAULT nextval('public.users_subjects_id_seq'::regclass);
 @   ALTER TABLE public.users_subjects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            8          0    18395 
   classrooms 
   TABLE DATA           8   COPY public.classrooms (id, classroom_name) FROM stdin;
    public          postgres    false    215   �       :          0    18399    comments 
   TABLE DATA           ?   COPY public.comments (id, comment, score, user_id) FROM stdin;
    public          postgres    false    217   Q�       <          0    18405    cycles 
   TABLE DATA           :   COPY public.cycles (id, cycle_number, day_id) FROM stdin;
    public          postgres    false    219   ��       >          0    18409    days 
   TABLE DATA           .   COPY public.days (id, day_number) FROM stdin;
    public          postgres    false    221   %�       A          0    18414    hours 
   TABLE DATA           )   COPY public.hours (id, hour) FROM stdin;
    public          postgres    false    224   Z�       B          0    18418 
   hours_days 
   TABLE DATA           9   COPY public.hours_days (id, day_id, hour_id) FROM stdin;
    public          postgres    false    225   ��       D          0    18422    parents 
   TABLE DATA           k   COPY public.parents (id, first_name, last_name, cc, phone_number, address, username, password) FROM stdin;
    public          postgres    false    227   S�       F          0    18428    roles 
   TABLE DATA           @   COPY public.roles (id, role_name, role_description) FROM stdin;
    public          postgres    false    229   _�       H          0    18432 	   schedules 
   TABLE DATA           J   COPY public.schedules (id, hour_day_id, subject_classroom_id) FROM stdin;
    public          postgres    false    231   �       J          0    18436    students 
   TABLE DATA           �   COPY public.students (id, first_name, last_name, identification, email, username, password, classroom_id, parent_id, id_type) FROM stdin;
    public          postgres    false    233   n�       L          0    18442    subjects 
   TABLE DATA           A   COPY public.subjects (id, subject_name, description) FROM stdin;
    public          postgres    false    235   \�       M          0    18447    subjects_classrooms 
   TABLE DATA           K   COPY public.subjects_classrooms (id, subject_id, classroom_id) FROM stdin;
    public          postgres    false    236   `�       Q          0    18453    topic_contents 
   TABLE DATA           i   COPY public.topic_contents (id, topic_name, activity, pending_homework, resources, topic_id) FROM stdin;
    public          postgres    false    240   �       S          0    18459    topics 
   TABLE DATA           I   COPY public.topics (id, topic_name, description, subject_id) FROM stdin;
    public          postgres    false    242   ��       U          0    18465    users 
   TABLE DATA           w   COPY public.users (id, identification, first_name, last_name, email, role_id, username, password, id_type) FROM stdin;
    public          postgres    false    244   �       W          0    18471    users_subjects 
   TABLE DATA           A   COPY public.users_subjects (id, subject_id, user_id) FROM stdin;
    public          postgres    false    246   K�       o           0    0    classrooms_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.classrooms_id_seq', 1, false);
          public          postgres    false    216            p           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 1, false);
          public          postgres    false    218            q           0    0    cycles_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cycles_id_seq1', 30, true);
          public          postgres    false    220            r           0    0    days_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.days_id_seq', 1, false);
          public          postgres    false    222            s           0    0    hours_days_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hours_days_id_seq', 48, true);
          public          postgres    false    226            t           0    0    hours_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.hours_id_seq', 8, true);
          public          postgres    false    223            u           0    0    parents_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.parents_id_seq', 7, true);
          public          postgres    false    228            v           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    230            w           0    0    schedules_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.schedules_id_seq', 144, true);
          public          postgres    false    232            x           0    0    students_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.students_id_seq', 6, true);
          public          postgres    false    234            y           0    0    subjects_classrooms_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.subjects_classrooms_id_seq', 36, true);
          public          postgres    false    237            z           0    0    subjects_hours_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.subjects_hours_id_seq', 24, true);
          public          postgres    false    238            {           0    0    subjects_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.subjects_id_seq', 21, true);
          public          postgres    false    239            |           0    0    topic_contents_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.topic_contents_id_seq', 14, true);
          public          postgres    false    241            }           0    0    topics_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.topics_id_seq', 9, true);
          public          postgres    false    243            ~           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 14, true);
          public          postgres    false    245                       0    0    users_subjects_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.users_subjects_id_seq', 8, true);
          public          postgres    false    247            w           2606    18491    classrooms classrooms_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT classrooms_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT classrooms_pkey;
       public            postgres    false    215            y           2606    18493    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    217            {           2606    18495    cycles cycles_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cycles
    ADD CONSTRAINT cycles_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cycles DROP CONSTRAINT cycles_pkey;
       public            postgres    false    219            }           2606    18497    days days_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.days
    ADD CONSTRAINT days_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.days DROP CONSTRAINT days_pkey;
       public            postgres    false    221            �           2606    18499    hours_days hours_days_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.hours_days
    ADD CONSTRAINT hours_days_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.hours_days DROP CONSTRAINT hours_days_pkey;
       public            postgres    false    225                       2606    18501    hours hours_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.hours
    ADD CONSTRAINT hours_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hours DROP CONSTRAINT hours_pkey;
       public            postgres    false    224            �           2606    18503    students identification_unique 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT identification_unique UNIQUE (identification);
 H   ALTER TABLE ONLY public.students DROP CONSTRAINT identification_unique;
       public            postgres    false    233            �           2606    18505    parents parents_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.parents
    ADD CONSTRAINT parents_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.parents DROP CONSTRAINT parents_pkey;
       public            postgres    false    227            �           2606    18507    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    229            �           2606    18509    schedules schedules_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.schedules DROP CONSTRAINT schedules_pkey;
       public            postgres    false    231            �           2606    18511    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    233            �           2606    18513 ,   subjects_classrooms subjects_classrooms_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.subjects_classrooms
    ADD CONSTRAINT subjects_classrooms_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.subjects_classrooms DROP CONSTRAINT subjects_classrooms_pkey;
       public            postgres    false    236            �           2606    18515    subjects subjects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public            postgres    false    235            �           2606    18517 "   topic_contents topic_contents_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.topic_contents
    ADD CONSTRAINT topic_contents_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.topic_contents DROP CONSTRAINT topic_contents_pkey;
       public            postgres    false    240            �           2606    18519    topics topics_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_pkey;
       public            postgres    false    242            �           2606    18521    users users_identification_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_identification_key UNIQUE (identification);
 H   ALTER TABLE ONLY public.users DROP CONSTRAINT users_identification_key;
       public            postgres    false    244            �           2606    18523    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    244            �           2606    18525 "   users_subjects users_subjects_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.users_subjects
    ADD CONSTRAINT users_subjects_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.users_subjects DROP CONSTRAINT users_subjects_pkey;
       public            postgres    false    246            �           2606    18526    students fk_classroom_student    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_classroom_student FOREIGN KEY (classroom_id) REFERENCES public.classrooms(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.students DROP CONSTRAINT fk_classroom_student;
       public          postgres    false    215    233    4727            �           2606    18531 *   subjects_classrooms fk_classrooms_subjects    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects_classrooms
    ADD CONSTRAINT fk_classrooms_subjects FOREIGN KEY (classroom_id) REFERENCES public.classrooms(id) NOT VALID;
 T   ALTER TABLE ONLY public.subjects_classrooms DROP CONSTRAINT fk_classrooms_subjects;
       public          postgres    false    215    4727    236            �           2606    18536    comments fk_comments_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_comments_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_comments_users;
       public          postgres    false    4759    217    244            �           2606    18541    hours_days fk_day    FK CONSTRAINT     x   ALTER TABLE ONLY public.hours_days
    ADD CONSTRAINT fk_day FOREIGN KEY (day_id) REFERENCES public.days(id) NOT VALID;
 ;   ALTER TABLE ONLY public.hours_days DROP CONSTRAINT fk_day;
       public          postgres    false    221    4733    225            �           2606    18546    hours_days fk_hour    FK CONSTRAINT     {   ALTER TABLE ONLY public.hours_days
    ADD CONSTRAINT fk_hour FOREIGN KEY (hour_id) REFERENCES public.hours(id) NOT VALID;
 <   ALTER TABLE ONLY public.hours_days DROP CONSTRAINT fk_hour;
       public          postgres    false    4735    224    225            �           2606    18551    schedules fk_hour_day    FK CONSTRAINT     }   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT fk_hour_day FOREIGN KEY (hour_day_id) REFERENCES public.hours_days(id);
 ?   ALTER TABLE ONLY public.schedules DROP CONSTRAINT fk_hour_day;
       public          postgres    false    231    4737    225            �           2606    18556    students fk_parent    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_parent FOREIGN KEY (parent_id) REFERENCES public.parents(id) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.students DROP CONSTRAINT fk_parent;
       public          postgres    false    233    4739    227            �           2606    18561    schedules fk_subject_classroom    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT fk_subject_classroom FOREIGN KEY (subject_classroom_id) REFERENCES public.subjects_classrooms(id);
 H   ALTER TABLE ONLY public.schedules DROP CONSTRAINT fk_subject_classroom;
       public          postgres    false    231    236    4751            �           2606    18566    users_subjects fk_subject_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_subjects
    ADD CONSTRAINT fk_subject_id FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.users_subjects DROP CONSTRAINT fk_subject_id;
       public          postgres    false    4749    246    235            �           2606    18571    topics fk_subject_id_classes    FK CONSTRAINT     �   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT fk_subject_id_classes FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.topics DROP CONSTRAINT fk_subject_id_classes;
       public          postgres    false    242    235    4749            �           2606    18576 *   subjects_classrooms fk_subjects_classrooms    FK CONSTRAINT     �   ALTER TABLE ONLY public.subjects_classrooms
    ADD CONSTRAINT fk_subjects_classrooms FOREIGN KEY (subject_id) REFERENCES public.subjects(id) NOT VALID;
 T   ALTER TABLE ONLY public.subjects_classrooms DROP CONSTRAINT fk_subjects_classrooms;
       public          postgres    false    235    4749    236            �           2606    18581 "   topic_contents fk_topic_content_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.topic_contents
    ADD CONSTRAINT fk_topic_content_id FOREIGN KEY (topic_id) REFERENCES public.topics(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.topic_contents DROP CONSTRAINT fk_topic_content_id;
       public          postgres    false    4755    240    242            �           2606    18586    users_subjects fk_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_subjects
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.users_subjects DROP CONSTRAINT fk_user_id;
       public          postgres    false    246    244    4759            �           2606    18591    users fk_users_roles    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_roles FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_roles;
       public          postgres    false    229    244    4741            �           2606    18596 "   cycles fkh0cealih0siplx7b4npvbrij8    FK CONSTRAINT        ALTER TABLE ONLY public.cycles
    ADD CONSTRAINT fkh0cealih0siplx7b4npvbrij8 FOREIGN KEY (day_id) REFERENCES public.days(id);
 L   ALTER TABLE ONLY public.cycles DROP CONSTRAINT fkh0cealih0siplx7b4npvbrij8;
       public          postgres    false    221    4733    219            8   +   x�3�4t�2�4t�2�4r�2�4r�2�4v�2�4v����� \Y      :   H   x�3���,V �D�����Լ=NSNC.#NǼ����"������i�i�e��P��Y���b�i����� ���      <   l   x���D!�s\̊����;\<=AFFʬ5٩bK�]�p�6�:�u٩��xTr�IRY��E���&�C���� ��	i��yi8Ҝ���'7A��di��~��j;      >   %   x�3�4�2�4�2�4�2�4�2�4�2�4����� 5Q�      A   8   x�-ƹ  ���|fa�9��t�	�C~Q��6p��; ��nB�]Pwo���a�      B   �   x���D!�N0[�0���^���FЖ-��� CI�yTd��֐����m�2,�b�,A�hY������� ���W�Vx��'�Y��+��x�.8�J��x�$xAG���-v@(
��� �Z��(�/� /����r�,P�xF�O�{�*�      D   �   x�U��j�0�ϣ���D��sJCBCs�e�E�ֶ�l��wW���m�|;�2�w+�.�)8��(mU7-���L�<��Q_|���0�<wF�8����ڦ�lY�&��2��z��e�8����
�(z�s�7O����rM�F�8�.��.��Q�Hٻ�Q���`!���Hk$�[����R�Z������60L�*Vq�FXTi���ϼ(Ş^�b�j����z�7�B�M�ӏ��(�O���{���A)���j�      F   �   x�=�K
�0���)� EPOm�XiӝP�I�H�H&]x{�n����_e���Kƒ����n��fQ��Ӏ���V�ԩ�����Z%7�8��ˢ��(;,��bAHJzx����X\,-P
�]�V(B낧yK������a�1�H��wG��9�f�2V0��<,]^VR���L�      H   D  x�%��qd1D�!������Ǳ��rWY�@�8CXX�2~|۶�����ǎ=�v-�����Gd|�҃� '��<��푆�G*�c�z\C|ކ��3Ծ>C�WJ_���_�$_i(�pl�p]C�!�ߣ��=�a�|/�3$�Ѥ�4�7s�"���w"3��̫�������ܖ�6�����J��c��%˓a�!�����bd��E��!��ڬ>�W��^���y �� ��=A��|C���(�����������Q�y�P�ʌO%��h��p�sC<����~���|SDȺ%$��#&��+&��-(�y�Bz�Bå���P�����)4�������P�[xd����	�/D������=���#|^	���2���m�BǴ�W_F���� ��R�4)�4}y��E�#Z��w�k�Z�������� 3���_P���~t`=��u��M5Q���"7~oN���Ӌ��WCx��*莟� ��@U#H�������sZt�����ߚt�5~:�3�t��9t�=~
�튠�� `�_��d<ᔟ�1gk:ʚ\�����U��N׷�      J   �   x�U��n� E��Ǭ���hӬ�j�4iȂd,0���ݿ�Ŧ� �3��L�[g\�EU7�T]����[��E�d*�GԸ�����S�mjLd)��� �X�jj�����{�����g�RGc�OD�Y?a��0�W��ο��w:$�R����L6���9��-#$�����q�ѕ��������^R���z�#��K!ex��8q��Ut����Tm:      L   �   x�u�Kn� �9�OP��{I)�A�c�]6��	��T��g��b%˪tgɟ-��PvJr
��A>��}^���âO��d�!	�,�Q���~�\ȳ[PǺi�9/1d���KV�j�)6<�'q=9���Fr/�Bc'7�˷����._u�����S��Z�a1��٢Ʒ��3y�����w3��՛��k��,�����tlK����$�_�{$4}ϥ��H�q�����"�� �m�:      M   }   x���1�7�|�2�ǱM�`�Tp*�Q*����d���٣�^]��9�ɱ�s	���xd��H$���V�@%	K�,m�t���Ešs`Ʌ%��,IXR��a�4K�Y��v|����!I      Q   �   x�e�1�0 ��~/@�q�:"��V"!��g�d���pi�:ǵ~��#8��V��fh��m��\���ǲ�`��``�]/AKp%X	���"��A�^���J�!"�^���J�� !I/YKv%[ɐ�E�?�v.      S   j   x�m�+�0@��)z��[����� �b�k'c��ٛ�z<�����2�4�Z:	N�^�W��g��%D5DD&	I	�YBVCFf�P�PPX%T5TT��D�_�      U   6  x�}�An�0Eן�D��@v��tU]u3q��ȱ%c�O�ҋu��J�ܿ`���'{�9�Blž�pqW�Cc�q�4�pT����t���߮��r^����g��\��jI>�]Y�0�Q1F.��Q@�В7�G��)�W=���$ 1��MІ,��{��h1	J�#e������+����A�c�<h����ȩ$ڗ06Wسp�wRόV���XL��Q���:�-�����������F�5'��W������F�#'�Bl���'�7��u*����
(q�u�Շb���l�)��o�,˾�n�z      W   3   x����0���4L�3L���%i��E�6�v�9�0\/��������     