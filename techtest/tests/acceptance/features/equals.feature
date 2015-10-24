Feature: Equals

Scenario: Hitting Equals
  Given I enter "5" into the calculator
  And I hit "equals"
  Then I see a result of "5"
  
Scenario: Hitting Equals repeatedly
  Given I enter "5" into the calculator
  And I hit "equals"
  And I hit "equals"
  Then I see a result of "5"
