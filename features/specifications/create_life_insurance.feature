Feature: Validate the creation of life insurance

@general
Scenario: Create an life insurance
  Given access life insurance page
  When Inform contact data
  And click on the simulation
  And enter personal data
  And enter civil status
  And inform partner data
  And click on the price
  Then system displays plans successfully
