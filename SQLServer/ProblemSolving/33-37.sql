--Problem33:

--Get Minimum Engine CC, Maximum Engine CC
--And Average Engine CC Of All Vehicles.

--Query:

SELECT Max(Engine_CC) as Maximum_CC, Min(Engine_CC) as Minimum_CC,  
Avg(Engine_CC)as AverageEngineCC FROM VehicleDetails;

-----------------------------------------

--Problem34:

--Get all vehicles that have minimum engine_CC.

--Query:

SELECT Vehicle_Display_Name , Engine_CC FROM VehicleDetails
   WHERE Engine_CC = (SELECT MIN(Engine_CC) from VehicleDetails);

-----------------------------------------

--Problem35:

--Get all vehicle that have maximum engine_cc.

--Query:

SELECT Vehicle_Display_Name , Engine_CC FROM VehicleDetails
   WHERE Engine_CC = (SELECT MAX(Engine_CC) from VehicleDetails);


-----------------------------------------

Problem36:

--Get all vehicles that have engine_cc below average.

--Query:

SELECT Vehicle_Display_Name , Engine_CC FROM VehicleDetails
   WHERE Engine_CC < (SELECT AVG(Engine_CC) from VehicleDetails);


----------------------------------------

--Problem37:

--Get total vehicles that have engine_cc above average.

--Query:

SELECT COUNT(*) AS Total_Vehicles FROM VehicleDetails
	where Engine_CC > (SELECT AVG(Engine_CC) from VehicleDetails);







	
