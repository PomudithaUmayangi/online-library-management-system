CREATE PROCEDURE [dbo].[getBorrowedDetails]
    @user_ID CHAR(6)
AS
BEGIN

    SELECT 
        bt.transaction_ID,
		i.item_ID,
        i.title,
        bt.borrow_date,
        bt.return_date
    FROM 
        Borrow_transaction bt
    INNER JOIN 
        Item i ON bt.item_ID = i.item_ID
    WHERE 
        bt.user_ID = @user_ID;
END;