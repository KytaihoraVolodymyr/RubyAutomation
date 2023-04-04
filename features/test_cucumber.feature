Feature: Test browser setup

  @Cats @All
  Scenario: Search for something on google
    Given Go to the Google homepage
    And Search "Cats" and click wiki link
    Then Wiki page is opened

  @Birds @All #fail_test
  Scenario: Search for something on google
      Given Go to the Google homepage
      And Search "Birds" and click wiki link
      Then Wiki page is opened
