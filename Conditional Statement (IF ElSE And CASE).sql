--Conditional Statement (IF ElSE And CASE)

--IF ELSE 

DECLARE @BrandId INT = 3

IF @BrandId = 1 
BEGIN
	SELECT * FROM TestDB_For_LearningSQL.dbo.Products P
	WHERE P.BrandName = 'Logitech'
END

ELSE IF @BrandId = 2 
BEGIN
	SELECT * FROM TestDB_For_LearningSQL.dbo.Products P
	WHERE P.BrandName = 'HP'
END 

ELSE IF @BrandId = 3 
BEGIN 
	SELECT * FROM TestDB_For_LearningSQL.dbo.Products P
	WHERE P.BrandName = 'Dell'
END 

ELSE
BEGIN
	SELECT * FROM TestDB_For_LearningSQL.dbo.Products
END 



--Case 
SELECT *,
CASE 
	WHEN P.Price < 500 THEN 'Low Price'
	WHEN P.Price < 800 AND P.Price > 500 THEN 'Mid Price'
	WHEN P.Price > 900 THEN 'High Price'
END Price_Range

FROM TestDB_For_LearningSQL.dbo.Products P 
WHERE P.BrandName = 'Logitech'



--Case using in Where clouse 
DECLARE @BranddId INT = 2 

SELECT * FROM TestDB_For_LearningSQL.dbo.Products P
WHERE P.BrandName = 
CASE 
	WHEN @BranddId = 1 THEN 'Logitech'
	WHEN @BranddId = 2 THEN 'HP'
	WHEN @BranddId = 3 THEN 'Dell'
END