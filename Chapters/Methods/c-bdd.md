## Behavior Driven Development (BDD)


### C'est quoi?
Il faut précisé dès à présent que cette méthode de developpement ce base en grande partie sur les principes de la TDD vu précédement, donc ici aussi il faudra créer des tests unitaire avant de coder, ici c'est la personne et la manière de créer ces tests qui diffère.
Le Behavior Driven developpement est née pour répondre a une question simple: **qui connait le mieux ce qui doit être developpé?** La réponse est bien evidement le client, mais bien souvent le client n'est pas un developpeur, et il n'est pas capable d'écrire les tests unitaire que nécéssaire tester le comportement de son application.
Lorsqu'on utilise le BDD c'est bien le client qui va créer les tests unitaires, bien évidement ce n'est pas directement lui qui va coder, mais un logiciel qui va traduire ce qu'il veut en code. Nous vous présenterons deux de ces logiciel plus tard.

### Comment ça marche?
Et bien rien de très compliqué, le client écrit sous forme de texte le fonctionnalité qu'il veut sous forme d'un langage compréhensible par le logiciel, puis celui ci va générer des tests unitaires qui correspondent à ce que le client écrit

**EXEMPLE**

### Les solutions existante
Maintenant nous allons voir deux grosses solutions sur lesquels ont peut baser le Behavior Driven Development. Ici nous n'en présentont que deux mais il en existe bien d'autre.

### Cucumber
C'est la solution la plus ancienne et la plus utilisé, elle est disponible dans quasi tout les langages de programmation, du Java en passant par PHP ou même Python et Ruby. Si vous n'êtes pas très au fait des technologies BDD qui existe dans vôtre langage de programmation c'est celui-ci qu'il faut choisir.

### Behat
C'est une solution exclusivement php qui a son propre langage d'ecriture de test en PHP, ce logiciel à une très forte communauté derrière lui. Il est à consieller à tous les développeurs PHP, car il s'agit d'une solution dédier au PHP contrairemetn à Cucumber.

