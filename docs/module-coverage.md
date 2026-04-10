# Module Coverage

## Wallet
- deposit creation and status updates
- withdrawal request and approval / rejection paths
- balance updates after confirmed transactions
- reserved balance handling
- transaction history visibility

## Trading
- place market order
- place limit order
- cancel open order
- partial fill handling
- final status and history consistency

## Security
- login and logout
- invalid credentials
- session timeout / re-authentication
- 2FA enforcement for sensitive actions
- withdrawal protection controls

## API
- happy path validation
- invalid parameter handling
- unauthorized / forbidden requests
- idempotency / duplicate submission checks
- response consistency with UI and backend state

## Release Readiness
- critical defect review
- regression status
- reconciliation spot checks
- operational risk summary
