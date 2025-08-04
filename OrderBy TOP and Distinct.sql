-- ORDER BY, TOP, DISTINCT 


-- ORDER BY use for shorting data.
SELECT * FROM TestDB_For_LearningSQL.dbo.Products P
ORDER BY P.BrandName DESC-- If we not set the order name then it defaoult showing Ascending Ordrer

SELECT * FROM TestDB_For_LearningSQL..Products PRO
ORDER BY PRO.BrandName DESC, PRO.ProductName ASC -- To sort data by more than one column, we can use multiple columns in the ORDER BY clause.


-- TOP AND DISTINCT

-- for need specific number of data in a table, then we can use TOP keyword
SELECT TOP 5 * FROM TestDB_For_LearningSQL..Products
WHERE BrandName = 'Logitech'

SELECT DISTINCT BrandName FROM TestDB_For_LearningSQL..Products
--To get unique values, we can use DISTINCT. Remember, DISTINCT removes rows only when all column values in the row are exactly the same.