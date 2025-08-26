Feature: Deposit money
  Background:
    Given a customer with id 1111 and pin 1234 with balance 100.00 exists
    When I login to ATM with id 1111 and pin 1234
    Then I can login

  Scenario: Deposit a valid amount
    When I deposit 50.00 to ATM
    Then my account balance is 150.00

  Scenario: Deposit an invalid amount (zero or negative)
    When I try to deposit -20.00 to ATM
    Then my account balance is 100.00