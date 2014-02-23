
\newpage

# L'intégration continue

## Principe

Pour expliquer ce qu'est l'intégration continue il faut s'attarder sur les causes de sa création. Avant qu'on invente le concept d'intégration continue, les projets se déroulaient en trois phases, la première consistait à s'entendre avec le client sur un certain nombre de fonctionnalités qu'il voulait implémenter dans son application, puis dans la deuxième phase les développeurs réalisaient une solution, on notera qu'en général que cette étape subie souvent des retards ou donne lieu à des applications fortement buggués. Bien évidemment cette phase se passe sans aucune communication avec le client.  
Puis arrive la dernière phase ce que l'on appelle l'intégration, qui consiste à déployer et à tester la solution qui a été développé. Sur ce point bien souvent cela bloque, vu que l'équipe de développement n'a eu presque aucun contact avec le client, la solution peut ne plus correspondre à son besoin où ne pas être à son goût, dans ce cas le client sera mécontent. Il se peut que l'application soit inutilisable car pleine de bugues, car l'application n'a pas été correctement testé avant en conditions réelles (avec toutes les briques applicatives, dans un environnement similaire). Et bien souvent le code est d'une qualité extrêmement médiocre et donc immangeable et modifiable... Donc en général ce genre de projet fini à la poubelle bien rapidement.

C'est pour toutes ces raisons que l'ont à créer l'intégration continue, si on devait résumer le pourquoi du comment en une phrase on pourrait dire :  
*Vous n'aimez pas les phases d'intégration? Alors intégré plus souvent!*

Cette phrase peut sembler contradictoire mais elle est pleine de sens, en effet en intégrant plus souvent (une fois par semaine par exemple) il est plus facile de corriger le tir, qu'au dernier moment, quelques semaines avant la livraison finale.

## Qu'est-ce que c'est et pourquoi l'utiliser

> « L'intégration continue est un ensemble de pratiques utilisées en génie logiciel consistant à vérifier à chaque modification de code source que le résultat des modifications ne produit pas de régression dans l'application développée. Bien que le concept existât auparavant[réf. nécessaire], l'intégration continue se réfère généralement à la pratique de l'extreme programming. » *(Source : Wikipedia)*

Quand on parle d'intégration, il ne s'agit en aucun cas d'un outil magique comme bien souvent on peut en entendre parler en informatique, mais d'un concept agile. La mise en oeuvre de ce concept se fait par l'ajout d'un certain nombre d'outils, que nous verrons plus tard dans ce document, chacun de ces outils a pour but d'améliorer la qualité globale du code qui est produit. L'intégration continue fait partie des 12 méthodes d'eXtrême Programming (XP). Il existe plusieurs facteurs qui influent sur la qualité du code :

* Maintenabilité
* Testabilité
* Rapidité

Sur chacun des outils qui sont utilisés en intégration continue influe sur un de ces facteurs. Le but étant bien sûr que la qualité du code soit la meilleure possible afin de faciliter les prochaines relectures du code pour implémenter de nouvelle fonctionnalité et autres correctifs de bugue afin que le client soit content et n'est pas de mauvaise surprise à la fin, car un client heureux est un client qui fera sûrement appel à vous dans le futur.

<!-- Avantage -->
L'intégration continue possède plusieurs avantages qui en résultent et c'est principalement grâce à ces avantages que l'on utilisera ce concept agile. Les avantages d'une intégration continue sont par exemple :

- Réduire les coûts pour la résolution des bogues, généralement un bogue est lié à la répercussion de la modification du code existant pour une nouvelle fonctionnalité lorsque l'on n'utilise pas différents tests automatisés à chaque build. La correction de ces bugues qui en résulte a un coût sachant que les bugues en recette pour le client coute plus cher qu'en développement.
- Meilleure réactivité en cas de bugue, si un développeur oublie de commiter un fichier, les tests échouera et permettra d'avertir le développeur de son erreur.
- Par l'intermédiaire aux différents rapports et indicateurs générés par des outils de reporting comme Jenkins, l'équipe en charge du développement ainsi que leur chef de projet voit en temps réel l'avancement et la santé du projet, le chef d'équipe pourra mieux définir les besoins et appliquera son budget selon les différents rapports reçus par mail.
- Les différents problèmes liés à l'intégration du logiciel sur un serveur seront détectés et réparés de façon continue, cela permet d'offrir des recettes plus rapides au client.

<!-- Inconvénient -->
Bien qu'il possède certains avantages, l'intégration continue possède aussi certains inconvénients bien qu'en soit l'intégration continue ne possède pas d'inconvénient pour le mettre en place :

- Tous les bugues ne sont pas identifié si la couverture des tests et insuffisante (voir la partie Coverage)

Le temps nécessaire à intégrer l'intégration continue est variable sachant que la durée de mise en place sera considérablement réduite à chaque projet. La première chose qu'une entreprise doit faire est de le mettre en place petit à petit afin d'habituer les développeurs à ce concept.

<!-- Etape de l'integration continue -->
<!-- Les 8 bonnes pratiques du developpeur -->

## Les motivations des entreprises

Il faut en général déterminer avant de commencer si le projet utilisera l'intégration continue ou non, ce choix induirait des conséquences (positives ou négatives). Donc pourquoi de nos jours les entreprises optent de plus en plus pour l'intégration continue ?  
Dans le cas où certaine entreprise resterait perplexe à cette pratique car ils ne l'ont généralement jamais testé et pour cause, les entreprises pensent à la durée de l'installation des outils de l'intégration continuent et plus particulièrement aux formations de ses développeurs ce qui reste un coût mais généralement les entreprises utilisent seulement la méthode SCRUM afin d'accélérer leurs développements avec plusieurs phases de déploiement par semaine. Mais sachant que l'informatique avance à grands pas chaque jour, les développeurs et le chef de projet prennent conscience des avantages de l'intégration continue et commencent à l'intégrer petit à petit sur leur projet et de conclure sur l'utilisation ponctuelle de cette pratique sur chacun de leurs futurs projets.

Principalement les points qu'ils favorisent la décision d'utiliser l'affiliation continue au sein d'une entreprise sont principalement les suivants :

* L'utilisation de l'intégration continue permet d'avoir des demandes de démonstrations non planifiées. Le projet étant constamment compilé et envoyé sur le serveur de développement, cela permet au client de visualiser le rendu du projet à chacun des builds. Le projet est donc gérés par tranches et par lots conditionnels.
* Dans une entreprise des besoins varient continuellement en fonction des produits des concurrents éventuels et des changements légaux, réglementaires (contraintes d'importation, de confidentialité, etc.).
* Besoin d’intégrer rapidement les évolutions d’un projet en continu.

## Les motivation au niveau projet

L'utilisation de cette méthode permet de réduire la durée, l'effort et la douleur provoquée par chaque intégration, de même, quand on réduit la durée entre chacune de ces intégrations, moins elles sont difficiles à effectuer. À propos des tests unitaires, l'intégration continue permet d'augmenter la vélocité des tests d'intégration et permet de détecter les problèmes et les défauts et donc de réduire les risques d'intégration.

L'intégration permet de résoudre dès le début du projet les problèmes liés au déploiement sur un serveur au lieu d'être confronté à ses erreurs à la fin du projet ainsi cela améliore la qualité des livrables, avec des outils d'analyse de code qui permet de réduire sa complexité (meilleure maintenabilité) cette pratique est en adéquation avec les bests pratice de l'intégration continue. En utilisant un système d'intégration continue, l'équipe de développeurs doit forcément utiliser un gestionnaire de sources comme Git ou SVN qui permet d'avoir une meilleure traçabilité des changements et des déploiements. Ainsi en se focalisant sur le métier et non pas sur la technique, l'équipe gagne en productivité.

En utilisant cette pratique on utilise principalement les Principes « agiles » suivants :

* Fabriquer souvent
* Tester souvent (tests unitaires)
* Tester les performances souvent
* Intégrer souvent dans le SI
