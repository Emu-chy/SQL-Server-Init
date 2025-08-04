-- PK (PRIMARY KEY) FK (FOREIGN) KEY

-- there two to created primary key in a table 

--one way
SELECT * FROM TestDB_For_LearningSQL.dbo.Products
--DROP TABLE TestDB_For_LearningSQL.dbo.Products

CREATE TABLE Products (

	ProductId INT NOT NULL PRIMARY KEY,
	ProductName VARCHAR(250) NOT NULL, 
	BrandName VARCHAR (200) NOT NULL,
	ProductStockDate DATE NOT NULL, 
	AvilableStock INT NULL, 
	Price MONEY NOT NULL, 
	SoldProductQTY FLOAT NULL


)

INSERT INTO TestDB_For_LearningSQL.dbo.Products (ProductId, ProductName, BrandName, ProductStockDate, AvilableStock, Price, SoldProductQTY)

VALUES (1,'MX Logitech G3', 'Logitech', '2025-01-05', 900, 450,400 ),
	   (2, 'Logitech MX Master 3', 'Logitech', '2025-02-10', 500, 1200, 150)

--Another way to create primary key using ALTER 
ALTER TABLE Products
ADD ProductId INT PRIMARY KEY NOT NULL



--in regular rules create praimary key and insert data in this table
CREATE TABLE Products (

	ProductId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ProductName VARCHAR(250) NOT NULL, 
	BrandName VARCHAR (200) NOT NULL,
	ProductStockDate DATE NOT NULL, 
	AvilableStock INT NULL, 
	Price MONEY NOT NULL, 
	SoldProductQTY FLOAT NULL


)

INSERT INTO Products (ProductName, BrandName, ProductStockDate, AvilableStock, Price, SoldProductQTY )

VALUES ('MX Logitech G3', 'Logitech', '2025-01-05', 900, 450,400 ),
		('Logitech MX Master 3', 'Logitech', '2025-02-10', 500, 1200, 150),
		('Razer DeathAdder V2', 'Razer', '2025-03-15', 300, 850, 200),
		('SteelSeries Rival 600', 'SteelSeries', '2025-01-25', 450, 1100, 180),
		('Corsair Harpoon RGB', 'Corsair', '2025-02-05', 700, 700, 250),
		('HP Wireless Mouse X3000', 'HP', '2025-03-20', 800, 550, 300),
		('Dell MS116 Wired Mouse', 'Dell', '2025-01-18', 1000, 400, 450),
		('Logitech G502 HERO', 'Logitech', '2025-04-01', 350, 950, 100),
		('Razer Basilisk V3', 'Razer', '2025-02-22', 400, 1250, 120),
		('Asus ROG Gladius III', 'Asus', '2025-01-30', 275, 1350, 95),
		('Microsoft Bluetooth Mouse', 'Microsoft', '2025-03-01', 600, 600, 220); --in data insertation productid automatic created becouse give the identity in primary key. 




-- FOREIGN KEY

CREATE TABLE Customers (
	CustomerId INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	CustomerName VARCHAR (200) NOT NULL, 
	CustAddress VARCHAR (250) NOT NULL, 
	ContactNo INT NULL, 
	EmailAddress VARCHAR (100) NULL

)

INSERT INTO Customers (CustomerName, CustAddress, ContactNo, EmailAddress)

VALUES 
('John Doe', '123 Main Street, Dhaka', 01711223344, 'john.doe@example.com'),
('Amina Rahman', '45 Lakeview Road, Chittagong', 01899887766, 'amina.rahman@example.com'),
('Rafiq Hasan', '99 Green City, Sylhet', 01911221122, 'rafiq.hasan@example.com'),
('Sadia Karim', 'House 12, Block B, Barisal', 01622334455, 'sadia.karim@example.com'),
('Tanvir Ahmed', 'Plot 5, Sector 10, Rajshahi', 01744556677, 'tanvir.ahmed@example.com');

CREATE TABLE SalesDetail (
	SalesId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	PurshesDate DATE NOT NULL, 
	ProductId INT NOT NULL FOREIGN KEY REFERENCES Products (ProductId), -- here this id foreign key 
	CustomerId INT NOT NULL FOREIGN KEY REFERENCES Customers (CustomerId),
	SalesValue MONEY NOT NULL

)


INSERT INTO SalesDetail (PurshesDate, ProductId, CustomerId, SalesValue)
VALUES 
('2025-08-01', 1, 1, 1500.00),
('2025-08-02', 2, 2, 2300.50),
('2025-08-03', 3, 3, 1750.75),
('2025-08-04', 4, 4, 890.00),
('2025-08-04', 5, 5, 1200.00);

