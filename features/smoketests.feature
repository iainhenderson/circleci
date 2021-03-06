Feature: Smoke Tests

  Scenario Outline: Simple availability smoke tests
    Given I am on "<url>"
    Then the response status code should be <responseCode>
    And the response should contain "<title>"

  Examples:
    | url          | responseCode | title    |
    | /            | 200          | Homepage |
    | /site/four04 | 404          |          |


  Scenario Outline: Simple validation smoke tests
    Given I validate "<url>"
    And the response should contain "<title>"

  Examples:
    | url          | title    |
    | /            | Homepage |
    | /site/four04 |          |