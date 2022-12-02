-- 1. Write a query that returns all playlist names;

-- Code:
-- SELECT Name FROM Track

============================ Magroove SQL Test ============================

-- 2. Write a query that returns the 3 oldest employees who live in Calgary. 
-- The resultant table should include the Employee's full name and job position;

-- Code:
-- SELECT FirstName, LastName, Title, HireDate, City
-- FROM Employee
-- WHERE City = 'Calgary' AND datetime(HireDate) ORDER BY HireDate LIMIT 3

============================ Magroove SQL Test ============================

-- 3. Write a query that returns the number of tracks with same genre;

-- Code:
-- SELECT GenreID, COUNT (*) 
-- FROM Track 
-- GROUP BY (GenreID) 

============================ Magroove SQL Test ============================

-- 4. Write a query that returns the top 10 longest albums. 
-- The resultant table should include the Album's ID and total milliseconds;

-- Code:
-- SELECT Milliseconds, AlbumId
-- FROM Track
-- WHERE Milliseconds ORDER BY Milliseconds DESC LIMIT 10

============================ Magroove SQL Test ============================

-- 5. Write a query that returns date and total + basic Customer info for each Invoice. (HINT: Simple join);
-- Code:
-- SELECT FirstName, LastName, BillingAddress, City, Phone, InvoiceDate, Total
-- FROM Customer JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId

============================ Magroove SQL Test ============================

-- 6. Write a query that returns the name of all tracks in Playlist 1; 
-- (HINT: Use subquery, no need for join)

-- Code:

-- SELECT p.Name as "Playlist Name", Count(pt.TrackId) as "Number of Tracks" 
-- FROM Playlist p, PlaylistTrack pt 
-- WHERE p.PlayListId == pt.PlayListId 
-- GROUP BY p.PLaylistId;


-- SELECT PlaylistId, TrackId
-- FROM PlaylistTrack
-- WHERE PlaylistId = (
-- 	SELECT PlaylistId
--   	FROM PlaylistTrack
--   	Where PlaylistId
-- )

============================ Magroove SQL Test ============================

-- 7. Write a query that returns all employees who are managers. 
-- The resultant table should include the Employee's full name and email;

-- Code:
-- SELECT Title, FirstName, LastName, Email
-- FROM Employee 
-- WHERE Title LIKE('%Manager%')

============================ Magroove SQL Test ============================

-- 8. Write a query that returns the name of top 10 best selling artists;

--Code:
-- SELECT ar.Name, 
-- COUNT(il.TrackId) 
-- FROM Artist ar, Album al, Track t, InvoiceLine il 
-- Where ar.ArtistId == al.ArtistId 
-- AND al.AlbumId == t.AlbumId 
-- AND t.TrackId == il.TrackId 
-- GROUP BY ar.Name ORDER BY COUNT(il.TrackId) 
-- DESC LIMIT 10;

============================ Magroove SQL Test ============================

-- 9. Write a query that returns the employee who made the most sales in 2009;

--Code:
-- SELECT e.FirstName, e.LastName, SUM(i.Total) as "Sales" 
-- FROM Employee e, Customer c, Invoice i 
-- Where e.EmployeeId == c.SupportRepId 
-- AND c.CustomerId == i.CustomerId 
-- GROUP By e.FirstName LIMIT 1;