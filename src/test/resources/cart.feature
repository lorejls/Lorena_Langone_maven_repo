@cart-management
Feature: Cart Management

  Background:
    Given The user is on the "https://www.saucedemo.com"
    And logs in with the username "standard_user"
    And logs in with the password "secret_sauce"
    And clicks on the login button


  @cartAdd-product
  Scenario Outline: Add a product to the cart
    When The user selects a product <product>
    And The user clicks on the "Add to Cart" button
    Then the cart will have the product <product> displayed

    Examples:
      | product                 |
      | Sauce Labs Bolt T-Shirt |


  @cartRemove-Inventory
  Scenario Outline: Remove product from the on the inventory page

    When The user selects a product <product>
    And The user clicks on the "Add to Cart" button
    And the user removes the product <product> from the cart
    Then the cart has no more products
    And the message <message> is displayed

    Examples:
      | product                 | message                      |
      | Sauce Labs Bolt T-Shirt | The product has benn deleted |


  @cartAdd-Random
  Scenario Outline: Add <number> random products to the cart
    When the user adds <number> random products to the cart
    Then the cart will have <number> products

    Examples:
      | number |
      | 3      |

  @cartRemove-Cart
  Scenario Outline: Remove a product from the cart
    When the user adds <number_of_products> random products to the cart
    And the user goes to the cart
    And the user removes one product from the cart
    Then the removed product shouldn't exist in the cart
    And the number of products is <new-number>

    Examples:
      | number_of_products | number_of_products |
      | 2                  | 1                  |