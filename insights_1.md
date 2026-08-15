# Key Insights — Bank Accounts & Transactions Analysis

1. **Hyderabad Main holds the most total balance** (₹826,125 across 7 accounts), well ahead of the next branch, Delhi North (₹616,015 across 6 accounts). Mumbai West holds the least (₹393,149) but also has the fewest accounts (3), so its per-account average is still comparable to other branches.

2. **Kiran is the highest-value customer overall**, with a combined balance of ₹284,377 across 2 accounts — more than double several single-account customers. This shows why looking at *total customer relationship value* (not just single accounts) matters: several of the top customers by balance hold 2 accounts rather than 1.

3. **Meena is the most active customer**, with 18 transactions totaling ₹220,731 — nearly double the transaction count of several other customers. High transaction volume doesn't necessarily correlate with the highest balance, suggesting some customers use their accounts more actively day-to-day while others simply maintain larger static balances.

4. **Most branches bring in more in deposits than they pay out in withdrawals** — Hyderabad Main, Bangalore Central, Delhi North, and Mumbai West are all net deposit-positive. **Chennai East is the exception**: withdrawals (₹217,284 across 20 transactions) exceeded deposits (₹165,836 across 18 transactions), making it the only branch with a net cash outflow. This would be worth flagging for a branch manager to investigate.

5. **No dormant accounts were found** — every account in the dataset had at least one transaction. In a real banking dataset, this query (using a LEFT JOIN) would be a standard way to flag inactive accounts for customer outreach or compliance review.

6. **Customers with multiple accounts tend to appear near the top of the total balance ranking** — most of the top 5 customers by combined balance hold 2 accounts, reinforcing that relationship-level analysis (joining across accounts) surfaces different insights than looking at any single account in isolation.
