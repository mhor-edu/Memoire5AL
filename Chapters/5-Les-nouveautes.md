
# Les nouveautés

## Ça va bientôt arriver dans le cloud !

Vous n'avez pas pu y louper depuis quelques années déjà la mode et au cloud, tout se trouve sur Internet (messagerie, album photo, documents). Pourquoi cette mode, la réponse est simple, c'est pratique et souvent moins onéreux. On avait déjà remarquer une démocratisation du développement sur le cloud avec GitHub[^github] le fameux site qui utilise le gestionnaire de source décentralisé GIT dont nous avons parlé dans l'une des parties précédentes.

Maintenant c'est au domaine de l'intégration continue de s'y mettre. D'ailleurs bien souvent couplé à GitHub. Car oui, ce genre de pratique est né avec la démocratisation du développement Open-Source sur GitHub. D'ailleurs, GitHub a réussi à rendre plus simple la mise en commun et la contribution du code sources pour des projets Open-Source.

Nous allons donc parler ici de deux grosses pratiques qui sont déjà bien ancrée dans le monde de l'open-source mais qui commence à bien s'implanter chez les entreprises. Dans un premier temps nous vous parlerons de la livraison continue une pratique encore peu connue mais très novatrice qui profite fortement des possibilités du cloud. Puis, dans un second et dernier temps nous verrons les serveurs d'intégrations continuent sur le cloud.

[^github]: http://github.com

### La livraison continue

La livraison continue ("Continuous Delivery”) est une pratique qui propose de développer une application afin qu'elle puisse être livrer dans l'environnement de production d'un client.

Ce principe repose sur deux grand fondement :

* Automatisation des tâches, permet d'avoir une procédure de déploiement fiable sans problème lier souvent au oublier des développeurs.
* Déployer fréquemment, permet de recevoir des feedback  sur l'intégration de l'application sur le serveur ainsi les utilisateurs peuvent bénéficier rapidement des nouveautés de même les développeurs peuvent revoir et corriger leur code source quand il est toujours chaud en mémoire.

En commençant par un correctif ou l'ajout d'une nouvelle fonctionnalité apportés au code jusqu’à son déploiement en production est appelé le « pipeline de déploiement ». Ainsi, en réduisant le délais entre la demande du client et la mise à disposition de la nouvelle fonctionnalité ou d'un correctif d'un bug, la satisfaction du client augmente.

### Intégration continue

L'intégration continue ne correspond pas à une seule pratique mais à un ensemble de pratiques et d'outils qui permet de vérifier le bon fonctionnement du code à chaque commit du développeur ainsi cela réduit les risques par exemple de régression. Ces outils que l'on devait installer sur des serveurs dédiés de l'entreprise étaient fastueux à configurer surtout pour les nouvelles entreprises qui se mettent à cette pratique, mais cette époque est révolue car depuis quelques années des services dans le cloud permettent d'éviter d'installer tous ces outils. Le principale avantage étant pour les entreprises novices dans ce domaine d'utiliser l'intégration continue et l'adopter simplement, rien n'empêche une équipe de se défaire de ces outils dans le cloud et d'utiliser des outils d'intégration ne continue sur leurs propres serveurs.  
Dans le cloud il existe une multitude d'outils dont voici les plus connu et permettent tous une integration avec Github :

* Google AppEngine[^google_appengine] : Hebergeur d'application Python, Java, Groovy, JRuby, Scala, Clojure, Go, et PHP
* Heroku[^heroku] : Herberge du Ruby, Node.js, Python, and Java
* Travis-CI[^travis-ci] : Un jenkins gratuit pour les projets open source

[^google_appengine]: Google AppEngine : https://developers.google.com/appengine/
[^heroku]: Heroku : https://www.heroku.com/
[^travis-ci]: Travis-CI : https://travis-ci.org/

Ci-dessous quelques image de Travis-CI qui est une des valeurs sûr dans ce domaine
<div>![Interface de travis](img/travis.png)</div>

Voici la page principal d'un projet, elle montre le dernier build du projet, on voit que cette interface est beaucoup plus dépouillé que celle de Jenkins, ici il faut oublié tout le coté statistique.
<div>![](img/travis-pr.png)</div>

Lorsque l'on utilise Git, il est très pratique après avoir développer sa feature d'effectuer un pull request et ainsi vérifier si le code compile toujours avant d'appliquer les modifications dans la branche principale.

## L'Intégration continue en local

Depuis quelque temps, nous avons la possibilité d'installer les outils en local concernant l'intégration continue. Cette pratique en local permet de voir l'avancement ainsi que les différents test de l'application (test d'intégration, test unitaire, ...) avant de commiter ainsi le developpeur pourra voir si son code fonctionne correctement, que les bonnes pratiques soit bien pratiquer et que son code soit completement tester grace a un outils de coverage. Une application couplé avec un dépot Git, offre la possibilité de crée des Git Hooks[^integrationContinueLocal] 

[^integrationContinueLocal]: Git Hooks : http://git-scm.com/book/ch7-3.html

Les outils d'intégration continue en local se multiplie ainsi on peut nommée comme outils Emma[^emma] pour une gestion du coverage du code pour des applications java et son equivalent pour des applications PHP, sismo[^sismo]

[^sismo]: Sismo : http://sismo.sensiolabs.org/
[^emma]: Emma : http://mojo.codehaus.org/emma-maven-plugin/index.html


<div>![](img/emma_som.png)</div>
<div>![](img/emma_file.png)</div>
