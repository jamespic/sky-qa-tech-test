Feature: Multiplication

@example
Scenario Outline: Multiply two numbers together
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "10" into the calculator
    And I hit "equals"
    Then I see a result of "50"
Examples:
    | num1                | num2                | result                                 |
    | 5                   | 10                  | 50                                     |
    | -10                 | 20                  | -200                                   |
    | -9                  | -7                  | 63                                     |
    | 9223372036854775808 | 9223372036854775808 | 85070591730234615865843651857942052864 |
    | 1.2                 | 1.5                 | 1.8                                    |

@example
Scenario: Multiply three numbers together
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "10" into the calculator
    And I hit "multiply"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "100"

@example
Scenario: Multiply two numbers and add another
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "10" into the calculator
    And I hit "add"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "52"
    
Scenario: Arbitrary precision multiplication
    Given I enter "9223372036854775808" into the calculator
    And I hit "multiply"
    And I enter "9223372036854775808" into the calculator
    And I hit "equals"
    Then I see a result of "85070591730234615865843651857942052864"
