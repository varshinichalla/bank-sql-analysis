

CREATE TABLE Branches (
    BranchID     INT PRIMARY KEY,
    BranchName   VARCHAR(50),
    City         VARCHAR(30)
)

CREATE TABLE Customers (
    CustomerID   INT PRIMARY KEY,
    Name         VARCHAR(50),
    Age          INT,
    City         VARCHAR(30),
    JoiningDate  DATE
)

CREATE TABLE Accounts (
    AccountID    INT PRIMARY KEY,
    CustomerID   INT,
    BranchID     INT,
    AccountType  VARCHAR(20),   -- Savings, Current, Loan
    Balance      DECIMAL(12,2),
    OpenDate     DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
)

CREATE TABLE Transactions (
    TransactionID   INT PRIMARY KEY,
    AccountID       INT,
    TransactionDate DATE,
    Type            VARCHAR(20),   -- Deposit, Withdrawal
    Amount          DECIMAL(12,2),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
)