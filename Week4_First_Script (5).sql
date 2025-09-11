-- --------------------------------------------------------------------------------
-- Name:Ashley Otero
-- Class: SQL Example
-- Abstract: Assignment 8
-- --------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------
-- Options
-- --------------------------------------------------------------------------------
USE dbDBDSCollege;     -- Get out of the master database
SET NOCOUNT ON; -- Report only errors

-- --------------------------------------------------------------------------------
--						Problem Assignment 8
-- --------------------------------------------------------------------------------

-- Drop Table Statements

IF OBJECt_ID ('TCustomers')		IS NOT NULL DROP TABLE TCustomers
IF OBJECt_ID ('TProducts')		IS NOT NULL DROP TABLE TProducts
IF OBJECt_ID ('TSuppliers')		IS NOT NULL DROP TABLE TSuppliers


-- --------------------------------------------------------------------------------
--	Step #1 : Create table 
-- --------------------------------------------------------------------------------

CREATE TABLE TCustomers
(
	 intCustomersID		INTEGER			NOT NULL
	,strFirstName		VARCHAR(255)		NOT NULL
	,strLastName		VARCHAR(255)		NOT NULL
	,strAddress			VARCHAR(255)		NOT NULL
	,strCity			VARCHAR(255)		NOT NULL
	,strState			VARCHAR(255)		NOT NULL
	,strZip				VARCHAR(255)		NOT NULL
	,dtmDateOfBirth		DATE				NOT NULL
	,strRace			VARCHAR(255)		NOT NULL
	,strGender			VARCHAR(255)		NOT NULL
		,CONSTRAINT TCustomers_PK PRIMARY KEY ( intCustomersID)
)

CREATE TABLE TProducts
(
	 intProductsID		INTEGER				NOT NULL
	,strProductNames	VARCHAR(255)		NOT NULL
	,intCost			INTEGER				NOT NULL
	,intRetailPrice		INTEGER				NOT NULL
	,intInventoryCounts	INTEGER				NOT NULL
	,strCategories		VARCHAR(255)		NOT NULL
	
	,CONSTRAINT TProducts_PK PRIMARY KEY ( intProductsID )
)

CREATE TABLE TSuppliers
(
	 intSuppliersID		INTEGER				NOT NULL
	,strSupplierNames	 VARCHAR(255)		NOT NULL
	,strFirstNames		VARCHAR	(255)		NOT NULL
	,strLastName		VARCHAR(255)		NOT NULL
	,strAddress			VARCHAR(255)		NOT NULL
	,strCity			VARCHAR(255)		NOT NULL
	,strState			VARCHAR(255)		NOT NULL
	,strZip				VARCHAR(255)		NOT NULL
	,strContactEmail	VARCHAR (255)		NOT NULL
	,CONSTRAINT TSuppliers_PK PRIMARY KEY ( intSuppliersID )
)

-- --------------------------------------------------------------------------------
--	Step #2 : Add Sample Data - INSERTS
-- --------------------------------------------------------------------------------
INSERT INTO TCustomers( intCustomersID, strFirstName, strLastName, strAddress, strCity, strState, strZip, dtmDateOfBirth, strRace, strGender)
VALUES			(1, 'James', 'Jones', '321 Elm St.', 'Cincinnati', 'Oh', '45201', '1/1/1997', 'Hispanic', 'Male')
				,(2, 'Sally', 'Smith', '987 Main St.', 'Norwood', 'Oh', '45218', '12/1/1999', 'African-American', 'Female')
				,(3, 'Jose', 'Hernandez', '1569 Windisch Rd.', 'West Chester', 'Oh', '45069', '9/23/1998', 'Hispanic', 'Male')
					 
INSERT INTO TSuppliers( intSuppliersID, strSupplierNames, strAddress, strCity, strState, strZip, strFirstNames, strLastName, strContactEmail)
VALUES			 ( 1, 'Hair', '321 Elm St.', 'Cincinnati', 'Oh', '45201', 'James','Jones', 'jamesjones@yahoo.com')
				,( 2, 'Nails','987 Main St.', 'Norwood', 'Oh', '45218', 'Sally','Smith','sallysmith@gmail.com' )
				,( 3, 'Skin', '1569 Windisch Rd.', 'West Chester', 'Oh', '45069','Jose', 'Hernandez','josehernandez@yahoo.com')
				

INSERT INTO TProducts( intProductsID, strProductNames, intCost, intRetailPrice, intInventoryCounts, strCategories)
VALUES					   (1,  'Conditioner', '$5.00', '$10.00', '250', 'Hair')
						  ,(2, 'NailPolish', '$2.00', '$4.00', '350', 'Nails')
						  ,(3, 'Face Wash', '$14.00', '$16.00', '260', 'Skin')



-- --------------------------------------------------------------------------------
--	Step #3 : SELECT from Sample Data 
-- --------------------------------------------------------------------------------

SELECT *
FROM TSuppliers


SELECT*
FROM TCustomers

SELECT strFirstName, strLastName, strZip
FROM TCustomers
WHERE strZip = '45218'


-- --------------------------------------------------------------------------------
--	Step #4 : UPDATE Sample Data 
-- --------------------------------------------------------------------------------
SELECT * FROM TStudents

UPDATE TStudents
SET strZip = '45555'
WHERE intStudentID = 1

SELECT * FROM TStudents

SELECT * FROM TCourses

UPDATE TCourses
SET strCourseName = 'Database Design and SQL Server'
	--,strCourseNumber = 'IT-111A'
WHERE intCourseID = 4

SELECT * FROM TCourses

-- --------------------------------------------------------------------------------
--	Step #5 : DELETE Sample Data 
-- --------------------------------------------------------------------------------
SELECT * FROM TCourses

DELETE FROM TCourses
WHERE strCourseNumber = 'MAT-161'

SELECT * FROM TCourses