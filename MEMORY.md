# MEMORY, historique du site sportsmatters.be

Journal de la mission site. Le cadre de travail est dans [CLAUDE.md](CLAUDE.md). Ce qui concerne
le client dans son ensemble est dans le dossier parent.

---

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
