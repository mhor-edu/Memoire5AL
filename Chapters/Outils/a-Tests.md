## Tests

On ne sait pas faire de logiciel sans défaut et le coût des corrections de bug peut couter cher et prendre beaucoup de temps sur certain projet qui sont mal testés. Dans cette partie nous allons nous attarder sur les moyens de tester son application de manière automatique. Comme bien souvent il est totalement impensable (plus financièrement que techniquement) de tester à 100% un logiciel manuellement à chaque mise à jour du code. C'est pour cela qu'un certain nombre de technologies ont été créés afin de tester automatiquement si le code fonctionne toujours après des modifications.

### Les tests unitaires
C'est le test le plus répandu, mais aussi le plus efficace, car en général il est assez simple à mettre en place et couvre une très grande partie des besoins de test d'une application. Le test unitaire fait partie des tests "boite blanche", ce qui signifie que le test à accès au code. Le test unitaire se présente sous la forme de classe objet contenant des méthodes visant à tester le code du projet. En général les méthodes sont écrites dans le même langage que le projet et utilise des bibliothèques dédié au test unitaire, en général on en trouve dans tous les langages elles se nomment généralement xUnit (où le `x` est la première lettre du nom du langage), par exemple JUnit pour Java, PUnit pour Python ... Dans ces méthodes pour tester du code on utilise ce que l'on appelle des ``assertions``, il s'agit en fait d'une fonction du framework de test unitaire qui va tester la valeur attendue et la valeur actuelle si les deux valeurs sont différentes le test va alors passer en erreur, et le développeur saura donc que son code ne fonctionne pas, dans certaine méthode de développement que nous allons voir plus tard il arrive qu'on écrive même le code du test unitaire avant même d'écrire le code de la fonction que l'on teste (Test Driven Development). Le but ultime doit être de tester le maximum de comportement possible grâce aux tests unitaires afin de ne pas avoir de mauvaises surprises lorsqu'il qu'il y a modification du code existant.


Voici un exemple de classe de test unitaire en PHP:

```java
package fr.esgi.test.junit;

import junit.framework.TestCase;

public class PersonneTest extends TestCase
{

  /**
   * L'objet de la classe que l'on veut tester
   */
  private Personne personne;
  
  /**
   * Test simple pour savoir si le constructeur ne plante pas
   */
  public PersonneTest(String name)
  {
    super(name);
  }

  /**
   * Ce déclenche avant chaque methode de test
   */
  protected void setUp() throws Exception
  {
    super.setUp();
    personne = new Personne("nom1","prenom1");
  }

  /**
   * Ce déclenche après chaque fin de méthode de test
   */
  protected void tearDown() throws Exception
  {
    super.tearDown();
    personne = null;
  }

  /**
   * Dans ce tests on utilise la méthode assertNotNull 
   * du framework de test unitaire pour tester si l'objet 
   * n'est pas null
   */
  public void testPersonne()
  {
    assertNotNull("L'instance est créée", personne);
  }

  /**
   * Ici on test si qu'il est impossible que le salaire 
   * de la personne soit négatif et donc que la méthode 
   * renvoie bien une Exception
   */
   @Test(expected=IllegalArgumentException.class)
   public void testException()
   {
      this.personne.setSalaire(-1);
   }

  /**
   * On utilise la method assertEquals pour tester l'égalité
   * de deux chaines
   */
  public void testGetNom()
  {
    assertEquals("Est ce que nom est correct", "nom1", personne.getNom());
  }

  /**
   * On utilise la method assertEquals pour tester l'égalité
   * de deux chaines
   */
  public void testSetNom()
  {
    personne.setNom("nom2");
    assertEquals("Est ce que nom est correct", "nom2", personne.getNom());
  }

  /**
   * On utilise la method assertEquals pour tester l'égalité
   * de deux chaines
   */
  public void testGetPrenom()
  {
    assertEquals("Est ce que prenom est correct", "prenom1", personne.getPrenom());
  }
  
  /**
   * On utilise la methode assertEquals pour tester l'égalité
   * de deux chaines
   */
  public void testSetPrenom()
  {
    personne.setPrenom("prenom2");
    assertEquals("Est ce que prenom est correct", "prenom2", personne.getPrenom());
  }

}
```
Remarque à propos de l'exemple ci-dessus:

- toutes les méthodes de test sont préfixé par ``assert``
- ses méthodes du framework facilite l'écriture de tests unitaire
- ici nous avons écrit uniquement des méthodes de test pour des assesseurs, mais il est possible tester des méthodes bien plus complexes.

####Les mocks tests
Pour tester les fonctions qui renvoie des résultat incertain selon la configuration (outils non installables, pas de connexion internet), il est possible d'écrire des mocks qui simule ce que doit renvoyer la fonction.

Voici un exemple concret:
Dans notre cas nous voulont testé une fonction qui traite ce que retourne un outil en ligne de commande nous voudrions tester que si cet outil n'est pas installé qu'elle nous renvoie une erreur, et si cet outil est installé que ce que nous renvoie cette fonction est bien traitable par notre programme. Sans mock test il n'est pas possible de tester efficacement ce que nous renvoie cette fonction dans les deux cas. La façon de faire la plus simple est donc de créer un objet "mock" qui va simulé le comportement de cette fonction afin de tester que le reste du programme fonctionne. Le mock test n'est évidement pas à utiliser n'importe où, en effet il ne sert qu'à remplacer le comportement de code sur lequel il ne nous est pas possible d'agir. 

### Les tests fonctionnels

### Les tests d'intégrations
