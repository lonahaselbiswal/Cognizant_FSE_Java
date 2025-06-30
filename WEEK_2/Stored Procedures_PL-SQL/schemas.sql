-- I have applied all the Schemas for all the Scenarios here..
CREATE TABLE savings_accounts (
    account_id      NUMBER PRIMARY KEY,
    customer_id     NUMBER,
    balance         NUMBER(10, 2)
);

-- Sample Data
INSERT INTO savings_accounts VALUES (1, 101, 1000);
INSERT INTO savings_accounts VALUES (2, 102, 2000);
INSERT INTO savings_accounts VALUES (3, 103, 3000);

CREATE TABLE employees (
    emp_id      NUMBER PRIMARY KEY,
    name        VARCHAR2(100),
    department  VARCHAR2(50),
    salary      NUMBER(10, 2)
);

-- Sample Data
INSERT INTO employees VALUES (1, 'Alice', 'HR', 50000);
INSERT INTO employees VALUES (2, 'Bob', 'IT', 60000);
INSERT INTO employees VALUES (3, 'Charlie', 'HR', 55000);

CREATE TABLE accounts (
    account_id  NUMBER PRIMARY KEY,
    balance     NUMBER(10, 2)
);

-- Sample Data
INSERT INTO accounts VALUES (1, 5000);
INSERT INTO accounts VALUES (2, 3000);
