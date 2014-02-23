## Détecteur de copier coller

Rien qu'au titre on voit tout de suite l'intérêt de cet outil en effet il permet de vérifier que le code n'est pas remplis de copier-coller plus ou moins justifié. En effet la multiplication des copié-coller rend le code de moins en moins maintenable car si un morceau de code copier-coller un peu partout dans le programme est modifié à un endroit car il entraîne des bugs il faudra mettre aussi à jour tous les autres morceaux où le code a été copié-coller. Ce qui rend donc le code très vite inmaintenable.

L'outil en lui même va aider les équipes à détecter les morceaux de code recopie ce qui permettra donc aux développeurs d'identifier les parties du code qu'il faut factoriser au plus vite pour rendre le code plus maintenable et éviter les modifications en chaîne de code, les bugs et régressions.

Exemple de détecteur de copier/coller : Mess Detector[^mess_detector] pour Java

[^mess_detector]: Mess Detector : http://fr.wikipedia.org/wiki/PMD_(logiciel)

