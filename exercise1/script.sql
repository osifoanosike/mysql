--script to create table--
CREATE TABLE testing_table ()
  name varchar(100),
  contact_name varchar(100),
  roll_no varchar
);

--script to delete table column--
ALTER TABLE testing_table DROP COLUMN name;


--script to rename table column--
ALTER TABLE testing_table CHANGE contact_name username varchar(100);

ALTER TABLE testing_table 
  ADD COLUMN first_name varchar(50),
  ADD COLUMN last_name varchar(50);

ALTER TABLE testing_table MODIFY COLUMN roll_no int;