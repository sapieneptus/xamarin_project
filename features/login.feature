Feature: Running a test
  As an iOS developer
  I want to have a sample feature file
  So I can begin testing quickly

Scenario: Logging In
  Given I am on the Login Screen
  And I use the native keyboard to enter "jaime" into text field number 0
  And I use the native keyboard to enter "pass" into text field number 1
  And I touch the "Log In" button
  Then I should see the text "loading"


