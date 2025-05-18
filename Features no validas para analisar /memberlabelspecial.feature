



@user2 @web @F005 @E078
Scenario: Create member with label containing naughty string and XSS attempt
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0078/Step1.png"
  And I enter name "$name_1"
  And I enter email "$email_1"
  And I add the label "<img src=x onerror=alert(1)>"
  And I save device snapshot in file with path "screenshots/F005_E0078/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0078/Step3.png"
  And I navigate to 'members' menu
  When I search for "$$name_1"
  And I save device snapshot in file with path "screenshots/F005_E0078/Step4.png"
  And I select the member from search results
  Then I should see the label content escaped in the member form
  And I save device snapshot in file with path "screenshots/F005_E0078/Step5.png"


  ---


  1) Scenario: Create member with label containing naughty string and XSS attempt # features\memberlabelspecial.feature:4
   √ Before # features\web\step_definitions\hooks.js:5
   √ Before # features\web\support\hooks.js:8
   √ Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin" # ..\..\node_modules\kraken-node\lib\steps\web.js:41 
       Attachment (image/png)
   √ And I enter email address "<EMAIL>" # features\web\step_definitions\login_step.js:21
       Attachment (image/png)
   √ And I enter password "<PASSWORD>" # features\web\step_definitions\login_step.js:30
       Attachment (image/png)
   √ And I click login # features\web\step_definitions\login_step.js:41
       Attachment (image/png)
   √ And I navigate to 'members' menu # features\web\step_definitions\menu_steps.js:4
       Attachment (image/png)
   √ When I click New Member button # features\web\step_definitions\member_steps.js:145
       Attachment (image/png)
   √ And I save device snapshot in file with path "screenshots/F005_E0078/Step1.png" # features\web\step_definitions\member_steps.js:775
       Attachment (image/png)
   √ And I enter name "$name_1" # features\web\step_definitions\member_steps.js:158
       Attachment (image/png)
   √ And I enter email "$email_1" # features\web\step_definitions\member_steps.js:171
       Attachment (image/png)
   × And I add the label "<img src=x onerror=alert(1)>" # features\web\step_definitions\member_steps.js:239
       Attachment (image/png)
       Error: ERROR: There is no property img src=x onerror=alert(1).
           at PropertyManager.getProperty (C:\MISO\s1\202512-proyecto-equipo-9\node_modules\kraken-node\lib\utils\PropertyManager.js:42:19)
           at KrakenWorld.transformer (C:\MISO\s1\202512-proyecto-equipo-9\node_modules\kraken-node\lib\steps\both.js:48:72)
           at ParameterType.transform (C:\MISO\s1\202512-proyecto-equipo-9\node_modules\@cucumber\cucumber-expressions\dist\src\ParameterType.js:57:33)
           at Argument.getValue (C:\MISO\s1\202512-proyecto-equipo-9\node_modules\@cucumber\cucumber-expressions\dist\src\Argument.js:32:35)
   - And I save device snapshot in file with path "screenshots/F005_E0078/Step2.png" # features\web\step_definitions\member_steps.js:775
   - And I click on the Save button # features\web\step_definitions\member_steps.js:263
   - Then A edit page should appear on the screen # features\web\step_definitions\member_steps.js:274
   - And I save device snapshot in file with path "screenshots/F005_E0078/Step3.png" # features\web\step_definitions\member_steps.js:775
   - And I navigate to 'members' menu # features\web\step_definitions\menu_steps.js:4
   - When I search for "$$name_1" # features\web\step_definitions\member_steps.js:373
   - And I save device snapshot in file with path "screenshots/F005_E0078/Step4.png" # features\web\step_definitions\member_steps.js:775