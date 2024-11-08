PGDMP      "            
    |            flask_auth_db    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    49153    flask_auth_db    DATABASE     �   CREATE DATABASE flask_auth_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE flask_auth_db;
                postgres    false            �            1259    73729    blog    TABLE     p  CREATE TABLE public.blog (
    id integer NOT NULL,
    "imageSrc" character varying NOT NULL,
    title character varying NOT NULL,
    date date NOT NULL,
    author character varying NOT NULL,
    description character varying NOT NULL,
    introduction text NOT NULL,
    details text NOT NULL,
    conclusion text NOT NULL,
    tags character varying NOT NULL
);
    DROP TABLE public.blog;
       public         heap    postgres    false            �            1259    73728    blog_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.blog_id_seq;
       public          postgres    false    218                       0    0    blog_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.blog_id_seq OWNED BY public.blog.id;
          public          postgres    false    217            �            1259    49155    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    username character varying(20) NOT NULL,
    email character varying(120) NOT NULL,
    password character varying(60) NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    49154    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    216                       0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    215            �            1259    73745    visitor_count    TABLE     [   CREATE TABLE public.visitor_count (
    id integer NOT NULL,
    count integer NOT NULL
);
 !   DROP TABLE public.visitor_count;
       public         heap    postgres    false            �            1259    73744    visitor_count_id_seq    SEQUENCE     �   CREATE SEQUENCE public.visitor_count_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.visitor_count_id_seq;
       public          postgres    false    220                       0    0    visitor_count_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.visitor_count_id_seq OWNED BY public.visitor_count.id;
          public          postgres    false    219            [           2604    73732    blog id    DEFAULT     b   ALTER TABLE ONLY public.blog ALTER COLUMN id SET DEFAULT nextval('public.blog_id_seq'::regclass);
 6   ALTER TABLE public.blog ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            Z           2604    49158    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            \           2604    73748    visitor_count id    DEFAULT     t   ALTER TABLE ONLY public.visitor_count ALTER COLUMN id SET DEFAULT nextval('public.visitor_count_id_seq'::regclass);
 ?   ALTER TABLE public.visitor_count ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �          0    73729    blog 
   TABLE DATA           y   COPY public.blog (id, "imageSrc", title, date, author, description, introduction, details, conclusion, tags) FROM stdin;
    public          postgres    false    218   �       �          0    49155    user 
   TABLE DATA           ?   COPY public."user" (id, username, email, password) FROM stdin;
    public          postgres    false    216   ,#       �          0    73745    visitor_count 
   TABLE DATA           2   COPY public.visitor_count (id, count) FROM stdin;
    public          postgres    false    220   �&                  0    0    blog_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.blog_id_seq', 11, true);
          public          postgres    false    217                       0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 18, true);
          public          postgres    false    215                       0    0    visitor_count_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.visitor_count_id_seq', 1, true);
          public          postgres    false    219            d           2606    73736    blog blog_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.blog
    ADD CONSTRAINT blog_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.blog DROP CONSTRAINT blog_pkey;
       public            postgres    false    218            ^           2606    49164    user user_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_email_key;
       public            postgres    false    216            `           2606    49160    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    216            b           2606    49162    user user_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_username_key;
       public            postgres    false    216            f           2606    73750     visitor_count visitor_count_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.visitor_count
    ADD CONSTRAINT visitor_count_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.visitor_count DROP CONSTRAINT visitor_count_pkey;
       public            postgres    false    220            �   �  x��Ymo�6���
��;NZC��E��mi��+�:I�)R%);ʯ�)+v�����C�<�{���,���{2�(�tɵ��4繗br�/`1;8Ig���N@��$=���$�I2M����<�`�7u1�(y
�����2��l:����(9��e�ݽ�c�2�O�{|��J��]�c2�pĸ�Y&��Zx��'��R%���J�AƄ�0��w*c��q��̱��%�M����	+S\�-��р�b�9�®J`T)�0�K�X��Ф�<[i��,� |	�� ��0�Q��n��RL�jgf�J��8U�&W��q�[q�.tC�~�Zj�lnK�J�޴���}ͭ�Tҷ�9b���xC��a�^` �T0d�	ì�9��cj�k��a�\��8��=܆��z*��;Q
S�RcY�$[�а��?@E�w�@5������2�n)E��=���`���I�p�L;�]U�B��!|��B#L,��x��硪1վ�1�@=�@&�M, ���eU멻c!��TT,ЅL�%�M�=��0Q��f;B��b/��!�bG �u�
)0�_��G�E�3�x���l��=���*e�k*)���$��7eKX��2��Ɲ,�]W�&kw�ĈAgh�e��*P<�P�M�P�ba��/�n�t�ߐ�6�
K�|Y����ِ�XH�-L��U:ÞK��< GK�︖W�N{�-l[{�F>��qu~��7A��O_ę'�o������m��/��w��W��Z��F}�t���䢺�:��~VP#��_z6x�%��"b�[is��QzDJ�`;��?Z)k�d�O,Sh�;{���V�h\ɠێ=~mnMf��G~4ܳG�";+�L�B/��0d$�;���V1 �I~+���vk��B+�Ʈc{gH��[RH����Eg�I����)�{w�t�L*"T��UqT_�����S������!5m}��&�����R$q��F���ƭ�!�I�2T�j�pl��
��2MQU×	' �v�b%u������P��"�j&�rc��i�}l@"����]� ����Z� 7�e���m3�[S���tԂ�g��YD��H����3:�7%�βʬw�	�,����3���N:]�ېǟ ��T�T3efWV�X����丯����|��ji�	�O��, 	��r�ֺ�r��x�AP`*:��Ь�f=4�Y�zh�C���Ь��f�~y>�<�o�c�s��u~RZ�o�Y�N˯����γ7���O��'g���?I���l���Lyz<���'X��r!������х��m�o �W����:�]�ޣ�96E)������"����b�Rq��-W�n�-u���"���҇�*�j�`�5d�բA�c���^�EZ�M��=�)W�F*^�捍�R���uv��WB�[Y�m�e�w���"LRK�sXO��pYd]j	?ԕ��D���qt�y/�Q~���RY����s��H�ю����e���8p~������o����I���?s<������h����/2�p��?=�d��+�9���rn���.�7o�����9�����e��׸Q�3��	�x��h����4^zuY<[R�{va�=~���?��Ju      �   �  x�u�Is�8���;�f�v�`�03�z� f`��_�N�����s��S�+�H
�����&U�e�Eި��$ۜ�i�v�0��~r�v��<]ڬ�W68&����4]�`(��o`� ���-�VވchVT����1��ˋa9)V����޼%�u����@i�M�pl���|�6:37o��2<卼���B9!7U�X��]�(D=�r���ʠ;���$+���8d�{{C|�ZU?R���/Q�VW�����b�ܑ1�0#Et��% ���Bg:h�
s�Wۏ|�tPMV.���X�\��rP��r�H�� �H�35�x�&�%�'��C��׉���[R4$�.�&��{�Q��?bZ�~��H�WӚ��t�yl@���zF��������)��ۑ1JԄ�5�,�ծ���n�LY��Xr�x�����/����{@.9��1��u)c��q�C��@2������2sӝhw�}Ey�O.I�P�,����|7a��Q>n=lx� A� z]��E�AǇ}Ƞ��~���kb0"����)I�Ɍ
�lW��@}���Tv#���ͅ�z�*�$������u#w���
�xË���Z��TTx�6���$���s�;@I
Y�*e���_z�	y����l��&6)��
hݱ<&w�+`�|��3J�ȭL����+^�*�?��.�ˋ�]j�3Kc�;e��7K�Y�W�o��g� �˓� YYum���/����9g�?b��q����c��=�"^�Ȭ�,=���g�,r��vE�O}��M�:��"mj	^R�|��sb\@oD*F-Y��Ax{)��EI��c#��z�bC��2���Y����\�Çea�^��)/\KM�v�]}P����8��'      �      x�3�4������ V     