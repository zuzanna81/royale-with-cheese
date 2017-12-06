Feature: Visitor Sign Up
  As a user
  In order to register an account
  I need to be able to write in my user details and register

  Background:
    Given I visit the "Landing" page
    When I click on the "Sign up" button or link
    Then I should be redirected to the "Sign up" page


  Scenario: Visitor fills in all fields correctly [Happy Path]
    When I fill in "Username" with "Scott"
    And I fill in "Email" with "hotmale@hotmail.com"
    And I fill in "Password" with "whatever"
    And I fill in "Password Confirmation" with "whatever"
    And I click on the "Create User" button or link
    Then I should have an account with email "hotmale@hotmail.com" saved in the database
    And I should be redirected to the "Landing" page
    And I should see "Account has been successfully created."


  Scenario: Visitor fills in all fields except Username [Sad Path]
    When I fill in "Email" with "hotmale@hotmail.com"
    And I fill in "Password" with "whatever"
    And I fill in "Password Confirmation" with "whatever"
    And I click on the "Create User" button or link
    Then I should see "Username can't be blank"


  Scenario: Visitor fills in all fields except Password [Sad Path]
    When I fill in "Username" with "Scott"
    And I fill in "Email" with "hotmale@hotmail.com"
    And I click on the "Create User" button or link
    Then I should see "Password can't be blank"


  Scenario: Visitor fills in all fields except Password Confirmation [Sad Path]
    When I fill in "Username" with "Scott"
    And I fill in "Email" with "hotmale@hotmail.com"
    And I fill in "Password" with "whatever"
    And I click on the "Create User" button or link
    Then I should see "Password confirmation doesn't match Password"


  Scenario: Visitor fills in all fields except Email [Sad Path]
    When I fill in "Username" with "Scott"
    And I fill in "Password" with "whatever"
    And I fill in "Password Confirmation" with "whatever"
    And I click on the "Create User" button or link
    Then I should see "Email is invalid"
