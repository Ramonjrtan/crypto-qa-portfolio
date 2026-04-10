# Crypto API Test Cases

## Wallet API

### 1. Get Balance
- Endpoint: `GET /wallet/balance`
- Validate:
  - correct balance is returned
  - available balance and reserved balance are logically correct
  - values match UI and backend records

### 2. Deposit API
- Endpoint: `POST /wallet/deposit`
- Validate:
  - transaction is recorded once
  - status transitions are correct
  - confirmed deposit updates balance correctly
  - duplicate external transaction reference is rejected or safely ignored

### 3. Withdrawal API
- Endpoint: `POST /wallet/withdraw`
- Validate:
  - request is blocked when funds are insufficient
  - security controls such as 2FA are enforced
  - approved withdrawal reduces available balance correctly

## Trading API

### 4. Place Order
- Endpoint: `POST /order`
- Validate:
  - order is created with correct symbol, price, side, and quantity
  - response includes traceable order identifier
  - invalid quantity or price is rejected

### 5. Cancel Order
- Endpoint: `DELETE /order/{id}`
- Validate:
  - order moves to cancelled state correctly
  - order is removed from open orders list
  - order remains visible in history and audit trail

### 6. Order Detail / History
- Endpoint: `GET /order/{id}` or `GET /orders/history`
- Validate:
  - lifecycle state matches executions
  - filled quantity and fee values are accurate
  - final status matches UI and backend records
