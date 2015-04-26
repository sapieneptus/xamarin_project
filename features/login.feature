Feature: Logging In
  As a CrowdComfort user
  I want to be able to use my existing credentials to login to the app
  So I can resume my previous activity within the app

Scenario: Logging In
  Given I am on the Login Screen
  And I use the native keyboard to enter "jaime" into text field number 1
  And I use the native keyboard to enter "pass" into text field number 2
  And I touch the "Log In" button
  Then I should see the text "loading"


