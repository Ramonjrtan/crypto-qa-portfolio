-- 1. Wallet balance vs ledger summary
SELECT a.user_id,
       a.available_balance,
       COALESCE(SUM(CASE WHEN l.entry_type = 'CREDIT' THEN l.amount ELSE -l.amount END), 0) AS ledger_net
FROM accounts a
LEFT JOIN ledger_entries l ON a.user_id = l.user_id
GROUP BY a.user_id, a.available_balance;

-- 2. Duplicate deposit transactions by external reference
SELECT external_txn_id, COUNT(*) AS occurrence_count
FROM wallet_transactions
WHERE txn_type = 'DEPOSIT'
GROUP BY external_txn_id
HAVING COUNT(*) > 1;

-- 3. Orders with inconsistent filled quantity
SELECT order_id, quantity, filled_quantity, status
FROM orders
WHERE filled_quantity > quantity
   OR filled_quantity < 0;

-- 4. Executed trades missing a parent order
SELECT t.trade_id, t.order_id
FROM trades t
LEFT JOIN orders o ON t.order_id = o.order_id
WHERE o.order_id IS NULL;

-- 5. Cancelled orders that still appear as open
SELECT order_id, status
FROM orders
WHERE status = 'CANCELLED'
  AND open_order_flag = 1;

-- 6. Withdrawal requests approved without 2FA confirmation
SELECT withdrawal_id, user_id, approved_at
FROM withdrawals
WHERE status = 'APPROVED'
  AND two_factor_confirmed = 0;

-- 7. Fee validation spot check
SELECT trade_id, expected_fee, actual_fee
FROM trade_fee_validation_view
WHERE expected_fee <> actual_fee;
