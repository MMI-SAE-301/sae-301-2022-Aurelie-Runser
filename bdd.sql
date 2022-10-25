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
--     boitier_rond         varchar(255) not null default'#FFFFFF',
--     ecran                varchar(255) not null default'#FFFFFF',
--     taille               varchar(255) not null,
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
--             bracelet, boitier, boitier_rond, ecran,
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