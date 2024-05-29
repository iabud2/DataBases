--Problem 14:

--Write query to get all makes with make start with 'B'.

--Query:

SELECT Make from Makes
where Make like 'B%';

------------------------------------


--Problem 15:

--Write query to get all makes with make ends with 'W'.

--Query:

SELECT Make from Makes
where Make like '%W';

------------------------------------

--Problem 16:

--Get all makes that manufactures DriveTypeName = FWD.

--Query:

SELECT Distinct Makes.Make, DriveTypes.DriveTypeName 
FROM VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	INNER JOIN DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
where DriveTypes.DriveTypeName = 'FWD';

------------------------------------

--Problem17:

--Get Total Makes that Manufactures Drive Type Name = 'FWD'.

--Query:


SELECT COUNT(*) TotalVehicles FROM
(
SELECT  Makes.Make, DriveTypes.DriveTypeName FROM VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	INNER JOIN DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
where DriveTypes.DriveTypeName = 'FWD'
)T1;

------------------------------------

--Problem18:

--Get Total Vehicles Per DriveTypeName Per Make.
--and Order Them Per Make asc Then per Total Desc;

--Query:

SELECT  Makes.Make, DriveTypes.DriveTypeName , COUNT(*) As TotalVehicles FROM VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	INNER JOIN DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
GROUP BY Makes.Make, DriveTypes.DriveTypeName
ORDER BY Makes.Make ASC, TotalVehicles desc;

------------------------------------

--Problem19:

--Get Total Vehicles Per DriveTypeName Per Make.
--Then Filter Only Results with (TotalVehicles > 10000).

--Query:

SELECT Makes.Make, DriveTypes.DriveTypeName , COUNT(*) As TotalVehicles FROM VehicleDetails

	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	INNER JOIN DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID

GROUP BY Makes.Make, DriveTypes.DriveTypeName
HAVING COUNT(*) > 10000
ORDER BY Makes.Make ASC, TotalVehicles desc;

------------------------------------











