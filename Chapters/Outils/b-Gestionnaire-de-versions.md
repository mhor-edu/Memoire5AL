
## Gestionnaire de versions

Un gestionnaire de versions sert à stocker, versionner et partager son code. On utilise surtout des gestionnaires de versions quand le besoin de partager le code source entre les différents membres d'une équipe se fait ressentir. En effet, le plus souvent on stocke son code sur un gestionnaire de source alors que l'on est le seul utilisateur à peu d'intérêt, à part de celui de ne jamais perdre ses anciennes sources et ses évolutions. Les plus gros avantages se font ressentir sur les projets où il y a une équipe en effet, dont voici les principaux avantages d'avoir un gestionnaire de sources quand on est en équipe :

- Partager le code plus efficacement et ainsi éviter de partager son code avec dropbox ou par des emails.

- Tous les membres de l'équipe ont toujours une version du code à jour. Donc un gain de temps énorme lors de la mise à jour.

- Garder un historique de toutes les modifications et de qui les à effectuer. Ce qui permet un retour rapide en cas d'introduction de bug et de plus avoir peur de modifier le code source.

- Géré finement vos versions. Par exemple figer une version stable qui ne bougera plus et qui contient un nombre limité de bugs (une version "stable").

Il faut savoir qu'il existe deux types de gestionnaire de sources, les centralisés qui existe depuis des années et les décentralisés qui inondent le marché depuis quelques années car il possède toutes les qualités des outils centralisés mais ajoute encore d'autre fonctionnalité dont voici les avantages de ces gestionnaires décentralisés face au centralisés.

- Possibilité de faire des commits atomiques sur sa machine et les pousser ensemble en une seule fois sur le serveur maître pour résoudre un bug ou créer une fonctionnalité. Il est aussi partie de travailler hors ligne ce qui est totalement impossible en centralisé.

- Un aspect communautaire renforcé :
    - Une jolie interface graphique où chacun peut voir et annotez-le commit de l'autre.
    - Chacun peut proposer des idées postées des bugs, ...

- Plus de sécurité :
    - Si les droits d'accès sont bien fait le développeur doivent passer par la case "pull request" c'est-à-dire qu'il faut que son commit soit accepté par l'administrateur pour être mis en ligne sur le serveur maître.
    
Au vu des fonctionnalités proposées par les serveurs de sources décentralisées il est conseillé d'opter pour ceux-ci, en particulier pour Git[^Git].

[^Git]: Plus d'info sur Git : http://fr.wikipedia.org/wiki/Git et http://git-scm.com/

    

