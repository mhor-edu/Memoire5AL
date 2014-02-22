## Test GUI
Quoi de plus rébarbatif que de tester le bon fonctionnement de l'interface graphique de son application web, en effet il est souvent long et difficile de tester si tout les boutons renvoie bien sur la bonne page et sont bien disposé. Pour remédier à ce problème certain on pensé à une solution simple pour automatisé ce type de test. Cette solution consiste à lancer un robot qui va effectuer toutes les tâches qu'un être humains aurait dû faire pour tester l'interface. Mais dès que le robot executera n'arrivera pas à reproduire l'action demandé on pourra en déduire que l'interface n'est pas correct. Le gros problème de ce genre d'outils c'est qu'il ne permette pas de controller le design mais uniquement le bon placement dans l'interface des composants.

Il existe deux type de d'outils pour automatiser ces tâches. Les premiers qui prennent la main sur toute la machine qui sont pratique si l'ont veut tester des applications autres que web mais qui sont moins poussé en terme de tests et nécessite l'utilisation d'une machine dédié. Et d'autre qui ne simule que l'utilisation d'un navigateur web qui s'intègre qui peuvent même parfois être directement piloté depuis les tests fonctionnelles de l'applications comme c'est le cas pour Selenium.

Voici un exemple d'outil qui prend en charge toute la machine:
Sikuli permet via son interface d'écrire des scripts qui se lance sur la machine afin de reproduire le comportement que écrit dans le script. Dans l'image ce-dessous voici l'exemple d'un connexion à Gmail avec FireFox
![Script de connexion a gmail avec Sikuli](img/sikuli-sign_gmail.jpg)

Voici un exemple d'outil qui permet d'automatiser les tests de GUI d'interface web sur différent navigateur via des scripts.

Nous avons choisi Selenium car il s'agit de l'outil le plus connu et le plus efficace qui permet celà.
Dans l'image si dessous on voit le pettit outil qui permet de créer un petit script que l'ont lance dans les tests fonctionnels de l'application.
![Selenium IDE](img/selenium-ide.gif)

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
    new Select(driver.findElement(By.id("contentForm:pageList_input"))).selectByVisibleText("1"); 
    driver.findElement(By.id("contentForm:nextPageButton")).click(); 
 
    // On est de retour page 1, on passe en anglais 
    driver.findElement(By.id("headerForm:english_button")).click(); 
 
    // Et on recommence le même enchainement 
    ...  
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
