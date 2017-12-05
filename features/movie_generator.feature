Feature: Movie generator
  As a user
  In order to find a good movie to watch
  I would like to be able to search for various criteria and generate some movie suggestions

  Scenario:
    When I visit landing page
    And I fill in "search field" with "search criterias"
    And I click on "Search" button
    Then I should see a list of "movies"
