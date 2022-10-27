--
-- code pour la création des tables
--
-- create table materiau(
--     id_materiau          uuid not null primary key,
--     libelle_materiau     varchar(255) not null,
--     url_materiau         varchar(255) not null,
-- );

-- create table montre(
--     id_montre            uuid not null primary key,
--     bracelet             varchar(255) not null default'#FFFFFF',
--     boitier              varchar(255) not null default'#FFFFFF',
--     ecran                varchar(255) not null default'#FFFFFF',
--     fermoir              varchar(255) not null default'#FFFFFF',
--     aiguille             varchar(255) not null default'#FFFFFF',
--     boutons              varchar(255) not null default'#FFFFFF',
--     taille               varchar(255) not null default'24/32',
--     commande             bool not null default'false',
--     id_utilisateur       uuid not null,
--     id_materiau          uuid not null,
--     foreign key (id_utilisateur) references auth.users(id),
--     foreign key (id_materiau) references materiau(id_materiau)
-- );

--
-- code pour la création des vues
--
-- create view montre_all_info as
--     select  id_montre, id_utilisateur,
--             bracelet, boitier, ecran, fermoir, aiguille, boutons, taille,
--             montre.id_materiau, libelle_materiau, url_materiau,
--             commande
--     from montre, materiau
--     where montre.id_materiau = materiau.id_materiau
-- ;

-- create view commande as
--     select id_utilisateur, id_montre, commande
--     from montre
--     where commande = true
--     group by id_utilisateur, id_montre
-- ;

-- create view montre_cuir as
--     select id_montre
--     from montre
--     where id_materiau = 'a2cf8ea3-b36f-4b4a-8db0-03bc2c7122b5'
-- ;

-- create view montre_bois as
--     select id_montre
--     from montre
--     where id_materiau = '44219110-b4c8-40d5-a7b6-20ea4a0c181e'
-- ;

-- create view montre_metal as
--     select id_montre
--     from montre
--     where id_materiau = 'b235fba2-83c7-4b45-b3b5-1d3e54a3be8d'
-- ;

--
-- code pour la création des policies
--
-- CREATE POLICY "Enable read access for all users" ON "public"."montre"
-- AS PERMISSIVE FOR SELECT
-- TO public
-- USING (true)

-- CREATE POLICY "Enable insert for authenticated users only" ON "public"."montre"
-- AS PERMISSIVE FOR INSERT
-- TO authenticated
-- WITH CHECK (true)

-- CREATE POLICY "Enable update for users based on email" ON "public"."montre"
-- AS PERMISSIVE FOR UPDATE
-- TO public
-- USING (((auth.uid() = id_utilisateur) AND (commande = false)))
-- WITH CHECK ((auth.uid() = id_utilisateur))

-- CREATE POLICY "Enable delete for users based on user_id" ON "public"."montre"
-- AS PERMISSIVE FOR DELETE
-- TO public
-- USING (auth.uid() = id_utilisateur)