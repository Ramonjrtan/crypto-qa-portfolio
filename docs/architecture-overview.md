# Architecture Overview

## High-Level Flow

A typical crypto exchange workflow spans multiple layers:

1. **Client/UI Layer**
   - wallet pages
   - order entry
   - order history
   - balances and transaction history

2. **API Layer**
   - wallet endpoints
   - order placement / cancellation endpoints
   - account and balance endpoints
   - authentication and session endpoints

3. **Core Services**
   - wallet / ledger service
   - trading engine
   - risk / validation service
   - pricing and market data service
   - notification / audit logging service

4. **Data Layer**
   - balances / ledger tables
   - orders / executions tables
   - deposits / withdrawals history
   - audit / security tables

## QA Focus by Layer

### UI
- correct balances displayed
- order entry validations
- accurate order status and history

### API
- request / response structure
- auth and entitlement checks
- error handling and negative scenarios

### Services
- correct routing of wallet and trade events
- duplicate request protection
- accurate lifecycle transitions

### Data
- ledger and balance consistency
- execution records match UI and API
- transaction histories remain reconcilable

## Key Failure Risks
- duplicate wallet credits
- duplicate order execution
- stale balances shown to users
- cancel request accepted but not reflected in engine
- filled quantity or fees inconsistent across layers
