# L'intégration continue

## Principe

Pour expliquer ce qu'est l'intégration continue il faut s'attarder sur les causes de sa création. Avant qu'on invente le concept d'intégration continue les projets se déroulait en trois phases, la première consistait à s'entendre avec le client sur un certain nombre de fonctionnalité qu'il voulait implémenter dans son programme, puis dans la deuxième phase les développeurs réalisait une solution, on notera qu'en général que cette étape subis souvent des retards ou donne lieu à des programmes fortement buggués. Bien évidament cette phases se passe sans aucunes communication avec le client. Puis arrive la dernière phases ce qu'on appel l'intégration, qui consiste à déployer et tester la solution qui a été développé. Et là bien souvent ça bloque, vu que l'équipe de développement n'a eu aucun contact avec le client, la solution peut ne plus correspondre à son besoin ou ne pas être à son gout, dans ce cas le client sera mécontent. Il se peut que l'application soit inutilisable car pleinne de bugs, car l'application n'a pas été correctement testé avant en conditions rééle (avec toutes les briques applicatives, dans un environnement similaire). Et bien souvent le code est d'une qualité extrèmement médiocre et donc immaintenable et modifiable... Donc en général ce genre de projet fini à la poubelle bien rapidement.

C'est pour toutes ces raisons que l'ont à créé l'intégration continue, si on devait résumer le pourquoi du comment en une phrase ont pourrait dire:
**Vous n'aimez pas les phases d'intégration? Alors intégré plus souvent!**

Cette phrase peut sembler contradictoire mais elle est pleine de sens, en effet en intégrant plus souvent (une fois par semaine par exemple) il est plus facile de corriger le tir, qu'au dernier moment, quelques semaines avant la livraison finale.


## Les motivations des entreprises

Il faut en général déterminer avant de commencer si le projet utilisera l'intégration continue ou non, ce choix induirait des conséquences (positives ou négatives). Donc pourquoi de nos jours les entreprises optent de plus en plus pour l'intégration continue ? La question est simple mais reste complexe dans le cas où certaine entreprise resterait perplexe à cette pratique car ils ne l'ont généralement jamais testé.

D'un point de vue du marketing, l'utilisation de l'intégration continue permet d'avoir des demandes de démonstrations non planifiées. Le projet étant constamment compilé et envoyé sur le serveur de dev, cela permet au client de visualiser le rendu du projet à chacun build.

<!-- Réecrire le paragraphe suivant -->

Budgets

* Démontrer rapidement l’avancement d’un projet
  * Projets gérés par tranches, par lots conditionnels : focus sur le fonctionnel important !

Ressources, équipes

* Coordination d’équipes distribuées : le reporting projet ne suffit pas !
  * Il faut partager les mêmes éléments d’évaluation de l’état d’avancement d’un projet
* Des changements dans l’organisation : fusion-acquisition, restructuration, …

Besoins : les besoins varient continuellement en fonction

* Des produits de concurrents éventuels
* Des changements légaux, réglementaires (contraintes d’importation, deconfidentialité, etc).

Besoin d’intégrer les évolutions d’un projet en continu

## Les motivation au niveau projet

L'utilisation de cette méthode permet de réduire la durée, l'effort et la douleur provoquée par chaque intégration, de même, quand on réduit la durée entre chacune de ces intégrations, moins elles sont difficiles a effectuer.

À propos des tests unitaires, l'intégration continue permet d'augmenter la vélocité des tests d'intégration et permet de détecter les problèmes et les défauts et donc de réduire de réduire les risques d'intégration.

L'intégration permet de résoudre dès le début du projet les problèmes liés à l'intégration sur un serveur au lieu d'être confronté à ses erreurs à la fin du projet.

<!-- Réecrire ce paragraphe -->


Nécessité d’améliorer :

* La qualité des livrables
  * Réduire la complexité (meilleure maintenabilité)
  * Adéquation
* La traçabilité
  * des changements
  * des déploiements
* La productivité
  * Se focaliser sur le métier, pas sur la technique

Principes « agiles »

* Fabriquer souvent
* Tester souvent (tests unitaires)
* Tester les performances souvent
* Intégrer souvent dans le SI

## Qu'est-ce que c'est et pourquoi l'utiliser

Quand on parle d'intégration il ne s'agit en aucuns cas d'un outil magique comme bien souvent en informatique, mais d'un concept. La mise en oeuvre de ce concept se fait par l'ajout d'un certains nombre d'outils, que nous verrons plus tard dans ce document, chacuns de ces outils à pour but de d'améliorer la qualité global du code qui est produit. Il existe plusieurs facteurs qui influe sur la qualité du code:

- Maintenabilité
- Testabilité
- Rapidité

Et bien sur chacuns des outils qui sont utilisés en intégration continue influe sur un de ces facteurs. Le but étant bien sur que la qualité du code soit la meilleur possible afin que le client soit content et n'est pas de mauvaise surprise à la fin, car un client heureux est un client qui ferra surement appel à vous dans le futur.
