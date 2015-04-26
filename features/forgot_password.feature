Feature: Forgot Password
  As a CrowdComfort user
  I want to be able to change my password when I forget it
  So I can log in to the application

Scenario: Forgot Password With Invalid Email
  Given I am on the Registration Screen
  And I touch the "HaveAccount" button
  And I touch the "Forgot Password?" button
  And I use the native keyboard to enter "abc" into text field number 1
  Then I should see an alert titled "Whoops..."


