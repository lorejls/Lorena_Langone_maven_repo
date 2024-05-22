@login
Feature: Login Functionality


  @loginCase01
  Scenario Outline: Login credentials
    Given The user is on the login page "https://www.saucedemo.com"
    When The user enters the username "<username>"
    And The user enters the password "<password>"
    And clicks the login button
    Then The user should <result>

    Examples:
      | username      | password         | result                                                                             |
      | standard_user | secret_sauce     | be redirected to the inventory page "https://www.saucedemo.com/inventory.html"     |
      | invalid_user  | secret_sauce     | see an error message "Username and password do not match any user in this service" |
      | standard_user | invalid_password | see an error message "Username and password do not match any user in this service" |
      |               | secret_sauce     | see an error message "Username is required"                                        |
      | standard_user |                  | see an error message "Password is required"                                        |