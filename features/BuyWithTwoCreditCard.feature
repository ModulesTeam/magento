Feature: Create order with two credit card

  Background:
    Given a new session

  @javascript
  Scenario Outline: As a guest, I buy a product with two credit card
    Given I add a Aviator Sunglasses to cart and go to checkout
    And I checkout as guest
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    And I wait for 5 seconds
#    And I use jquery to click on element "#p_method_paymentmodule_boleto"
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds 
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code |
      | paymentmodule_twocreditcards|

  @javascript
  Scenario Outline: As a guest, I buy a product with two credit card with first multibuyer
    Given I add a Aviator Sunglasses to cart and go to checkout
    And I checkout as guest
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the first multibuyer form inputs
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    And I wait for 5 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code | form_type_1 | element_index_1 |
      | paymentmodule_twocreditcards | creditcard | 1 |

  @javascript
  Scenario Outline: As a guest, I buy a product with two credit card with second multibuyer
    Given I add a Aviator Sunglasses to cart and go to checkout
    And I checkout as guest
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the second multibuyer form inputs
    #complete
    And I wait for 5 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code | form_type_2 | element_index_2 |
      | paymentmodule_twocreditcards | creditcard | 2 |

  @javascript
  Scenario Outline: As a guest, I buy a product with two credit card with second multibuyer
    Given I add a Aviator Sunglasses to cart and go to checkout
    And I checkout as guest
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the first multibuyer form inputs
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the second multibuyer form inputs
    #complete
    And I wait for 5 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code | form_type_1 | element_index_1 | form_type_2 | element_index_2 |
      | paymentmodule_twocreditcards | creditcard | 1 | creditcard | 2 |
  
###### pre register user #######################################################

  @javascript
  Scenario Outline: As pre-registered user, I buy a product with two credit card
    Given I pre-register my user
    When I add a Aviator Sunglasses to cart and go to checkout
    And I fill in billing address info
    And I use jquery to click on element "#billing-buttons-container button"
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    And I wait for 5 seconds
#    And I use jquery to click on element "#p_method_paymentmodule_boleto"
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code |
      | paymentmodule_twocreditcards|

  @javascript
  Scenario Outline: As pre-registered user, I buy a product with two credit card with first multibuyer
    Given I pre-register my user
    When I add a Aviator Sunglasses to cart and go to checkout
    And I fill in billing address info
    And I use jquery to click on element "#billing-buttons-container button"
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the first multibuyer form inputs
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    And I wait for 5 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code | form_type_1 | element_index_1 |
      | paymentmodule_twocreditcards | creditcard | 1 |

  @javascript
  Scenario Outline: As pre-registered user, I buy a product with two credit card with second multibuyer
    Given I pre-register my user
    When I add a Aviator Sunglasses to cart and go to checkout
    And I fill in billing address info
    And I use jquery to click on element "#billing-buttons-container button"
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the second multibuyer form inputs
    #complete
    And I wait for 5 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code | form_type_2 | element_index_2 |
      | paymentmodule_twocreditcards | creditcard | 2 |

  @javascript
  Scenario Outline: As pre-registered user, I buy a product with two credit card with all multibuyers
    Given I pre-register my user
    When I add a Aviator Sunglasses to cart and go to checkout
    And I fill in billing address info
    And I use jquery to click on element "#billing-buttons-container button"
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the first multibuyer form inputs
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the second multibuyer form inputs
    #complete
    And I wait for 5 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code | form_type_1 | element_index_1 | form_type_2 | element_index_2 |
      | paymentmodule_twocreditcards | creditcard | 1 | creditcard | 2 |
    
    
###### register on checkout #########################################################

  @javascript
  Scenario Outline: Registering my user on checkout, I buy a product with two credit card
    Given I add a Aviator Sunglasses to cart and go to checkout
    And I register on Checkout
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    And I wait for 5 seconds
#    And I use jquery to click on element "#p_method_paymentmodule_boleto"
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code |
      | paymentmodule_twocreditcards|

  @javascript
  Scenario Outline: Registering my user on checkout, I buy a product with two credit card with first multibuyer
    Given I add a Aviator Sunglasses to cart and go to checkout
    And I register on Checkout
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the first multibuyer form inputs
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    And I wait for 5 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code | form_type_1 | element_index_1 |
      | paymentmodule_twocreditcards | creditcard | 1 |

  @javascript
  Scenario Outline: Registering my user on checkout, I buy a product with two credit card with second multibuyer
    Given I add a Aviator Sunglasses to cart and go to checkout
    And I register on Checkout
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the second multibuyer form inputs
    #complete
    And I wait for 5 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code | form_type_2 | element_index_2 |
      | paymentmodule_twocreditcards | creditcard | 2 |

  @javascript
  Scenario Outline: Registering my user on checkout, I buy a product with two credit card with all multibuyers
    Given I add a Aviator Sunglasses to cart and go to checkout
    And I register on Checkout
    And I select 'Flat' shipping method
    And I wait for text "Mundipagg Two Credit Cards" to appear, for 120 seconds
    And I click in element "#p_method_paymentmodule_twocreditcards"
    # Fill First Credit Card Data
    And I wait for 1 seconds
    And I fill in "paymentmodule_twocreditcards_creditcard_1_value" with "100"
    And I fill first credit card data
    And I wait for 10 seconds
    And I select "1x of $100,00 without interest , Total: $100,00" from "paymentmodule_twocreditcards_creditcard_1_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the first multibuyer form inputs
    # Fill Second Credit Card Data
    And I fill second credit card data
    And I wait for 10 seconds
    And I select "1x of $200,00 without interest , Total: $200,00" from "paymentmodule_twocreditcards_creditcard_2_mundicheckout-creditCard-installments"
    # Fill multibuyer
    And I wait for text "Fill other buyer data" to appear, for 120 seconds
    And I fill the second multibuyer form inputs
    #complete
    And I wait for 5 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for 1 seconds
    And I use jquery to click on element "#payment-buttons-container button"
    And I wait for text "PLACE ORDER" to appear, for 50 seconds
    And I wait for 2 seconds
    And I use jquery to click on element "#review-buttons-container button"
    And I wait for text "THANK YOU FOR YOUR PURCHASE!" to appear, for 120 seconds

    Examples:
      | payment_method_code | form_type_1 | element_index_1 | form_type_2 | element_index_2 |
      | paymentmodule_twocreditcards | creditcard | 1 | creditcard | 2 |