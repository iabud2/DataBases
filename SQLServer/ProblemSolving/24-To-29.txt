--Problem24:

--Get All Vehicles That Have Engine > 3 Liters
--And Have Only 2 Doors.

--Query:

SELECT Vehicle_Display_Name, Engine_Liter_Display, NumDoors 
FROM VehicleDetails
WHERE Engine_Liter_Display > 3 and NumDoors = 2;

----------------------------

--Problem25:

--Get Make And Vehicle that the Engine Contains 'OHV'
--And Have Cylinders = 4;

--Query:

SELECT Makes.Make, VehicleDetails.* FROM VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	WHERE (VehicleDetails.Engine LIKE '%OHV%') and (VehicleDetails.Engine_Cylinders = 4)
ORDER BY Make ASC;

----------------------------

--Problem26:

--Get all vehicles that their body is 'SportUtility'
--and year > 2020.

--Query:

SELECT VehicleDetails.*, BodyName FROM VehicleDetails 
	INNER JOIN Bodies ON VehicleDetails.BodyID = Bodies.BodyID
WHERE BodyName = 'Sport Utility' and Year > 2020;


----------------------------

--Problem27:

--Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan'.

--Query:

SELECT VehicleDetails.*, BodyName FROM VehicleDetails 
	INNER JOIN Bodies ON VehicleDetails.BodyID = Bodies.BodyID
WHERE BodyName IN ('Coupe', 'Hatchback', 'Sedan');

----------------------------

--Problem28:

--Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan'
--And manufactured in year 2008 or 2020 or 2021.

--Query:

SELECT VehicleDetails.*, BodyName FROM VehicleDetails 
	INNER JOIN Bodies ON VehicleDetails.BodyID = Bodies.BodyID
	WHERE BodyName IN ('Coupe', 'Hatchback', 'Sedan')
	AND Year IN (2008, 2020, 2021);

----------------------------

--Problem29:

--Return found = 1 if there is any vehicle made in year 1950.

--Query:

SELECT found = 1
WHERE 
EXISTS 
(
	SELECT TOP 1 * FROM VehicleDetails WHERE year = 1950
)

