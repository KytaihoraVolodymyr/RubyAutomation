Feature: Test browser setup
        Scenario: Search for something on google 
                Given I visit google
	        And I search "cat"
                Then I wait