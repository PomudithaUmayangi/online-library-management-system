CREATE TRIGGER setReturnDate
ON dbo.Borrow_transaction
AFTER INSERT
AS
BEGIN
    DECLARE @duration INT;
    SET @duration = 7;

    UPDATE dbo.Borrow_transaction
    SET return_date = DATEADD(day, @duration, i.borrow_date)
    FROM INSERTED i
    WHERE dbo.Borrow_transaction.transaction_ID = i.transaction_ID;
END;