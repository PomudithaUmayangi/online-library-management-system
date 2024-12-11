

--This view shows details about members who has fine

CREATE VIEW fine_details AS
SELECT uf.user_ID, f.fine_ID, f.amount
FROM User_fine uf, Fine f
WHERE uf.fine_ID = f.fine_ID;

select * 
from fine_details


--This view shows the details about donated items and it's donator details
CREATE VIEW donated_items_details AS
SELECT id.item_ID, d.donator_ID,  dp.phone
FROM Donator d, Item_donator id, donator_phone dp
WHERE d.donator_ID = id.donator_ID AND d.donator_ID = dp.donator_ID;

select *
from donated_items_details
