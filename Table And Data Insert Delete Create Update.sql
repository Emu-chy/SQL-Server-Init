
-- Create Table In 
CREATE TABLE Products (
ProductName VARCHAR (200) NOT NULL,
BrandName VARCHAR (150) NOT NULL,
ProductStockDate DATE NULL, 
AvilableStock FLOAT NULl, 
Price MONEY NOT NULL
) -- If we want to create a table then we can write this type of query. 



SELECT * FROM TestDB_For_LearningSQL.dbo.Products -- this command for shown the value of table 



-- IF we want to add ADD Column and Change the column name then we can use ALTER. below give an example
ALTER TABLE Products 
ADD SoldProductQTY INT NULL -- ADD Column in table 

ALTER TABLE Products 
ALTER COLUMN SoldProductQTY INT NOT NULL -- UPDATE column name in the table 


--DROP TABLE Products -- if we want to drop a table from database



-- INSERT data in a TABLE

INSERT INTO Products (ProductName, BrandName, ProductStockDate, AvilableStock, Price, SoldProductQTY)
VALUES	('MX Logitech G3', 'Logitech', '2025-01-05', 900, 450,400 ),
		('Logitech MX Master 3', 'Logitech', '2025-02-10', 500, 1200, 150),
		('Razer DeathAdder V2', 'Razer', '2025-03-15', 300, 850, 200),
		('SteelSeries Rival 600', 'SteelSeries', '2025-01-25', 450, 1100, 180),
		('Corsair Harpoon RGB', 'Corsair', '2025-02-05', 700, 700, 250),
		('HP Wireless Mouse X3000', 'HP', '2025-03-20', 800, 550, 300),
		('Dell MS116 Wired Mouse', 'Dell', '2025-01-18', 1000, 400, 450),
		('Logitech G502 HERO', 'Logitech', '2025-04-01', 350, 950, 100),
		('Razer Basilisk V3', 'Razer', '2025-02-22', 400, 1250, 120),
		('Asus ROG Gladius III', 'Asus', '2025-01-30', 275, 1350, 95),
		('Microsoft Bluetooth Mouse', 'Microsoft', '2025-03-01', 600, 600, 220);-- Some value add in table 



--- UPDATE AND DELETE TABLE data 

--if we want to update a column name then we have to use where condition. other wise we can't difine spesific column.For unique value we can add more condition after where.  
--N:B: before update it is better to execute select query. 
SELECT * FROM TestDB_For_LearningSQL.dbo.Products WHERE Price = 400 
--UPDATE TestDB_For_LearningSQL.dbo.Products SET Price = 360 WHERE Price = 400 

-- For delete also we have to use where condition 
--DELETE TestDB_For_LearningSQL.dbo.Products WHERE Price = 360





