-- 04_Data_Validation.sql

1. Confirming Data Loading :
	SELECT COUNT(*) FROM Fact_Emergency_Visit;
	SELECT COUNT(*) FROM Dim_Date;
	SELECT COUNT(*) FROM Dim_Patient;
	SELECT COUNT(*) FROM Dim_Doctor;
	SELECT COUNT(*) FROM Dim_Department;

2. Check Primary Key Uniqueness
	
	SELECT VisitID, COUNT(*)
	FROM Fact_Emergency_Visit
	GROUP BY VisitID
	HAVING COUNT(*) > 1;

	SELECT PatientID, COUNT(*)
	FROM Dim_Patient
	GROUP BY PatientID
	HAVING COUNT(*) > 1;

	SELECT DoctorID, COUNT(*)
	FROM Dim_Doctor
	GROUP BY DoctorID
	HAVING COUNT(*) > 1;

	SELECT DepartmentID, COUNT(*)
	FROM Dim_Department
	GROUP BY DepartmentID
	HAVING COUNT(*) > 1;

3.Foreign Key Integrity Check

	SELECT *
	FROM Fact_Emergency_Visit f
	LEFT JOIN Dim_Date d ON f.DateKey = d.DateKey
	WHERE d.DateKey IS NULL;

4.Null Check on Critical Columns

	SELECT 
   	SUM(CASE WHEN WaitTimeMinutes IS NULL THEN 1 ELSE 0 END) AS Null_WaitTime,
    	SUM(CASE WHEN PatientID IS NULL THEN 1 ELSE 0 END) AS Null_PatientID
	FROM Fact_Emergency_Visit;

5.Check Logical Validity
	1.Wait time should not be negative
	
		SELECT *
		FROM Fact_Emergency_Visit
		WHERE WaitTimeMinutes < 0;
	
	2.Length of Stay >= Wait + Consultation
	
		SELECT *
		FROM Fact_Emergency_Visit
		WHERE LengthOfStayMinutes < 
    		  (WaitTimeMinutes + ConsultationDurationMinutes);


6. Cardinality Check
	SELECT 
    (SELECT COUNT(*) FROM Fact_Emergency_Visit) AS FactCount,
    (SELECT COUNT(*) FROM Dim_Patient) AS PatientCount;

7.Distribution Check

	SELECT SeverityLevel, COUNT(*) 
	FROM Fact_Emergency_Visit
	GROUP BY SeverityLevel
	ORDER BY SeverityLevel;



