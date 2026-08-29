# Site sportsmatters.be

Mission **site web** du client SportsMatters. Le `CLAUDE.md` du dossier parent donne le client
et la relation, il est chargé avant celui-ci.

⚠️ **Ce dossier est un dépôt git poussé sur GitHub** (Hilarious/sportsmatters). Ne jamais
écrire ici un mot de passe, un accès FTP ou un identifiant. Ce qui touche aux accès reste dans
le dossier parent, hors dépôt.

---

## Ce que c'est

Site vitrine **statique**, one-page, **trilingue**. HTML, CSS et JS écrits à la main, sans
framework et sans CMS.

| Fichier | Version |
|---|---|
| `index.html` | FR, **la version de référence** |
| `nl/index.html` | NL |
| `en/index.html` | EN |
| `img/` | Les visuels, plus `PHOTOS-A-FOURNIR.md` |

**La version FR fait foi.** NL et EN sont alignés sur sa structure : toute modification de
structure se fait d'abord en FR, puis se répercute sur les deux autres. Ne jamais laisser les
trois diverger.

## Statut

**En ligne sur https://sportsmatters.vercel.app depuis le 18/07/2026** (dépôt privé
Hilarious/sportsmatters, déploiement automatique à chaque push sur `main`).

⚠️ **Le site en ligne est volontairement à l'état de gabarit.** Ses 19 emplacements photo sont
vides et affichent leur consigne de brief, en gabarits rayés magenta. C'est assumé : l'URL sert
de **support de brief à montrer à Philippe**, pas de site fini. **Ne pas la diffuser largement**
tant que les photos ne sont pas intégrées. La liste des visuels attendus est dans
`img/PHOTOS-A-FOURNIR.md`.

**Ce qui bloque : le retour de Philippe sur le copy.** Le site est construit, c'est le contenu
rédactionnel qui attend sa validation.

Restent ouverts : protéger l'URL le temps de la validation, et brancher un domaine propre.

### Note d'infrastructure GitHub

Le compte GitHub `Hilarious` est un **compte personnel, pas une organisation**. L'application
Vercel y est configurée en « Only select repositories » : **tout nouveau dépôt doit être ajouté
manuellement** dans github.com/settings/installations avant de pouvoir être importé dans Vercel.
Audry saisit son mot de passe, jamais Claude.

## L'infrastructure, à trancher

Il y a une contradiction dans le dossier, et elle doit être arbitrée avant la mise en ligne
publique :

- Le `README.md` du dépôt dit « hébergement cible Combell, publication par FTP, dépôt local
  sans remote ». **C'est périmé.**
- La réalité : le dépôt a un remote GitHub et le site est déployé sur **Vercel**.
- Mais le **domaine sportsmatters.be est chez Combell**, au nom de Philippe, avec un pack
  Webhosting Business qu'il paie depuis janvier 2024, et un **certificat SSL invalide**
  (auto-signé) sur la page d'attente.

Deux chemins possibles, et ce n'est pas qu'une question technique : soit on pointe le domaine
vers Vercel et le pack Combell ne sert plus qu'aux emails, soit on publie par FTP chez Combell
et on abandonne Vercel. **Le choix engage ce que Philippe paie.** À trancher avec lui, puis à
écrire ici.

## Structure de la page FR

Hero image, bande de logos, triptyque avant / pendant / après, galerie terrain, cases photo,
témoignage, portrait. Un ledboard de partenaires terrain présente 7 fédérations et
organisateurs, **une référence à la fois**.

## Identité appliquée

Charte SportsMatters v1.0 : **magenta #C52270**, noir, blanc. Logo 2024 (rework Roberto
Salvador), **inliné en SVG** dans les pages, pas chargé comme fichier externe.

## Règles d'écriture

- **Aucun tiret long.** Ils ont été retirés du site une fois, ne pas les réintroduire.
- Les animations sont sobres et sportives. Le « juice » existant a été calibré, ne pas le
  surcharger.
