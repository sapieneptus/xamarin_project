Feature: Creating a New Account
  As a CrowdComfort User
  I want to be able to create a new account
  So I can sign in to the application

Scenario: Too short of a username
  Given I am on the Registration Screen
  And I enter "abcd" as my username
  Then I should see the text "too short"

Scenario: Invalid Email
  Given I am on the Registration Screen
  And I enter "abcd" as my email
  Then I should see the text "invalid"