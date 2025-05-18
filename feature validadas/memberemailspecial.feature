Feature: Ghost Members Special Email Validation

@user1 @web @F005 @E074
Scenario: Create member with email containing leading and trailing spaces
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0074/Step1.png"
  And I enter name "$name_1"
  And I enter email "  user@example.com  "
  And I save device snapshot in file with path "screenshots/F005_E0074/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0074/Step3.png"
  And I navigate to 'members' menu
  When I search for "user@example.com"
  And I save device snapshot in file with path "screenshots/F005_E0074/Step4.png"
  Then I should see a member with email "user@example.com"

@user2 @web @F005 @E075
Scenario: Create member with email containing plus alias
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0075/Step1.png"
  And I enter name "$name_1"
  And I enter email "user+promo@example.com"
  And I save device snapshot in file with path "screenshots/F005_E0075/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0075/Step3.png"
  And I navigate to 'members' menu
  When I search for "user+promo@example.com"
  And I save device snapshot in file with path "screenshots/F005_E0075/Step4.png"
  Then I should see a member with email "user+promo@example.com"

@user3 @web @F005 @E076
Scenario: Create member with internationalized email
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0076/Step1.png"
  And I enter name "$name_1"
  And I enter email "usuario@mañana.com"
  And I save device snapshot in file with path "screenshots/F005_E0076/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0076/Step3.png"
  And I navigate to 'members' menu
  When I search for "usuario@mañana.com"
  And I save device snapshot in file with path "screenshots/F005_E0076/Step4.png"
  Then I should see a member with email "usuario@mañana.com" 