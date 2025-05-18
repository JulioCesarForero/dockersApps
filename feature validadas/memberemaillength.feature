Feature: Ghost Members Email Length Validation

@user1 @web @F005 @E059
Scenario: Create member with email at 190 characters (limit-1)
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0059/Step1.png"
  And I enter name "$name_1"
  And I enter email "exact_190"
  And I add the label "TestLabel"
  And I enter note "$string_1"
  And I save device snapshot in file with path "screenshots/F005_E0059/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0059/Step3.png"
  And I navigate to 'members' menu
  When I search for "exact_190"
  And I save device snapshot in file with path "screenshots/F005_E0059/Step4.png"
  Then I should see a member with email "exact_190"

@user2 @web @F005 @E060
Scenario: Create member with email at 191 characters (max allowed)
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0060/Step1.png"
  And I enter name "$name_1"
  And I enter email "exact_191"
  And I add the label "TestLabel"
  And I enter note "$string_1"
  And I save device snapshot in file with path "screenshots/F005_E0060/Step2.png"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I save device snapshot in file with path "screenshots/F005_E0060/Step3.png"
  And I navigate to 'members' menu
  When I search for "exact_191"
  And I save device snapshot in file with path "screenshots/F005_E0060/Step4.png"
  Then I should see a member with email "exact_191"

@user3 @web @F005 @E061
Scenario: Create member with email at 192 characters (over limit)
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0061/Step1.png"
  And I enter name "$name_1"
  And I enter email "exact_192"
  And I add the label "TestLabel"
  And I enter note "$string_1"
  And I save device snapshot in file with path "screenshots/F005_E0061/Step2.png"
  And I click on the Save button
  Then I should see the member error message "Email cannot be longer than 191 characters."
  And I save device snapshot in file with path "screenshots/F005_E0061/Step3.png"

@user4 @web @F005 @E062
Scenario: Create member with email over 192 characters
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0062/Step1.png"
  And I enter name "$name_1"
  And I enter email "exact_250"
  And I add the label "TestLabel"
  And I enter note "$string_1"
  And I save device snapshot in file with path "screenshots/F005_E0062/Step2.png"
  And I click on the Save button
  Then I should see the member error message "Email cannot be longer than 191 characters."
  And I save device snapshot in file with path "screenshots/F005_E0062/Step3.png"

@user5 @web @F005 @E063
Scenario: Create member with email containing special characters
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0063/Step1.png"
  And I enter name "$name_1"
  And I enter email "random_special"
  And I add the label "TestLabel"
  And I enter note "$string_1"
  And I save device snapshot in file with path "screenshots/F005_E0063/Step2.png"
  And I click on the Save button
  Then I should see the member error message "Invalid Email."
  And I save device snapshot in file with path "screenshots/F005_E0063/Step3.png"


@user6 @web @F005 @E064
Scenario: Create member with email containing naughty string
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I save device snapshot in file with path "screenshots/F005_E0064/Step1.png"
  And I enter name "$name_1"
  And I enter email "NaughtyStringEmail"
  And I add the label "TestLabel"
  And I enter note "$string_1"
  And I save device snapshot in file with path "screenshots/F005_E0064/Step2.png"
  And I click on the Save button
  Then I should see the member error message "Invalid Email."
  And I save device snapshot in file with path "screenshots/F005_E0064/Step3.png" 

