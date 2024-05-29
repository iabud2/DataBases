--Problem51:

--Get all employees that have manager along with manager's name.

--Query:

SELECT Employees.EmployeeID, Employees.Name, Employees.ManagerID , Managers.Name AS ManagerName, Employees.Salary 
	FROM Employees
		INNER JOIN  Employees AS Managers ON Managers.EmployeeID = Employees.ManagerID; 


------------------------------------------------------------------------

--Problem52:

--Get all employees that have manager or does not
--have manager along wityh Manager's name
--incase no manager name show null.

-Query:

SELECT Employees.EmployeeID, Employees.Name, Employees.ManagerID , Managers.Name AS ManagerName, Employees.Salary 
	FROM Employees
	LEFT OUTER JOIN  Employees AS Managers ON Managers.EmployeeID = Employees.ManagerID; 

------------------------------------------------------------------------

--Problem53"

--Get all employees that have manager or does not have manager,
--along with manager's name,
--incase no manager name the same employee name as manager to himself.

--Qeury:

SELECT Employees.Name, Employees.Salary, Employees.ManagerID,
	(
	CASE
		WHEN Managers.Name IS NULL THEN Employees.Name
		ELSE Managers.Name
	END
	) AS ManagerName
		FROM Employees
			LEFT  JOIN Employees AS Managers ON Employees.ManagerID = Managers.EmployeeID;

------------------------------------------------------------------------

--Problem54:

--Get all employees Managed by 'Mohammed'

--Query:

SELECT Employees.Name, Employees.ManagerID , Managers.Name AS ManagerName, Employees.Salary 
	FROM Employees
		INNER JOIN  Employees AS Managers ON Managers.EmployeeID = Employees.ManagerID
			WHERE Managers.Name = 'Mohammed';


------------------------------------------------------------------------


