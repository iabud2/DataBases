--Problem32:

--Get all Vehicle_Display_Name, Year, Age
--for vehicles that their age between 15 - 25 Y/O.

--Query:

SELECT * FROM
(
	SELECT Vehicle_Display_Name, Year, (YEAR(GETDATE()) - VehicleDetails.Year) as AGE
	FROM VehicleDetails
)T1
WHERE AGE BETWEEN 15 AND 25
ORDER BY AGE ASC;
