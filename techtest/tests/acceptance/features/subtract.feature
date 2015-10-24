Feature: Subtraction

Scenario Outline: Subtract two numbers
  Given I enter "<num1>" into the calculator
  And I hit "subtract"
  And I enter "<num2>" into the calculator
  And I hit "equals"
  Then I see a result of "<result>"
Examples:
  | num1 | num2 | result |
  | 34   | 23   | 11     |
  | -1   | 1    | -2     |
  | -2   | -3   | 1      |
  | -223 | -123 | -100   |
  
Scenario: Subtract two numbers from a first
  Given I enter "13" into the calculator
  And I hit "subtract"
  And I enter "3" into the calculator
  And I hit "subtract"
  And I enter "4" into the calculator
  And I hit "equals"
  Then I see a result of "6"
