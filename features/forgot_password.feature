Feature: Running a test
  As an iOS developer
  I want to have a sample feature file
  So I can begin testing quickly

Scenario: Forgot Password With Invalid Email
  Given I am on the Registration Screen
  And I touch the "Have an account?" button
  And I touch the "Forgot password?" button
  And I use the native keyboard to enter "abc" into text field number 0
  Then I should see an alert titled "Whoops..."


