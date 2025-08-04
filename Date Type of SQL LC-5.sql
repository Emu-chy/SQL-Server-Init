
-- Example Of Exect Numaric Data type
DECLARE @VarINT INT = 17
DECLARE @VarBigINT INT = 12546
DECLARE @VarSmallINT INT = 124
DECLARE @VarTinynt INT = 12
DECLARE @VarBIT BIT = 'true'

SELECT @VarINT, @VarBigINT, @VarSmallINT, @VarTinynt , @VarBIT
--8
DECLARE @VarDec DECIMAL(8,2) = 15.567 
--Note: The DECIMAL (or NUMERIC) data type takes two parameters: Precision (p) and Scale (s).
--When you use DECIMAL(8, 2), it means the number can have up to 8 total digits, of which 2 digits are after the decimal point, 
--and 6 digits are before the decimal point.
SELECT @VarDec

-- Approximate Numeric
DECLARE @VarFloat FLOAT = 15.6985
SELECT @VarFloat --If we want keep full number of after point then we can use FLOAT or REAL datatype.


-- String Data Type
DECLARE @StrChar CHAR(10) = 'Hello'
DECLARE @StrVarchar VARCHAR(20) = 'Emon Chowdhury' 
--Note: CHAR and VARCHAR are used to store text.
--CHAR(n) always takes the full space you give, even if the text is short.
--VARCHAR(n) only uses the space needed for the text.

DECLARE @StrNChar NCHAR (10) = N'ইমন'
DECLARE @StrNVarChar NVARCHAR (20) = N'ইমন চৌধুরী' -- nvarchar or nchar use for unicode string like diffenet country language and must be use N before string


SELECT @StrChar, @StrVarchar, @StrNChar, @StrNVarChar

--Date Time Data Type

DECLARE @VarDate DATE = '19 Apr 2023';
DECLARE @VarTime TIME = getDate();
DECLARE @VarDateTime DATETIME = GETDATE(); -- If we want to see datetime before 1750 using this GETDATE functon then showing error becouse this funciton update after 1750 year.
DECLARE @VarDTErr DATETIME2 = '1 Jan 1750'; -- For this soluation we used DATETIME2 
 

SELECT @VarDate, @VarTime, @VarDateTime, @VarDTErr;