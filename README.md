<p align="center">
  <img src="https://www.postgresql.org/media/img/about/press/elephant.png" alt="Sublime's custom image"/>
</p>

# PostgreSQL
> Basic Introduction to SQL functions in Data Analysis


## Repository structure


# SQL Basic Operation
* Creating a table
```sql
-- Create Table
CREATE TABLE Cities(
  name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);
```

* Add/Insert values to a table
```sql
INSERT INTO
  Cities (name, country, population, area)
VALUES
  ('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brazil', 20935000, 3043);
```

* Retrieve Data from a table
```sql
-- Show all rows and columns
SELECT * FROM Cities;
```
```sql
-- Retrieve specific column data
SELECT name, country FROM Cities;
```

* Calculated columns
> Mathematical functions:
```sql
SELECT
  name,
  population / area AS population_density
FROM
  Cities;
```
* String manipulation
```sql
SELECT
  name || ', ' || country AS location
FROM
  Cities;
  
-- Same as:
SELECT
  CONCAT(UPPER(name), ', ', UPPER(country)) AS location
FROM
  Cities;
```



## SQL Intermediate

## Advanced SQL
