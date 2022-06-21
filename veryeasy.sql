-- Very Easy: Create a table with your top three cars and include make, model, year.
-- Create a query to add in two more cars
USE MyGI;
CREATE TABLE cars(
make TEXT,
model TEXT,
year YEAR);
INSERT INTO cars (make, model, year)
VALUES("Bentley", "Flying Spur", 2022),
("Koenigsegg", "Gemera", 2021),
("Bugatti", "La Voiture Noire", 2019); 
SELECT * FROM cars;
INSERT INTO cars (make, model, year)
VALUES("McLaren", "Senna", 2018),
("Mazzanti", "Evantra", 2013);

