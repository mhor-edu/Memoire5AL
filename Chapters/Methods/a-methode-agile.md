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

Voici les méthodes agiles les plus connues et utilisées 

### Kanban



### SCRUM

Publiée en 2001 par Ken Schwaber et Mike Beedle, la méthode SCRUM[^scrum] n'est pas à priori une méthode mais plutôt une cadre méthodologique que les entreprises doivent utiliser afin de surmonter les problèmes et proposer un cadre de gestion de projets Agiles : un rythme itératif (sprint), des réunions précises (daily meeting), des artefacts (product backlog, sprint backlog, graphique d’avancement), des règles du jeu et bien plus encore.

[^scrum]: Guide du SCRUM par Ken Schwaber et Jeff Sutherland : https://www.scrum.org/Portals/0/Documents/Scrum%20Guides/Scrum%20Guide%20-%20FR.pdf#zoom=100

La méthode SCRUM possède un lexique particuliers, par exemple : 

* Les Rôles
  * Product Owner : Généralement un expert du domaine métier du projet.
  * Equipe de Développement : Ce sont les développeurs, architecte logiciel, graphiste, ...
  * Scrum Master : C'est le coach du Product Owner et de l'equipe de Développement

SCRUM consistes à diviser les tâches en Sprint, chaque sprint dure généralement 2 semaines cependant elle peuvent être entre quelques heures jusqu’à un mois.

Cette méthode offre seulement des aspects de gestion de projets aidant les développeur de mieux appréhender le développement en surmontant les obstacles, de comment développer et de comment spécifier mais pour combler le problème de la pratique de développement on utilise généralement la méthode Extreme Programming (XP) qui offre des pratiques de programmation en binôme, des développements pilotés par les tests (Test Driven Development), intégration continue, etc.

### Extreme Programming (XP)

Publiée en 1999 par Kent Beck
