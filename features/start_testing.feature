Feature: Start testing
  As an automation tester
  I want to have a structured framework
  So I can write better looking and more reliable automation tests

  Scenario: First automation
    Given http://www.google.com is open
    When I search for automation testing
    Then I should see relevant search results
