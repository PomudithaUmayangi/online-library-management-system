-- create Department table
CREATE TABLE Department (
	dep_ID CHAR(6) NOT NULL,
	d_name VARCHAR(30) NOT NULL,
	dep_location VARCHAR(30) NOT NULL,

	CONSTRAINT Department_PK PRIMARY KEY (dep_ID)
);

--create Membership table
CREATE TABLE Membership (
	mem_ID CHAR(6) NOT NULL,
	mem_type VARCHAR(20) NOT NULL,
	reservation_limit INT NOT NULL,
	borrow_limit INT NOT NULL,

	CONSTRAINT Membership_PK PRIMARY KEY (mem_ID)
);
--create Reg_user table
CREATE TABLE Reg_user (
    user_ID CHAR(6) NOT NULL,
    mem_ID CHAR(6) NOT NULL,
    f_name VARCHAR(30) NOT NULL,
    l_name VARCHAR(30) NOT NULL,
    email VARCHAR(60) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL, --allows to store hashed passwords
    DOB date NOT NULL,
    NIC VARCHAR(12) UNIQUE NOT NULL,

    CONSTRAINT User_pk PRIMARY KEY (user_ID),
    CONSTRAINT UserMemID_fk FOREIGN KEY (mem_ID) REFERENCES Membership(mem_ID)
);

--create Library_staff table
CREATE TABLE Library_staff (
    lib_stf_ID CHAR(6) NOT NULL,
    f_name VARCHAR(30) NOT NULL,
    l_name VARCHAR(30) NOT NULL,
    position VARCHAR(20) NOT NULL,
    email VARCHAR(60) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL, --allows to store hashed passwords
    DOB date NOT NULL,
    NIC VARCHAR(12) UNIQUE NOT NULL,
    librarian_ID CHAR(6),  -- Recursive foreign key to link a supervisor (can be NULL if no supervisor)
    
    CONSTRAINT Library_staff_pk PRIMARY KEY (lib_stf_ID),
    CONSTRAINT Library_staff_librarian_fk FOREIGN KEY (librarian_ID) REFERENCES Library_staff(lib_stf_ID) 
);

-- Donator table
CREATE TABLE Donator (
    donator_ID CHAR(6) NOT NULL,
    f_name VARCHAR(30) NOT NULL,
    l_name VARCHAR(20) NOT NULL,
    NIC VARCHAR(12) UNIQUE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
	gender VARCHAR(10) NOT NULL,
    
    CONSTRAINT PK_Donator PRIMARY KEY (donator_ID)
	
);

--create Item table
CREATE TABLE Item (
    item_ID CHAR(6) NOT NULL,
    title VARCHAR(30) NOT NULL,

    CONSTRAINT Item_pk PRIMARY KEY (item_ID)
);

--create Book table
CREATE TABLE Book (
	item_ID CHAR(6) NOT NULL,
    ISBM CHAR(6) UNIQUE NOT NULL,
    author VARCHAR(30) NOT NULL,
    genre VARCHAR(30) NOT NULL,

    CONSTRAINT Book_pk PRIMARY KEY (item_ID),
	CONSTRAINT Book_FK FOREIGN KEY (item_ID) REFERENCES Item (item_ID)
);

--create Journal table
CREATE TABLE Journal (
	item_ID CHAR(6) NOT NULL,
    ISSN CHAR(6) UNIQUE NOT NULL,
    volume VARCHAR(30) NOT NULL,
    issue VARCHAR(50) NOT NULL,

    CONSTRAINT Journal_pk PRIMARY KEY (item_ID),
	CONSTRAINT Journal_FK FOREIGN KEY (item_ID) REFERENCES Item (item_ID)
);

-- Digital_media table
CREATE TABLE Digital_media (
	item_ID CHAR(6) NOT NULL,
    DMID CHAR(6) UNIQUE NOT NULL,
    format VARCHAR(30) NOT NULL,
    size VARCHAR(10) NOT NULL,
    
    CONSTRAINT PK_Digital_media PRIMARY KEY (item_ID),
	CONSTRAINT Digital_media_FK FOREIGN KEY (item_ID) REFERENCES Item (item_ID)
);

-- CREATE Copy table
CREATE TABLE Copy 
(
    copy_ID char (6) NOT NULL,
    item_ID char(6) NOT NULL,
    condition varchar(30) NOT NULL,
    copy_location varchar(20) NOT NULL,
    
    CONSTRAINT Copy_PK PRIMARY KEY (item_ID,copy_ID),
    CONSTRAINT Copy_FK FOREIGN KEY (item_ID) REFERENCES Item (item_ID)

);
--create Item_borrow table
CREATE TABLE Item_borrow (
    user_ID CHAR(6) NOT NULL,
    item_ID CHAR(6) NOT NULL,

    CONSTRAINT Item_borrow_pk PRIMARY KEY (user_ID, item_ID),
    CONSTRAINT Item_borrowUserID_fk FOREIGN KEY (user_ID) REFERENCES Reg_user(user_ID),
    CONSTRAINT Item_borrowItemID_fk FOREIGN KEY (item_ID) REFERENCES Item(item_ID) 
);


-- Borrow_transaction table
CREATE TABLE Borrow_transaction (
    transaction_ID CHAR(6) NOT NULL,
    item_ID CHAR(6) NOT NULL,
    user_ID CHAR(6) NOT NULL,
    borrow_date DATE DEFAULT GETDATE() NOT NULL,
    return_date DATE NULL,
    
    CONSTRAINT PK_Transaction PRIMARY KEY (transaction_ID),
    CONSTRAINT TransactionUser_ID_FK FOREIGN KEY (user_ID) REFERENCES Reg_user (user_ID),
    CONSTRAINT TransactionItem_ID_FK FOREIGN KEY (item_ID) REFERENCES Item (item_ID)
);

--create fine table
CREATE TABLE Fine (
	 transaction_ID CHAR(6) NOT NULL,
	 fine_ID CHAR (6) NOT NULL,
	 f_description VARCHAR(50) NOT NULL,
	 oneday_fee MONEY,
	 delay_period INT, 
	 amount MONEY,
	 lib_stf_ID CHAR(6) NOT NULL,

	 CONSTRAINT Fine_PK PRIMARY KEY (transaction_ID,fine_ID),
	 CONSTRAINT FineTransactionID_FK FOREIGN KEY (transaction_ID) REFERENCES Borrow_transaction(transaction_ID),
	 CONSTRAINT FineLib_stf_ID_FK FOREIGN KEY (lib_stf_ID) REFERENCES Library_staff(lib_stf_ID),
	 CONSTRAINT Fine_fine_ID_UNIQUE UNIQUE (fine_ID)
);

--create User_fine table
CREATE TABLE User_fine (
    user_ID CHAR(6) NOT NULL,
    fine_ID CHAR(6) NOT NULL,

    CONSTRAINT User_fine_pk PRIMARY KEY (user_ID, fine_ID),
    CONSTRAINT User_fineUserID_fk FOREIGN KEY (user_ID) REFERENCES Reg_user(user_ID) ,
    CONSTRAINT User_fineFineID_fk FOREIGN KEY (fine_ID) REFERENCES Fine(fine_ID)
);

--create User_phone table
CREATE TABLE User_phone (
    user_ID CHAR(6) NOT NULL,
    phone CHAR(10) NOT NULL,

    CONSTRAINT User_phone_pk PRIMARY KEY (user_ID, phone),
    CONSTRAINT User_phoneUserID_fk FOREIGN KEY (user_ID) REFERENCES Reg_user(user_ID)

);

--create reserves table
CREATE TABLE User_item (
    item_ID CHAR(6) NOT NULL,
    user_ID CHAR(6) NOT NULL,
    reservation_date DATE NOT NULL,

    CONSTRAINT User_item_pk PRIMARY KEY (item_ID, user_ID),
    CONSTRAINT User_itemItemID_fk FOREIGN KEY (item_ID) REFERENCES Item(item_ID),
    CONSTRAINT User_itemUserID_fk FOREIGN KEY (user_ID) REFERENCES Reg_user(user_ID)
);

--create feedback table
CREATE TABLE feedback (
    feedback_ID CHAR(6) NOT NULL,
    user_ID CHAR(6) NOT NULL,
    description VARCHAR(50) NOT NULL,
    rating CHAR(1) CHECK (rating IN ('1', '2', '3', '4','5')) NOT NULL,
    date DATE NOT NULL,

    CONSTRAINT feedback_pk PRIMARY KEY (feedback_ID),
    CONSTRAINT feedbackUserID_fk FOREIGN KEY (user_ID) REFERENCES Reg_user(user_ID) 
);

--create student table
CREATE TABLE student (
    user_ID CHAR(6) NOT NULL,
    year CHAR(1) CHECK (year IN ('1', '2', '3', '4')) NOT NULL,
    major VARCHAR(30) NOT NULL,

    CONSTRAINT student_pk PRIMARY KEY (user_ID),
    CONSTRAINT studentUserID_fk FOREIGN KEY (user_ID) REFERENCES Reg_user(user_ID)
);

-- Faculty_member table
CREATE TABLE Faculty_member(
    user_ID CHAR(6) NOT NULL,
    Dep_ID CHAR(6) NOT NULL,
    title VARCHAR(20) NOT NULL,
    
    CONSTRAINT PK_Faculty_member PRIMARY KEY (user_ID),
	CONSTRAINT Faculty_memberuser_ID_FK FOREIGN KEY(user_ID) REFERENCES Reg_user(user_ID),
	CONSTRAINT Faculty_memberDep_ID_FK FOREIGN KEY(Dep_ID) REFERENCES Department(Dep_ID)
);

-- Staff table
CREATE TABLE Staff (
    user_ID char(6) NOT NULL,
    office varchar(20) NOT NULL,
    position varchar(20) NOT NULL,
    
    CONSTRAINT Staff_PK PRIMARY KEY (user_ID),
    CONSTRAINT Staff_FK FOREIGN KEY (user_ID) REFERENCES Reg_user (user_ID)

);

--create donator_phone table
CREATE TABLE donator_phone (
    donator_ID CHAR(6) NOT NULL,
    phone CHAR(10) NOT NULL,

    CONSTRAINT donator_phone_pk PRIMARY KEY (donator_ID, phone),
    CONSTRAINT donator_phoneDonator_ID_FK FOREIGN KEY (donator_ID) REFERENCES Donator (donator_ID)
);

--create Review table
CREATE TABLE Review (
	review_ID CHAR(6) NOT NULL,
	topic VARCHAR(30) NOT NULL,
	r_description VARCHAR(70) NOT NULL,
	rating CHAR(1) CHECK (rating IN ('1', '2', '3', '4','5')) NOT NULL,
	user_ID CHAR(6) NOT NULL,

	CONSTRAINT Review_PK PRIMARY KEY (review_ID),
	CONSTRAINT reviewUser_ID FOREIGN KEY (user_ID) REFERENCES Reg_user(user_ID)
);

-- Item_review table
CREATE TABLE Item_review
(
    review_ID char (6) NOT NULL,
    item_ID char(6) NOT NULL,
    
    CONSTRAINT Item_review_PK PRIMARY KEY (review_ID,item_ID),
    CONSTRAINT Item_review_review_ID_FK FOREIGN KEY (review_ID) REFERENCES Review (review_ID),
    CONSTRAINT Item_review_item_ID_FK FOREIGN KEY (item_ID) REFERENCES Item (item_ID)

);

-- Loan_extension table
CREATE TABLE Loan_extension
(
    loan_extension_ID char (6) NOT NULL,
    transaction_ID char (6) NOT NULL,
    new_due_date date NOT NULL,
    extension_reason varchar (50) NOT NULL,
    
    CONSTRAINT Loan_extension_PK PRIMARY KEY (loan_extension_ID),
    CONSTRAINT Loan_extension_FK FOREIGN KEY (transaction_ID) REFERENCES Borrow_transaction (transaction_ID)

);

-- lib_staff_user table
CREATE TABLE lib_staff_user (
    user_ID CHAR(6) NOT NULL,
    lib_stf_ID CHAR(6) NOT NULL,
    
    CONSTRAINT PK_lib_staff_user PRIMARY KEY (lib_stf_ID, user_ID),
	CONSTRAINT lib_staff_user_ID_fk FOREIGN KEY(user_ID) REFERENCES Reg_user(user_ID),
	CONSTRAINT lib_staff_userlib_stf_ID_FK FOREIGN KEY(lib_stf_ID) REFERENCES Library_staff(lib_stf_ID)
	
);

-- Request table
CREATE TABLE Request (
    req_ID CHAR(6) NOT NULL,
    user_ID CHAR(6) NOT NULL,
    lib_stf_ID CHAR(6) NOT NULL,
    req_topic VARCHAR(30) NOT NULL,
    req_description VARCHAR(50) NOT NULL,
    status VARCHAR(10) NOT NULL,
    
    CONSTRAINT PK_Request PRIMARY KEY (req_ID),
	CONSTRAINT RequestUser_ID_FK FOREIGN KEY(user_ID) REFERENCES Reg_user(user_ID),
	CONSTRAINT RequestLib_stf_ID_FK FOREIGN KEY(lib_stf_ID) REFERENCES Library_staff(lib_stf_ID)
	
);


--create Lib_staff_item table
CREATE TABLE Lib_staff_item
(
    item_ID char (6) NOT NULL,
    lib_stf_ID char(6) NOT NULL,
    
    CONSTRAINT Lib_staff_item_PK PRIMARY KEY (item_ID,lib_stf_ID),
    CONSTRAINT Lib_staff_item_ID_FK FOREIGN KEY (item_ID) REFERENCES Item (item_ID),
    CONSTRAINT Lib_staff_item_lib_stf_ID_FK FOREIGN KEY (lib_stf_ID) REFERENCES Library_staff (lib_stf_ID)

);

--create Lib_stf_phone table
CREATE TABLE Lib_stf_phone (
	lib_stf_ID CHAR(6) NOT NULL,
	phone VARCHAR(10) NOT NULL,

	CONSTRAINT Lib_stf_phone_PK PRIMARY KEY (lib_stf_ID,phone),
	CONSTRAINT Lib_stf_phoneLib_stf_ID_FK FOREIGN KEY (lib_stf_ID) REFERENCES Library_staff (lib_stf_ID)
);

--create Item_donator table
CREATE TABLE Item_donator (
    donator_ID CHAR(6) NOT NULL,
    item_ID char(6) NOT NULL,
   
    CONSTRAINT Item_donator_PK PRIMARY KEY (item_ID,donator_ID),
    CONSTRAINT Item_donatorItem_ID_FK FOREIGN KEY (item_ID) REFERENCES Item (item_ID),
	CONSTRAINT Item_donatorDonator_ID_FK FOREIGN KEY (donator_ID) REFERENCES Donator (donator_ID)

);