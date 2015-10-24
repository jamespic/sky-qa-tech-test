Feature: Addition

Scenario Outline: Add two numbers together
  Given I enter "<num1>" into the calculator
  And I hit "add"
  And I enter "<num2>" into the calculator
  And I hit "equals"
  Then I see a result of "<result>"
Examples:
  | num1 | num2 | result |
  | 11   | 23   | 34     |
  | -2   | 1    | -1     |
  | -100 | -123 | -223   |
