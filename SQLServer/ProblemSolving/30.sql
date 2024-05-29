--Problem30:

--Get all Vehicle_Display_Name, NumDoors
--and add extra column to describe number of doors by words
--and if door is null display 'NotSet'.

--Query:

SELECT Vehicle_Display_Name, NumDoors, DescribeNumberOfDoors = 
CASE
	WHEN NumDoors = 1 THEN 'One Door'
	WHEN NumDoors = 2 THEN 'Two Doors'
	WHEN NumDoors = 3 THEN 'Three Doors'
	WHEN NumDoors = 4 THEN 'Four Doors'
	WHEN NumDoors = 5 THEN 'Five Doors'
	WHEN NumDoors = 6 THEN 'Six Doors'
	WHEN NumDoors = 8 THEN 'Eight Doors'
	WHEN NumDoors IS NULL THEN 'Not Set'
	ELSE 'Unknown'
END
from VehicleDetails
ORDER BY NumDoors ASC;