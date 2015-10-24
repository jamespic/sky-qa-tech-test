Feature: Factorial

Scenario Outline: Calculate factorial
  Given I enter "<num>" into the calculator
  And I hit "factorial"
  Then I see a result of "<result>"
Examples:
  | num  | result |
  | 0    | 1      |
  | 1    | 1      |
  | 4    | 24    |
  
Scenario: Repeated factorials
  Given I enter "3" into the calculator
  And I hit "factorial"
  And I hit "factorial"
  Then I see a result of "720"

Scenario: Factorial precedence
  Given I enter "9" into the calculator
  And I hit "subtract"
  And I enter "1" into the calculator
  And I hit "factorial"
  And I hit "equals"
  Then I see a result of "8"

Scenario: Factorial precedence after equals
  Given I enter "6" into the calculator
  And I hit "subtract"
  And I enter "1" into the calculator
  And I hit "equals"
  And I hit "factorial"
  And I hit "equals"
  Then I see a result of "120"
  
Scenario: Cube root with factorial
  Given I enter "27" into the calculator
  And I hit "cube root"
  And I hit "factorial"
  And I hit "equals"
  Then I see a result of "6"

# FIXME: Learn enough PHP and Behat to test exception case
