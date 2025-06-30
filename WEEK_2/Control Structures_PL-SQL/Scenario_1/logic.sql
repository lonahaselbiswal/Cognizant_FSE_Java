-- PL/SQL Block for Scenario 1
DECLARE
    customer_age NUMBER;
    old_interest_rate NUMBER;
    new_interest_rate NUMBER;
BEGIN
    FOR rec IN (
        SELECT c.customerid, c.dob, l.interestrate, l.loan_id
        FROM customers c
        JOIN loans l ON c.customerid = l.customerid
    )
    LOOP
        customer_age := TRUNC(MONTHS_BETWEEN(SYSDATE, rec.dob) / 12);
        IF customer_age > 60 THEN
            old_interest_rate := rec.interestrate;
            UPDATE loans
            SET interestrate = interestrate - (interestrate * 0.01)
            WHERE loan_id = rec.loan_id;
            SELECT interestrate INTO new_interest_rate FROM loans WHERE loan_id = rec.loan_id;
            DBMS_OUTPUT.PUT_LINE('DISCOUNT APPLIED');
            DBMS_OUTPUT.PUT_LINE('Customer ID: ' || rec.customerid ||
                                 ', Old Interest Rate: ' || old_interest_rate ||
                                 ', New Interest Rate: ' || new_interest_rate);
        END IF;
    END LOOP;
    COMMIT;
END;