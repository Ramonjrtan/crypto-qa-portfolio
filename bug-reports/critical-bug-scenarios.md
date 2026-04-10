# Critical Bug Scenarios

## 1. Wallet Balance Mismatch
- Severity: Critical
- Impact: Financial loss, user distrust, reconciliation failure
- Example: confirmed deposit appears in history but available balance does not update

## 2. Duplicate Transaction Credit
- Severity: Critical
- Impact: Double credit and monetary exposure
- Example: same blockchain reference processed twice after retry

## 3. Order Executed Twice
- Severity: Critical
- Impact: duplicate fills and incorrect positions
- Example: retry or replay results in repeated execution of the same order

## 4. API Returns Incorrect Balance
- Severity: High
- Impact: UI mismatch and trading decisions based on wrong funds

## 5. Cancelled Order Still Open
- Severity: High
- Impact: user confusion and unintended execution risk

## 6. Withdrawal Approved Without Required 2FA
- Severity: Critical
- Impact: security breach and unauthorized funds movement
