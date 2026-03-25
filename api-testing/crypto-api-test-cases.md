# API Test Cases

## Wallet API

### Test: Get Balance
- Endpoint: GET /wallet/balance
- Validate:
  - Correct balance returned
  - Matches UI value

### Test: Deposit API
- Endpoint: POST /wallet/deposit
- Validate:
  - Transaction recorded
  - Status = success

## Trading API

### Test: Place Order
- Endpoint: POST /order
- Validate:
  - Order created
  - Correct price and quantity

### Test: Cancel Order
- Endpoint: DELETE /order/{id}
- Validate:
  - Order removed
