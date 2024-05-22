Feature: Inventory Validation


  Background:
    Given The user is on the "https://www.saucedemo.com"
    And logs in with the username "standard_user"
    And logs in with the password "secret_sauce"
    And clicks on the login button

  @cart-inventory
  Scenario Outline: Verify that the number of products displayed is correct
    When The user clicks on the "See Inventory" button
    And the inventory information is available to see
    Then the cart will have the number of items <expected_count> displayed

    Examples:
      | expected_count |
      | 6              |


  @inventory-validate
  Scenario Outline: Validate inventory based on different criteria
    When The user enter clicks on "See inventory" button
    Then The user see the message <validation> displayed

    Examples:
      | validation                          |
      | "6 products"                        |
      | "product 'Sauce Labs Bolt T-Shirt'" |

  @inventory-sort
  Scenario Outline: Sort inventory based on different criteria
    When The user select the filter "<filter>"
    Then the inventory will be sorted <criteria>

    Examples:
      | filter                | criteria                   |
      | "NAME (Z to A)"       | alphabetically from Z to A |
      | "PRICE (low to high)" | by price from low to high  |