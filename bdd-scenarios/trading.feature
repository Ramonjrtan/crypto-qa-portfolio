Feature: Trading Orders

Scenario: Market order execution
  Given user has sufficient balance
  When user places a market order
  Then the order should be executed immediately

Scenario: Limit order pending
  Given user places a limit order below market price
  Then the order should remain pending

Scenario: Cancel order
  Given a pending order exists
  When user cancels the order
  Then the order should be removed