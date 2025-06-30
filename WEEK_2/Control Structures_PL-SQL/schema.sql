-- Schema for Customers and Loans tables

CREATE TABLE customers (
    customer_id     NUMBER PRIMARY KEY,
    name            VARCHAR2(100),
    dob             DATE,
    balance         NUMBER(10, 2),
    isvip           VARCHAR2(5) DEFAULT 'FALSE'
);

CREATE TABLE loans (
    loan_id         NUMBER PRIMARY KEY,
    customer_id     NUMBER,
    interest_rate   NUMBER(5, 2),
    due_date        DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Sample data
INSERT INTO customers VALUES (1, 'Alice', TO_DATE('1955-01-01', 'YYYY-MM-DD'), 12000, 'FALSE');
INSERT INTO customers VALUES (2, 'Bob', TO_DATE('1980-03-10', 'YYYY-MM-DD'), 9500, 'FALSE');
INSERT INTO customers VALUES (3, 'Charlie', TO_DATE('1950-04-10', 'YYYY-MM-DD'), 15000, 'FALSE');
INSERT INTO customers VALUES (4, 'Diana', TO_DATE('1993-11-20', 'YYYY-MM-DD'), 2000, 'FALSE');

INSERT INTO loans VALUES (101, 1, 7.5, SYSDATE + 10);
INSERT INTO loans VALUES (102, 2, 8.0, SYSDATE + 40);
INSERT INTO loans VALUES (103, 3, 6.5, SYSDATE + 25);
INSERT INTO loans VALUES (104, 4, 9.0, SYSDATE - 5);