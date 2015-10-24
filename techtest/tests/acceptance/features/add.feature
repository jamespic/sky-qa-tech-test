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
  
Scenario: Add three numbers together
  Given I enter "7" into the calculator
  And I hit "add"
  And I enter "11" into the calculator
  And I hit "add"
  And I enter "23" into the calculator
  And I hit "equals"
  Then I see a result of "41"
  
Scenario: Arbitrary precision addition
  Given I enter "9223372036854775808" into the calculator
  And I hit "add"
  And I enter "9223372036854775809" into the calculator
  And I hit "equals"
  Then I see a result of "18446744073709551617"
