Feature: User can access webshop page
  As a user
  In order to see products
  I would like to be able to visit the shop page

  Background:
    Given the following user exists
      | email                  | password    | password_confirmation |
      | cutie123@hotmail.com   | hello123    | hello123              |
    When I visit the "Landing" page
    And I click on the "Webshop" button or link

    Scenario:
      When I am on the "Webshop" page
      Then I should see "Title" of "Product"
      And I should see "Description" of "Great product"
      And I should see "Price" of "50"
