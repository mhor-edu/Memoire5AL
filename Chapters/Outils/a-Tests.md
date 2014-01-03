
## Tests

On ne sait pas faire de logiciel sans défaut et le coût des corrections de bug peut couter cher et prendre beaucoup de temps sur certain projet qui sont mal testé. Dans cette partie nous allons nous attardé sur les moyens de tester son application de manière automatique. Car bien souvent il est totalement inpensable de tester à 100% un logiciel manuellement à chaque mise à jours du code. C'est pour celà qu'un certains nombre de technologies on été créer afin de tester de automatiquement si le code fonctionne toujours après des modifications.

### Les tests unitaires
C'est le test le plus répendu, mais aussi le plus efficace, car en général il est assez simple à mettre en place et couvre une très grande partie des besoins de test d'une application. Le test unitaire fait partie des tests "boite blanche", ce qui signifie que le test à accès au code. Le tests unitaire ce présente sous la forme de classe objet contenant des méthodes visant à tester le code du projet. En général les méthodes sont écritent dans le même langage que le projet et utilise des bibliothèques dedié au test unitaire, en général on en trouve dans tout les langages elles se nomme xUnit (où le `x` est la première lettre du nom du langage), par exemple JUnit pour Java, PUnit pour Python ... Dans ces méthodes on plus ce que l'ont appel des ``assertions``, il s'agit en fait d'une fonction du framework de test unitaire qui va tester la valeur attendu et la valeur actuel si les deux valeurs sont différentes le test va alors passé en erreur, et le développeur saura donc que sont code ne fonctionne pas, dans certaine méthode de developpement que nous allons voir plus tard il arrive qu'on écrive même le code du test unitaire avant même d'ecrire le code de la fonction que l'on teste. le but ultime doit être de testé le maximum de comportement possible dans les tests unitaires afin de ne pas avoir de mauvaises surprises lorsqu'il qu'il y a modification du code existant.

### Les tests fonctionnels

### Les tests d'intégrations
