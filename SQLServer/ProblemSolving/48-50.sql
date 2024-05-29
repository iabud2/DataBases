--Problem48:

--Get the highest manufacturers the highest number of models
--remember they could be more than one manufacturer have the same high number of models.

--Query:

SELECT Makes.Make, COUNT (*) AS NumberOfModels From Makes
	INNER JOIN MakeModels ON Makes.MakeID = MakeModels.MakeID
		GROUP BY Make
			HAVING COUNT(*) = 
			(
				SELECT MAX(NumberOfModels) AS MaxNumberOfModels
					FROM
					(
						SELECT MakeID, COUNT(*) AS NumberOfModels 
							FROM MakeModels
								GROUP BY MakeID
					)T2
			)


--------------------------------------------------------------------------------------------

--Problem49:

--Get the lowest manufacturers manufactured the lowest number of models.

--Query:

SELECT Makes.Make, COUNT(*) NumberOfModels FROM Makes
	INNER JOIN MakeModels ON MakeModels.MakeID = Makes.MakeID
		GROUP BY MAKE
			HAVING COUNT(*) =
			(
				SELECT MIN(NumberOfModels) AS LowestNumberOfModels
					FROM
					(
						SELECT MakeID, COUNT(*) NumberOfModels
							FROM MakeModels
								GROUP BY MakeID
					)T1
			)
	ORDER BY Make DESC;

--------------------------------------------------------------------------------------------


--Problem50:

--Get all fuel types, each time the result should be showed in random order.

--Query:

SELECT * FROM FuelTypes
ORDER BY NEWID();



