Feature: Running a test
  As an iOS developer
  I want to have a sample feature file
  So I can begin testing quickly

Scenario: Too short of a username
  Given I am on the Registration Screen
  And I enter "abcd" as my username
  Then I should see the text "too short"

Scenario: Invalid Email
  Given I am on the Registration Screen
  And I enter "abcd" as my email
  Then I should see the text "invalid"