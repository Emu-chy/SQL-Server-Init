
--Aggregate function GROUP BY and HAVING 

-- Retrieve unique brand names from the Products table
SELECT P.BrandName 
FROM TestDB_For_LearningSQL.dbo.Products P 
GROUP BY P.BrandName;


--Remember: When you want to select multiple columns using GROUP BY, there are two ways to do it:
--1. Add all the selected columns to the GROUP BY clause.
SELECT P.BrandName, P.ProductName, P.Price
FROM TestDB_For_LearningSQL.dbo.Products P 
GROUP BY P.BrandName, p.ProductName, P.Price;


--2. Use aggregate functions (like SUM(), AVG(), COUNT(), etc.) for the columns you don’t include in the GROUP BY.
SELECT P.BrandName, MAX(P.Price) Max_Price, MIN(P.Price) Min_Price, SUM(P.AvilableStock) Avilable_Stock
FROM TestDB_For_LearningSQL.dbo.Products P 
GROUP BY P.BrandName;


--HAVING 
-- HAVING is used to filter grouped data after using GROUP BY
SELECT P.BrandName, SUM(P.Price) Total_Price FROM TestDB_For_LearningSQL.dbo.Products P 
WHERE P.BrandName = 'Logitech'
GROUP BY P.BrandName
HAVING SUM(P.Price) > 500 AND AVG(P.Price) > 300