--Problem2:

--Get All Vehicles Made Between 1950 And 2000:

--Query:

Select * From VehicleDetails
where Year between 1950 and 2000;

-----------------------------------------

--Problem3:

--Get Number Of Vehicles Made Between 1950 and 2000:
--Query:

Select Count(*) as NumbeOfVehicles from VehicleDetails
	where Year between 1950 and 2000;

-----------------------------------------

--Problem4:

--Get Number Of Vehicles Made Between 1950 and 2000 Per Make 
--and Order Them By Number Of Vehicles Descending:

--Query:

Select Makes.Make, COUNT(*) as NumberOfVehicles From VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	WHERE (VehicleDetails.Year between 1950 and 2000)
group by Makes.Make
Order by NumberOfVehicles desc;

-----------------------------------------

--Problem5:

--Get All Makes that have manufactured more than 12000 Vehicles Between 1950 and 2000:

Query:

Select Makes.Make, COUNT(*) as NumberOfVehicles From VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	WHERE (VehicleDetails.Year between 1950 and 2000)
group by Makes.Make
HAVING COUNT(*) > 12000
Order by NumberOfVehicles desc;


--Or:

select * from(

Select Makes.Make, COUNT(*) as NumberOfVehicles From VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	WHERE (VehicleDetails.Year between 1950 and 2000)
	group by Makes.Make
	)Manufactured
where NumberOfVehicles > 12000
Order by NumberOfVehicles desc;

-----------------------------------------

--Problem6:

--Get Number Of Vehicles Made Between 1950 and 2000 per make 
--and add total vehicles column beside:

--Query:


Select Makes.Make, COUNT(*) as NumberOfVehicles, 
	(SELECT COUNT(*) FROM VehicleDetails) AS Total_Vehicles From VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
WHERE (VehicleDetails.Year between 1950 and 2000)

group by Makes.Make
ORDER BY NumberOfVehicles desc;

-----------------------------------------

Problem7:

--Get Number Of Vehicles Made Between 1950 and 2000 per make
--and add Total Vehicles column beside it
--then caculate it's percentage.


--Query:

SELECT *, CAST(NumberOfVehicles as float)/ CAST(Total_Vehicles as float) as perc  FROM
(
Select Makes.Make, COUNT(*) as NumberOfVehicles, 
	(SELECT COUNT(*) FROM VehicleDetails) AS Total_Vehicles From VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	WHERE (VehicleDetails.Year between 1950 and 2000)
	GROUP BY Makes.Make
	)Manufactured
ORDER BY NumberOfVehicles desc;

-----------------------------------------

--Problem8:

--Get Make, FuelTypeName and Number of Vehicles Per FuelType Per Make.

--Query:

SELECT Makes.Make, FuelTypes.FuelTypeName, Count(*) as NumberOfVehicles From VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	INNER JOIN FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
WHERE (VehicleDetails.Year between 1950 and 2000)
GROUP BY Makes.Make, FuelTypes.FuelTypeName
ORDER BY NumberOfVehicles desc; 


-----------------------------------------














