CREATE DATABASE world;

USE world;

CREATE TABLE city
(
    Id          int,
    Name        varchar(255),
    CountryCode varchar(255),
    District    varchar(255),
    Population  int
);

INSERT INTO city (Id, Name, CountryCode, District, Population)
VALUES (1, 'Polska', 'PL', 'Pomorze', 39000000);

INSERT INTO city (Id, Name, CountryCode, District, Population)
VALUES (2, 'Niemcy', 'DE', 'Bawaria', 88000000);

SELECT * FROM city;