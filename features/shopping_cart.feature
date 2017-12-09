Feature: User can add products to cart
  As a user
  In order for me to buy merchandise
  I would like to be able to add products to my cart

  Background:
    Given the following product exist
      | title   | description   | price |
      | T-shirt | Blue t-shirt  | 50    |
      | Mug     | Nice mug      | 20    |

  Scenario:
    When I visit the "Webshop" page
    And I click on "Add to cart" on "T-shirt"
    # Then show me the page
    Then I should be redirected to the "Shopping cart" page
    And I should see "T-shirt"
    And I should see "50.00"
