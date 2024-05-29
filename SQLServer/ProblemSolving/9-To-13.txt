--Problem9:

--Get All Vehicles that runs with gas.

Query:

SELECT VehicleDetails.*, FuelTypes.FuelTypeName from VehicleDetails
	INNER JOIN FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID 
	WHERE (FuelTypes.FuelTypeName = N'GAS');

-----------------------------------------

--Problem10:

--Get All Makes That Runs With GAS.

--Query:

Select distinct Makes.Make, FuelTypes.FuelTypeName from VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = MakeS.MakeID
	INNER JOIN FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
where (FuelTypes.FuelTypeName = N'GAS');

-----------------------------------------

--Problem11:

--Get Total Makes that runs with GAS.

--Query:


SELECT COUNT(*) as TotalMakesWithGas
From(
	Select distinct Makes.Make, FuelTypes.FuelTypeName from VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = MakeS.MakeID
	INNER JOIN FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
	where (FuelTypes.FuelTypeName = N'GAS')
)CarUsingGas

-----------------------------------------

--Problem12:

--Get Vehicles by make and order them by NumberOfVehicles desc.

--Query:


SELECT Makes.Make, Count(*) as NumberOfVehicles FROM VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
GROUP BY Makes.Make
ORDER BY NumberOfVehicles desc;


-----------------------------------------

--Problem13:

--Get all Makes/Counts of Vehicles that manufactures more than 20k Vehicles

--Query:

SELECT Makes.Make, Count(*) as NumberOfVehicles FROM VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
GROUP BY Makes.Make
HAVING COUNT(*) >  20000
ORDER BY NumberOfVehicles desc;



