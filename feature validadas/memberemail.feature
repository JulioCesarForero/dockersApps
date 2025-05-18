Feature: Ghost Members Management

@user1 @web @F005 @E018
Scenario: Manually create a member by completing all fields with valid information
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0018/Step1.png"
  And I enter name "$name_1" 
  And I enter email "$email_1"
  And I enter note "$string_1"
  And I save device snapshot in file with path "screenshots/F005_E0018/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0018/Step3.png"
  And I should see the member name is "$$name_1"

@user2 @web @F005 @E020
Scenario: Manually create a member by completing only the valid email field
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0020/Step1.png"
  And I enter email "$email_3"
  And I save device snapshot in file with path "screenshots/F005_E0020/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0020/Step3.png"
  And I navigate to 'members' menu
  And I search for "$$email_3"
  And I save device snapshot in file with path "screenshots/F005_E0020/Step4.png"
  Then I should see a member with email "$$email_3"

@user3 @web @F005 @E026
Scenario: Attempt to create duplicate members with the same email
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0026/Step1.png"
  And I enter name "$name_8"
  And I enter email "$email_8"
  And I save device snapshot in file with path "screenshots/F005_E0026/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0026/Step3.png"
  And I navigate to 'members' menu
  When I click New Member button
  And I enter name "$name_9"
  And I enter email "$$email_8"
  And I save device snapshot in file with path "screenshots/F005_E0026/Step4.png"
  And I click on the Save button
  Then I should see the member error message "Member already exists. Attempting to add member with existing email address"
  And I save device snapshot in file with path "screenshots/F005_E0026/Step5.png"

@user4 @web @F005 @E035
Scenario: Empty form submission and invalid email formats
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0035/Step1.png"
  And I click on the Save button
  Then I should see the member error message "Please enter an email."
  And I save device snapshot in file with path "screenshots/F005_E0035/Step2.png"
  When I enter email "invalid@"
  And I save device snapshot in file with path "screenshots/F005_E0035/Step3.png"
  And I click on the Save button
  Then I should see the member error message "Invalid Email."
  When I enter email "invalid"
  And I save device snapshot in file with path "screenshots/F005_E0035/Step4.png"
  And I click on the Save button
  Then I should see the member error message "Invalid Email."
  When I enter email "invalid@example"
  And I save device snapshot in file with path "screenshots/F005_E0035/Step5.png"
  And I click on the Save button
  Then I should see the member error message "Invalid Email."
  When I enter email "invalid@.com"
  And I save device snapshot in file with path "screenshots/F005_E0035/Step6.png"
  And I click on the Save button
  Then I should see the member error message "Invalid Email."
  When I enter email "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com"
  And I save device snapshot in file with path "screenshots/F005_E0035/Step7.png"
  And I click on the Save button
  Then I should see the member error message "Invalid Email."
  And I save device snapshot in file with path "screenshots/F005_E0035/Step8.png"