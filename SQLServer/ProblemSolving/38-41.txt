--Problem38:

--Get all unigue Engine_CC and sort them Desc.

--Query:

SELECT  Distinct Engine_CC FROM VehicleDetails
ORDER BY Engine_CC DESC;

-----------------------------------------

--Problem39:

--Get the maximum 3 Engine CC.

--Query:

SELECT DISTINCT TOP 3 Engine_CC from VehicleDetails
	ORDER BY Engine_Cc DESC;


-----------------------------------------

--Problem40:

--Get all vehicles that has one of the max engine_CC.

--Query:

SELECT Vehicle_Display_Name, Engine_CC FROM VehicleDetails
	WHERE Engine_CC in 
		(SELECT DISTINCT TOP 3 Engine_CC FROM VehicleDetails
		ORDER BY Engine_Cc DESC)
	ORDER BY Engine_CC ASC;

-----------------------------------------

--Problem41:

--Get all makes that manufactures one of the max Engine_CC.

--Query:

SELECT Makes.Make, VehicleDetails.Vehicle_Display_Name, VehicleDetails.Engine_CC
	FROM VehicleDetails INNER JOIN
		Makes ON VehicleDetails.MakeID = Makes.MakeID
		WHERE Engine_CC in 
			(SELECT DISTINCT TOP 3 Engine_CC FROM VehicleDetails ORDER BY Engine_CC DESC)
		ORDER BY Make ASC;

-----------------------------------------
--12:25 AM 5/27/2024



