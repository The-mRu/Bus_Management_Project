CREATE TABLE category(
	category varchar(30) NOT NULL  PRIMARY KEY, 
	seats  INTEGER NOT NULL,
	oil  NUMERIC NOT NULL,
	salary NUMERIC NOT NULL
);



CREATE TABLE driver(
	driver_id varchar(30) PRIMARY KEY,
	name varchar(50),
	age INTEGER NOT NULL,
 	license_no  varchar(30)  NOT NULL
);



CREATE TABLE bus (
    bus_id varchar(20) PRIMARY KEY,
    category varchar(30) NOT NULL REFERENCES category(category) ON DELETE CASCADE,
    license_no varchar(30) NOT NULL,
    assign varchar(30) NOT NULL
);


CREATE TABLE route(
	route_name varchar(30) PRIMARY KEY,
	distance NUMERIC NOT NULL
);



CREATE TABLE trip (
  driver_id varchar(30) NOT NULL,
  bus_id varchar(20) NOT NULL,
  date DATE NOT NULL,
  route_name VARCHAR(30) NOT NULL,
  FOREIGN KEY (driver_id) REFERENCES driver(driver_id) ON DELETE CASCADE,
  FOREIGN KEY (bus_id) REFERENCES bus(bus_id) ON DELETE CASCADE,
  FOREIGN KEY (route_name) REFERENCES route(route_name) ON DELETE CASCADE
);


CREATE TABLE maintanance (
  bus_id varchar(20) NOT NULL,
  driver_id varchar(30) NOT NULL,
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
	category,seats,oil,salary
)
VALUES
	('mini',30,0.15,1500),
	('medium',50,0.2,1700),
	('big',65,0.25,2000),
	('double_decker',120,0.35,2500);
---select *from category


INSERT INTO bus(
	bus_id,category,license_no,assign)
	VALUES
	('01' ,'mini', 'CTG-LA 11-1234' ,'student' ),
	('02' ,'medium', 'DHA-LA 11-7923' ,'teacher' ),
	('03' ,'big', 'CTG-LA 11-1235' ,'staff' ),
	('04' ,'double_decker', 'CTG-LA 11-1236' ,'student' ),
	('05' ,'mini', 'CTG-LA 11-1244' ,'student' ),
	('06' ,'medium', 'DHA-LA 11-7943' ,'staff' ),
	('07' ,'big', 'CTG-LA 11-1255' ,'teacher' ),
	('08' ,'double_decker', 'CTG-LA 11-1266' ,'student' );
---select *from bus	
	

IINSERT INTO route(
	route_name,distance
)
VALUES
	('agrabad',28),
	('bot',24),
	('gec',26),
	('chawkbazar',25),
	('kotuwali',30),
	('hathhazari',25);
---select * from route



INSERT INTO trip(
	driver_id,bus_id,date,route_name
)
VALUES
	( '1', '01','2023-10-03','bot'),
	( '2', '02','2023-10-03','gec'),
	( '3', '03','2023-10-03','chawkbazar'),
	( '4', '04','2023-10-03','agrabad'),
	( '5', '05','2023-10-03','kotuwali'),
	( '6', '06','2023-10-03','agrabad'),
 	( '7', '07','2023-10-03','bot');
	
	
---select * from trip 
