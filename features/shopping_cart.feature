Feature: User can add products to cart
  As a user
  In order for me to buy merchandise
  I would like to be able to add products to my cart

  Background:
    Given the following product exist
      | title   | description   | price |
      | T-shirt | Blue t-shirt  | 50    |
      | Mug     | Nice mug      | 20    |

  Scenario: Visitor sees a list of products on the webshop page
    When I visit the "Webshop" page
    And I click on "Add to cart" button or link
