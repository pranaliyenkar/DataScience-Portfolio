-- 03_Data_Load.sql


BULK INSERT Dim_Date
FROM 'C:\Projects\Emergency-Department-Analytics\Data\dim_date.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');

BULK INSERT Dim_Patient
FROM 'C:\Projects\Emergency-Department-Analytics\Data\dim_patient.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');

BULK INSERT Dim_Doctor
FROM 'C:\Projects\Emergency-Department-Analytics\Data\dim_doctor.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');

BULK INSERT Dim_Department
FROM 'C:\Projects\Emergency-Department-Analytics\Data\dim_department.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');

BULK INSERT Fact_Emergency_Visit
FROM 'C:\Projects\Emergency-Department-Analytics\Data\Fact_Emergency_Visit.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');