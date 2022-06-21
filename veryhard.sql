-- Very Hard: Copy the table from your Very Easy Challenge
-- Write a query to add in three cars at once 
-- Write a query to add in prices and colors for each of these cars 
-- Write a query to put the Make and Model together in one column 
-- Create a new query that adds an additional column to the results to show how many cars have the same Make.
CREATE TABLE IF NOT EXISTS cars_copy
SELECT * FROM cars;
SELECT * FROM cars_copy;

INSERT INTO cars_copy (make, model, year) 
VALUES("Bugatti", "Veyron", 2011),
("Audi", "A7", 2012),
("McLaren", "720S", 2022);
SELECT * FROM cars_copy;
ALTER TABLE cars_copy
ADD COLUMN
price int,
ADD COLUMN
color text;

UPDATE cars_copy
SET
color="insert color here";
UPDATE cars_copy
SET 
price="0";

SELECT CONCAT(make,' ',model) AS make_Model
FROM cars_copy;

ALTER TABLE cars_copy
ADD COLUMN
same_make text;
SELECT * FROM cars_copy;
SELECT COUNT(make) as same_make
FROM cars_copy
GROUP BY make;
-- not sure how to put data into column for same_make


