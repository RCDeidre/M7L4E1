/*****************Start the MASTER DATABASE ****************************************/
--USE master
--GO
/*****Runs only after the the Database has been run the first time******************/
DROP DATABASE dbM7L4E1
USE master
GO

/*Starts at the MASTER DATABASE, creates a new database different than the Master***/
CREATE DATABASE dbM7L4E1
GO

/**********Uses the database just created, not any other database*******************/
USE dbM7L4E1 
GO
/***********************************************************************************/
/*************************CREATE TABLES*********************************************/
CREATE TABLE tbPictures
(PictureID INT IDENTITY (1,1) PRIMARY KEY,
Name VARCHAR (15),
Description VARCHAR(200),
ImageUrl VARCHAR(200));
GO

INSERT into tbPictures VALUES
('catNrat', 'You had one job!', 'Images/catNrat.jpg'),
('doggieKisses', 'No Kisses?', 'Images/doggie%20kisses.jpg'),
('family', 'Say - Lion King!', 'Images/family.jpg'),
('gopherandbird', 'My heart takes flight!', 'Images/gopherandbird.jpg'),
('legssayno', 'Legs say NO!', 'Images/legssayno.jpg'),
('madkitten', 'Mad Kitten!', 'Images/madkitten.jpg'),
('minion', 'Minion', 'Images/minion.jpg'),
('minionfamily', 'Minion Family', 'Images/minionfamily.jpg'),
('toungecat', 'Tounge!', 'Images/toungecat.jpg');
GO


CREATE PROCEDURE spGetPictures
(
@PictureID INT = NULL
)
AS
BEGIN
	
	SELECT * FROM tbPictures WHERE PictureID = ISNULL( @PictureID, pictureID);
END
GO
spGetPictures
GO
spGetPictures @PictureID=4
