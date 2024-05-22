Feature: Checkout

  Background:
    Given The user is on Cart page

  @checkoutPrice
  Scenario: Verify the final price at checkout for multiple products
    When The user add 3 random products to the cart
    And The user go to the cart
    And The user proceed to checkout
    And The user fill in the checkout information and continue
    And The user finish the checkout
    Then the item total will be the sum of the prices of the selected products

  @checkoutOrder
  Scenario: Place an order
    When The user add 1 random product to the cart
    And The user go to the cart
    And The user proceed to checkout
    And The user fill in the checkout information and continue
    And The user finish the checkout
    Then The user will see the message "Your order has been dispatched, and will arrive just as fast as the pony can get there!"



