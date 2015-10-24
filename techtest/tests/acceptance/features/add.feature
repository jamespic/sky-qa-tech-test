Feature: Addition

Scenario Outline: Add two numbers together
  Given I enter "<num1>" into the calculator
  And I hit "add"
  And I enter "<num2>" into the calculator
  And I hit "equals"
  Then I see a result of "<result>"
Examples:
  | num1                | num2                | result               |
  | 11                  | 23                  | 34                   |
  | -2                  | 1                   | -1                   |
  | -100                | -123                | -223                 |
  | 9223372036854775808 | 9223372036854775809 | 18446744073709551617 |
  | 0.1                 | 0.2                 | 0.3                  |
  
Scenario Outline: Add three numbers together
  Given I enter "<num1>" into the calculator
  And I hit "add"
  And I enter "<num2>" into the calculator
  And I hit "add"
  And I enter "<num3>" into the calculator
  And I hit "equals"
  Then I see a result of "<result>"
Examples:
  | num1 | num2 | num3 | result |
  | 7    | 11   | 23   | 41     |
  | 1.1  | 1.2  | -2.0 | 0.3    |
