# code de base pour TP (et future SAE 301)

- **Nom : Runser**
- **Prénom : Aurélie**
- **URL maquette Figma: https://www.figma.com/file/ZbhILjKIVQvM8K9sZS6oft/SAE-301?node-id=0%3A1 **
- **URL publique du site : https://sae301-aurelierunser-b2.netlify.app/ **
- **URL projet Supabase : https://uldsnwwynbuuixmbjqqm.supabase.co **
  - [X] Avez-vous invité abdallah.makhoul@univ-fcomte.fr dans votre 'Organisation' Supabase ?

# Auto-évaluation

## R313 | Dev Back (Abdallah Makhoul : [AC 2404](https://moodle.univ-fcomte.fr/mod/assign/view.php?id=612670) et [AC 2402](https://moodle.univ-fcomte.fr/mod/assign/view.php?id=612669))

Vous avez rendu à la racine du projet :

- [X] Le modèle conceptuel de données (nom : [MCD.png](/MCD.png))
- [X] Et compléter le fichier [bdd.sql](/bdd.sql) détaillant le code pour la création des tables, vues et policies créées
- [X] Avez-vous bien invité abdallah.makhoul@univ-fcomte.fr dans votre 'Organisation' Supabase comme développeur ?

## R312 | Intégrer ([Pierre Pracht : AC 2401](https://moodle.univ-fcomte.fr/mod/assign/view.php?id=612668))

Pour les liens :
[vers des fichiers](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes#relative-links-and-image-paths-in-readme-files) ou page d'un commit sur Github.

Noté sur 40.

- [README](/README.md) bien rempli (0-2-4pts)
  - Ne cochez que ce que vous avez fait.
- Fonctionnalités "avancées" du site (0-2-4pts)
- Intégration du site (0-2-4-6pts)
- Code et Commit (0-2-4-6pts)
- Code HTML spécifiquement sémantique et accessible (0-1-2pts)

- [X] usage de Classes utilitaires (1pt)
  - [body : la couleur de fond et du text](/src/index.css#L7)
  - [section : marging et padding](/src/index.css#L11), [utilisé ici](/src/pages/index.vue#L20)
  - [h1 : style du titre](/src/index.css#L15), [utilisé ici](/src/pages/index.vue#L21)
  - [h2 : style du titre](/src/index.css#L19), [utilisé ici](/src/components/formMontre.vue#L15)
  - [p : tailles et couleur d'un paragraphe](/src/index.css#L23), [utilisé ici](/src/pages/index.vue#L28)
  - [span : tailles et couleur d'un text](/src/index.css#L27), [utilisé ici](/src/pages/index.vue#L30)

- [X] Composants graphiques (0-1-2pts)
  - [Header](/src/components/monHeader.vue)
  - [Footer](/src/components/monFooter.vue)
  - [SVG de la montre de face](/src/components/montreFace.vue)
  - [SVG de la montre de profil](/src/components/montreProfil.vue)
  - [Bouton clair](/src/components/boutonClair.vue)
  - [Bouton foncé](/src/components/boutonFonce.vue)
  - [Card des montres](/src/components/cardMontre.vue)
  - [Carrousel des montres](/src/components/carrouselMontre.vue)
  - [FormKit des couleurs](/src/components/FormKitListColors.vue)
  - [Formulaire de création de montre](/src/components/formMontre.vue)
  - [Liste de montres](/src/components/listeMontres.vue)
  - [Liste de montres créer par l'utilisateur](/src/components/listeMesMontres.vue)

- Technique CSS (0-1-2pts)
  - Quelles techniques (Eg. Styles graphiques (répétés) tous ajoutés par CSS et/ou
    config. Tailwind (eg. before/after avec content, background...))
    - [Couleurs](/tailwind.config.js#L8)
    - [Fonts Size](/tailwind.config.js#L19)
    - [Fonts Family](/tailwind.config.js#L27)
    - [Background Image](/tailwind.config.js#L32)

- Mise en page CSS (0-1-2pts)
  - Quelles techniques (Grilles Flex...)
    - Flex
      - [Page index : aligner et répartir un composant avec plusieurs paragraphes](/src/pages/index.vue#L23) 
      - [Page new : aligner un paragraphe et un bouton](/src/pages/new.vue#L8)
      - [Page edit : aligner un paragraphe et un bouton](/src/pages/edit/%5Bid%5D.vue)
      - [Page comptes : aligner un paragraphe et un bouton](/src/pages/comptes.vue#L25)
      - [Page comptes : aligner un bouton à droite](/src/pages/comptes.vue#L42)
      - [Composant formMontre : aligner et répartir des élements + spcécifier le comportement de certains éléments](/src/components/formMontre.vue#L2)
      - [Composant listeMontre : aligner des élements](/src/components/listeMontres.vue#L24)
      - [Composant listeMesMontre : aligner des élements](/src/components/listeMesMontres.vue#L24)
      - [Composant monFooter : aligner et répartir en ligne ou colonne des élements](/src/components/monFooter.vue#L3)
      - [Composant monHeader : aligner et répartir des éléments (logo par rapport au menu)](/src/components/monHeader.vue#L2)
      - [Composant monHeader : aligner, répartir et afficher le menu en version ordinateur)](/src/components/monHeader.vue#L56)

    - Grid
      - [Composant FormKitListColors : répartir en grille les coules du formulaire](/src/components/FormKitListColors.vue#L25)

  - [X] Mise en page fluide

- [X] Mobile First (0-1-2pts)
  - [X] Plusieurs tailles
    - sm, [un exemple](/src/components/monFooter.vue#L23)
    - md, [un exemple](/src/components/monHeader.vue#L14)
    - lg, [un exemple](src/pages/index.vue#L5)
    - xl, [un exemple](src/components/monHeader.vue#L7)

- [X] Dark Mode (0-1-2pts)
  - [X] Simple usage de 'dark:'
  - [ ] Mise en place avec usage de custom property pour les couleurs. Ou usage de DaisyUI AVEC thèmes perso
    - liens

- "tailwin.config.js" (0-1-2pts)
  - [ ] usage basique couleurs/fonts
  - [X] Comporte des données supplémentaires (utilisées !). Eg: "content-xxx", "bg-xxx", "grid-cols-xxx"...
    - [backgroundImage](/tailwind.config.js#L32), [utilisé ici](/src/pages/index.vue#L5)

- Composants "accessibles" (0-1-2pts)
  - [X] textes "accessibles" (eg. 'sr-only')
  - [ ] Contenu accessible ET Usage de composants étudié pour accessibilité (Eg. HeadlessUI)

[^1]: Supprimez les mentions inutiles.
