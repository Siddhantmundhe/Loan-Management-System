create database loan_management_system;

use loan_management_system;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email_address VARCHAR(60),
    phone_number VARCHAR(15),
    address VARCHAR(150),
    credit_score INT
);
ALTER TABLE Customer AUTO_INCREMENT=1;

CREATE TABLE Loan (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) on DELETE CASCADE,
    principal_amount Decimal(10, 2),
    interest_rate INT,
    loan_term INT,
    loan_type VARCHAR(20),
    loan_status VARCHAR(20)    
);
ALTER TABLE Loan AUTO_INCREMENT=101;

INSERT INTO Customer (name, email_address, phone_number, address, credit_score) VALUES
	('Amit Kumar', 'amit.kumar@example.com', '9988776655','123 Main St, City', 750),
    ('Neha Sharma', 'neha.sharma@example.com', '8877665544','456 Elm St, Town', 800),
    ('Raj Singh', 'raj.singh@example.com', '7766554433','789 Oak St, Village',780),
    ('Anita Gupta', 'anita.gupta@example.com', '6655443322','101 Pine St, Suburb',760),
    ('Kiran Kapoor', 'kiran.kapoor@example.com', '5544332211','234 Cedar St, District', 750),
    ('Rahul Mehra', 'rahul.mehra@example.com', '4433221100','567 Birch St, County', 760),
    ('Priya Bansal', 'priya.bansal@example.com', '3322110099', '890 Maple St, State',800),
    ('Vikas Reddy', 'vikas.reddy@example.com', '2211009988','321 Redwood St, Country', 750),
    ('Meera Kapoor', 'meera.kapoor@example.com', '1100998877','432 Spruce St, Province', 760),
    ('Arjun Singh', 'arjun.singh@example.com', '0099887766','765 Fir St, Territory', 750);

    
    
INSERT INTO Loan (customer_id, principal_amount, interest_rate, loan_term, loan_type, loan_status) VALUES
	(7, 500000, 8, 36, 'CarLoan', 'Approved'),
	(2, 1000000, 7, 60, 'HomeLoan', 'Pending'),
	(6, 300000, 9, 24, 'CarLoan', 'Approved'),
	(4, 800000, 6, 48, 'HomeLoan', 'Approved'),
	(5, 700000, 8, 36, 'CarLoan', 'Approved'),
	(1, 1200000, 7, 60, 'HomeLoan', 'Pending'),
	(2, 400000, 9, 24, 'CarLoan', 'Approved'),
	(8, 900000, 6, 48, 'HomeLoan', 'Pending'),
	(9, 600000, 8, 36, 'CarLoan', 'Pending'),
	(10, 1100000, 7, 60, 'HomeLoan', 'Pending'),
	(3, 350000, 9, 24, 'CarLoan', 'Approved'),
	(4, 750000, 6, 48, 'CarLoan', 'Approved');