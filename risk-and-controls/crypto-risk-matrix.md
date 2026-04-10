# Crypto Risk Matrix

| Risk | Example Failure | Severity | QA Control |
|---|---|---:|---|
| Duplicate credit | Deposit applied twice | Critical | Replay / duplicate transaction checks |
| Balance mismatch | UI shows value different from ledger | Critical | UI/API/DB reconciliation |
| Duplicate execution | Same order filled twice | Critical | Order lifecycle and execution audit checks |
| Unauthorized withdrawal | Sensitive action bypasses 2FA | Critical | Security and entitlement tests |
| Partial state update | Cancel accepted but order remains open | High | Cross-layer validation |
| Incorrect fee | Fee logic applied incorrectly | High | Trade settlement validation |
| Incomplete history | User history misses completed transaction | Medium | Transaction history checks |
