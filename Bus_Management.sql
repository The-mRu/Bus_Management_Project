CREATE TABLE category(
	category_id varchar(20) PRIMARY KEY,
	category_name varchar(30) NOT NULL, 
	seats  INTEGER NOT NULL,
	oil_percentage  NUMERIC NOT NULL,
	salary_percantage NUMERIC NOT NULL
);



CREATE TABLE driver(
	driver_id INTEGER PRIMARY KEY,
	name varchar(50),
	age INTEGER NOT NULL,
 	license_no  varchar(30)  NOT NULL

);




CREATE TABLE bus (
    bus_id INTEGER PRIMARY KEY,
    category_id varchar(20) NOT NULL,
    license_no varchar(30) NOT NULL,
    assign varchar(10) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id) ON DELETE CASCADE
);


CREATE TABLE route(
	route_name varchar(30) PRIMARY KEY,
	oil NUMERIC NOT NULL,
	salary NUMERIC NOT NULL
);





CREATE TABLE trip (
  driver_id INT NOT NULL,
  bus_id INT NOT NULL,
  date DATE NOT NULL,
  route_name VARCHAR(30) NOT NULL,
  FOREIGN KEY (driver_id) REFERENCES driver(driver_id) ON DELETE CASCADE,
  FOREIGN KEY (bus_id) REFERENCES bus(bus_id) ON DELETE CASCADE,
  FOREIGN KEY (route_name) REFERENCES route(route_name) ON DELETE CASCADE
);


CREATE TABLE maintanance (
  bus_id INT NOT NULL,
  driver_id INT NOT NULL,
  issue VARCHAR(200) NOT NULL,
  estimated_cost NUMERIC NOT NULL,
  issue_date DATE NOT NULL,
  solved_status VARCHAR(30) NOT NULL,	
  FOREIGN KEY (driver_id) REFERENCES driver(driver_id) ON DELETE CASCADE,
  FOREIGN KEY (bus_id) REFERENCES bus(bus_id) ON DELETE CASCADE
);





//Inserting values:


INSERT INTO driver(
	driver_id,name,age,license_no
)
VALUES
	(01,'Ratul khan',25,'1234562'),
        (02,'Rashid khan',25,'1234562'),
	(03,'Muhammad Amir',29,'1234563'),
	(04,'Salman Ali',39,'1234564'),
	(05,'Ismail Alam',20,'1234565'),
	(06,'karim Uddain',45,'1234566'),
	(07,'jasim Jr',22,'1234567'),
	(08,'Kamal Hasan',37,'1234568');



INSERT INTO category(
	category_id,category_name,seats,oil_percentage,salary_percantage
)
VALUES
	('01' ,'AC BUS', 40 , 1.5 , 2 ),
	('02' ,'Mini AC BUS', 40 , 1.2 , 1.5 ),
	('03' , 'Non AC', 50 , 1 , 1 );


INSERT INTO bus(
	bus_id,category_id,license_no,assign
)
VALUES

	('01' ,'01', 'CTG-LA 11-1234' ,'idk' ),
	('02' ,'01', 'DHA-LA 11-7923' ,'idk' ),
	('03' ,'02', 'CTG-LA 11-1235' ,'idk' ),
	('04' ,'03', 'CTG-LA 11-1236' ,'idk' );
	

INSERT INTO route(
	route_name,oil,salary
)
VALUES

	('Agrabad to IIUC', 5 , 3000 ),
	('GSC to IIUC', 5 , 3000 ),
	('BoT to IIUC', 5 , 3500 );

INSERT INTO trip(
	driver_id,bus_id,date,route_name
)
VALUES

	( 1, 1,'2023-10-03','BoT to IIUC'),
	( 2, 2,'2023-10-03','GSC to IIUC'),
	( 3, 4,'2023-10-03','Agrabad to IIUC');
	

	