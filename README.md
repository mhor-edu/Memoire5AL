Memoire5AL
==========

## Sujet

Mémoire de recherche à propos de "Les enjeux de l’intégration continue".

## Table des matières

See `ContentTable.md` file

## Compilation du projet

### Prérequis

- Installation de [Pandoc](http://johnmacfarlane.net/pandoc/)
- Installation de [LaTex](http://latex-project.org/ftp.html)

### Export en PDF

Executer la requête suivante dans le terminal :

```
> pandoc -N --template=templates/mytemplate.tex --variable mainfont=Georgia --variable sansfont=Arial --variable monofont="Bitstream Vera Sans Mono" --variable fontsize=12pt -V geometry:"top=3cm, bottom=3cm, left=3cm, right=3cm" -s --highlight-style haddock header.md Chapters/1-Introduction.md Chapters/2-Quoi-et-pourquoi.md Chapters/3-Les-outils.md Chapters/Outils/a-Tests-unitaire.md Chapters/Outils/b-Gestionnaire-de-versions.md Chapters/Outils/c-Detecteur-de-copier-coller.md Chapters/Outils/d-Revue-de-code.md Chapters/Outils/e-Analyseur-de-code.md Chapters/Outils/f-Logiciel-de-suivi-se-problemes.md Chapters/Outils/g-Test-de-couverture.md Chapters/Outils/h-Coding-style-checker.md Chapters/Outils/i-Serveur-d-integration-continue.md Chapters/4-Les-nouveautes.md Chapters/5-Conclusion.md --latex-engine=xelatex --toc -o memoire.pdf
```