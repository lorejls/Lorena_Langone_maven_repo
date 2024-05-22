Feature: User Logout

  @logoutOk
  Scenario: Verify the user can logout successfully
    Given The user is on the "https://www.saucedemo.com"
    When The user enter the username "standard_user"
    And The user enter the password "secret_sauce"
    And The user click the login button
    And The user performs logout
    Then The user will be redirected to the login page