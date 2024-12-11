-- Create index on item_ID in Item_borrow table
CREATE INDEX idx_item_borrow_ID ON Item_borrow(item_ID);

-- Create index on user_ID in Fine table
CREATE INDEX idx_fine_userID ON Fine(transaction_ID)