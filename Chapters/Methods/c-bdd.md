
## Behavior Driven Development (BDD)

### C'est quoi?
Il faut précisé dès à présent que cette méthode de developpement ce base en grande partie sur les principes de la TDD vu précédement, donc ici aussi il faudra créer des tests unitaire avant de coder, ici c'est la personne et la manière de créer ces tests qui diffère, en effet ici aussi il sera question de User Story et de Features.
Le Behavior Driven developpement est née pour répondre a une question simple: **qui connait le mieux ce qui doit être developpé?** La réponse est bien evidement le client, mais bien souvent le client n'est pas un developpeur, et il n'est pas capable d'écrire les tests unitaire que nécéssaire tester le comportement de son application.
Lorsqu'on utilise le BDD c'est bien le client qui va créer les tests unitaires, bien évidement ce n'est pas directement lui qui va coder, mais un logiciel qui va traduire ce qu'il veut en code. Nous vous présenterons deux de ces logiciel plus tard. Bien évidement celà oblige le client à s'investir réelement dans son projet afin qu'il soit pleinnement satisfait, car sinon dans le cas contraire le BDD ne fonctionnera pas en effet comme c'est au client de décrire très précisement ce qu'il souhaite si cette tâche n'est pas éffectué avec un minimum de rigueur les fonctionnalités attendu pour le client pourrait être érronés.


### Comment ça marche?
Et bien rien de très compliqué, le client écrit sous forme de texte les fonctionnalités (Features) qu'il attend sous forme d'un langage compréhensible par le logiciel de BDD, puis pour chaque fonctionnalités il écrit un certains nombre de sénario visant à tester le comportement qu'il souhaite donner à cette Feature. Une fois un certain nombre de scenario écrit pour la feature le developpeur code la-dite feature puis grâce à son logiciel de BDD celui-ci va générer des tests unitaires qui correspondent à aux scenario (cette partie est invisible aux yeux du developpeur), afin de tester si le code de la feature a bien été implementé.

### Les solutions existante
Maintenant nous allons voir deux solutions sur lesquels ont peut baser le Behavior Driven Development. Ici nous n'en présentont que deux mais il en existe bien d'autre. Cette méthode de développement étant assez recente il est possible qu'il soit assez difficile de trouver beaucoup de ressources fiables pour votre langage favoris.

#### Cucumber
C'est la solution la plus ancienne et la plus utilisé, elle est disponible dans quasi tout les langages de programmation, du Java en passant par PHP ou même Python et Ruby. Si vous n'êtes pas très au fait des technologies BDD qui existe dans vôtre langage de programmation c'est celui-ci qu'il faut choisir.

#### Behat
C'est une solution exclusivement php qui a son propre langage d'écriture de test en PHP (inspiré de Cucumber), ce logiciel à une très forte communauté derrière lui. Il est à conseiller à tous les développeurs PHP, car il s'agit d'une solution dédier au PHP contrairement à Cucumber.

### Exemple complet
Dans cet exemple nous allons voir à quoi ressemble le fichier de description pour Behat qui s'inspire très fortement de la syntaxe utilisé par Cucumber. On remarquera d'ailleur qu'on utilise le même vocabulaire que dans la TDD (Features, Scenario, ...)

```
Feature: ls
  In order to see the directory structure
  As a UNIX user
  I need to be able to list the current directory's contents

  Scenario:
    Given I am in a directory "test"
    And I have a file named "foo"
    And I have a file named "bar"
    When I run "ls"
    Then I should get:
      """
      bar
      foo
      """
```
Dans l'exemple ci-dessus on crée le un scenario pour la commande ``ls`` (qui permet de lister le contenu d'un dossier). Nous voyons qu'il est  simple de comprendre ce que l'on attend à la fin de cette commande pour le scénario donné. De plus l'écriture de ce scénario est bien plus rapide que l'écriture d'une classe de test unitaire.
