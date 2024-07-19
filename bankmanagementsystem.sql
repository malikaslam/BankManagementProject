-- Creating the Employee table
CREATE TABLE Employee (
  Name VARCHAR(255),
  CNIC VARCHAR(255),
  E_ID INT PRIMARY KEY,
  Address VARCHAR(255),
  Title VARCHAR(255),
  Salary INT,
  Department VARCHAR(255),
  Shift VARCHAR(255)
);

-- Creating the Customer table
CREATE TABLE Customer (
  Name VARCHAR(255),
  CNIC VARCHAR(255),
  Married VARCHAR(255),
  Occupation VARCHAR(255),
  C_id INT PRIMARY KEY,
  Address VARCHAR(255)
);

-- Creating the Branch table
CREATE TABLE Branch (
  Branch_id INT PRIMARY KEY,
  name VARCHAR(255),
  Manager varchar(255),
  Address VARCHAR(255),
  Total_Accounts INT
);

-- Creating the Transaction table
CREATE TABLE Transaction (
  T_id INT PRIMARY KEY,
  Amount INT,
  Details VARCHAR(255),
  Date DATE,
  Acc_number INT
);

-- Creating the Current Account table
CREATE TABLE CurrentAccount (
  Acc_id INT PRIMARY KEY,
  Balance INT
);

-- Creating the Savings Account table
CREATE TABLE SavingsAccount (
  Year_interest_rate INT,
  Interest_percentage INT,
  CustomerAccount_id INT,
  PRIMARY KEY (CustomerAccount_id)
);

-- Creating the Manager table
CREATE TABLE Manager (
  M_ID INT PRIMARY KEY,
  EmployeeID INT,
  DepartmentID INT
);

-- Creating the Loans table
CREATE TABLE Loans (
  Acc_id INT PRIMARY KEY,
  LoanedBalance INT,
  IssueDate DATE,
  ReturnDate DATE
);

-- Creating the Customer Account table
CREATE TABLE CustomerAccount (
  Acc_number INT PRIMARY KEY,
  Balance INT,
  Mobile_Number VARCHAR(255),
  EmergencyNumber VARCHAR(255)
);

-- Creating the Department table
CREATE TABLE Department (
  Name VARCHAR(255),
  D_id INT PRIMARY KEY,
  Number_of_employees INT
);

INSERT INTO Employee (Name, CNIC, E_ID, Address, Title, Salary, Department, Shift)
VALUES
("John Doe", "123456789", 1, "123 Main St", "Manager", 50000, "Finance", "Morning"),
("Jane Doe", "234567890", 2, "456 Main St", "Assistant Manager", 40000, "HR", "Evening"),
("Bob Smith", "345678901", 3, "789 Main St", "Clerk", 30000, "IT", "Morning"),
("Sara Johnson", "456789012", 4, "246 Main St", "Assistant Clerk", 28000, "IT", "Evening"),
("Michael Brown", "567890123", 5, "369 Main St", "Manager", 55000, "Finance", "Morning"),
("Emily Davis", "678901234", 6, "159 Main St", "Assistant Manager", 45000, "HR", "Evening"),
("William Thompson", "789012345", 7, "753 Main St", "Clerk", 32000, "IT", "Morning"),
("Ashley Johnson", "890123456", 8, "369 Main St", "Assistant Clerk", 29000, "IT", "Evening"),
("David Wilson", "901234567", 9, "159 Main St", "Manager", 53000, "Finance", "Morning"),
("Amanda Davis", "012345678", 10, "753 Main St", "Assistant Manager", 42000, "HR", "Evening");

-- Inserting values into Customer table
INSERT INTO Customer (Name, CNIC, Married, Occupation, C_id, Address)
VALUES
("Tom Smith", "123456789", "Yes", "Teacher", 1, "123 Main St"),
("Emily Brown", "234567890", "No", "Engineer", 2, "456 Main St"),
("David Johnson", "345678901", "Yes", "Doctor", 3, "789 Main St"),
("Samantha Wilson", "456789012", "No", "Lawyer", 4, "246 Main St"),
("James Davis", "567890123", "Yes", "Nurse", 5, "369 Main St"),
("Emily Wilson", "678901234", "No", "Accountant", 6, "159 Main St"),
("William Brown", "789012345", "Yes", "Businessman", 7, "753 Main St"),
("Sarah Johnson", "890123456", "No", "Teacher", 8, "369 Main St"),
("Michael Smith", "901234567", "Yes", "Engineer", 9, "159 Main St"),
("Amy Davis", "012345678", "No", "Doctor", 10, "753 Main St");

INSERT INTO Branch (Branch_id, name, manager, address, Total_Accounts)
VALUES
  (1, 'Branch 1', 'John Doe', '123 Main St', 100),
  (2, 'Branch 2', 'Jane Doe', '456 Main St', 200),
  (3, 'Branch 3', 'Jim Smith', '789 Main St', 300),
  (4, 'Branch 4', 'Jill Smith', '111 Main St', 400),
  (5, 'Branch 5', 'Jackie Chan', '222 Main St', 500),
  (6, 'Branch 6', 'Jet Li', '333 Main St', 600),
  (7, 'Branch 7', 'Bruce Lee', '444 Main St', 700),
  (8, 'Branch 8', 'Sylvester Stallone', '555 Main St', 800),
  (9, 'Branch 9', 'Arnold Schwarzenegger', '666 Main St', 900),
  (10, 'Branch 10', 'Tom Cruise', '777 Main St', 1000);
  
  INSERT INTO Transaction (T_id, amount, details, date, Acc_number)
VALUES
  (1, 1000, 'Withdrawal', '2022-12-01', 1001),
  (2, 2000, 'Deposit', '2022-12-02', 1002),
  (3, 3000, 'Withdrawal', '2022-12-03', 1003),
  (4, 4000, 'Deposit', '2022-12-04', 1004),
  (5, 5000, 'Withdrawal', '2022-12-05', 1005),
  (6, 6000, 'Deposit', '2022-12-06', 1006),
  (7, 7000, 'Withdrawal', '2022-12-07', 1007),
  (8, 8000, 'Deposit', '2022-12-08', 1008),
  (9, 9000, 'Withdrawal', '2022-12-09', 1009),
  (10, 10000, 'Deposit', '2022-12-10', 1010);

INSERT INTO currentaccount (Acc_id, Balance)
VALUES
  (1001, 1000),
  (1002, 2000),
  (1003, 3000),
  (1004, 4000),
  (1005, 5000),
  (1006, 6000),
  (1007, 7000),
  (1008, 8000),
  (1009, 9000),
  (1010, 10000);

INSERT INTO savingsaccount (Year_interest_rate, Interest_percentage, CustomerAccount_id)
VALUES
  (0.5, 5, 1001),
  (0.5, 5, 1002),
  (0.5, 5, 1003),
  (0.5, 5, 1004),
  (0.5, 5, 1005),
  (0.5, 5, 1006),
  (0.5, 5, 1007),
  (0.5, 5, 1008),
  (0.5, 5, 1009),
  (0.5, 5, 1010);

INSERT INTO Manager (M_ID, EmployeeID, DepartmentID)
VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 3),
  (4, 4, 4),
  (5, 5, 5),
  (6, 6, 6),
  (7, 7, 7),
  (8, 8, 8),
  (9, 9, 9),
  (10, 10, 10);


INSERT INTO Loans (Acc_id, LoanedBalance, IssueDate, ReturnDate)
VALUES
  (1001, 1000, '2022-12-01', '2022-12-31'),
  (1002, 2000, '2022-12-02', '2022-12-32'),
  (1003, 3000, '2022-12-03', '2022-12-33'),
  (1004, 4000, '2022-12-04', '2022-12-34'),
  (1005, 5000, '2022-12-05', '2022-12-35'),
  (1006, 6000, '2022-12-06', '2022-12-36'),
  (1007, 7000, '2022-12-07', '2022-12-37'),
  (1008, 8000, '2022-12-08', '2022-12-38'),
  (1009, 9000, '2022-12-09', '2022-12-39'),
  (1010, 10000, '2022-12-10', '2022-12-40');

INSERT INTO customeraccount (Acc_number, Balance, Mobile_Number, EmergencyNumber)
VALUES
  (1001, 1000, 1111111111, 2222222222),
  (1002, 2000, 1111111112, 2222222223),
  (1003, 3000, 1111111113, 2222222224),
  (1004, 4000, 1111111114, 2222222225),
  (1005, 5000, 1111111115, 2222222226),
  (1006, 6000, 1111111116, 2222222227),
  (1007, 7000, 1111111117, 2222222228),
  (1008, 8000, 1111111118, 2222222229),
  (1009, 9000, 1111111119, 2222222230),
  (1010, 10000, 1111111120, 2222222231);

INSERT INTO Department (Name, D_id, Number_of_employees)
VALUES
  ('IT', 1, 10),
  ('Finance', 2, 20),
  ('HR', 3, 30),
  ('Marketing', 4, 40),
  ('Operations', 5, 50),
  ('Sales', 6, 60),
  ('Legal', 7, 70),
  ('Engineering', 8, 80),
  ('Research & Development', 9, 90),
  ('Customer Service', 10, 100);

SELECT Customer.Name, customeraccount.Balance
FROM Customer
INNER JOIN customeraccount
ON Customer.C_id = customeraccount.Acc_number;

SELECT Employee.Name, Department.Name
FROM Employee
LEFT JOIN Department
ON Employee.Department = Department.D_id;

SELECT Transaction.details, currentaccount.Balance
FROM Transaction
RIGHT JOIN currentaccount
ON Transaction.Acc_number = currentaccount.Acc_id;


SELECT Employee.Name, Employee.Salary, Department.Name
FROM Employee
INNER JOIN Department
ON Employee.Department = Department.D_id
WHERE Employee.Salary < (SELECT AVG(Salary)
                         FROM Employee
                         WHERE Employee.Department = Department.D_id);

select * from customer;
SELECT Customer.Name
FROM Customer
INNER JOIN CustomerAccount
ON Customer.C_id = CustomerAccount.Acc_number
INNER JOIN CurrentAccount
ON CustomerAccount.Acc_number = CurrentAccount.Acc_id
WHERE CurrentAccount.Balance > (SELECT AVG(Balance)
                                  FROM CurrentAccount);
                                  
                                  
SELECT Name
FROM Employee
WHERE Department = 'IT' AND Salary > 30000;


SELECT Customer.Name
FROM Customer
JOIN Employee ON Customer.Address = Employee.Address;




