-- NULL Value check using CASE, ISNULL, COLLASE

CREATE TABLE Users (
UserId INT IDENTITY(1,1) PRIMARY KEY, 
UserName VARCHAR (100),
Email1 VARCHAR (80),
Email2 VARCHAR (80)


)

INSERT INTO Users (UserName, Email1, Email2)
VALUES   ('John Doe', 'john.doe@example.com', 'johndoe@gmail.com'),
  ('Jane Smith', 'jane.smith@example.com', 'janesmith@gmail.com'),
  ('Bob Johnson', NULL, 'bobjohnson@gmail.com'),
  ('Sarah Lee', NULL, 'sarahlee@gmail.com'),
  ('Tom Brown', 'tom.brown@example.com', NULL),
  ('Alice Green', NULL, 'alicegreen@gmail.com'),
  ('Mark Davis', 'mark.davis@example.com', NULL),
  ('Lisa Wilson', NULL, 'lisawilson@gmail.com'),
  ('Mike Taylor', 'mike.taylor@example.com', 'miketaylor@gmail.com'),
  ('Kelly Adams', NULL, 'kellyadams@gmail.com'),
  ('Samuel Clark', 'samuel.clark@example.com', NULL),
  ('Emily Hall', 'emily.hall@example.com', NULL),
  ('Jacob Brown', 'jacob.brown@example.com', 'jacobbrown@gmail.com'),
  ('Mary White', NULL, 'marywhite@gmail.com'),
  ('David Johnson', 'david.johnson@example.com', NULL),
  ('Olivia Harris', 'olivia.harris@example.com', 'oliviaharris@gmail.com'),
  ('William Davis', NULL, 'williamdavis@gmail.com'),
  ('Chloe Allen', 'chloe.allen@example.com', 'chloeallen@gmail.com'),
  ('Jacob Lee', 'jacob.lee@example.com', NULL),
  ('Samantha Brown', 'samantha.brown@example.com', NULL);

  SELECT * FROM TestDB_For_LearningSQL.dbo.Users




  --Using CASE statement, we can replace NULL values with "N/A"
  SELECT U.UserName,
  CASE 
	WHEN U.Email1 IS NULL THEN 'N/A'
	ELSE Email1
  END Email_1,

  CASE 
	WHEN U.Email2 IS NULL THEN 'N/A'
    ELSE Email2
  END Email_2	
  FROM TestDB_For_LearningSQL.dbo.Users U




 -- Using ISNULL Function, We can replace NULL values with "N/A"
 SELECT 
	 U.UserName, 
	 ISNULL(U.Email1, 'N/A') AS Email_1,
	 ISNULL (U.Email2, 'N/A') AS Email_2
 FROM TestDB_For_LearningSQL.dbo.Users U




 -- Use COALESCE we can replace multiple NULL column value. 
 SELECT 
	U.UserName,
	COALESCE(Email1, Email2) Email_1

 FROM TestDB_For_LearningSQL.dbo.Users U -- It can check multiple columns and return the first one that’s not NULL.




 --we can do this using case statement also
 SELECT 
	u.UserName, 
 CASE 
	WHEN U.Email1 IS NULL THEN U.Email2
	ELSE U.Email1
 END AS Email
 FROM TestDB_For_LearningSQL.dbo.Users U

