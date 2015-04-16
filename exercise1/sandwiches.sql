--Places where Jones can eat with a nested query--

SELECT CONCAT (lname, ', ', address) as Places from Locations where lname in 
  (select S.location from Sandwiches S join Tastes T Using(filling) where T.name = "Jones");


--Places where Jones can eat without a nested query--

select CONCAT(L.lname, ', ', L.address) as Places from
  (Sandwiches S JOIN Tastes T Using(filling) ) join  Locations L where T.name = "Jones"  AND S.location = L.lname;



--for each location, the number of people who can eat there 