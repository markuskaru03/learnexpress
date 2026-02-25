-- select all columns and rows from cars table
SELECT * FROM cars;
-- select only id, car and car_year columns from cars table
SELECT id, car, car_year FROM cars;
-- select all columns from cars table where car is "Toyota"
SELECT * FROM cars WHERE car='Toyota';
-- select all columns from cars table where car is 2001 "BMW"
SELECT * FROM cars WHERE car='BMW' AND car_year='2001';
-- select id, first_name, last_name and debt from cars table where country is "China"
SELECT id, first_name, last_name, debt FROM cars WHERE country='China';
-- select all columns where debt is higher than 5000
SELECT * FROM cars WHERE debt>5000;
-- select all columns where debt is lower or equal to than 5000
SELECT * FROM cars WHERE debt<=5000;
-- get sum of all debt in cars table where country is "Poland"
SELECT SUM(debt) FROM cars WHERE country='Poland';
-- get average debt for all BMW cars
SELECT AVG(debt) FROM cars WHERE car='BMW'
-- get all columns for cars table where last_name starts with letter G
SELECT * FROM cars WHERE last_name LIKE 'G%';
-- get all columns for cars table where last_name starts with letter G or first_name ends with letter d
SELECT * FROM cars WHERE last_name LIKE 'G%' OR first_name LIKE '%D';
-- get all columns for cars table where last_name or first_name contains letter z
SELECT * FROM cars WHERE last_name LIKE '%Z%' OR first_name LIKE '%Z%';
-- get all columns for cars table where car is "Subaru" and sort them by car_year newer cars first
SELECT * FROM cars WHERE car='Subaru' ORDER BY car_year ASC;
-- return top 10 rows with highest debt (sort by debt and then return first 10)
SELECT * FROM cars ORDER BY debt LIMIT 10;
-- return next 10 with highest debt (skipping first 10)
SELECT * FROM cars ORDER BY debt LIMIT 10 OFFSET 10;
-- return all unique car types
SELECT DISTINCT car FROM cars;
-- return all "Ford" cars with year between 2000 - 2020
SELECT * FROM cars WHERE car='Ford' AND car_year BETWEEN 2000 and 2020;
-- return count of "Ford" cars with year between 2000 - 2020
SELECT COUNT(*) FROM cars WHERE car='Ford' AND car_year BETWEEN 2000 and 2020;
-- return all "Ford", "Jaguar" and "Ferrari" cars
SELECT * FROM cars WHERE car IN ('Ford', 'Jaguar', 'Ferrari');
-- insert row into cars where id is 1001, first_name is your first name and last_name is your last name
-- car is "Lada" year is 1968 country is "Estonia" and debt is 1456
INSERT INTO cars (id, first_name, last_name, car, car_year, country, debt)
VALUES ( 1001, 'Markus', 'Karu', 'Lada', '1968', 'Estonia', '1456');
-- Update all rows where country is 'Ukraine' and set debt to 0
UPDATE cars
SET country='Ukraine', debt='0'
WHERE id=1001;
-- Delete all rows where car year is less than 2000
DELETE FROM cars
WHERE car_year<2000;

SELECT * FROM cars
WHERE car_year<2000;

-- Create table "students" where there are fields id, first_name, last_name, average_grade, missed_lessons
CREATE TABLE students (
    id integer PRIMARY KEY AUTOINCREMENT,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    average_grade varchar(5),
    missed_lessons text
);
-- figure out reasonable types for those fields yourself
INSERT INTO students (id, first_name, last_name, average_grade, missed_lessons)
VALUES (1,'Joosep', 'Toots', '3.5', 'Matemaatika');
-- delete table students
DROP TABLE students
