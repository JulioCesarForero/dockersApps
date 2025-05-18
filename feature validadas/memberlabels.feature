Feature: Ghost Members Management

  @user1 @web @F005 @E033
  Scenario: Create member with label and verify label appears in edit form
    Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
    And I enter email address "<EMAIL>"
    And I enter password "<PASSWORD>"
    And I click login
    And I navigate to 'members' menu
    When I click New Member button
    And I save device snapshot in file with path "screenshots/F005_E0033/Step1.png"
    And I enter name "$name_15"
    And I enter email "$email_15"
    And I add the label "TestLabel"
    And I save device snapshot in file with path "screenshots/F005_E0033/Step2.png"
    And I click on the Save button
    Then A edit page should appear on the screen
    And I save device snapshot in file with path "screenshots/F005_E0033/Step3.png"
    And I navigate to 'members' menu
    When I search for "$$name_15"
    And I select the member from search results
    And I save device snapshot in file with path "screenshots/F005_E0033/Step4.png"
    Then I should see labels in the member form
    
  @user2 @web @F005 @E034
  Scenario: Create member with multiple labels
    Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
    And I enter email address "<EMAIL>"
    And I enter password "<PASSWORD>"
    And I click login
    And I navigate to 'members' menu
    When I click New Member button
    And I save device snapshot in file with path "screenshots/F005_E0034/Step1.png"
    And I enter name "$name_16"
    And I enter email "$email_16"
    And I add the label "$string_16"
    And I add the label "$string_17"
    And I add the label "$string_18"
    And I save device snapshot in file with path "screenshots/F005_E0034/Step2.png"
    And I click on the Save button
    Then A edit page should appear on the screen
    And I save device snapshot in file with path "screenshots/F005_E0034/Step3.png"
    And I navigate to 'members' menu
    When I search for "$$name_16"
    And I select the member from search results
    And I save device snapshot in file with path "screenshots/F005_E0034/Step4.png"
    Then I should see labels in the member form

  @user3 @web @F005 @E043
  Scenario: Create member with very long label name
    Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
    And I enter email address "<EMAIL>"
    And I enter password "<PASSWORD>"
    And I click login
    And I navigate to 'members' menu
    When I click New Member button
    And I save device snapshot in file with path "screenshots/F005_E0043/Step1.png"
    And I enter name "$name_17"
    And I enter email "$email_17"
    And I add the label "string_2000"
    And I save device snapshot in file with path "screenshots/F005_E0043/Step2.png"
    And I click on the Save button
    Then A edit page should appear on the screen
    And I save device snapshot in file with path "screenshots/F005_E0043/Step3.png"
    And I navigate to 'members' menu
    When I search for "$$name_17"
    And I select the member from search results
    And I save device snapshot in file with path "screenshots/F005_E0043/Step4.png"
    Then I should see the member was created successfully

  @user4 @web @F005 @E044
  Scenario: Create member with special character labels
    Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
    And I enter email address "<EMAIL>"
    And I enter password "<PASSWORD>"
    And I click login
    And I navigate to 'members' menu
    When I click New Member button
    And I save device snapshot in file with path "screenshots/F005_E0044/Step1.png"
    And I enter name "$name_18"
    And I enter email "$email_18"
    And I add the label "!@#$%^&*()_+"
    And I add the label "español-çñ"
    And I add the label "测试标签"
    And I save device snapshot in file with path "screenshots/F005_E0044/Step2.png"
    And I click on the Save button
    Then A edit page should appear on the screen
    And I save device snapshot in file with path "screenshots/F005_E0044/Step3.png"
    And I navigate to 'members' menu
    When I search for "$$name_18"
    And I select the member from search results
    And I save device snapshot in file with path "screenshots/F005_E0044/Step4.png"
    Then I should see labels in the member form

  @user6 @web @F005 @E046
  Scenario: Add multiple random Faker-generated labels to a member
    Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
    And I enter email address "<EMAIL>"
    And I enter password "<PASSWORD>"
    And I click login
    And I navigate to 'members' menu
    When I click New Member button
    And I save device snapshot in file with path "screenshots/F005_E0046/Step1.png"
    And I enter name "$name_20"
    And I enter email "$email_20"
    # Crear múltiples etiquetas generadas aleatoriamente con Faker
    And I add the label "$string_30"
    And I add the label "$string_31"
    And I add the label "$string_32"
    And I add the label "$string_33"
    And I save device snapshot in file with path "screenshots/F005_E0046/Step2.png"
    And I click on the Save button
    Then A edit page should appear on the screen
    And I save device snapshot in file with path "screenshots/F005_E0046/Step3.png"
    And I navigate to 'members' menu
    When I search for "$$name_20"
    And I select the member from search results
    And I save device snapshot in file with path "screenshots/F005_E0046/Step4.png"
    # Verificar que todas las etiquetas se muestran correctamente
    Then I should see labels in the member form


 @user7 @web @F005 @E047
  Scenario: Try adding empty label
    Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
    And I enter email address "<EMAIL>"
    And I enter password "<PASSWORD>"
    And I click login
    And I navigate to 'members' menu
    When I click New Member button
    And I save device snapshot in file with path "screenshots/F005_E0047/Step1.png"
    And I enter name "$name_21"
    And I enter email "$email_21"
    And I add the label '" "'
    And I save device snapshot in file with path "screenshots/F005_E0047/Step2.png"
    And I click on the Save button
    Then A edit page should appear on the screen
    And I should not see any labels in the member form
    And I save device snapshot in file with path "screenshots/F005_E0047/Step3.png"
    # La aplicación debería ignorar las etiquetas vacías
    # o mostrar un error, esto verificará el comportamiento actual

  @user8 @web @F005 @E048
  Scenario: Create member with faker-generated labels and verify persistence
    Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
    And I enter email address "<EMAIL>"
    And I enter password "<PASSWORD>"
    And I click login
    And I navigate to 'members' menu
    # Crear miembro con etiquetas generadas por Faker
    When I click New Member button
    And I save device snapshot in file with path "screenshots/F005_E0048/Step1.png"
    And I enter name "$name_22"
    And I enter email "$email_22"
    And I add the label "$string_22"
    And I add the label "$string_23"
    And I save device snapshot in file with path "screenshots/F005_E0048/Step2.png"
    And I click on the Save button
    Then A edit page should appear on the screen
    And I save device snapshot in file with path "screenshots/F005_E0048/Step3.png"
    # Verificar que las etiquetas generadas se guardaron correctamente
    And I navigate to 'members' menu
    When I search for "$$name_22"
    And I select the member from search results
    And I save device snapshot in file with path "screenshots/F005_E0048/Step4.png"
    # Verificar las etiquetas generadas usando la sintaxis de referencia
    Then I should see labels in the member form
