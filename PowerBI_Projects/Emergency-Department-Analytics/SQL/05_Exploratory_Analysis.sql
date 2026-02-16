-- 05_Exploratory_Analysis.sql

1.Total Patients Per Day
	SELECT 
    	d.FullDate,
   	COUNT(f.VisitID) AS TotalPatients
	FROM Fact_Emergency_Visit f
	JOIN Dim_Date d ON f.DateKey = d.DateKey
	GROUP BY d.FullDate
	ORDER BY d.FullDate;

2.Average Wait Time Overall
	SELECT 
    	AVG(WaitTimeMinutes) AS AvgWaitTime
	FROM Fact_Emergency_Visit;

3.Severity Impact Analysis
	SELECT 
  	  SeverityLevel,
  	  AVG(WaitTimeMinutes) AS AvgWaitTime,
	AVG(LengthOfStayMinutes) AS AvgLOS,
 	   COUNT(*) AS TotalVisits
	FROM Fact_Emergency_Visit
	GROUP BY SeverityLevel
	ORDER BY SeverityLevel;
4.Wait Time by Doctor

	SELECT 
 	d.DoctorName,
   	 AVG(f.WaitTimeMinutes) AS AvgWaitTime
	FROM Fact_Emergency_Visit f
	JOIN Dim_Doctor d ON f.DoctorID = d.DoctorID
	GROUP BY d.DoctorName
	ORDER BY AvgWaitTime DESC;

5.Weekend vs Weekday Wait Time

	SELECT 
    	d.IsWeekend,
    	AVG(f.WaitTimeMinutes) AS AvgWaitTime
	FROM Fact_Emergency_Visit f
	JOIN Dim_Date d ON f.DateKey = d.DateKey
	GROUP BY d.IsWeekend;

6.Patients Per Doctor Per Day

	SELECT 
    d.FullDate,
    f.DoctorID,
    COUNT(*) AS PatientsHandled
FROM Fact_Emergency_Visit f
JOIN Dim_Date d ON f.DateKey = d.DateKey
GROUP BY d.FullDate, f.DoctorID
ORDER BY d.FullDate;

7.Wait Time Trend by Month

	SELECT 
    d.Year,
    d.Month,
    AVG(f.WaitTimeMinutes) AS AvgWaitTime
FROM Fact_Emergency_Visit f
JOIN Dim_Date d ON f.DateKey = d.DateKey
GROUP BY d.Year, d.Month
ORDER BY d.Year, d.Month;

8.Patients Waiting More Than 60 Minutes

	SELECT 
    COUNT(*) AS BreachCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Fact_Emergency_Visit) AS BreachPercent
FROM Fact_Emergency_Visit
WHERE WaitTimeMinutes > 60;

9.Average LOS by Outcome

	SELECT 
    	VisitOutcome,
    	AVG(LengthOfStayMinutes) AS AvgLOS
	FROM Fact_Emergency_Visit
	GROUP BY VisitOutcome;

10.Top 5 Busiest Days

	SELECT TOP 5
    	d.FullDate,
    	COUNT(*) AS TotalPatients
	FROM Fact_Emergency_Visit f
	JOIN Dim_Date d ON f.DateKey = d.DateKey
	GROUP BY d.FullDate
	ORDER BY TotalPatients DESC;

11.Rank Doctors by Performance

	SELECT 
    	d.DoctorName,
    	AVG(f.WaitTimeMinutes) AS AvgWaitTime,
    	RANK() OVER (ORDER BY AVG(f.WaitTimeMinutes)) AS PerformanceRank
	FROM Fact_Emergency_Visit f
	JOIN Dim_Doctor d ON f.DoctorID = d.DoctorID
	GROUP BY d.DoctorName;

12.Identify Peak Hour Bottleneck

	SELECT 
    	DATEPART(HOUR, ArrivalTime) AS ArrivalHour,
    	AVG(WaitTimeMinutes) AS AvgWaitTime,
    	COUNT(*) AS PatientVolume
	FROM Fact_Emergency_Visit
	GROUP BY DATEPART(HOUR, ArrivalTime)
	ORDER BY AvgWaitTime DESC;

13.Correlation Between Volume and Wait Time (Daily)

	SELECT 
    	d.FullDate,
   	COUNT(*) AS DailyVolume,
    	AVG(f.WaitTimeMinutes) AS AvgWaitTime
	FROM Fact_Emergency_Visit f
	JOIN Dim_Date d ON f.DateKey = d.DateKey
	GROUP BY d.FullDate;

14.Wait Time Distribution Bands


	SELECT 
   	CASE 
        	WHEN WaitTimeMinutes < 15 THEN '0-15'
        	WHEN WaitTimeMinutes < 30 THEN '15-30'
        	WHEN WaitTimeMinutes < 60 THEN '30-60'
        	ELSE '60+'
    	END AS WaitBand,
    	COUNT(*) AS VisitCount,
    	COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS Percentage
	FROM Fact_Emergency_Visit
	GROUP BY 
   	 CASE 
     	   WHEN WaitTimeMinutes < 15 THEN '0-15'
      	  WHEN WaitTimeMinutes < 30 THEN '15-30'
      	  WHEN WaitTimeMinutes < 60 THEN '30-60'
      	  ELSE '60+'
    	END;

15.Doctor Workload Inequality

	SELECT 
    	DoctorID,
    	COUNT(*) AS PatientsHandled,
    	round(PERCENT_RANK() OVER (ORDER BY COUNT(*)) ,2 ) AS LoadPercentile
	FROM Fact_Emergency_Visit
	GROUP BY DoctorID;


