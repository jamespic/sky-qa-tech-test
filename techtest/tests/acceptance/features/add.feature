Feature: Addition

Scenario: Add two numbers together
  Given I enter "11" into the calculator
  And I hit "add"
  And I enter "24" into the calculator
  And I hit "equals"
  Then I see a result of "35"
  
