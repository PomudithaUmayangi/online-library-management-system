CREATE PROCEDURE [dbo].[outStandingFine]
    @user_ID CHAR(6)
AS
BEGIN
	
	SELECT  f.fine_ID, f.f_description, f.amount, f.delay_period
    FROM User_fine uf
    JOIN Fine f ON uf.fine_ID = f.fine_ID
    WHERE uf.user_ID = @user_ID;
   
END;