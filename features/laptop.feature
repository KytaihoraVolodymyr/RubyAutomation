Feature: Test browser setup
    @Autoria @All
    Scenario: Search for something on google
        Given I navigate to the Google homepage
        And I search "Autoria" 
        And Click the wiki link
        When I go back and forward
        And Open a new tab
        Then New tab is opened, button is displayed
