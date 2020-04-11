
CREATE TABLE people (
    peopleid int NOT NULL AUTO_INCREMENT, 
    name varchar(10) NOT NULL,
	PRIMARY KEY (peopleid)
);

CREATE TABLE vehicles (
	vehicleid int NOT NULL AUTO_INCREMENT,
    name varchar(10) NOT NULL,
	PRIMARY KEY (vehicleid)
);

CREATE TABLE pets (
	petid int NOT NULL AUTO_INCREMENT,
    name varchar(10) NOT NULL,
	PRIMARY KEY (petid)
);

CREATE TABLE people_vehicles (
	peopleid int NOT NULL,
	vehicleid int NOT NULL
);

CREATE TABLE people_pets (
	peopleid int NOT NULL,
	petid int
);

INSERT INTO people (name)
VALUES ('John'), 
	   ('Mary'), 
	   ('Chen');

INSERT INTO vehicles (name)
VALUES ('Truck'), 
       ('Car'), 
       ('Bike');

INSERT INTO pets (name)
VALUES ('Dog'), 
       ('Cat'), 
       ('Parrot');

INSERT INTO people_vehicles (peopleid, vehicleid)
VALUES (2, 1),
	   (1, 2),
	   (1, 2),
	   (1, 1),
	   (1, 1);

INSERT INTO people_pets (peopleid, petid)
VALUES (1, 1),
       (3, 3),
	   (3, 2);

