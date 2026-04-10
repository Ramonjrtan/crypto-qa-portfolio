# Crypto Exchange QA Portfolio

This repository presents a recruiter-ready QA portfolio for a **crypto exchange / trading platform**. It demonstrates how a Senior QA Engineer can validate high-risk financial workflows across **wallets, trading, APIs, security controls, and release readiness**.

The focus is not only on UI checks. It is on **end-to-end transaction integrity**:

- wallet balance correctness
- order lifecycle accuracy
- API and backend consistency
- duplicate and replay protection
- reconciliation across ledger, orders, and user-visible balances
- release decision support for transaction-heavy systems

## Why this portfolio is strong

Crypto platforms combine the risks of **fintech, trading systems, security-sensitive workflows, and high-volume event processing**. This repo shows a practical QA approach for validating:

- deposits, withdrawals, and available balance updates
- market and limit order flows
- partial fills, cancellations, and final order states
- authentication, 2FA, session, and authorization checks
- API contract and negative testing
- reconciliation of balances, trades, and transaction history

## Portfolio Scope

### 1) Wallet and Funds Flow
- deposits and confirmations
- withdrawals and approval states
- balance, available balance, and reserved funds
- duplicate credits / duplicate debits prevention
- failed or delayed transaction handling

### 2) Trading Engine Validation
- market, limit, and cancellation scenarios
- order lifecycle validation from placement to fill/cancel state
- price, quantity, and fee correctness
- partial fills and remaining quantity validation
- trading history and open orders consistency

### 3) Security and Access Control
- login, logout, session expiry
- 2FA prompts and enforcement
- withdrawal restrictions and invalid request handling
- role / entitlement checks for sensitive actions

### 4) API and Data Validation
- endpoint contract validation
- request / response integrity
- negative scenarios and invalid payload handling
- UI vs API vs backend consistency checks
- SQL-style reconciliation patterns for finance data

## Repository Structure

```text
crypto-qa-portfolio/
├── README.md
├── docs/
│   ├── architecture-overview.md
│   ├── module-coverage.md
│   ├── traceability-matrix.md
│   └── execution-guide.md
├── test-strategy/
├── manual-test-cases/
├── bdd-scenarios/
├── api-testing/
├── sql-validation/
├── risk-and-controls/
├── bug-reports/
├── release-readiness/
├── reports/
└── test-artifacts/
```

## Key QA Themes Demonstrated

- end-to-end validation of transaction-heavy systems
- financial data integrity and reconciliation
- risk-based testing for money movement and order execution
- strong defect thinking for high-severity production scenarios
- release-readiness assessment for regulated-style environments

## Tools and Artifacts

- Excel-based manual test suite
- API test scenarios and sample collection
- BDD scenarios for wallet and trading behavior
- SQL validation examples for reconciliation
- release checklist and quality summary artifacts

## Best-fit roles for this portfolio

This repo is especially relevant for roles involving:

- crypto exchange QA
- fintech / payments QA
- trading platform QA
- wallet and transaction systems
- API and backend-heavy validation
- senior manual QA with strong system thinking

## Important note

This is a **portfolio simulation** built to demonstrate real-world QA thinking and documentation structure. It is intended to show testing depth, coverage design, and risk awareness for crypto systems.
