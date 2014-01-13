
# Les nouveautés

## Ça va bientôt arriver dans le cloud !

Vous n'avez pas pu y couper depuis quelques années déjà la mode et au cloud, tout se trouve sur Internet (messagerie, album photo, documents). Pourquoi cette mode, la réponse est simple, c'est pratique et souvent moins onéreux. On avait déjà remarquer une démocratisation du développement sur le cloud avec GitHub[^github] le fameux site qui utilise le gestionnaire de source décentralisé GIT dont nous avons parlé dans l'une des parties précédentes.

Maintenant c'est au domaine de l'intégration continue de s'y mettre. D'ailleurs bien souvent couplé à GitHub. Car oui, ce genre de pratique est né avec la démocratisation du développement Open-Source sur GitHub. D'ailleurs, GitHub a réussi à rendre plus simple la mise en commun et la contribution du code sources pour des projets Open-Source.

Nous allons donc parler ici de deux grosses pratiques qui sont déjà bien ancrée dans le monde de l'open-source mais qui commence à bien s'implanter chez les entreprises. Dans un premier temps nous vous parlerons de la livraison continue une pratique encore peu connue mais très novatrice qui profite fortement des possibilités du cloud. Puis, dans un second et dernier temps nous verrons les serveurs d'intégrations continuent sur le cloud.

[^github]: http://github.com

### La livraison continue

La livraison continue ("Continuous Delivery”) est une pratique qui propose de développer une application afin qu'elle puisse être livrer dans l'environnement de production d'un client.

Ce principe repose sur deux grand fondement :

* Automatisation des tâches, permet d'avoir une procédure de déploiement fiable sans problème lier souvent au oublier des développeurs.
* Déployer fréquemment, permet de recevoir des feedback  sur l'intégration de l'application sur le serveur ainsi les utilisateurs peuvent bénéficier rapidement des nouveautés de même les développeurs peuvent revoir et corriger leur code source quand il est toujours chaud en mémoire.

En commençant par un correctif ou l'ajout d'une nouvelle fonctionnalité apportés au code jusqu’à son déploiement en production est appelé le « pipeline de déploiement ».

En réduisant le délais entre la demande du client et la mise à disposition de la nouvelle fonctionnalité ou d'un correctif d'un bug, la satisfaction du client augmente.

En fin de livraison, on pourra utilisée des outils du cloud, des outils comme 

### Intégration continue

L'intégration continue ne correspond pas a une seule pratique mais a un ensemble de pratique qui permet de vérifier le bon fonctionnement du code a chaque commit du développeur ainsi cela réduit les risques par exemple de régression ainsi 
<!-- parler de Google AppEngine et de Heroku -->

![](img/travis.png)
![](img/travis-pr.png)
![](img/trello-overview.png)
![](img/trello-task.png)

## L'Intégration continue en local

Depuis quelque temps, nous avons la possibilité d'installer les outils en local concernant l'intégration continue. Cette pratique en local permet de voir l'avancement ainsi que les différents test de l'application (test d'intégration, test unitaire, ...) avant de commiter ainsi le developpeur pourra voir si son code fonctionne correctement, que les bonnes pratiques soit bien pratiquer et que son code soit completement tester grace a un outils de coverage. Une application couplé avec un dépot Git, offre la possibilité de crée des Git Hooks[^integrationContinueLocal] 

[^integrationContinueLocal]: Git Hooks : http://git-scm.com/book/ch7-3.html




