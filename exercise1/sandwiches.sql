--Places where Jones can eat with a nested query--

mysql> SELECT CONCAT (lname, ', ', address) as Places from Locations where lname in 
    ->   (select S.location from Sandwiches S join Tastes T Using(filling) where T.name = "Jones");
+---------------------+
| Places              |
+---------------------+
| O'Neils, Pearse St  |
| Buttery, College St |
+---------------------+
2 rows in set (0.00 sec)




--Places where Jones can eat without a nested query--

mysql> select CONCAT(L.lname, ', ', L.address) as Places from   (Sandwiches S JOIN Tastes T Using(filling) ) join  Locations L where T.name = "Jones"  AND S.location = L.lname;
+---------------------+
| Places              |
+---------------------+
| O'Neils, Pearse St  |
| Buttery, College St |
+---------------------+
2 rows in set (0.01 sec)





--for each location, the number of people who can eat there--

mysql> select Location, Count(Distinct Name) as 'Nos of of Customers' from Tastes JOIN Sandwiches Using(filling) GROUP BY Location;
+----------+---------------------+
| Location | Nos of of Customers |
+----------+---------------------+
| Buttery  |                   3 |
| Lincoln  |                   2 |
| O'Neils  |                   3 |
| Old Nag  |                   2 |
+----------+---------------------+
4 rows in set (0.04 sec)
