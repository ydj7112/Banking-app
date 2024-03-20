PGDMP      8                |            bankinfo    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    bankinfo    DATABASE     �   CREATE DATABASE bankinfo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE bankinfo;
                postgres    false            �            1259    16418    benefi_details    TABLE       CREATE TABLE public.benefi_details (
    userid character varying(30),
    accnobenefc character varying(15),
    acctypebenefc character varying(30),
    ifscbenefc character varying(15),
    namebenefc character varying(30),
    emailbenefc character varying(30)
);
 "   DROP TABLE public.benefi_details;
       public         heap    postgres    false            �            1259    16415    billdetails    TABLE     �   CREATE TABLE public.billdetails (
    userid character varying(30),
    ca_no character varying(30),
    billername character varying(30),
    pending_amount character varying(30),
    due character varying(30),
    status character varying(30)
);
    DROP TABLE public.billdetails;
       public         heap    postgres    false            �            1259    16412 	   dashboard    TABLE     {   CREATE TABLE public.dashboard (
    userid character varying(30),
    acc_no character varying(30),
    balance integer
);
    DROP TABLE public.dashboard;
       public         heap    postgres    false            �            1259    16409    persdetails    TABLE     �  CREATE TABLE public.persdetails (
    userid character varying(30),
    phone_no integer,
    address character varying(100),
    aadhar character varying(12),
    dob character varying(10),
    pan character varying(12),
    acc_type character varying(10),
    acc_status character varying(10),
    branch_name character varying(15),
    branch_add character varying(50),
    ifsc character varying(10)
);
    DROP TABLE public.persdetails;
       public         heap    postgres    false            �            1259    16406    transaction    TABLE     "  CREATE TABLE public.transaction (
    userid character varying(30),
    transactionid character varying(30),
    beneficary character varying(30),
    "time" character varying(30),
    withdrawal character varying(30),
    balance character varying(30),
    status character varying(30)
);
    DROP TABLE public.transaction;
       public         heap    postgres    false            �            1259    16400    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    userid character varying(30),
    uname character varying(30),
    uemail character varying(30),
    upassword character varying(30)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16399    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            .           2604    16403    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16418    benefi_details 
   TABLE DATA           q   COPY public.benefi_details (userid, accnobenefc, acctypebenefc, ifscbenefc, namebenefc, emailbenefc) FROM stdin;
    public          postgres    false    221   �       �          0    16415    billdetails 
   TABLE DATA           ]   COPY public.billdetails (userid, ca_no, billername, pending_amount, due, status) FROM stdin;
    public          postgres    false    220          �          0    16412 	   dashboard 
   TABLE DATA           <   COPY public.dashboard (userid, acc_no, balance) FROM stdin;
    public          postgres    false    219   �       �          0    16409    persdetails 
   TABLE DATA           �   COPY public.persdetails (userid, phone_no, address, aadhar, dob, pan, acc_type, acc_status, branch_name, branch_add, ifsc) FROM stdin;
    public          postgres    false    218          �          0    16406    transaction 
   TABLE DATA           m   COPY public.transaction (userid, transactionid, beneficary, "time", withdrawal, balance, status) FROM stdin;
    public          postgres    false    217   �       �          0    16400    users 
   TABLE DATA           E   COPY public.users (id, userid, uname, uemail, upassword) FROM stdin;
    public          postgres    false    216   �       �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    215            0           2606    16405    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            �   �   x��
w��0�4772b�?N�@'csC�ʔ,������������\./Ҕ���S���P�!D�#X�!g$P��W~qF��ghh8�uT�H�:�AK�(��$P����Yp:gd��&V*p�����!����� �r��      �      x������ � �      �   W   x��
w��0��tv
�7004�4���4�03�0�271772�42�L,�P��/���4100��44�2�F�F3c3#S#�=... ��:      �   �   x�Ŏ�
�@E�o��eA��StfieP L	E��Qi�墯O�Z����9�B)����@�'SY%��[�=K���>HG�rT=�m!l�A/��1U&?B���� Q����Z��u��d�g�����TJ���J�㉊� �uۙ^��{Q��;A����ե��P�w��!ۍcO�g�      �     x����jA�ϣ��p���[�C��B !��(`)�}z$�?cy����|[]U�DDŝ���������\]L���a.�y��{�Z��������]������n��^r�7���A�*A&V�.�����~��"�	�#A	[�#3Rh"l�,�^Ia#P��9�tPz�|AA�2�8�	�-��w���_�b��C�7�%F2��P%���P@C.Tk-���bV�~�}a��)�4J��H��3R���Qh8�UR�g���?���i��[����J��f9��=s��:�m�,=d������1�Hk/��^s��ln��	tΊ$q�4S96�4`(Z�c��F��tC#+̹}�NC,R�ǛZN���熨��pr톽�呐K%<"�Q�a�P��0=Ѧ���Y����#��4;{^d!A�&�]�9P��}�Ȃ<��,Z�+_4�DЖ����pfM�L��5Է;sEc�݃��f��h<���3�#���ۻ�b��^m-      �   �   x����
� F���'5S��-�c�g2�T����ݶ����;p�7=��K���!TPJh�;cۿ�������Z��X\����3h?`�PV�
��f�����A���%?�ɴ3�aSBwm��_�L��$dש?�;F�L�pW     