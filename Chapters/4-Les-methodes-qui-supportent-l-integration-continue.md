
\newpage

# Les méthodes pour l'intégration continue

En général dès que l'on veut mettre en place tous les outils permettant d'écrire du code de qualité. Les chefs de projet se rendent compte très vite lors de leur premier projet utilisant l'intégration continue que les résultats escomptés ne sont pas là. Pourquoi ?

Bien souvent les équipes qui n'utilisent pas l'intégration continuent n'ont jamais connu d'autre méthodes de développement que l'antique cycle en V. Mais pour qu'un projet utilise tout le potentiel de l'intégration continue il faudra changer les habitudes de l'équipe et utiliser des méthodes de développement bien plus modernes. C'est pour cela que dans cette partie nous verrons les méthodes de développement qui se marie le mieux avec le concept d'intégration continue. Il existe une catégorie de méthode de développement qui correspond exactement à la philosophie de l'intégration continue, il s'agit des méthodes Agiles, c'est pour cela que toutes les méthodes présentées ci-dessous seront des méthodes agiles.

L'Agile Alliance propose sur son site une liste complète de tous les pratiques agiles divisées en neuf catégories sous forme d'une map[^map_agility]. Ces pratiques agiles sont plus ou moins connecter en eux en ayant pour objectif de simplifier les méthodes utilisées actuellement en entreprise afin d'avoir un rendement plus productif. Cette map de l'agilité (voir ci-dessous) nous explique pour chaque méthode agile qu'elles sont les pratiques utilisées.

[^map_agility]: http://guide.agilealliance.org/subway.html

<div>![](img/subway_agility.png)</div>

La méthodologie agile permet de créer un logiciel de façon incrémentielle. Ceci est obtenu en ajoutant de nouvelle issue à chaque itération, mais aussi par la refactorisation du code existant écrit au cours des itérations précédentes. Ce remaniement peut être réalisé en toute sécurité que si vous avez un système de test solide en mesure de vérifier que le produit logiciel ne se cassent pas lorsque vous ajoutez du nouveau code, ou lorsque vous modifier le code existants. Par conséquent, lorsque vous développez votre logiciel, vous devez créer deux systèmes distincts, mais fortement liés qui sera la recette de votre application :

* L'application que vous souhaitez vendre à vos utilisateurs
* Son harnais de test qui vous aide à construire de façon incrémentale et agile

Dans un premier temps nous parlerons des méthodes Agiles les plus communes et utilisées comme SCRUM et Extreme Programming qui sont des méthodes compatibles à l'intégration continue. Puis dans les deux parties suivantes deux autres techniques de développement qui peuvent être alliés aux méthodes agiles qui permettent de profiter au maximum de l'intégration continue. 
