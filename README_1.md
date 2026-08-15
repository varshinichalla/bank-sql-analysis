# Bank Accounts & Transactions Analysis (SQL)

A SQL analysis of a relational banking dataset spanning 4 linked tables — Customers, Branches, Accounts, and Transactions — using SQL Server. Built to practice multi-table joins, aggregation across relationships, and outer joins.

## Dataset

Synthetic but realistic data generated to model a real banking structure:
- **5 branches** across different cities
- **20 customers**, some holding multiple accounts
- **28 accounts** (Savings, Current, Loan), each linked to a customer and a branch
- **180 transactions** (Deposits and Withdrawals), each linked to an account

## Schema / Table Relationships

```
Branches ← Accounts → Customers
                ↓
           Transactions
```

Each Account belongs to one Customer and is opened at one Branch. Each Transaction happens on one Account. This lets queries join up to 4 tables deep (e.g. Branch → Account → Transaction).

## What I Analyzed

1. Account details joined with customer and branch names (3-table join)
2. Total balance held per branch
3. Total balance per customer, across all their accounts
4. Number of transactions per customer (3-table join)
5. Deposits vs. withdrawals per branch (4-table join, grouped by 2 columns)
6. Accounts with zero transactions (LEFT JOIN)

## Tools Used

- SQL Server
- SQL Server Management Studio (SSMS)

## Key Findings

See [insights.md](insights.md) for the full write-up. Highlights:
- Hyderabad Main holds the highest total balance across branches.
- Kiran is the top customer by combined balance across accounts.
- Meena is the most active customer by transaction count.
- Chennai East is the only branch with more withdrawals than deposits.
- No dormant (zero-transaction) accounts were found.

## Files

- `schema.sql` — table structure and relationships
- `queries.sql` — all 6 analysis queries, with comments
- `insights.md` — written findings from the analysis

## Skills Demonstrated

Multi-table `JOIN`s (up to 4 tables) · `GROUP BY` on multiple columns · aggregation across one-to-many relationships · `LEFT JOIN` for gap analysis
