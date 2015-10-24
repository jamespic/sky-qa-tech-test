Feature: Dec To Hex

Scenario:
  Given I enter "271" into the calculator
  And I hit "dec to hex"
  And I hit "equals"
  Then I see a result of "10f"
