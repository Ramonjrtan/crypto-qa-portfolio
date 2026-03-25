Feature: Wallet Deposit

Scenario: Successful deposit
  Given user has a valid wallet address
  When user sends crypto to the address
  Then the system should update the wallet balance

Scenario: Invalid wallet address
  Given user enters an incorrect wallet address
  When deposit is attempted
  Then the system should reject the transaction

Scenario: Duplicate transaction
  Given a transaction hash already exists
  When the same transaction is submitted
  Then the system should prevent duplicate credit