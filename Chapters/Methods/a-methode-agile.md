
## Méthode agiles

Dans cette partie nous allons dans un premier temps expliquer ce qu'est une méthode agile ensuite nous verrons les méthodes agiles les plus utilisées afin de vous convaincre à vous lancer dans la mise en oeuvre de méthode agile.

Les méthodes agiles se veulent en rupture avec la gestion de projets des débuts (cycle en V, cascade, etc.). Le plus gros écueil de ces méthodes était ce que l'on appelle l'effet "tunnel", c'est-à-dire que le client ne voit plus rien des développements une fois qu'il avait validé les besoins  et les spécifications de son projet. Ce n'est qu'à la fin qu'il découvre ce qui a été fait, deux cas arrivent fréquemment :

* Soit le projet subit de gros retard car toutes les spécifications initiales étaient incomplètes ou irréalisables et donc n'ont pas été finalisé à temps, dans ce cas le client n'a rien et dépend complètement de l'équipe technique.
* Soit au final les besoins du client ont changé entre la validation des spécifications et la livraison, dans ce cas tout le développement est alors jeté pour être recommencé (ce cas est appelé "Scope creep"[^Scope_creep])

[^Scope_creep]: http://en.wikipedia.org/wiki/Scope_creep

C'est donc en se basant sur ce postulat que les méthodes agiles ont été créées, donc le point commun de toutes méthodes agile est de faire disparaître l'effet "tunnel". Pour cela on se base sur plusieurs principes :

- Transparence : Le client verra l'avancement au fur et à mesure de l'avancée du projet.
- Moins de documentation : Écrire du code plus clair plus lisible mais moins bien documenté car écrire de la documentation n'est en général jamais lu (ou très peu).
- Flexibilité : le client doit être très impliqué dans le projet il se doit de faire des retours (positifs et/ou négatifs). En contreparties il peut faire évoluer ses besoins (ajout de fonctionnalité, etc.. en cours de développement.

Actuellement, les 3 méthode agile les plus utilisée dans le cadre de la réalisation de projets informatiques sont le Kanban, Scrum et eXtreme Programming, ce sont ces méthode que nous allons vous expliquer brievement.

### Kanban

Cette méthode, issue de la méthode industrielle Lean[^lean] est un terme japonais signifiant "fiche" ou "étiquette" mise en place dans les différentes usines de Toyota dans les années 60. Cette méthode permet de visualiser l'état des différentes issues d'un projet visuelement grace a un tableau. Chaque issue possede une mesure nommée "lead-time" qui correspond a la durée moyenne pour completer un item. 

Ci dessous un exemple de tableau Kanban :

[^lean]: http://fr.wikipedia.org/wiki/Lean

<div>![](./img/image10_reference_new.png)</div>

Cette méthode est géneralement utilisée avec la méthode Scrum.

### Scrum

Publiée en 2001 par Ken Schwaber et Mike Beedle, la méthode Scrum n'est pas à priori une méthode mais plutôt une méthodologie de gestion de projet agile que les entreprises doivent utiliser afin de surmonter les problèmes et proposer un cadre de gestion de projets Agiles : un rythme itératif (sprint), des réunions précises (daily meeting), des artefacts (product backlog, sprint backlog, graphique d’avancement), des règles du jeu et bien plus encore. Scrum nous donne le processus qui nous mènera de la création d'une vision du produit final, quel que soit le processus de développement réel. La méthodologie Scrum ne nous dit pas comment créer un logiciel de qualité. Il ne montre ce que la qualité est, où sont vos problèmes, et vous met au défi de les corriger.

La méthode Scrum possède un lexique bien particuliers, par exemple dans cette liste non exhaustive : 

* Les Rôles
	* Product Owner : Généralement un expert du domaine métier du projet.
	* Equipe de Développement : Ce sont les développeurs, architecte logiciel, graphiste, analyste fonctionnel, ...
	* Scrum Master : C'est le coach du Product Owner et de l'equipe de Développement
* Les artefacts
	* Planning poker : Une méthode qui permet de produire des estimation sur les tâches a éffectuer
	* Product Backlog : Liste des fonctionnalités à developper
	* Sprint : Une itération d'une durée 2 à 4 semaine pour developper la liste des issues du backlog définie en début du sprint
	* Sprint Backlog : Represente la liste des tâches accomplie pendant le sprint
	* Daily Scrum : Une réunion quotidienne de 15 à 20 minutes maximun
	* Burndown Chart : Represente graphiquement l'avancement du projet

Scrum consistes à diviser les tâches en Sprint, chaque sprint dure généralement 2 semaines cependant elle peuvent être entre quelques heures jusqu’à un mois.

Cette méthode offre seulement des aspects de gestion de projets aidant les développeur de mieux appréhender le développement en surmontant les obstacles, de comment développer et de comment spécifier mais pour combler le problème de la pratique de développement on utilise généralement la méthode Extreme Programming (XP) qui offre des pratiques de programmation en binôme, des développements pilotés par les tests (Test Driven Development), intégration continue, etc.

### eXtreme Programming (XP)

Publiée en 1999 par Kent Beck, Ward Cunningham et Ron Jeffries, la Programmation Extreme est une méthode agile de développement de logiciels méthodologie. Il nous donne un processus qui permet de créer des logiciels de manière agile et productive. Il traite, mais ne se spécialisent pas dans la gestion du processus de développement, et se concentre principalement sur les pratiques d'ingénierie nécessaires pour fournir des logiciels, avec la qualité.
XP se compose d'un certain nombre de pratiques méthodologie, conçus pour être utilisés ensemble. Par exemple le TDD, cependant les organisations ne veulent pas nécessairement toute adopter l'eXtreme Programming et préfere generalement la méthode Scrum combiné avec le Kaban.
