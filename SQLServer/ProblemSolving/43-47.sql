Problem43:

--Get Make And Total Number Of Doors Manufactured Per Make

--Query:

SELECT Makes.Make, SUM(NumDoors) AS TotalDoors FROM VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
		GROUP BY Make
ORDER BY TotalDoors DESC;

-----------------------------------------

--Problem44:

--Get Total Number Of Doors Manufactured by 'Ford'.

--Query:

SELECT Makes.Make, SUM(NumDoors) AS TotalDoors FROM VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
		GROUP BY Make
HAVING Make = 'Ford';

-----------------------------------------

--Problem45:

--Get Number Of Models Per Make.

--Query:

SELECT Makes.Make, COUNT(*) AS TotalModels FROM Makes
	INNER JOIN MakeModels ON Makes.MakeID = MakeModels.MakeID
GROUP BY Make
ORDER BY TotalModels DESC;

-----------------------------------------

--Problem46:

--Get the highest 3 manufactures that make the highest number of models.

--Query:

SELECT TOP 3 Makes.Make , COUNT(*) AS TotalModels FROM Makes
	INNER JOIN MakeModels ON Makes.MakeID = MakeModels.MakeID
GROUP BY Make
ORDER BY TotalModels DESC;

-----------------------------------------

--Problem47:

--Get the highest number of models manufactured

--Query:

SELECT MAX(TotalModels) as HighestModelManufactured
FROM
(
	SELECT Makes.Make , COUNT(*) AS TotalModels FROM Makes
		INNER JOIN MakeModels ON Makes.MakeID = MakeModels.MakeID
	GROUP BY Make

)T1;

-----------------------------------------


  
