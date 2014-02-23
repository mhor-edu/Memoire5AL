## Analyseur de code

Une analyse du code permet de générer des données d'analyse sur la mise en conformité par rapport aux standards du marché car la qualité d'une application est directement liée à la qualité du code et à la productivité.

De nombreux outils permettent de contrôler quelques aspects de cette qualité du code, principalement sur l'exécution de tests unitaires, l'analyse de la couverture du code par ces tests, la vérification du respect des règles de codage, etc. Ainsi ces outils permettent d'avoir une confiance accrue en son application ! Un contrôle fréquent de la qualité du code va donc pousser l'équipe de développement à adopter et à respecter certains standards de développement. Un code qui respecte ces standards est un code plus sûr car cela permet de trouver immédiatement les erreurs.

Lorsque l'on sait que le coût de la correction d'une erreur augmente considérablement avec le temps, un outil de surveillance permet la détection précoce de ces éventuels problèmes et l'on comprend très vite l'importance de la détection rapide des erreurs ...

Voici quelques exemples de resultat que pourrait renvoyer un analyseur de code.

Les deux images qui suivent sont extraite de l'analyse du projet PHP sur Scrutinez-ci
<div>![](img/code-quality.png)</div>
Dans l'image ci-dessus nous voyons l'analyse du code d'une classe. On y voit toutes les métriques (complexité, nombre de ligne, taux de couverture, nombre de ligne). Grâce à ces métriques une note est attribué à la classe.


<div>![](img/code-quality2.png)</div>
Ici on voit un vue plus global de tout le projet on y voit toutes les notes des classes du projet.


<div>![](img/mess.png)</div>
Cette capture d'écran à été effectué par un analyseur spécialisé dans le framework PHP Symfony2. On voit qu'il est aussi capable en plus de l'outils précédent de detecter des erreurs lié au code et  de donner des conseils afin de résoudre les problèmes.
