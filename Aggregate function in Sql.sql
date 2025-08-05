-- Aggregate function in sql 

--popular aggregate function (COUNT, SUM, AVG, MIN, MAX, GROUPBY) 

--example of COUNT
SELECT COUNT(p.ProductName) Row_Count FROM TestDB_For_LearningSQL.dbo.Products P
WHERE P.BrandName = 'Logitech' -- for counting the value in a table

--example of SUM 
SELECT SUM(P.Price) Total_Price FROM TestDB_For_LearningSQL.dbo.Products P
WHERE P.BrandName = 'Logitech' -- for sum of the column in table


SELECT SUM(P.Price) Total_Price, SUM(P.AvilableStock) AvilabelStock FROM TestDB_For_LearningSQL.dbo.Products P
WHERE P.BrandName = 'Logitech' -- if we want show multiple column sum then we can use SUM multiple time

--example of AVG 
SELECT AVG(Price) BrandName FROM TestDB_For_LearningSQL.dbo.Products WHERE BrandName = 'Logitech'

--Example of MIN 
SELECT MIN(Price) MinimumPrice FROM TestDB_For_LearningSQL.dbo.Products WHERE BrandName = 'Logitech'

--Example Of Max
SELECT MAX(Price) MiximumPrice FROM TestDB_For_LearningSQL.dbo.Products WHERE BrandName = 'Logitech'

--if we want to use both in together
SELECT MIN(Price) minimumPrice, MAX(Price) miximumPrice FROM TestDB_For_LearningSQL.dbo.Products WHERE BrandName = 'Logitech'