

-- 1) Account details with customer name and branch name (3-table join)
SELECT
a.AccountID,
c.Name AS CustomerName,
b.BranchName,
a.AccountType,
a.Balance
From Accounts a
JOIN Customers c ON a.CustomerID = c.CustomerID
JOIN Branches b ON a.BranchID = b.BranchID
ORDER BY a.AccountID

-- 2) Total balance per branch
SELECT
b.BranchName,
  SUM(a.Balance) AS TotalBalance,
  COUNT(a.AccountID) AS NumberOfAccounts
FROM Accounts a
JOIN Branches b ON a.BranchID = b.BranchID
GROUP BY b.BranchName
ORDER BY TotalBalance DESC

-- 3) Total balance per customer (across all their accounts)
SELECT
c.Name As CustomerName,
SUM(a.Balance) AS TotalBalance,
COUNT(a.AccountID) AS NumberOfAccounts
FROM Customers c
JOIN Accounts a ON c.CustomerID = a.CustomerID
GROUP BY c.Name
ORDER BY TotalBalance

-- 4) Number of transactions per customer

SELECT
c.Name AS CustomerName,
COUNT(t.TransactionID) AS NumberOfTransactions,
SUM(t.Amount) AS TotalTransactionAmount
FROM Customers c
JOIN Accounts a ON c.CustomerID = a.CustomerID
JOIN Transactions t ON a.AccountID = t.AccountID
GROUP BY c.Name
ORDER BY NumberOfTransactions DESC

-- 5) Deposits vs withdrawals by branch
SELECT
b.BranchName,
t.type,
COUNT(t.TransactionID) AS NumberOfTransactions,
SUM(t.Amount) AS TotalAmount
FROM Branches b
JOIN Accounts a ON b.BranchID = a.BranchID
JOIN Transactions t ON a.AccountID = t.AccountID
GROUP BY b.BranchName,t.type
ORDER BY b.BranchName,t.type

-- 6) Accounts with no transactions at all (LEFT JOIN)
SELECT
a.AccountID,
c.Name AS CustomerName,
a.AccountType,
a.Balance
FROM Accounts a
LEFT JOIN Transactions t ON a.AccountID = t.AccountID
JOIN Customers c ON a.CustomerID = c.CustomerID
WHERE t.TransactionID IS NULL
