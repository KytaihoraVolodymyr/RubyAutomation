Feature: Test browser setup
  Scenario: Search for something on google
    Given I navigate to the Google homepage
    And I search "Cats" and click wiki link
    Then Wiki page is opened