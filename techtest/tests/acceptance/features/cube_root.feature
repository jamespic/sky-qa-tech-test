Feature: Cube root

Scenario: Take a cube root
  Given I enter "27.0" into the calculator
  And I hit "cube root"
  Then I see a result of "3.0"
  
Scenario: Repeated cube roots
  Given I enter "512.0" into the calculator
  And I hit "cube root"
  And I hit "cube root"
  Then I see a result of "2.0"

Scenario: Cube root precedence
  Given I enter "9.0" into the calculator
  And I hit "subtract"
  And I enter "1.0" into the calculator
  And I hit "cube root"
  And I hit "equals"
  Then I see a result of "8.0"

Scenario: Cube root precedence after equals
  Given I enter "9.0" into the calculator
  And I hit "subtract"
  And I enter "1.0" into the calculator
  And I hit "equals"
  And I hit "cube root"
  And I hit "equals"
  Then I see a result of "2.0"
