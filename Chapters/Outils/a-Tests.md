## Tests

On ne sait pas faire de logiciel sans défaut et le coût des corrections de bug peut couter cher et prendre beaucoup de temps sur certain projet qui sont mal testés. Dans cette partie nous allons nous attarder sur les moyens de tester son application de manière automatique. Comme bien souvent il est totalement impensable (plus financièrement que techniquement) de tester à 100% un logiciel manuellement à chaque mise à jour du code. C'est pour cela qu'un certain nombre de technologies ont été créés afin de tester automatiquement si le code fonctionne toujours après des modifications.

### Les tests unitaires
C'est le test le plus répandu, mais aussi le plus efficace, car en général il est assez simple à mettre en place et couvre une très grande partie des besoins de test d'une application. Le test unitaire fait partie des tests "boite blanche", ce qui signifie que le test à accès au code. Le test unitaire se présente sous la forme de classe objet contenant des méthodes visant à tester le code du projet.  
En général les méthodes sont écrites dans le même langage que le projet et utilise des bibliothèques dédié au test unitaire, en général on en trouve dans tous les langages elles se nomment généralement xUnit (où le `x` est la première lettre du nom du langage), par exemple JUnit pour Java, PUnit pour Python ... Dans ces méthodes pour tester du code on utilise ce que l'on appelle des ``assertions``, il s'agit en fait d'une fonction du framework de test unitaire qui va tester la valeur attendue et la valeur actuelle si les deux valeurs sont différentes le test va alors passer en erreur, et le développeur saura donc que son code ne fonctionne pas, dans certaine méthode de développement que nous allons voir plus tard il arrive qu'on écrive même le code du test unitaire avant même d'écrire le code de la fonction que l'on teste (Test Driven Development). Le but ultime doit être de tester le maximum de comportement possible grâce aux tests unitaires afin de ne pas avoir de mauvaises surprises lorsqu'il qu'il y a modification du code existant.


Voici un exemple de classe de test unitaire en Java:

```java
package fr.esgi.test.junit;

import junit.framework.TestCase;
import fr.esgi.java.Personne;

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

Quoi de plus rébarbatif que de tester le bon fonctionnement de l'interface graphique de son application web, en effet il est souvent long et difficile de tester si tout les boutons renvoie bien sur la bonne page et sont bien disposé. Pour remédier à ce problème certain on pensé à une solution simple pour automatisé ce type de test. Cette solution consiste à lancer un robot qui va effectuer toutes les tâches qu'un être humains aurait dû faire pour tester l'interface. Mais dès que le robot executera n'arrivera pas à reproduire l'action demandé on pourra en déduire que l'interface n'est pas correct. Le gros problème de ce genre d'outils c'est qu'il ne permette pas de controller le design mais uniquement le bon placement dans l'interface des composants.

Il existe deux type de d'outils pour automatiser ces tâches. Les premiers qui prennent la main sur toute la machine qui sont pratique si l'ont veut tester des applications autres que web mais qui sont moins poussé en terme de tests et nécessite l'utilisation d'une machine dédié. Et d'autre qui ne simule que l'utilisation d'un navigateur web qui s'intègre qui peuvent même parfois être directement piloté depuis les tests fonctionnelles de l'applications comme c'est le cas pour Selenium.

Voici un exemple d'outil qui prend en charge toute la machine:
Sikuli permet via son interface d'écrire des scripts qui se lance sur la machine afin de reproduire le comportement que écrit dans le script. Dans l'image ce-dessous voici l'exemple d'un connexion à Gmail avec FireFox.<div>![](img/sikuli-sign_gmail.jpg)</div>

Voici un exemple d'outil qui permet d'automatiser les tests de GUI d'interface web sur différent navigateur via des scripts.

Nous avons choisi Selenium car il s'agit de l'outil le plus connu et le plus efficace qui permet celà.
Dans l'image si dessous on voit le pettit outil qui permet de créer un petit script que l'ont lance dans les tests fonctionnels de l'application.<div>![](img/selenium-ide.png)</div>

Avec l'outil ci-dessus il est possible d'écrire des classes de tests fonctionnelles qui utilise Selenium. Voici un exemple de code qui pourrait être généré:

```java
public class Selenium { 
  private WebDriver driver; 
  private String baseUrl; 
  private boolean acceptNextAlert = true; 
  private StringBuffer verificationErrors = new StringBuffer(); 
 
  @Before 
  public void setUp() throws Exception { 
    // On instancie notre driver, et on configure notre temps d'attente 
    driver = new FirefoxDriver(); 
    baseUrl = "http://localhost:8080/tutoselenium"; 
    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS); 
  } 
 
  @Test 
  public void testSelenium() throws Exception { 
    // On se connecte au site 
    driver.get(baseUrl + "/tutoselenium/"); 
 
    // On se rend page 1 
    driver.findElement(By.id("contentForm:pageText")).clear(); 
    driver.findElement(By.id("contentForm:pageText")).sendKeys("2"); 
    driver.findElement(By.id("contentForm:nextPage")).click(); 
 
    // On est page 2, on va page 3 
    driver.findElement(By.id("contentForm:page3Button")).click(); 
 
    // On sélectionne notre prochaine page dans la liste 
    new Select(driver.findElement(By.id("contentForm:pageList_input")))
          .selectByVisibleText("1"); 
    driver.findElement(By.id("contentForm:nextPageButton")).click(); 
 
    // On est de retour page 1, on passe en anglais 
    driver.findElement(By.id("headerForm:english_button")).click(); 
 
    // Et on recommence le même enchainement 
    //...  
  } 
 
  @After 
  public void tearDown() throws Exception { 
    driver.quit(); 
    String verificationErrorString = verificationErrors.toString(); 
    if (!"".equals(verificationErrorString)) { 
      fail(verificationErrorString); 
    } 
  } 
 
  private boolean isElementPresent(By by) { 
    try { 
      driver.findElement(by); 
      return true; 
    } catch (NoSuchElementException e) { 
      return false; 
    } 
  } 
 
  private String closeAlertAndGetItsText() { 
    try { 
      Alert alert = driver.switchTo().alert(); 
      if (acceptNextAlert) { 
        alert.accept(); 
      } else { 
        alert.dismiss(); 
      } 
      return alert.getText(); 
    } finally { 
      acceptNextAlert = true; 
    } 
  } 
} 
```

### Les tests d'intégrations

Auparavant les tests d'intégrations devait être effectuer à la fin du développement et consistait à tester manuellement que tous les "modules" de l'application fonctionnait correctement ensemble. Ce genre de test quand on utilise l'intégration continue sont déplacé dans les tests unitaire et sont donc automatisé 
