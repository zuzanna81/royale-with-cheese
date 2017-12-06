Feature: Movie generator
  As a user
  In order to find a good movie to watch
  I would like to be able to search for various criteria and generate some movie suggestions

  Scenario:
    When I visit the landing page
    And I fill in "text field" with "keyword"
    And I click on "Search" button
    Then I should see a list of "movies"
