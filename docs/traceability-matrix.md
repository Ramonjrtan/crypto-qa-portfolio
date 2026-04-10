# Traceability Matrix

| Requirement Area | Sample Requirement | Test Asset | Validation Focus |
|---|---|---|---|
| Wallet | User balance updates correctly after deposit confirmation | Manual wallet tests, API tests | Balance accuracy |
| Wallet | Duplicate credits are prevented | Critical bug scenarios, SQL checks | Data integrity |
| Trading | Market order is executed with correct quantity and fee | Trading test suite, BDD scenarios | Execution accuracy |
| Trading | Cancelled order is removed from open orders and preserved in history | Trading tests, API checks | Lifecycle consistency |
| Security | 2FA required for sensitive account actions | Security module tests | Access control |
| API | Balance endpoint matches UI and ledger values | API tests, SQL reconciliation | Cross-layer consistency |
| Release | No open critical defects before deployment | Release checklist, quality summary | Release decision |
