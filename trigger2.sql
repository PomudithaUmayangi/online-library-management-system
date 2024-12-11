CREATE TRIGGER calculateFine 
ON dbo.Fine 
AFTER INSERT
AS 
BEGIN
   
    UPDATE Fine
    SET amount = f.delay_period * f.oneday_fee
    FROM Fine f
    INNER JOIN INSERTED i ON f.transaction_ID = i.transaction_ID
    WHERE i.f_description = 'late return';  
END