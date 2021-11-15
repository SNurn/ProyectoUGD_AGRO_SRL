PGDMP                     
    y            AGRO_SRL    9.6.18    9.6.18 P    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    17269    AGRO_SRL    DATABASE     �   CREATE DATABASE "AGRO_SRL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Argentina.1252' LC_CTYPE = 'Spanish_Argentina.1252';
    DROP DATABASE "AGRO_SRL";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17373    campo    TABLE     b   CREATE TABLE public.campo (
    id_campo integer NOT NULL,
    nombre text,
    direccion text
);
    DROP TABLE public.campo;
       public         postgres    false    3            �            1259    17371    campo_id_campo_seq    SEQUENCE     {   CREATE SEQUENCE public.campo_id_campo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.campo_id_campo_seq;
       public       postgres    false    3    186            �           0    0    campo_id_campo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.campo_id_campo_seq OWNED BY public.campo.id_campo;
            public       postgres    false    185            �            1259    17511    cultivo    TABLE     v   CREATE TABLE public.cultivo (
    id_cultivo integer NOT NULL,
    descripcion text,
    nrosuelo integer NOT NULL
);
    DROP TABLE public.cultivo;
       public         postgres    false    3            �            1259    17509    cultivo_id_cultivo_seq    SEQUENCE        CREATE SEQUENCE public.cultivo_id_cultivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cultivo_id_cultivo_seq;
       public       postgres    false    3    194            �           0    0    cultivo_id_cultivo_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cultivo_id_cultivo_seq OWNED BY public.cultivo.id_cultivo;
            public       postgres    false    193            �            1259    17577    estado_del_proyecto    TABLE     �   CREATE TABLE public.estado_del_proyecto (
    id_estado integer NOT NULL,
    descripcion text,
    fecha_inicio date,
    fecha_fin date,
    motivo_cancelamiento text,
    idproyecto integer NOT NULL
);
 '   DROP TABLE public.estado_del_proyecto;
       public         postgres    false    3            �            1259    17575 !   estado_del_proyecto_id_estado_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_del_proyecto_id_estado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.estado_del_proyecto_id_estado_seq;
       public       postgres    false    200    3            �           0    0 !   estado_del_proyecto_id_estado_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.estado_del_proyecto_id_estado_seq OWNED BY public.estado_del_proyecto.id_estado;
            public       postgres    false    199            �            1259    17492    laboreo    TABLE     W   CREATE TABLE public.laboreo (
    id_laboreo integer NOT NULL,
    descripcion text
);
    DROP TABLE public.laboreo;
       public         postgres    false    3            �            1259    17490    laboreo_id_laboreo_seq    SEQUENCE        CREATE SEQUENCE public.laboreo_id_laboreo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.laboreo_id_laboreo_seq;
       public       postgres    false    3    192            �           0    0    laboreo_id_laboreo_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.laboreo_id_laboreo_seq OWNED BY public.laboreo.id_laboreo;
            public       postgres    false    191            �            1259    17593    laboreoxcultivo    TABLE     �   CREATE TABLE public.laboreoxcultivo (
    nro_orden integer NOT NULL,
    duracion character varying(25),
    idlaboreo integer NOT NULL,
    idcultivo integer NOT NULL,
    idestado integer NOT NULL
);
 #   DROP TABLE public.laboreoxcultivo;
       public         postgres    false    3            �            1259    17591    laboreoxcultivo_nro_orden_seq    SEQUENCE     �   CREATE SEQUENCE public.laboreoxcultivo_nro_orden_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.laboreoxcultivo_nro_orden_seq;
       public       postgres    false    202    3            �           0    0    laboreoxcultivo_nro_orden_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.laboreoxcultivo_nro_orden_seq OWNED BY public.laboreoxcultivo.nro_orden;
            public       postgres    false    201            �            1259    17470    lote    TABLE     �   CREATE TABLE public.lote (
    id_lote integer NOT NULL,
    superficie_total double precision,
    ubicacion text,
    medidas character varying(10),
    idcampo integer NOT NULL,
    id_suelo integer NOT NULL
);
    DROP TABLE public.lote;
       public         postgres    false    3            �            1259    17468    lote_id_lote_seq    SEQUENCE     y   CREATE SEQUENCE public.lote_id_lote_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.lote_id_lote_seq;
       public       postgres    false    3    190            �           0    0    lote_id_lote_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.lote_id_lote_seq OWNED BY public.lote.id_lote;
            public       postgres    false    189            �            1259    17556    proyecto_de_cultivo    TABLE     �   CREATE TABLE public.proyecto_de_cultivo (
    id_proyecto integer NOT NULL,
    nombre text,
    fecha_inicio date,
    fecha_fin date,
    idlote integer NOT NULL,
    idsituacion integer NOT NULL
);
 '   DROP TABLE public.proyecto_de_cultivo;
       public         postgres    false    3            �            1259    17554 #   proyecto_de_cultivo_id_proyecto_seq    SEQUENCE     �   CREATE SEQUENCE public.proyecto_de_cultivo_id_proyecto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.proyecto_de_cultivo_id_proyecto_seq;
       public       postgres    false    198    3            �           0    0 #   proyecto_de_cultivo_id_proyecto_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.proyecto_de_cultivo_id_proyecto_seq OWNED BY public.proyecto_de_cultivo.id_proyecto;
            public       postgres    false    197            �            1259    17545    situacion_anormal    TABLE     �   CREATE TABLE public.situacion_anormal (
    id_situacion integer NOT NULL,
    descripcion text,
    "nivel_daño" character varying(10)
);
 %   DROP TABLE public.situacion_anormal;
       public         postgres    false    3            �            1259    17543 "   situacion_anormal_id_situacion_seq    SEQUENCE     �   CREATE SEQUENCE public.situacion_anormal_id_situacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.situacion_anormal_id_situacion_seq;
       public       postgres    false    196    3            �           0    0 "   situacion_anormal_id_situacion_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.situacion_anormal_id_situacion_seq OWNED BY public.situacion_anormal.id_situacion;
            public       postgres    false    195            �            1259    17401    tipo_de_suelo    TABLE     [   CREATE TABLE public.tipo_de_suelo (
    nro_tipo integer NOT NULL,
    descripcion text
);
 !   DROP TABLE public.tipo_de_suelo;
       public         postgres    false    3            �            1259    17399    tipo_de_suelo_nro_tipo_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_de_suelo_nro_tipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tipo_de_suelo_nro_tipo_seq;
       public       postgres    false    3    188            �           0    0    tipo_de_suelo_nro_tipo_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tipo_de_suelo_nro_tipo_seq OWNED BY public.tipo_de_suelo.nro_tipo;
            public       postgres    false    187            	           2604    17376    campo id_campo    DEFAULT     p   ALTER TABLE ONLY public.campo ALTER COLUMN id_campo SET DEFAULT nextval('public.campo_id_campo_seq'::regclass);
 =   ALTER TABLE public.campo ALTER COLUMN id_campo DROP DEFAULT;
       public       postgres    false    186    185    186                       2604    17514    cultivo id_cultivo    DEFAULT     x   ALTER TABLE ONLY public.cultivo ALTER COLUMN id_cultivo SET DEFAULT nextval('public.cultivo_id_cultivo_seq'::regclass);
 A   ALTER TABLE public.cultivo ALTER COLUMN id_cultivo DROP DEFAULT;
       public       postgres    false    194    193    194                       2604    17580    estado_del_proyecto id_estado    DEFAULT     �   ALTER TABLE ONLY public.estado_del_proyecto ALTER COLUMN id_estado SET DEFAULT nextval('public.estado_del_proyecto_id_estado_seq'::regclass);
 L   ALTER TABLE public.estado_del_proyecto ALTER COLUMN id_estado DROP DEFAULT;
       public       postgres    false    200    199    200                       2604    17495    laboreo id_laboreo    DEFAULT     x   ALTER TABLE ONLY public.laboreo ALTER COLUMN id_laboreo SET DEFAULT nextval('public.laboreo_id_laboreo_seq'::regclass);
 A   ALTER TABLE public.laboreo ALTER COLUMN id_laboreo DROP DEFAULT;
       public       postgres    false    192    191    192                       2604    17596    laboreoxcultivo nro_orden    DEFAULT     �   ALTER TABLE ONLY public.laboreoxcultivo ALTER COLUMN nro_orden SET DEFAULT nextval('public.laboreoxcultivo_nro_orden_seq'::regclass);
 H   ALTER TABLE public.laboreoxcultivo ALTER COLUMN nro_orden DROP DEFAULT;
       public       postgres    false    201    202    202                       2604    17473    lote id_lote    DEFAULT     l   ALTER TABLE ONLY public.lote ALTER COLUMN id_lote SET DEFAULT nextval('public.lote_id_lote_seq'::regclass);
 ;   ALTER TABLE public.lote ALTER COLUMN id_lote DROP DEFAULT;
       public       postgres    false    190    189    190                       2604    17559    proyecto_de_cultivo id_proyecto    DEFAULT     �   ALTER TABLE ONLY public.proyecto_de_cultivo ALTER COLUMN id_proyecto SET DEFAULT nextval('public.proyecto_de_cultivo_id_proyecto_seq'::regclass);
 N   ALTER TABLE public.proyecto_de_cultivo ALTER COLUMN id_proyecto DROP DEFAULT;
       public       postgres    false    198    197    198                       2604    17548    situacion_anormal id_situacion    DEFAULT     �   ALTER TABLE ONLY public.situacion_anormal ALTER COLUMN id_situacion SET DEFAULT nextval('public.situacion_anormal_id_situacion_seq'::regclass);
 M   ALTER TABLE public.situacion_anormal ALTER COLUMN id_situacion DROP DEFAULT;
       public       postgres    false    195    196    196            
           2604    17404    tipo_de_suelo nro_tipo    DEFAULT     �   ALTER TABLE ONLY public.tipo_de_suelo ALTER COLUMN nro_tipo SET DEFAULT nextval('public.tipo_de_suelo_nro_tipo_seq'::regclass);
 E   ALTER TABLE public.tipo_de_suelo ALTER COLUMN nro_tipo DROP DEFAULT;
       public       postgres    false    187    188    188            �          0    17373    campo 
   TABLE DATA               <   COPY public.campo (id_campo, nombre, direccion) FROM stdin;
    public       postgres    false    186   4]       �           0    0    campo_id_campo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.campo_id_campo_seq', 2, true);
            public       postgres    false    185            �          0    17511    cultivo 
   TABLE DATA               D   COPY public.cultivo (id_cultivo, descripcion, nrosuelo) FROM stdin;
    public       postgres    false    194   i]       �           0    0    cultivo_id_cultivo_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cultivo_id_cultivo_seq', 2, true);
            public       postgres    false    193            �          0    17577    estado_del_proyecto 
   TABLE DATA               �   COPY public.estado_del_proyecto (id_estado, descripcion, fecha_inicio, fecha_fin, motivo_cancelamiento, idproyecto) FROM stdin;
    public       postgres    false    200   �]       �           0    0 !   estado_del_proyecto_id_estado_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.estado_del_proyecto_id_estado_seq', 1, false);
            public       postgres    false    199            �          0    17492    laboreo 
   TABLE DATA               :   COPY public.laboreo (id_laboreo, descripcion) FROM stdin;
    public       postgres    false    192   �]       �           0    0    laboreo_id_laboreo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.laboreo_id_laboreo_seq', 1, false);
            public       postgres    false    191            �          0    17593    laboreoxcultivo 
   TABLE DATA               ^   COPY public.laboreoxcultivo (nro_orden, duracion, idlaboreo, idcultivo, idestado) FROM stdin;
    public       postgres    false    202   �]       �           0    0    laboreoxcultivo_nro_orden_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.laboreoxcultivo_nro_orden_seq', 1, false);
            public       postgres    false    201            �          0    17470    lote 
   TABLE DATA               `   COPY public.lote (id_lote, superficie_total, ubicacion, medidas, idcampo, id_suelo) FROM stdin;
    public       postgres    false    190   �]       �           0    0    lote_id_lote_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.lote_id_lote_seq', 2, true);
            public       postgres    false    189            �          0    17556    proyecto_de_cultivo 
   TABLE DATA               p   COPY public.proyecto_de_cultivo (id_proyecto, nombre, fecha_inicio, fecha_fin, idlote, idsituacion) FROM stdin;
    public       postgres    false    198   ,^       �           0    0 #   proyecto_de_cultivo_id_proyecto_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.proyecto_de_cultivo_id_proyecto_seq', 1, false);
            public       postgres    false    197            �          0    17545    situacion_anormal 
   TABLE DATA               U   COPY public.situacion_anormal (id_situacion, descripcion, "nivel_daño") FROM stdin;
    public       postgres    false    196   I^       �           0    0 "   situacion_anormal_id_situacion_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.situacion_anormal_id_situacion_seq', 1, false);
            public       postgres    false    195            �          0    17401    tipo_de_suelo 
   TABLE DATA               >   COPY public.tipo_de_suelo (nro_tipo, descripcion) FROM stdin;
    public       postgres    false    188   f^       �           0    0    tipo_de_suelo_nro_tipo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tipo_de_suelo_nro_tipo_seq', 1, true);
            public       postgres    false    187                       2606    17381    campo campo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.campo
    ADD CONSTRAINT campo_pkey PRIMARY KEY (id_campo);
 :   ALTER TABLE ONLY public.campo DROP CONSTRAINT campo_pkey;
       public         postgres    false    186    186                       2606    17519    cultivo cultivo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cultivo
    ADD CONSTRAINT cultivo_pkey PRIMARY KEY (id_cultivo);
 >   ALTER TABLE ONLY public.cultivo DROP CONSTRAINT cultivo_pkey;
       public         postgres    false    194    194            !           2606    17585 ,   estado_del_proyecto estado_del_proyecto_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.estado_del_proyecto
    ADD CONSTRAINT estado_del_proyecto_pkey PRIMARY KEY (id_estado);
 V   ALTER TABLE ONLY public.estado_del_proyecto DROP CONSTRAINT estado_del_proyecto_pkey;
       public         postgres    false    200    200                       2606    17500    laboreo laboreo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.laboreo
    ADD CONSTRAINT laboreo_pkey PRIMARY KEY (id_laboreo);
 >   ALTER TABLE ONLY public.laboreo DROP CONSTRAINT laboreo_pkey;
       public         postgres    false    192    192            #           2606    17598 $   laboreoxcultivo laboreoxcultivo_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.laboreoxcultivo
    ADD CONSTRAINT laboreoxcultivo_pkey PRIMARY KEY (nro_orden);
 N   ALTER TABLE ONLY public.laboreoxcultivo DROP CONSTRAINT laboreoxcultivo_pkey;
       public         postgres    false    202    202                       2606    17478    lote lote_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.lote
    ADD CONSTRAINT lote_pkey PRIMARY KEY (id_lote);
 8   ALTER TABLE ONLY public.lote DROP CONSTRAINT lote_pkey;
       public         postgres    false    190    190                       2606    17564 ,   proyecto_de_cultivo proyecto_de_cultivo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.proyecto_de_cultivo
    ADD CONSTRAINT proyecto_de_cultivo_pkey PRIMARY KEY (id_proyecto);
 V   ALTER TABLE ONLY public.proyecto_de_cultivo DROP CONSTRAINT proyecto_de_cultivo_pkey;
       public         postgres    false    198    198                       2606    17553 (   situacion_anormal situacion_anormal_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.situacion_anormal
    ADD CONSTRAINT situacion_anormal_pkey PRIMARY KEY (id_situacion);
 R   ALTER TABLE ONLY public.situacion_anormal DROP CONSTRAINT situacion_anormal_pkey;
       public         postgres    false    196    196                       2606    17409     tipo_de_suelo tipo_de_suelo_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tipo_de_suelo
    ADD CONSTRAINT tipo_de_suelo_pkey PRIMARY KEY (nro_tipo);
 J   ALTER TABLE ONLY public.tipo_de_suelo DROP CONSTRAINT tipo_de_suelo_pkey;
       public         postgres    false    188    188            &           2606    17520    cultivo cultivo_nrosuelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cultivo
    ADD CONSTRAINT cultivo_nrosuelo_fkey FOREIGN KEY (nrosuelo) REFERENCES public.tipo_de_suelo(nro_tipo);
 G   ALTER TABLE ONLY public.cultivo DROP CONSTRAINT cultivo_nrosuelo_fkey;
       public       postgres    false    194    188    2069            )           2606    17586 7   estado_del_proyecto estado_del_proyecto_idproyecto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estado_del_proyecto
    ADD CONSTRAINT estado_del_proyecto_idproyecto_fkey FOREIGN KEY (idproyecto) REFERENCES public.proyecto_de_cultivo(id_proyecto);
 a   ALTER TABLE ONLY public.estado_del_proyecto DROP CONSTRAINT estado_del_proyecto_idproyecto_fkey;
       public       postgres    false    2079    198    200            *           2606    17599 .   laboreoxcultivo laboreoxcultivo_idcultivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.laboreoxcultivo
    ADD CONSTRAINT laboreoxcultivo_idcultivo_fkey FOREIGN KEY (idcultivo) REFERENCES public.cultivo(id_cultivo);
 X   ALTER TABLE ONLY public.laboreoxcultivo DROP CONSTRAINT laboreoxcultivo_idcultivo_fkey;
       public       postgres    false    194    2075    202            ,           2606    17609 -   laboreoxcultivo laboreoxcultivo_idestado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.laboreoxcultivo
    ADD CONSTRAINT laboreoxcultivo_idestado_fkey FOREIGN KEY (idestado) REFERENCES public.estado_del_proyecto(id_estado);
 W   ALTER TABLE ONLY public.laboreoxcultivo DROP CONSTRAINT laboreoxcultivo_idestado_fkey;
       public       postgres    false    2081    202    200            +           2606    17604 .   laboreoxcultivo laboreoxcultivo_idlaboreo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.laboreoxcultivo
    ADD CONSTRAINT laboreoxcultivo_idlaboreo_fkey FOREIGN KEY (idlaboreo) REFERENCES public.laboreo(id_laboreo);
 X   ALTER TABLE ONLY public.laboreoxcultivo DROP CONSTRAINT laboreoxcultivo_idlaboreo_fkey;
       public       postgres    false    202    192    2073            %           2606    17484    lote lote_id_suelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lote
    ADD CONSTRAINT lote_id_suelo_fkey FOREIGN KEY (id_suelo) REFERENCES public.tipo_de_suelo(nro_tipo);
 A   ALTER TABLE ONLY public.lote DROP CONSTRAINT lote_id_suelo_fkey;
       public       postgres    false    188    190    2069            $           2606    17479    lote lote_idcampo_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.lote
    ADD CONSTRAINT lote_idcampo_fkey FOREIGN KEY (idcampo) REFERENCES public.campo(id_campo);
 @   ALTER TABLE ONLY public.lote DROP CONSTRAINT lote_idcampo_fkey;
       public       postgres    false    2067    186    190            '           2606    17565 3   proyecto_de_cultivo proyecto_de_cultivo_idlote_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.proyecto_de_cultivo
    ADD CONSTRAINT proyecto_de_cultivo_idlote_fkey FOREIGN KEY (idlote) REFERENCES public.lote(id_lote);
 ]   ALTER TABLE ONLY public.proyecto_de_cultivo DROP CONSTRAINT proyecto_de_cultivo_idlote_fkey;
       public       postgres    false    2071    190    198            (           2606    17570 8   proyecto_de_cultivo proyecto_de_cultivo_idsituacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.proyecto_de_cultivo
    ADD CONSTRAINT proyecto_de_cultivo_idsituacion_fkey FOREIGN KEY (idsituacion) REFERENCES public.situacion_anormal(id_situacion);
 b   ALTER TABLE ONLY public.proyecto_de_cultivo DROP CONSTRAINT proyecto_de_cultivo_idsituacion_fkey;
       public       postgres    false    196    198    2077            �   %   x�3�,..�b.#��8��8���(���+F��� ��	�      �      x�3�LJ,BNC.#Ί�* 2c���� jA�      �      x������ � �      �      x������ � �      �      x������ � �      �   .   x�3�47�3��M�HN.�42�02�4�4�b���)X&���� DO      �      x������ � �      �      x������ � �      �      x�3�L)NI����� ��     