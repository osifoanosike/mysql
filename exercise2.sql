--QUESTION: Create a DB named "vtapp", create a db user named 'vtapp_user' and give him permissions to access vtappDB


mysql> CREATE DATABASE IF NOT EXISTS vtapp;
Query OK, 1 row affected (0.15 sec)

mysql> Show databases;
+----------------------+
| Database             |
+----------------------+
| information_schema   |
| SQLTutorialDB        |        |
| mysql                |
| performance_schema   |
| vtapp                |
+----------------------+
9 rows in set (0.12 sec)

mysql> Use vtapp
Database changed


mysql> create user test_user;
Query OK, 0 rows affected (0.37 sec)


mysql> GRANT ALL PRIVILEGES ON *.* TO "test_user";
Query OK, 0 rows affected (0.07 sec)



