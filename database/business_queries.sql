
-- Task 1 :  List drivers and the total number of rides they have completed.
SELECT D.DriverId, D.Dname, COUNT(RHR.DriverId) AS TotalRidesCompleted
FROM Driver D
LEFT JOIN RideHistoryRecord RHR ON D.DriverId = RHR.DriverId
GROUP BY D.DriverId, D.Dname;


-- Task 2 : Find the average rating of drivers who have completed more than 50 rides.
SELECT D.DriverId, D.Dname, AVG(DR.RatingNumber) AS AverageRating FROM Driver D JOIN DriverRating DR ON D.DriverId = DR.DriverId
GROUP BY D.DriverId, D.Dname
HAVING COUNT(DR.DriverId) > 50;


-- Task 3 : List the names of passengers who have used CityWheels more than 20 times.
SELECT P.PName
FROM Passenger P inner JOIN RideBooking RB ON P.PassengerId = RB.PassengerId
GROUP BY P.PassengerId, P.PName
HAVING COUNT(RB.PassengerId) > 20;

-- Task 4 : Identify drivers who have never received a rating below 4.
 SELECT D.DriverId, D.Dname
FROM Driver D
LEFT JOIN DriverRating DR ON D.DriverId = DR.DriverId
GROUP BY D.DriverId, D.Dname
HAVING COALESCE(MIN(DR.RatingNumber), 5) >= 4;

-- Task 5 : Find the total number of rides completed in each month of the current year.
SELECT MONTH(EndingTime) AS Month, COUNT(*) AS TotalRidesCompleted
FROM RideHistoryRecord
WHERE YEAR(EndingTime) = YEAR(CURRENT_DATE())
GROUP BY MONTH(EndingTime);

-- Task 6 : Show drivers who have completed rides with at least three different passengers.
SELECT D.DriverId, D.Dname
FROM Driver D
JOIN RideHistoryRecord RHR ON D.DriverId = RHR.DriverId
GROUP BY D.DriverId, D.Dname
HAVING COUNT(DISTINCT RHR.PassengerId) >= 3;


-- Task 7 : Determine the most popular destination among all rides. 
SELECT Location AS MostPopularDestination, COUNT(*) AS TotalRides
FROM RideHistoryRecord
GROUP BY Location
ORDER BY TotalRides DESC
LIMIT 1;


-- Task 8 : Identify the most common issue reported in support tickets.
SELECT IssueDetail AS MostCommonIssue, COUNT(*) AS TotalOccurrences
FROM PassengerSupport
GROUP BY IssueDetail
ORDER BY TotalOccurrences DESC
LIMIT 1;


-- Task 9 : Show the total earnings for each driver in the current year.
SELECT DriverId, SUM(DriverEarning) AS TotalEarnings
FROM RideBooking GROUP BY DriverId;

-- Task 10 : Get a list of all promotions that are currently active and expire within the next 30 days.
SELECT *
FROM Offers
WHERE NOW() BETWEEN Startingdate AND DATE_ADD(endingdate, INTERVAL 30 DAY);