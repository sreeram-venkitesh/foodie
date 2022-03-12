Feature: Food
  In order to portray or pluralize Food
  As a CLI
  I want to be as objective as possbile

  Scenario: Broccoli is gross
    When I run `foodie portray broccoli`
    Then the output should contain "Gross!"
  
  Scenario: Tomato. or Tomato?
    When I run `foodie pluralize --word Tomato`
    Then the output should contain "Tomatoes"