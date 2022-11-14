Feature: Test browser setup

  @Test1 @All
  Scenario: Search for something on google
    Given I navigate to the Google homepage
    And I search "Cats" and click wiki link
    Then Wiki page is opened

  @Test2 @All #fail_test
  Scenario: Search for something on google
      Given I navigate to the Google homepage
      And I search "Birds" and click wiki link
      Then Wiki page is opened
