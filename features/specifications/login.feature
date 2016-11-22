Feature: Validate login the system

@general
Scenario: Access the system
    Given sign in to login screen
    When enter the email
    And click next step
    And system asks for the password
    And click enter
    Then login with sucess
