# Execution Guide

## Recommended Test Order

1. Smoke check login, balances, and market data
2. Execute wallet deposit / withdrawal core paths
3. Execute trading happy paths
4. Execute negative and edge scenarios
5. Run API consistency checks
6. Perform reconciliation spot checks
7. Review open defects and release checklist

## Evidence to Capture
- request and response payloads
- screenshots of order states and balances
- before / after balance values
- transaction IDs and order IDs
- defect references and retest results

## Exit Criteria
- all critical scenarios passed
- no unresolved critical defects
- no unexplained balance mismatches
- no duplicate credits / duplicate executions observed
- reconciliation checks align with expected outcomes
