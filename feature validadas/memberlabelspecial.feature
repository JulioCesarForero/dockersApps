Feature: Ghost Members Special Label Validation

@user1 @web @F005 @E077
Scenario: Create member with label containing leading and trailing spaces
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0077/Step1.png"
  And I enter name "$name_1"
  And I enter email "$email_1"
  And I add the label "  vip  "
  And I save device snapshot in file with path "screenshots/F005_E0077/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0077/Step3.png"
  And I navigate to 'members' menu
  When I search for "$$name_1"
  And I save device snapshot in file with path "screenshots/F005_E0077/Step4.png"
  And I select the member from search results
  Then I should see the "vip" label in the member form
  And I save device snapshot in file with path "screenshots/F005_E0077/Step5.png"

@user3 @web @F005 @E079
Scenario: Create member with multiple labels and verify no duplicates
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0079/Step1.png"
  And I enter name "$name_1"
  And I enter email "$email_1"
  And I add the label "DuplicateLabel"
  And I add the label "DuplicateLabel"
  And I save device snapshot in file with path "screenshots/F005_E0079/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0079/Step3.png"
  And I navigate to 'members' menu
  When I search for "$$name_1"
  And I save device snapshot in file with path "screenshots/F005_E0079/Step4.png"
  And I select the member from search results
  Then I should see the "DuplicateLabel" label in the member form
  And I should not see duplicate labels in the member form
  And I save device snapshot in file with path "screenshots/F005_E0079/Step5.png"

@user4 @web @F005 @E080
Scenario Outline: Create member with label containing internal spaces
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0080/Step1.png"
  And I enter name "$name_1"
  And I enter email "$email_1"
  And I add the label "<LABEL>"
  And I save device snapshot in file with path "screenshots/F005_E0080/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0080/Step3.png"
  And I navigate to 'members' menu
  When I search for "$$name_1"
  And I save device snapshot in file with path "screenshots/F005_E0080/Step4.png"
  And I select the member from search results
  Then I should see labels in the member form
  And I save device snapshot in file with path "screenshots/F005_E0080/Step5.png"

  Examples:
    | EMAIL                   | PASSWORD      | LABEL                           |
    | grupo9@uniandes.edu.co  | adminadmin    | This is a label with spaces     |


@user5 @web @F005 @E081
Scenario: Create member with multiple Faker-generated labels containing spaces
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0081/Step1.png"
  And I enter name "$name_1"
  And I enter email "$email_1"
  And I add the label "Label 1"
  And I add the label " Label 2 "
  And I add the label "Label    3   "
  And I save device snapshot in file with path "screenshots/F005_E0081/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0081/Step3.png"
  And I navigate to 'members' menu
  When I search for "$$name_1"
  And I save device snapshot in file with path "screenshots/F005_E0081/Step4.png"
  And I select the member from search results
  Then I should see labels in the member form
  And I save device snapshot in file with path "screenshots/F005_E0081/Step5.png"

