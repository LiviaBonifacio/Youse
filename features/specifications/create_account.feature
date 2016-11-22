Feature: Validate create an account

@general
Scenario: Create an account
  Given access registration screen
  When inform the necessary data
  And click on send register
  Then successful registration
