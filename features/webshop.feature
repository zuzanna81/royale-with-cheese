Feature: User can access webshop page
  As a user
  In order to see products
  I would like to be able to visit the shop page

  Background:
    Given the following user exists
      | email                  | password    | password_confirmation |
      | cutie123@hotmail.com   | hello123    | hello123              |
    When I visit the "Landing" page
    And I click on the "Sign up" button or link
    And I fill in "Email" with "hotmale@hotmail.com"
    And I fill in "Password" with "whatever"
    And I fill in "Password confirmation" with "whatever"
    And I click on the "Sign up" button or link
    Then I should have an account with email "hotmale@hotmail.com" saved in the database
    And I should be redirected to the "Landing" page
    And I click on the "Webshop" button or link

  Scenario:
    When I am on the "Webshop" page
    Then I should see "Title" of "Product"
    And I should see "Description" of "Great product"
    And I should see "Price" of "50"
