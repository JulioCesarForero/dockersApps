@user1 @web @F005 @E018
Scenario: Manually create a member by completing all fields with valid information
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I enter name "$name_1" 
  And I enter email "$email_1"
  And I enter note "$string_1"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I should see the member name is "$$name_1"

@user2 @web @F005 @E019
Scenario: Manually create a member by completing all fields with an invalid email
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I enter name "$name_2"
  And I enter email "$string_2"
  And I enter note "$string_3"
  And I click on the Save button
  Then I should see the member error message "Invalid Email."

@user3 @web @F005 @E020
Scenario: Manually create a member by completing only the valid email field
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I enter email "$email_3"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I navigate to 'members' menu
  And I search for "$$email_3"
  Then I should see a member with email "$$email_3"

@user4 @web @F005 @E026
Scenario: Attempt to create duplicate members with the same email
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I enter name "$name_8"
  And I enter email "$email_8"
  And I click on the Save button
  Then A edit page should appear on the screen
  And I navigate to 'members' menu
  When I click New Member button
  And I enter name "$name_9"
  And I enter email "$$email_8"
  And I click on the Save button
  Then I should see the member error message "Member already exists. Attempting to add member with existing email address"

@user5 @web @F005 @E032
Scenario: Email with special unicode characters
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I enter name "$name_14"
  And I enter email "unicode@例子.测试"
  And I click on the Save button
  Then I should see the member error message "Invalid Email." 

@user6 @web @F005 @E035
Scenario: Empty form submission
  Given I navigate to page "https://5110-juliocesarf-dockersapps-2cq7vo8mqpa.ws-us118.gitpod.io/ghost/#/signin"
  And I enter email address "<EMAIL>"
  And I enter password "<PASSWORD>"
  And I click login
  And I navigate to 'members' menu
  When I click New Member button
  And I click on the Save button
  Then I should see the member error message "Please enter an email."
