PGDMP                      |         	   ClProject    15.7    16.3 (    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    16398 	   ClProject    DATABASE     ~   CREATE DATABASE "ClProject" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "ClProject";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            :           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16406    City    TABLE     h   CREATE TABLE public."City" (
    "ID" integer NOT NULL,
    "CountryID" integer,
    "CityName" text
);
    DROP TABLE public."City";
       public         heap    postgres    false    4            �            1259    16399    Country    TABLE     U   CREATE TABLE public."Country" (
    "ID" integer NOT NULL,
    "CountryName" text
);
    DROP TABLE public."Country";
       public         heap    postgres    false    4            �            1259    16418    MissionApplication    TABLE     �   CREATE TABLE public."MissionApplication" (
    "ID" integer NOT NULL,
    "MissionID" integer,
    "UserID" integer,
    "AppliedDate" date,
    "Status" boolean,
    "Sheet" integer
);
 (   DROP TABLE public."MissionApplication";
       public         heap    postgres    false    4            �            1259    16440    MissionSkill    TABLE     k   CREATE TABLE public."MissionSkill" (
    "ID" integer NOT NULL,
    "SkillName" text,
    "Status" text
);
 "   DROP TABLE public."MissionSkill";
       public         heap    postgres    false    4            �            1259    16447    MissionTheme    TABLE     k   CREATE TABLE public."MissionTheme" (
    "ID" integer NOT NULL,
    "ThemeName" text,
    "Status" text
);
 "   DROP TABLE public."MissionTheme";
       public         heap    postgres    false    4            �            1259    16423    Missions    TABLE       CREATE TABLE public."Missions" (
    "ID" integer NOT NULL,
    "MissionTitle" text,
    "MissionDescription" text,
    "MissionOrganisationName" text,
    "MissionOrganisationDetail" text,
    "CountryId" integer,
    "CityID" integer,
    "StartDate" date,
    "EndDate" date,
    "MissionType" text,
    "TotalSheets" integer,
    "RegistrationDeadline" date,
    "MissionThemeID" text,
    "MissionSkillID" text,
    "MissionImages" text,
    "MissionDocuments" text,
    "MissionAvilability" text,
    "MissionVideoUrl" text
);
    DROP TABLE public."Missions";
       public         heap    postgres    false    4            �            1259    16454    User    TABLE     �   CREATE TABLE public."User" (
    "ID" integer NOT NULL,
    "FirstName" text,
    "LastName" text,
    "PhoneNumber" text,
    "EmailAddress" text,
    "UserType" text,
    "Password" text
);
    DROP TABLE public."User";
       public         heap    postgres    false    4            �            1259    16461 
   UserDetail    TABLE     �  CREATE TABLE public."UserDetail" (
    "ID" integer NOT NULL,
    "UserID" integer,
    "Name" text,
    "Surname" text,
    "EmployeeID" text,
    "Manager" text,
    "Title" text,
    "Department" text,
    "MyProfile" text,
    "WhyIVolunteer" text,
    "CountryID" integer,
    "CityID" integer,
    "Avaibility" text,
    "LinkdInUrl" text,
    "MySkills" text,
    "UserImage" text,
    "Status" boolean
);
     DROP TABLE public."UserDetail";
       public         heap    postgres    false    4            �            1259    16483 
   UserSkills    TABLE     i   CREATE TABLE public."UserSkills" (
    "ID" integer NOT NULL,
    "Skill" text,
    "UsesrID" integer
);
     DROP TABLE public."UserSkills";
       public         heap    postgres    false    4            ,          0    16406    City 
   TABLE DATA           ?   COPY public."City" ("ID", "CountryID", "CityName") FROM stdin;
    public          postgres    false    215   �1       +          0    16399    Country 
   TABLE DATA           8   COPY public."Country" ("ID", "CountryName") FROM stdin;
    public          postgres    false    214   �1       -          0    16418    MissionApplication 
   TABLE DATA           m   COPY public."MissionApplication" ("ID", "MissionID", "UserID", "AppliedDate", "Status", "Sheet") FROM stdin;
    public          postgres    false    216   �1       /          0    16440    MissionSkill 
   TABLE DATA           E   COPY public."MissionSkill" ("ID", "SkillName", "Status") FROM stdin;
    public          postgres    false    218   2       0          0    16447    MissionTheme 
   TABLE DATA           E   COPY public."MissionTheme" ("ID", "ThemeName", "Status") FROM stdin;
    public          postgres    false    219   72       .          0    16423    Missions 
   TABLE DATA           _  COPY public."Missions" ("ID", "MissionTitle", "MissionDescription", "MissionOrganisationName", "MissionOrganisationDetail", "CountryId", "CityID", "StartDate", "EndDate", "MissionType", "TotalSheets", "RegistrationDeadline", "MissionThemeID", "MissionSkillID", "MissionImages", "MissionDocuments", "MissionAvilability", "MissionVideoUrl") FROM stdin;
    public          postgres    false    217   T2       1          0    16454    User 
   TABLE DATA           v   COPY public."User" ("ID", "FirstName", "LastName", "PhoneNumber", "EmailAddress", "UserType", "Password") FROM stdin;
    public          postgres    false    220   q2       2          0    16461 
   UserDetail 
   TABLE DATA           �   COPY public."UserDetail" ("ID", "UserID", "Name", "Surname", "EmployeeID", "Manager", "Title", "Department", "MyProfile", "WhyIVolunteer", "CountryID", "CityID", "Avaibility", "LinkdInUrl", "MySkills", "UserImage", "Status") FROM stdin;
    public          postgres    false    221   �2       3          0    16483 
   UserSkills 
   TABLE DATA           @   COPY public."UserSkills" ("ID", "Skill", "UsesrID") FROM stdin;
    public          postgres    false    222   �2       �           2606    16412    City City_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."City"
    ADD CONSTRAINT "City_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public."City" DROP CONSTRAINT "City_pkey";
       public            postgres    false    215            �           2606    16405    Country Country_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT "Country_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public."Country" DROP CONSTRAINT "Country_pkey";
       public            postgres    false    214            �           2606    16422 *   MissionApplication MissionApplication_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."MissionApplication"
    ADD CONSTRAINT "MissionApplication_pkey" PRIMARY KEY ("ID");
 X   ALTER TABLE ONLY public."MissionApplication" DROP CONSTRAINT "MissionApplication_pkey";
       public            postgres    false    216            �           2606    16446    MissionSkill MissionSkill_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."MissionSkill"
    ADD CONSTRAINT "MissionSkill_pkey" PRIMARY KEY ("ID");
 L   ALTER TABLE ONLY public."MissionSkill" DROP CONSTRAINT "MissionSkill_pkey";
       public            postgres    false    218            �           2606    16453    MissionTheme MissionTheme_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."MissionTheme"
    ADD CONSTRAINT "MissionTheme_pkey" PRIMARY KEY ("ID");
 L   ALTER TABLE ONLY public."MissionTheme" DROP CONSTRAINT "MissionTheme_pkey";
       public            postgres    false    219            �           2606    16429    Missions Missions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Missions"
    ADD CONSTRAINT "Missions_pkey" PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public."Missions" DROP CONSTRAINT "Missions_pkey";
       public            postgres    false    217            �           2606    16467    UserDetail UserDetail_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."UserDetail"
    ADD CONSTRAINT "UserDetail_pkey" PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public."UserDetail" DROP CONSTRAINT "UserDetail_pkey";
       public            postgres    false    221            �           2606    16489    UserSkills UserSkills_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."UserSkills"
    ADD CONSTRAINT "UserSkills_pkey" PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public."UserSkills" DROP CONSTRAINT "UserSkills_pkey";
       public            postgres    false    222            �           2606    16460    User User_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    220            �           2606    16413    City City_CountryID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."City"
    ADD CONSTRAINT "City_CountryID_fkey" FOREIGN KEY ("CountryID") REFERENCES public."Country"("ID") ON UPDATE CASCADE;
 F   ALTER TABLE ONLY public."City" DROP CONSTRAINT "City_CountryID_fkey";
       public          postgres    false    3205    215    214            �           2606    16435    Missions Missions_CityID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Missions"
    ADD CONSTRAINT "Missions_CityID_fkey" FOREIGN KEY ("CityID") REFERENCES public."City"("ID");
 K   ALTER TABLE ONLY public."Missions" DROP CONSTRAINT "Missions_CityID_fkey";
       public          postgres    false    217    215    3207            �           2606    16430     Missions Missions_CountryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Missions"
    ADD CONSTRAINT "Missions_CountryId_fkey" FOREIGN KEY ("CountryId") REFERENCES public."Country"("ID");
 N   ALTER TABLE ONLY public."Missions" DROP CONSTRAINT "Missions_CountryId_fkey";
       public          postgres    false    217    214    3205            �           2606    16478 !   UserDetail UserDetail_CityID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDetail"
    ADD CONSTRAINT "UserDetail_CityID_fkey" FOREIGN KEY ("CityID") REFERENCES public."City"("ID");
 O   ALTER TABLE ONLY public."UserDetail" DROP CONSTRAINT "UserDetail_CityID_fkey";
       public          postgres    false    3207    221    215            �           2606    16473 $   UserDetail UserDetail_CountryID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDetail"
    ADD CONSTRAINT "UserDetail_CountryID_fkey" FOREIGN KEY ("CountryID") REFERENCES public."Country"("ID");
 R   ALTER TABLE ONLY public."UserDetail" DROP CONSTRAINT "UserDetail_CountryID_fkey";
       public          postgres    false    3205    214    221            �           2606    16468 !   UserDetail UserDetail_UserID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDetail"
    ADD CONSTRAINT "UserDetail_UserID_fkey" FOREIGN KEY ("UserID") REFERENCES public."User"("ID");
 O   ALTER TABLE ONLY public."UserDetail" DROP CONSTRAINT "UserDetail_UserID_fkey";
       public          postgres    false    220    3217    221            �           2606    16490 "   UserSkills UserSkills_UsesrID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserSkills"
    ADD CONSTRAINT "UserSkills_UsesrID_fkey" FOREIGN KEY ("UsesrID") REFERENCES public."User"("ID");
 P   ALTER TABLE ONLY public."UserSkills" DROP CONSTRAINT "UserSkills_UsesrID_fkey";
       public          postgres    false    3217    220    222            ,      x������ � �      +      x������ � �      -      x������ � �      /      x������ � �      0      x������ � �      .      x������ � �      1      x������ � �      2      x������ � �      3      x������ � �     