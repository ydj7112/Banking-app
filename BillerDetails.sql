PGDMP      :                |            billpay    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16421    billpay    DATABASE     �   CREATE DATABASE billpay WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE billpay;
                postgres    false            �            1259    16425    adani_basicdetails    TABLE     �   CREATE TABLE public.adani_basicdetails (
    ca_no character varying(30),
    billername character varying(30),
    phoneno character varying(10)
);
 &   DROP TABLE public.adani_basicdetails;
       public         heap    postgres    false            �            1259    16422    adani_billdetails    TABLE     �   CREATE TABLE public.adani_billdetails (
    ca_no character varying(30),
    billername character varying(30),
    pending_amount integer,
    due character varying(30),
    status character varying(30)
);
 %   DROP TABLE public.adani_billdetails;
       public         heap    postgres    false            �          0    16425    adani_basicdetails 
   TABLE DATA           H   COPY public.adani_basicdetails (ca_no, billername, phoneno) FROM stdin;
    public          postgres    false    216   �       �          0    16422    adani_billdetails 
   TABLE DATA           [   COPY public.adani_billdetails (ca_no, billername, pending_amount, due, status) FROM stdin;
    public          postgres    false    215   5       �   K   x�371772�42�L,�P��/���4100��44�27677�,,8]R�R��3�K8�-L,�-��b���� Q%k      �   T   x�371772�42�L,�P��/���4420�42�5�5202�H�K��K�27677��4���tI-K�Sp�H,J,�Ī<F��� ��     