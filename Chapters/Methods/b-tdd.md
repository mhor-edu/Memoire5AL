
## Le développement piloté par les tests (TDD)

Quand on est en phase de développement, on n'a pas toujours le temps de créer les tests adéquats pour son bon fonctionnement et on oublie souvent de les faire faute de temps. Sur certain projet on prend des gens qui ne coûtent pas cher et qui ne sont pas développeurs afin de tester le cas fonctionnel des nouvelles fonctionnalités, dans certains projets c'est le chef de projet ou le scrum master qui teste la fonctionnalité rapidement. Mais ceci est une mauvaise pratique car d'ici quelque semaine voir quelque mois, quand une fonctionnalité importante ne fonctionne plus, on se demandera depuis combien de temps elle est comme cela et surtout comment !

En utilisant des tests de régression, le problème serait résolu, mais il faut cependant les écrire et cela représente un budget supplémentaire lors de l'écriture de ces tests, une autre solution existe qui consiste à utiliser la méthode TDD ("Test Driven Development" ou en français "Le développement piloté par les tests") permet d'écrire le test avant le code.
Le développeur conçoit un ensemble de tests pour la première "user Story" du cahier des charges, certes ces tests échouent mais c'est le but car on devra faire en sorte qu'il fonctionne en écrivant le minimum de code possible. Généralement un développeur aura tendance à écrire plus de code que le nécessaire cependant avec le processus de TDD, le développeur écrira le minimum de code et si les tests passent alors ce code sont considérés comme solides.

Ainsi le TDD permet de concevoir du code en état de marche à n'importe quel moment du développement du projet en plus d’améliorer la qualité du code et nous assure que le besoin du client est respecté.

Pour résumer ce qui vient d'être dit voici un schéma qui explique les étapes à suivre en TDD:

<div>![](img/tdd-lifecycle.png)</div>
