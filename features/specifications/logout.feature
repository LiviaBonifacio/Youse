Feature: Validate logout the system

@general
@login
Scenario: Logout
  Given logged in user no system
  When click exit
  Then system returns to home page
