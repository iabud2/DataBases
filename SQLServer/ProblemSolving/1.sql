--Problem1:


--Create Master View For Vehicles Details DB:

--Query:
SELECT VehicleDetails.ID, VehicleDetails.MakeID, Makes.Make, VehicleDetails.ModelID, MakeModels.ModelName,
	   VehicleDetails.SubModelID, SubModels.SubModelName, VehicleDetails.BodyID, Bodies.BodyName, VehicleDetails.Vehicle_Display_Name,
	   VehicleDetails.Year, VehicleDetails.DriveTypeID, DriveTypes.DriveTypeName, VehicleDetails.Engine,
	   VehicleDetails.Engine_CC, VehicleDetails.Engine_Cylinders, VehicleDetails.Engine_Liter_Display,
	   VehicleDetails.FuelTypeID, FuelTypes.FuelTypeName, VehicleDetails.NumDoors
From VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	INNER JOIN MakeModels ON VehicleDetails.ModelID = MakeModels.ModelID
	INNER JOIN SubModels ON VehicleDetails.SubModelID = SubModels.SubModelID
	INNER JOIN Bodies On VehicleDetails.BodyID = Bodies.BodyID
	INNER JOIN DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
	INNER JOIN FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID; 

--We Also Can User Query Editor To Make It Easier
	  