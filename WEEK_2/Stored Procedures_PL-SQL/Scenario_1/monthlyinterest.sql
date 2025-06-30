CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest AS
    old_balance NUMBER;
    new_balance NUMBER;
BEGIN
    FOR acc IN (SELECT account_id, balance FROM savings_accounts) LOOP
        old_balance := acc.balance;
        new_balance := acc.balance + (acc.balance * 0.01);
        
        UPDATE savings_accounts
        SET balance = new_balance
        WHERE account_id = acc.account_id;
        
        DBMS_OUTPUT.PUT_LINE('Account ' || acc.account_id || ': Old Balance = ' || old_balance || ', New Balance = ' || new_balance);
    END LOOP;
    COMMIT;
END;
