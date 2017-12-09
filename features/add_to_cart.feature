Feature: User can add product to cart
  As a customer
  In order to buy products
  I would like to be able to add them to a cart

Background:
  Given the following product exist
    | title   | description   | price |
    | T-shirt | Blue t-shirt  | 50    |
    | Mug     | Nice mug      | 20    |

  Scenario: User add a product to cart
    When I visit the "Webshop" page
    And I click "Add to cart" on "T-shirt"
    Then there should be an order created for me
    And the order should contain "T-shirt"
    And I should see "T-shirt was added to your order"
