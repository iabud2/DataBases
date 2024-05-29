-Problem31:

--Get all Vehicles_Deisplay_Name, year.
--and add extra column to calculate the age of the car
--then sort the results by age desc.

--Query:

SELECT Vehicle_Display_Name, VehicleDetails.Year, AGE = YEAR(GETDATE()) - VehicleDetails.Year
FROM VehicleDetails
ORDER BY Age desc;