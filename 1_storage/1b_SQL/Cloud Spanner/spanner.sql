--Spanner SQL Query
SELECT * FROM `spanner.instance.table`;

--Spanner SQL Query Example using Table and Column
SELECT * FROM `spanner.instance.table` WHERE `column` = 'value';

--Spanner SQL Query Example using Table and Column and TimeStamp
SELECT * FROM `spanner.instance.table` WHERE `column` = 'value' AND `timestamp` > '2018-01-01';

--Spanner SQL Query Example gets latest timestamp
SELECT MAX(`timestamp`) FROM `spanner.instance.table`;

--Spanner SQL Query Example gets latest timestamp and returns the hour and minutes value associated with it
SELECT MAX(`timestamp`), HOUR(`timestamp`), MINUTE(`timestamp`) FROM `spanner.instance.table`;




