Feature: Division

Scenario Outline: Divide two numbers
  Given I enter "<num1>" into the calculator
  And I hit "divide"
  And I enter "<num2>" into the calculator
  And I hit "equals"
  Then I see a result of "<result>"
Examples:
  | num1 | num2 | result   |
  | 9.0  | 2.0  | 4.5      |
  | 5    | 2    | 2.5      |
  #| 1.0  | 0.0  | Infinity | # Clarify intended handling of these cases
  #| 1    | 0    | NaN      |
  | -3.0 | -1.5 | 2.0      |
  | 9.0  | -3.0 | -3.0     |
  
Scenario: Divide one number by two others
  Given I enter "24" into the calculator
  And I hit "divide"
  And I enter "3" into the calculator
  And I hit "divide"
  And I enter "2" into the calculator
  And I hit "equals"
  Then I see a result of "4"
