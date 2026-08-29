# MEMORY, historique du site sportsmatters.be

Journal de la mission site. Le cadre de travail est dans [CLAUDE.md](CLAUDE.md). Ce qui concerne
le client dans son ensemble est dans le dossier parent.

---

## 29 août 2026 · Le SEO est posé, et l'état réel du site est constaté

**Constat, mesuré et non déduit.** La structure et le design du site sont finis, mais **les
visuels ne le sont pas** : le dossier `img/` ne contient aucune image, et le site en ligne
affiche encore ses consignes de brief, par exemple « LOGO RBFA À FOURNIR ». 31 emplacements
attendent leur contenu.

**Le SEO était entièrement absent.** Aucune balise `description`, aucun Open Graph, aucun
`hreflang` alors que le site existe en trois langues, aucun `canonical`, aucune donnée
structurée, ni `robots.txt` ni `sitemap.xml`. Un site trilingue sans `hreflang` laisse Google
traiter les trois versions comme trois pages concurrentes.

**Ce qui a été ajouté**, sur les trois pages : description par langue, canonical, les quatre
`hreflang` avec `x-default`, Open Graph et Twitter Card, et un bloc de données structurées
`ProfessionalService` décrivant les trois services, le fondateur, la zone desservie et les
domaines de compétence. Plus trois fichiers à la racine : `robots.txt` qui autorise nommément
les robots des assistants IA, `sitemap.xml` avec les correspondances de langue, et `llms.txt`
qui décrit l'offre en clair pour les modèles.

**Le parti pris sur les IA** est le même que sur le CAD : ChatGPT, Claude et Perplexity sont un
canal de découverte réel, on ne les bloque jamais sans une décision explicite du client.

**L'image de partage a été créée** dans la foulée : `img/og-sportsmatters.png`, 2400 x 1260,
200 Ko. Elle est composée en HTML à la charte (logo en version reverse, magenta #C52270, Archivo
italic black, les rayures du hero) puis capturée en Chrome headless. Le source est conservé dans
`creation/og-card.html` au niveau client, pour pouvoir la régénérer sans refaire le travail.
À noter : le logo du site est la version positive, ses tracés sans classe sont noirs et
disparaissent sur fond sombre. La version reverse a été produite en forçant ces 17 tracés en
blanc.

**Décision sur les URL absolues, prise après vérification.** Elles pointaient d'abord vers
`www.sportsmatters.be`, le domaine cible. Test fait : ce domaine **ne répond pas du tout**
(HTTP 000). Or un canonical vers une URL morte est ignoré par Google, et une `og:image` vers une
URL morte donne un partage sans visuel. Tout a donc été basculé sur `sportsmatters.vercel.app`,
l'adresse réellement servie, avec la consigne de bascule écrite en tête de chaque page.

**Au branchement du domaine, une seule chose à faire** : remplacer `sportsmatters.vercel.app`
par `www.sportsmatters.be` dans les trois pages, le `sitemap.xml` et le `robots.txt`.

Tout est en ligne et vérifié : balises servies, `robots.txt`, `sitemap.xml`, `llms.txt` et image
de partage répondent tous en 200.

## 29 août 2026 · Le chantier reçoit son cadre, et une contradiction d'infra apparaît

Pose du harness. En reconstituant l'état du dossier, une contradiction est ressortie : le
`README.md` du dépôt décrit un dépôt local sans remote, publié par FTP chez Combell, alors que
le dépôt a bien un remote GitHub et que le site tourne sur Vercel.

**Rien n'a été tranché**, la contradiction est simplement écrite dans le `CLAUDE.md`. Le point
n'est pas technique mais commercial : Philippe paie un pack Combell depuis janvier 2024, et le
domaine est chez lui. Choisir Vercel revient à lui laisser un hébergement qui ne sert plus qu'aux
emails.

Le site est en ligne et attend le retour de Philippe **sur le copy**. Ce n'est pas la
construction qui bloque, c'est la validation du contenu rédactionnel.

## 18 juillet 2026 · Le site est construit et déployé en une journée

Le site one-page trilingue est écrit de zéro en HTML, CSS et JS, sans framework, et mis en ligne
sur Vercel (dépôt Hilarious/sportsmatters).

Décisions de construction prises ce jour :
- **Structure de la page FR** : hero image, bande de logos, triptyque avant / pendant / après,
  galerie terrain, cases photo, témoignage, portrait.
- **Le ledboard des partenaires terrain** montre 7 fédérations et organisateurs, une référence
  à la fois plutôt qu'un mur de logos.
- **Identité appliquée** : charte 2026, magenta #C52270, logo 2024 inliné en SVG.
- **NL et EN alignés sur la structure FR** dans la foulée, la version FR restant la référence.
- **Tous les tirets longs supprimés** du contenu, en même temps que la passe d'animations.

Un fichier `img/PHOTOS-A-FOURNIR.md` liste ce qui manque en visuels.

## Janvier 2024 · La page d'attente

Une page d'attente est mise en ligne sur sportsmatters.be, hébergée chez Combell. Elle y est
restée jusqu'à l'été 2026, avec un certificat SSL auto-signé donc invalide dans les navigateurs.

---

## Prochaines étapes

1. **Obtenir le retour de Philippe sur le copy.** Tout le reste en dépend.
2. Trancher l'hébergement, Vercel ou Combell, et brancher le domaine.
3. Protéger l'accès au site tant que le contenu n'est pas validé.
4. Récupérer les photos manquantes listées dans `img/PHOTOS-A-FOURNIR.md`.
5. Corriger le certificat SSL si le choix se porte sur Combell.
