
## Coding style checker

Cet outil fait partie des outils importants pour faciliter la relecture et la maintenabilité du code. En effet Il permet de tester si les normes de codage fixé sont bien respecté par les programmeurs. Ces règles doivent être respectées car si elles ne sont pas suivi à la lettre on se retrouve en général avec un code non uniforme ce qui ne simplifie pas sa lecture.

Voici quelques règles assez communes :

- Utiliser des quatre espaces au lieu des tabulations (ce qui permet d'avoir le même code sur n'importe quelle machine).

- Une ligne ne doit pas faire plus d'un certains nombre de caractères. Le nombre de caractères est en général situé entre 80 et 120. Si une ligne fait plus en général il vaut mieux la découper sur plusieurs lignes ce qui facilitera sa lecture.

- La façon écrire du code. Par exemple doit on sauter une ligne après la fin d'une méthode, doit on mettre un espace entre une le if et la parenthèse.

Il existe des règles de codage que l'on considère comme des références dans chaque langages qui sont en général décidé avec des membres important de la communauté.
Pour illustrer prenons la norme PSR-2 de PHP[^php_codeconventions]. Il existe aussi les conventions pour le langage java[^java_codeconventions].

[^java_codeconventions]: http://www.oracle.com/technetwork/java/javase/documentation/codeconventions-139411.html
[^php_codeconventions]: https://github.com/php-fig/fig-standards/blob/master/accepted/fr/PSR-2-coding-style-guide.md

Maintenant pour en revenir à l'outil qui gère ces conventions, il a tout sont intérêt car si un développeur ne les respectent pas les erreurs seront tout de suite mises en évidence et il pourra les corriger rapidement se qui évitera que le code ne devienne illisible dans un futur proche, car un code homogène est un réel plus pour sa compréhension et sa maintenabilité.

Quelques exemple d'outils, les outils en général sont nommé CheckStyle dans chaque langage:

Checkstyle pour Java:[https://github.com/checkstyle/checkstyle](https://github.com/checkstyle/checkstyle)

PHPCheckStyle pour PHP: [https://code.google.com/p/phpcheckstyle/](https://code.google.com/p/phpcheckstyle/)
