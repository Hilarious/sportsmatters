# Photos à fournir pour le site SportsMatters

> Liste établie le 18/07/2026. Chaque emplacement est déjà en place dans le site, avec sa consigne affichée directement dans le gabarit. Il suffit de déposer les images ici et de les brancher.

## Comment brancher une image

Dans `index.html`, trouver le bloc concerné et faire deux choses :

1. ajouter l'image à l'intérieur : `<img src="img/nom-du-fichier.jpg" alt="Description">`
2. ajouter le mot `filled` à la classe : `<div class="ph filled" ...>`

Le gabarit rayé disparait tout seul. À faire dans les trois versions linguistiques.

## Ce qu'il faut demander à Philippe

### Priorité 1, indispensable pour que le site tienne debout

| Emplacement | Sujet | Format |
|---|---|---|
| Hero, en haut de page | Plan large d'une activation en pleine action : foule, couleurs de marque, émotion | Paysage, 2400×1400 px minimum |
| Portrait, section À propos | Philippe en situation sur un événement, pas en studio | Vertical, 1200×1500 px |
| 6 collaborations | Une photo par référence : Cofidis, Fintro, Boels, Allianz, Zelektro, Italia | Paysage, 1600×1000 px |

### Priorité 2, ce qui donne la respiration

| Emplacement | Sujet | Format |
|---|---|---|
| Triptyque Avant / Pendant / Après | Montage du stand, le jour J, les invités VIP | Vertical, 1200×1500 px |
| Galerie Le terrain, 7 images | Une photo maîtresse, des détails, un portrait de supporter, un panorama, une animation | Voir la consigne affichée sur chaque case |
| Témoignage | Photo du client cité | Carré, 600×600 px |
| Bande de logos | Les logos clients en vectoriel ou PNG transparent | Hauteur 44 px à l'affichage |
| Ledboard partenaires terrain | Les logos des 7 fédérations et organisateurs : RBFA, COIB, Hockey Belgium, Basketball Belgium, ASO, Flanders Classics, Belgian Cycling | Vectoriel ou PNG transparent, hauteur 86 px à l'affichage |

## Point à trancher avec Philippe avant mise en ligne

Le ledboard présente RBFA, COIB, Hockey Belgium, Basketball Belgium, ASO, Flanders Classics et Belgian Cycling comme partenaires terrain. Deux questions à valider avec lui :

1. **La réalité de la relation** pour chacune de ces entités. Le site dit "nous connaissons ceux qui organisent", ce qui est plus prudent qu'un partenariat officiel revendiqué, mais afficher un logo institutionnel engage quand même.
2. **Le droit d'usage du logo.** Les fédérations et le COIB encadrent strictement l'usage de leur identité, le COIB particulièrement à cause des règles olympiques. Un accord écrit est à obtenir, sinon il vaut mieux citer les noms en texte sans les logos.

Si l'accord n'est pas acquis pour certaines, le ledboard fonctionne très bien avec moins d'entrées. Il suffit de supprimer le bloc `article.led-slide` et le bouton correspondants.

## Points de vigilance

- **Droit à l'image** : vérifier que les photos où des visages sont reconnaissables peuvent être publiées. Sur des événements publics avec du public au premier plan, c'est le point le plus sensible.
- **Droits des organisateurs** : certaines fédérations et certains organisateurs encadrent l'usage commercial des photos prises sur leurs événements. À vérifier pour ASO et Flanders Classics notamment.
- **Accord des marques citées** : afficher un logo client suppose son accord. À cadrer avec Philippe avant mise en ligne.
- **Poids des fichiers** : compresser avant mise en ligne, viser moins de 300 Ko par image, sinon le site devient lent sur mobile.
