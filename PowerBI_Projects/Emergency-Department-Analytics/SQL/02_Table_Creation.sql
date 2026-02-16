-- 02_Table_Creation.sql

CREATE TABLE Dim_Date (
    DateKey INT PRIMARY KEY,
    FullDate DATE,
    Day INT,
    Month INT,
    MonthName VARCHAR(20),
    Quarter INT,
	WeekNumber INT,
DayName VARCHAR(50),
IsWeekend INT
);

CREATE TABLE Dim_Patient (
    PatientID INT PRIMARY KEY,
    Gender VARCHAR(10),
    Age INT,
   City VARCHAR(50)
);

CREATE TABLE Dim_Doctor (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(100),
    Specialty VARCHAR(100) ,
	ExperienceYears INT

);

CREATE TABLE Dim_Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
	Unit VARCHAR(100)
);

CREATE TABLE Fact_Emergency_Visit (
    VisitID INT PRIMARY KEY,
    DateKey INT,
    PatientID INT,
    DoctorID INT,
    DepartmentID INT,
    ArrivalTime DATE,
    WaitTimeMinutes INT,
    ConsultationStartTime DATE,
    ConsultationEndTime DATE
    ConsultationDurationMinutes INT,
    LengthOfStayMinutes INT,
    DischargeTime DATE
    SeverityLevel INT,
    VisitOutcome VARCHAR(50),
    IsAdmittedFlag INT,

    FOREIGN KEY (DateKey) REFERENCES Dim_Date(DateKey),
    FOREIGN KEY (PatientID) REFERENCES Dim_Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Dim_Doctor(DoctorID),
    FOREIGN KEY (DepartmentID) REFERENCES Dim_Department(DepartmentID)
);