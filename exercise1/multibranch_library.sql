--The name of all the library books published by Macmillian--

mysql> Select title from  Titles where publisher = 'Macmillian';
+----------+
| title    |
+----------+
| Sussanah |
| The Wife |
+----------+
2 rows in set (0.05 sec)



--branches that hold any books by Ann Brown (using a nested subquery).--

mysql> Select  bcode, Address from Branches where bcode IN (Select H.branch from Holdings H JOIN  Titles T  Using(title) WHERE T.author ='Ann Brown' );
+-------+---------------+
| bcode | Address       |
+-------+---------------+
| B1    | 2 Anglessa Rd |
| B3    | Grange X      |
+-------+---------------+
2 rows in set (0.00 sec)



--branches that hold any books by Ann Brown (without using a nested subquery)--
mysql> Select bcode, Address from  ( Holdings H JOIN Titles T Using(title)) join Branches B WHERE B.bcode = H.branch AND T.author ='Ann Brown';
+-------+---------------+
| bcode | Address       |
+-------+---------------+
| B1    | 2 Anglessa Rd |
| B3    | Grange X      |
+-------+---------------+
2 rows in set (0.00 sec)



--The total number of books held at each branch--
mysql> select branch, Sum(copies) AS "Total Nos of Books" from Holdings Group by branch;  
+--------+--------------------+
| branch | Total Nos of Books |
+--------+--------------------+
| B1     |                  6 |
| B2     |                  6 |
| B3     |                  9 |
+--------+--------------------+
3 rows in set (0.07 sec)
