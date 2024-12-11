-- insert data to Department
INSERT INTO Department (dep_ID, d_name, dep_location) VALUES
('DEP001', 'Computing', 'Building A');

INSERT INTO Department (dep_ID, d_name, dep_location) VALUES
('DEP002', 'Business', 'Building B');

INSERT INTO Department (dep_ID, d_name, dep_location) VALUES
('DEP003', 'Engineering', 'Building C');

INSERT INTO Department (dep_ID, d_name, dep_location) VALUES
('DEP004', 'Law', 'Building D');

INSERT INTO Department (dep_ID, d_name, dep_location) VALUES
('DEP005', 'Hotel management', 'Building E');


-- insert data to Membership
INSERT INTO Membership (mem_ID, mem_type, reservation_limit, borrow_limit) VALUES
('M00001', 'Student', 3, 3);

INSERT INTO Membership (mem_ID, mem_type, reservation_limit, borrow_limit) VALUES
('M00002', 'Assistant Lecturer', 5, 5);

INSERT INTO Membership (mem_ID, mem_type, reservation_limit, borrow_limit) VALUES
('M00003', 'Alumni', 5, 5);

INSERT INTO Membership (mem_ID, mem_type, reservation_limit, borrow_limit) VALUES
('M00004', 'LIC', 6, 6);

INSERT INTO Membership (mem_ID, mem_type, reservation_limit, borrow_limit) VALUES
('M00005', 'Lecturer', 5, 5);


-- insert data to Reg_user
INSERT INTO Reg_user (user_ID, mem_ID, f_name, l_name, email, password, DOB, NIC) VALUES
('IT3701', 'M00001', 'Sanduni', 'Rajapaksha', 'sanduni1@gmai.com', 'tkkTsx9202HDGT@$ffg', '2003-02-15', '200356104307');

INSERT INTO Reg_user (user_ID, mem_ID, f_name, l_name, email, password, DOB, NIC) VALUES
('IT7062', 'M00001', 'Krishna', 'Silva', 'krish111@gmai.com', 'krtFn$389fVggjt573%*9fjdjs', '2000-08-10', '200034600121');

INSERT INTO Reg_user (user_ID, mem_ID, f_name, l_name, email, password, DOB, NIC) VALUES
('L90701', 'M00002', 'Samanthi', 'Lokuvithana', 'samanthi88@gmai.com', 'lxct%2SL!!99ghl547', '1998-02-15', '981234567V');

INSERT INTO Reg_user (user_ID, mem_ID, f_name, l_name, email, password, DOB, NIC) VALUES
('L07062', 'M00004', 'Aruni', 'Dissanayake', 'arunD@gmai.com', 'krtFn$389fVggjt573%*9fjdjs', '1985-08-10', '851234567V');

INSERT INTO Reg_user (user_ID, mem_ID, f_name, l_name, email, password, DOB, NIC) VALUES
('A07503', 'M00003', 'Amal', 'Danujaya', 'amaldanujaya99@gmai.com', 'jalntHcbTr@^37H3222', '1999-04-21', '992345678V');

INSERT INTO Reg_user (user_ID, mem_ID, f_name, l_name, email, password, DOB, NIC) VALUES
('EN8054', 'M00001', 'Kaveesha', 'Gimhani', 'kaveeshagimhani2003@gmai.com', 'npnfb6D912J%3W8$', '2002-12-11', '200259266102');

INSERT INTO Reg_user (user_ID, mem_ID, f_name, l_name, email, password, DOB, NIC) VALUES
('BM7503', 'M00001', 'Nadun', 'Jayasinghe', 'Nadun.j@gmai.com', 'securePass!123', '1999-06-15', '990123456V');

INSERT INTO Reg_user (user_ID, mem_ID, f_name, l_name, email, password, DOB, NIC) VALUES
('HM0701', 'M00001', 'Jane', 'Dias', 'jane.dias@gmai.com', 'myPass@2024', '1999-09-20', '990145456V');

INSERT INTO Reg_user (user_ID, mem_ID, f_name, l_name, email, password, DOB, NIC) VALUES
('L77503', 'M00002', 'Nimal', 'Perera', 'nimal.perera@gmai.com', 'pass1234', '1988-03-12', '880123456V');

INSERT INTO Reg_user (user_ID, mem_ID, f_name, l_name, email, password, DOB, NIC) VALUES
('L94753', 'M00002', 'Anu', 'Fernando', 'anu.fernando@gmai.com', 'mysecurepass!12', '1996-05-08', '960123456V');
 

 -- insert data to Library_staff
INSERT INTO Library_staff (lib_stf_ID, f_name, l_name, position, email, password, DOB, NIC, librarian_ID) 
VALUES ('LS0101', 'Ama', 'Devindi', 'Librarian', 'Ama@gmail.com', 'daltmvWLE5832)$33', '1980-01-22', '801234567V', NULL);

INSERT INTO Library_staff (lib_stf_ID, f_name, l_name, position, email, password, DOB, NIC, librarian_ID) VALUES
('LS8902', 'Avindi', 'Abeyrathna', 'Assistant', 'Avindi@gmail.com', '4cnrj485uajGBf$@RT', '1989-07-13', '891234567V', 'LS0101');

INSERT INTO Library_staff (lib_stf_ID, f_name, l_name, position, email, password, DOB, NIC, librarian_ID) VALUES
('LS7113', 'Kaushi', 'Rathnayake', 'Assistant', 'Kaushi@gmail.com', 'cjr%38T55chv', '1995-10-05', '951234567V', 'LS0101');

INSERT INTO Library_staff (lib_stf_ID, f_name, l_name, position, email, password, DOB, NIC, librarian_ID) VALUES
('LS8734', 'Sanduni', 'Wickramasinghe', 'Technician', 'Sanduni@gmail.com', 'krj$@DHMY@%5', '1992-09-30', '921234567V', 'LS0101');

INSERT INTO Library_staff (lib_stf_ID, f_name, l_name, position, email, password, DOB, NIC, librarian_ID) VALUES
('LS1285', 'Nadun', 'Ranasinghe', 'Clerk', 'Nadun@gmail.com', 'fjr48D6djbc', '1990-03-25', '901234567V', 'LS0101');

 
 -- insert data to Donator
INSERT INTO Donator (donator_ID, f_name, l_name, NIC, email, gender) VALUES
('D73501', 'Kavindu', 'Weerasinghe', '861234567V', 'Kavindu58@gmail.com', 'Male');

INSERT INTO Donator (donator_ID, f_name, l_name, NIC, email, gender) VALUES
('D88502', 'Dineth', 'Rathnayake', '981234567V', 'DinethR7@gmail.com', 'Male');

INSERT INTO Donator (donator_ID, f_name, l_name, NIC, email, gender) VALUES
('D82473', 'Pasindu', 'Mendis', '951234567V', 'PasinduM23@gmail.com', 'Male');

INSERT INTO Donator (donator_ID, f_name, l_name, NIC, email, gender) VALUES
('D91634', 'Heshani', 'vithanage', '771234567V', 'HeshaniV2097@gmail.com', 'Female');

INSERT INTO Donator (donator_ID, f_name, l_name, NIC, email, gender) VALUES
('DO9205', 'Kaveesha', 'Devinda', '921234567V', 'Kaveesha23@gmail.com', 'Male');

-- insert data to Item
INSERT INTO Item (item_ID, title) VALUES
('B90001', 'Learning SQL');

INSERT INTO Item (item_ID, title) VALUES
('B40002','Business statistics');

INSERT INTO Item (item_ID, title) VALUES
('B40503','Network Security Essentials');

INSERT INTO Item (item_ID, title) VALUES
('B10604', 'Linear Algebra');

INSERT INTO Item (item_ID, title) VALUES
('B00005', 'Hospitality and Tourism ');

INSERT INTO Item (item_ID, title) VALUES
('D75906', 'Introduction to Cybersecurity');

INSERT INTO Item (item_ID, title) VALUES
('D00007', 'Hotel Management Essential');


INSERT INTO Item (item_ID, title) VALUES
('J84908', 'Hospitality & Tourism Research');

INSERT INTO Item (item_ID, title) VALUES
('J25309', 'Journal of Network Security');

INSERT INTO Item (item_ID, title) VALUES
('J70010', 'Journal of Business Analytics');

INSERT INTO Item (item_ID, title) VALUES
('J80101', 'Applied Linear Algebra');

INSERT INTO Item (item_ID, title) VALUES
('D50694', 'SQL for Data Analysis');

INSERT INTO Item (item_ID, title) VALUES
('D90756', 'Introduction to Algebra Video');

INSERT INTO Item (item_ID, title) VALUES
('D80555', 'Business Statistics Course');

INSERT INTO Item (item_ID, title) VALUES
('J58282', 'Computational Mathematics');

-- insert data to Book
INSERT INTO Book (item_ID, ISBM, author, genre) VALUES
('B90001', '123456', 'Alan Beaulieu', 'Computing');

INSERT INTO Book (item_ID, ISBM, author, genre) VALUES
('B40002', '654321', 'George Orwell', 'Business');

INSERT INTO Book (item_ID, ISBM, author, genre) VALUES
('B40503', '789012', 'William Stallings', 'Technology');

INSERT INTO Book (item_ID, ISBM, author, genre) VALUES
('B10604', '890123', 'David Lay', 'Mathematics');

INSERT INTO Book (item_ID, ISBM, author, genre) VALUES
('B00005', '345678', 'Harper Lee', 'Hospitality');

-- insert data to Journal
INSERT INTO Journal (item_ID, ISSN, volume, issue) VALUES
('J84908', '112233', 'Vol. 10', 'Issue 2');

INSERT INTO Journal (item_ID, ISSN, volume, issue) VALUES
('J25309', '223344', 'Vol. 5', 'Issue 1');

INSERT INTO Journal (item_ID, ISSN, volume, issue) VALUES
('J70010', '334455', 'Vol. 3', 'Issue 4');

INSERT INTO Journal (item_ID, ISSN, volume, issue) VALUES
('J80101', '337455', 'Vol. 3', 'Issue 4');

INSERT INTO Journal (item_ID, ISSN, volume, issue) VALUES
('J58282', '445566', 'Vol. 7', 'Issue 3');

-- insert data to Digital_media
INSERT INTO Digital_media (item_ID, DMID, format, size) VALUES
('D75906', 'DM001', 'MP4', '10GB');

INSERT INTO Digital_media (item_ID, DMID, format, size) VALUES
('D00007', 'DM002', 'MP4', '8GB');

INSERT INTO Digital_media (item_ID, DMID, format, size) VALUES
('D50694', 'DM003', 'MP4', '2600MB');

INSERT INTO Digital_media (item_ID, DMID, format, size) VALUES
('D90756', 'DM004', 'MP3', '900MB');

INSERT INTO Digital_media (item_ID, DMID, format, size) VALUES
('D80555', 'DM005', 'AVI', '700MB');

-- insert data to Copy
INSERT INTO Copy (copy_ID, item_ID, condition, copy_location) VALUES
('C87501', 'J58282', 'New', 'IEE xplore');

INSERT INTO Copy (copy_ID, item_ID, condition, copy_location) VALUES
('C39662', 'D75906', 'New', 'One drive');

INSERT INTO Copy (copy_ID, item_ID, condition, copy_location) VALUES
('C92563', 'B90001', 'New', 'Shelf C');

INSERT INTO Copy (copy_ID, item_ID, condition, copy_location) VALUES
('C84154', 'J80101', 'New', 'IEE xplore');

INSERT INTO Copy (copy_ID, item_ID, condition, copy_location) VALUES
('C93575', 'B40002', 'Damaged', 'Shelf E');

-- insert data to Item_borrow
INSERT INTO Item_borrow (user_ID, item_ID) VALUES
('IT3701', 'J70010');

INSERT INTO Item_borrow (user_ID, item_ID) VALUES
('L90701', 'B10604');

INSERT INTO Item_borrow (user_ID, item_ID) VALUES
('L07062', 'D80555');

INSERT INTO Item_borrow (user_ID, item_ID) VALUES
('A07503', 'B10604');

INSERT INTO Item_borrow (user_ID, item_ID) VALUES
('EN8054', 'J84908');

-- insert data to Borrow_transaction
INSERT INTO Borrow_transaction (transaction_ID, item_ID, user_ID, borrow_date) VALUES
('T73451', 'B90001', 'IT3701', '2024-09-01');

INSERT INTO Borrow_transaction (transaction_ID, item_ID, user_ID, borrow_date) VALUES
('T08302', 'B40002', 'L90701', '2024-10-05');

INSERT INTO Borrow_transaction (transaction_ID, item_ID, user_ID, borrow_date) VALUES
('T86323', 'B40503', 'L07062', '2024-05-07');

INSERT INTO Borrow_transaction (transaction_ID, item_ID, user_ID, borrow_date) VALUES
('T94254', 'J25309', 'A07503', '2024-06-10');

INSERT INTO Borrow_transaction (transaction_ID, item_ID, user_ID, borrow_date) VALUES
('T00225', 'B10604', 'EN8054', '2024-03-12');

-- insert data to Fine
INSERT INTO Fine (transaction_ID, fine_ID, f_description, oneday_fee, delay_period, lib_stf_ID) VALUES
('T73451', 'F58371', 'Late return', 100.00,4, 'LS8902');

INSERT INTO Fine (transaction_ID, fine_ID, f_description, amount, lib_stf_ID) VALUES
('T08302', 'F48552', 'Book damaged',5500.00, 'LS7113');

INSERT INTO Fine (transaction_ID, fine_ID, f_description, amount, lib_stf_ID) VALUES
('T86323', 'F39453', 'Lost item',10000.00, 'LS0101');

INSERT INTO Fine (transaction_ID, fine_ID, f_description, oneday_fee, delay_period, lib_stf_ID) VALUES
('T08302', 'F48592', 'Late return', 100.00,5,'LS7113');

INSERT INTO Fine (transaction_ID, fine_ID, f_description, amount, lib_stf_ID) VALUES
('T00225', 'F55555', 'Missing page',1500.00, 'LS8902');

-- insert data to User_fine
INSERT INTO User_fine (user_ID, fine_ID) VALUES
('IT3701', 'F58371');

INSERT INTO User_fine (user_ID, fine_ID) VALUES
('L90701', 'F48552');

INSERT INTO User_fine (user_ID, fine_ID) VALUES
('L07062', 'F39453');

INSERT INTO User_fine (user_ID, fine_ID) VALUES
('A07503', 'F48592');

INSERT INTO User_fine (user_ID, fine_ID) VALUES
('EN8054', 'F55555');

-- insert data to User_phone
INSERT INTO User_phone (user_ID, phone) VALUES
('IT3701', '0711234567');

INSERT INTO User_phone (user_ID, phone) VALUES
('L90701', '0721234567');

INSERT INTO User_phone (user_ID, phone) VALUES
('L07062', '0777654321');

INSERT INTO User_phone (user_ID, phone) VALUES
('A07503', '0769988777');

INSERT INTO User_phone (user_ID, phone) VALUES
('EN8054', '0701122334');

-- insert data to User_item
INSERT INTO User_item (item_ID, user_ID, reservation_date) VALUES
('B10604', 'IT3701', '2024-10-01');

INSERT INTO User_item (item_ID, user_ID, reservation_date) VALUES
('D75906', 'L90701', '2024-09-20');

INSERT INTO User_item (item_ID, user_ID, reservation_date) VALUES
('J70010', 'L07062', '2024-08-15');

INSERT INTO User_item (item_ID, user_ID, reservation_date) VALUES
('B40503', 'A07503', '2024-07-10');

INSERT INTO User_item (item_ID, user_ID, reservation_date) VALUES
('D00007', 'EN8054', '2024-06-25');

-- insert data to feedback
INSERT INTO feedback (feedback_ID, user_ID, description, rating, date) VALUES
('FB001', 'IT3701', 'Excellent service', '5', '2024-10-10');

INSERT INTO feedback (feedback_ID, user_ID, description, rating, date) VALUES
('FB002', 'L90701', 'Good collection of books', '4', '2024-09-15');

INSERT INTO feedback (feedback_ID, user_ID, description, rating, date) VALUES
('FB003', 'L07062', 'Helpful staff', '5', '2024-08-20');

INSERT INTO feedback (feedback_ID, user_ID, description, rating, date) VALUES
('FB004', 'A07503', 'More digital media needed', '3', '2024-07-18');

INSERT INTO feedback (feedback_ID, user_ID, description, rating, date) VALUES
('FB005', 'EN8054', 'Satisfactory experience', '4', '2024-06-12');

-- insert data to student
INSERT INTO student (user_ID, year, major) VALUES
('IT3701', '3', 'Information Technology');

INSERT INTO student (user_ID, year, major) VALUES
('EN8054', '4', 'Engineering');

INSERT INTO student (user_ID, year, major) VALUES
('BM7503', '2', 'Business');

INSERT INTO student (user_ID, year, major) VALUES
('HM0701', '1', 'Hotel Management');

INSERT INTO student (user_ID, year, major) VALUES
('IT7062', '3', 'Information Technology');

-- insert data to Faculty_member
INSERT INTO Faculty_member (user_ID, Dep_ID, title) VALUES
('L90701', 'DEP004', 'SE lecturer');

INSERT INTO Faculty_member (user_ID, Dep_ID, title) VALUES
('L07062', 'DEP003', 'CS Lecturer');

INSERT INTO Faculty_member (user_ID, Dep_ID, title) VALUES
('BM7503', 'DEP002', 'Management');

INSERT INTO Faculty_member (user_ID, Dep_ID, title) VALUES
('IT3701', 'DEP001', 'Netrowking');

INSERT INTO Faculty_member (user_ID, Dep_ID, title) VALUES
('HM0701', 'DEP005', 'Cookery');

-- insert data to Staff
INSERT INTO Staff (user_ID, office, position) VALUES
('L90701', 'Office A', 'Lecturer');

INSERT INTO Staff (user_ID, office, position) VALUES
('L07062', 'Office B', 'Assistant Lecturer');

INSERT INTO Staff (user_ID, office, position) VALUES
('A07503', 'Office C', 'Technician');

INSERT INTO Staff (user_ID, office, position) VALUES
('L77503', 'Office C', 'LIC');

INSERT INTO Staff (user_ID, office, position) VALUES
('L94753', 'Office C', 'Lecturer');

-- insert data to donator_phone
INSERT INTO donator_phone (donator_ID, phone) VALUES
('D73501', '0719876543');

INSERT INTO donator_phone (donator_ID, phone) VALUES
('D88502', '0771234567');

INSERT INTO donator_phone (donator_ID, phone) VALUES
('D82473', '0757654321');

INSERT INTO donator_phone (donator_ID, phone) VALUES
('D91634', '0723456789');

INSERT INTO donator_phone (donator_ID, phone) VALUES
('DO9205', '0719988776');

-- insert data to Review
INSERT INTO Review (review_ID, topic, r_description, rating, user_ID) VALUES
('R02301', 'SQL Book', 'Very informative', '5', 'IT3701');

INSERT INTO Review (review_ID, topic, r_description, rating, user_ID) VALUES
('R00672', 'Business Journal', 'Well written', '4', 'L90701');

INSERT INTO Review (review_ID, topic, r_description, rating, user_ID) VALUES
('R03043', 'Network Security', 'Needs more detail', '3', 'L07062');

INSERT INTO Review (review_ID, topic, r_description, rating, user_ID) VALUES
('R02034', 'Hospitality Video', 'Engaging content', '4', 'A07503');

INSERT INTO Review (review_ID, topic, r_description, rating, user_ID) VALUES
('R07545', 'Linear Algebra', 'Highly recommended', '5', 'EN8054');

-- insert data to Item_review
INSERT INTO Item_review (review_ID, item_ID) VALUES
('R02301', 'B90001');

INSERT INTO Item_review (review_ID, item_ID) VALUES
('R00672', 'J70010');

INSERT INTO Item_review (review_ID, item_ID) VALUES
('R03043', 'B40503');

INSERT INTO Item_review (review_ID, item_ID) VALUES
('R02034', 'D00007');

INSERT INTO Item_review (review_ID, item_ID) VALUES
('R07545', 'D75906');

-- insert data to Loan_extension
INSERT INTO Loan_extension (loan_extension_ID, transaction_ID, new_due_date, extension_reason) VALUES
('LE001', 'T73451', '2024-09-15', 'Research purpose');

INSERT INTO Loan_extension (loan_extension_ID, transaction_ID, new_due_date, extension_reason) VALUES
('LE002', 'T08302', '2024-10-19', 'Additional reading');

INSERT INTO Loan_extension (loan_extension_ID, transaction_ID, new_due_date, extension_reason) VALUES
('LE004', 'T00225', '2024-10-28', 'Additional reading');

INSERT INTO Loan_extension (loan_extension_ID, transaction_ID, new_due_date, extension_reason) VALUES
('LE005', 'T94254', '2024-10-20', 'Additional reading');

INSERT INTO Loan_extension (loan_extension_ID, transaction_ID, new_due_date, extension_reason) VALUES
('LE003', 'T86323', '2024-06-22', 'Delayed report submission');


-- insert data to lib_staff_user
INSERT INTO lib_staff_user (user_ID, lib_stf_ID) VALUES
('IT3701', 'LS0101');

INSERT INTO lib_staff_user (user_ID, lib_stf_ID) VALUES
('L90701', 'LS0101');

INSERT INTO lib_staff_user (user_ID, lib_stf_ID) VALUES
('L07062', 'LS0101');

INSERT INTO lib_staff_user (user_ID, lib_stf_ID) VALUES
('A07503', 'LS7113');

INSERT INTO lib_staff_user (user_ID, lib_stf_ID) VALUES
('EN8054', 'LS8902');


-- insert data to Request
INSERT INTO Request (req_ID, user_ID, lib_stf_ID, req_topic, req_description, status) VALUES 
('REQ004', 'A07503', 'LS8734', 'E-books', 'Need access to e-book collection', 'Pending');

INSERT INTO Request (req_ID, user_ID, lib_stf_ID, req_topic, req_description, status) VALUES 
('REQ005', 'EN8054', 'LS7113', 'New Journals', 'Request for latest engineering journals', 'Approved');

INSERT INTO Request (req_ID, user_ID, lib_stf_ID, req_topic, req_description, status) VALUES 
('REQ006', 'IT3701', 'LS0101', 'Turntin', 'Request to get access for Turntin', 'Pending');

INSERT INTO Request (req_ID, user_ID, lib_stf_ID, req_topic, req_description, status) VALUES 
('REQ007', 'L07062', 'LS8902', 'System Issue', 'Issue with digital media access', 'Resolved');

INSERT INTO Request (req_ID, user_ID, lib_stf_ID, req_topic, req_description, status) VALUES 
('REQ008', 'L90701', 'LS8734', 'System Issue', 'Cannot access for Turntin', 'Approved');

-- insert data to Lib_staff_item
INSERT INTO Lib_staff_item (item_ID, lib_stf_ID) VALUES
('J25309', 'LS8734');

INSERT INTO Lib_staff_item (item_ID, lib_stf_ID) VALUES
('D00007', 'LS7113');

INSERT INTO Lib_staff_item (item_ID, lib_stf_ID) VALUES
('B40002', 'LS0101');

INSERT INTO Lib_staff_item (item_ID, lib_stf_ID) VALUES
('J84908', 'LS8902');

INSERT INTO Lib_staff_item (item_ID, lib_stf_ID) VALUES
('B40503', 'LS1285');

-- insert data to Lib_stf_phone
INSERT INTO Lib_stf_phone (lib_stf_ID, phone) VALUES
('LS8734', '0719988776');

INSERT INTO Lib_stf_phone (lib_stf_ID, phone) VALUES
('LS1285', '0705544332');

INSERT INTO Lib_stf_phone (lib_stf_ID, phone) VALUES
('LS7113', '0765544321');

INSERT INTO Lib_stf_phone (lib_stf_ID, phone) VALUES
('LS8902', '0714455667');

INSERT INTO Lib_stf_phone (lib_stf_ID, phone) VALUES
('LS0101', '0722233445');

-- insert data to Item_donator
INSERT INTO Item_donator (donator_ID, item_ID) VALUES
('D91634', 'B10604');

INSERT INTO Item_donator (donator_ID, item_ID) VALUES
('D73501', 'J58282');

INSERT INTO Item_donator (donator_ID, item_ID) VALUES
('D88502', 'D90756');

INSERT INTO Item_donator (donator_ID, item_ID) VALUES
('DO9205', 'J84908');

INSERT INTO Item_donator (donator_ID, item_ID) VALUES
('D82473', 'B40002');



