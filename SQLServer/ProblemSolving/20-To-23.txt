--Problem20:

--Get All Vehicles That Number Of Doors Is Not Specified

--Query:

SELECT * FROM VehicleDetails
WHERE NumDoors IS NULL;


------------------------------------

--Problem21:

--Get Total Vehicles That Number Of Doors Is Not Specified.

--Query:

SELECT COUNT(*) as Total FROM VehicleDetails
WHERE NumDoors IS NULL;


------------------------------------

--Problem22:

--Get Percentage Of Vehivles That Has No Doors

--Query:

SELECT (
	CAST((SELECT COUNT(*) AS TotalVehiclesUnkownNumDoors FROM VehicleDetails WHERE NumDoors IS NULL)AS FLOAT)
	/
	CAST((SELECT COUNT(*) AS TotalVehicles FROM VehicleDetails)AS FLOAT)
) AS Percntage;

------------------------------------

--Problem23:

--Get MakeID, Make, SubModelName, for all vehicles that have SubModelName 'Elite'.

--Query:

SELECT VehicleDetails.MakeID, Makes.Make, SubModels.SubModelName
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID INNER JOIN
                  SubModels ON VehicleDetails.SubModelID = SubModels.SubModelID
WHERE SubModels.SubModelName = 'Elite';


