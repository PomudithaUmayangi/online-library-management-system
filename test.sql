select * from Borrow_transaction

select * from Reg_user

select * from User_fine

--procedure
exec outStandingFine 'IT3701'
exec getBorrowedDetails 'IT3701'

-- Create index on item_ID in Item_borrow table
CREATE INDEX idx_item_borrow_ID ON Item_borrow(item_ID);

-- Create index on user_ID in Fine table
CREATE INDEX idx_fine_userID ON Fine(transaction_ID)


--This view shows details about members who has fine

select * 
from fine_details

--This view shows the details about donated items and it's donator details

select *
from donated_items_details




