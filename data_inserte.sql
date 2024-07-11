// Insert data into Driver table
INSERT INTO driver (driver_id, name, age, license_no) VALUES 
('D202401', 'Ratul Khan', 25, '1234562'),
('D202402', 'Sarah Lee', 30, '6543210'),
('D202403', 'John Doe', 28, '7890123'),
('D202404', 'Alice Smith', 32, '5678901'),
('D202405', 'Bob Johnson', 26, '8901234'),
('D202406', 'Charlie Brown', 29, '2345678'),
('D202407', 'David Wilson', 31, '3456789'),
('D202408', 'Eva Green', 27, '4567890'),
('D202409', 'Frank White', 33, '5678902'),
('D202410', 'Grace Black', 24, '6789012'),
('D202411', 'Hannah Scott', 30, '7890124'),
('D202412', 'Ivan Clark', 26, '8901235'),
('D202413', 'Jack Hill', 28, '9012345'),
('D202414', 'Kathy Adams', 31, '9934566'),
('D202415', 'Liam Young', 32, '2345679'),
('D202416', 'Mia Martinez', 27, '3456781'),
('D202417', 'Noah King', 29, '4567891'),
('D202418', 'Olivia Baker', 33, '5678903'),
('D202419', 'Peter Wright', 25, '6789013'),
('D202420', 'Quinn Rivera', 30, '7890125');
('D202421', 'Arifur Rahman', 26, '8901236'),
('D202422', 'Masud Rana', 27, '9012346'),
('D202423', 'Rashidul Karim', 28, '9994568'),
('D202424', 'Jahangir Alam', 29, '2345670'),
('D202425', 'Shamim Hossain', 30, '3456782'),
('D202426', 'Moinul Islam', 31, '4567892'),
('D202427', 'Abdul Kader', 32, '5678904'),
('D202428', 'Saiful Islam', 33, '6789014'),
('D202429', 'Habibur Rahman', 24, '7890126'),
('D202430', 'Mizanur Rahman', 25, '8901237'),
('D202431', 'Azizul Haque', 26, '9012347'),
('D202432', 'Belal Hossain', 27, '1234569'),
('D202433', 'Delwar Hossain', 28, '2345671'),
('D202434', 'Ehsanul Haque', 29, '3456783'),
('D202435', 'Ferdous Ahmed', 30, '4567893'),
('D202436', 'Golam Rabbani', 31, '5678905'),
('D202437', 'Hamidul Islam', 32, '6789015'),
('D202438', 'Iqbal Hossain', 33, '7890127'),
('D202439', 'Jamal Uddin', 24, '8901238'),
('D202440', 'Kazi Shakil', 25, '9012348');


 
//insert category
 INSERT INTO category (category, seats, oil, salary) VALUES 
('AC Bus', 40, 5.5, 2.0),
('Non-AC Bus', 50, 6.0, 1.0),
('Mini Bus', 30, 7.0, 1.2),
('Local Bus', 60, 5.0, 0.8),
('Double Decker', 70, 4.5, 1.5),
('School Bus', 40, 6.5, 1.1),
('University Bus', 50, 6.2, 1.1),
('Tourist Bus', 45, 5.8, 2.0),
('City Bus', 55, 5.7, 1.0),
('Express Bus', 35, 6.8, 1.5),
('Shuttle Bus', 25, 7.2, 1.2),
('Intercity Bus', 60, 5.4, 1.8),
('VIP Bus', 20, 6.9, 2.5),
('Luxury Bus', 30, 7.0, 2.5),
('Sleeper Bus', 40, 5.5, 2.2),
('Electric Bus', 50, 3.5, 1.5),
('Hybrid Bus', 45, 4.0, 1.8),
('Airport Shuttle', 20, 4.5, 2.0),
('Rent-a-Bus', 50, 6.0, 1.0),
('Festival Special', 60, 5.0, 1.5);


//insert bus

INSERT INTO bus (bus_id, category, license_no, assign) VALUES 
('B202401', 'AC Bus', 'DHAKA-1234', 'VIP Passengers'),
('B202402', 'Non-AC Bus', 'CHITTAGONG-5678', 'General Public'),
('B202403', 'Mini Bus', 'DHAKA-9101', 'Short Trips'),
('B202404', 'Local Bus', 'DHAKA-1121', 'Everyone'),
('B202405', 'Double Decker', 'COX-3141', 'Tourists'),
('B202406', 'School Bus', 'DHAKA-5161', 'Students'),
('B202407', 'University Bus', 'DHAKA-7181', 'University Students'),
('B202408', 'Tourist Bus', 'SYLHET-9201', 'Tourists'),
('B202409', 'City Bus', 'DHAKA-1222', 'City Commuters'),
('B202410', 'Express Bus', 'DHAKA-3242', 'Long Distance Travelers'),
('B202411', 'Shuttle Bus', 'DHAKA-5262', 'Office Workers'),
('B202412', 'Intercity Bus', 'RAJSHAHI-7282', 'Intercity Travelers'),
('B202413', 'VIP Bus', 'DHAKA-9302', 'VIP Passengers'),
('B202414', 'Luxury Bus', 'DHAKA-1333', 'High-End Travelers'),
('B202415', 'Sleeper Bus', 'DHAKA-3353', 'Overnight Travelers'),
('B202416', 'Electric Bus', 'DHAKA-5373', 'Eco-Friendly Travelers'),
('B202417', 'Hybrid Bus', 'DHAKA-7393', 'Eco-Friendly Travelers'),
('B202418', 'Airport Shuttle', 'DHAKA-9404', 'Airport Passengers'),
('B202419', 'Rent-a-Bus', 'DHAKA-1414', 'Rental Service'),
('B202420', 'Festival Special', 'DHAKA-3434', 'Festival Participants');


//insert route
INSERT INTO route (route_name, distance, payment) VALUES 
-- Routes inside Dhaka City
('Dhanmondi to Uttara', 15.0, 150),
('Gulshan to Motijheel', 10.0, 100),
('Mirpur to Banani', 12.0, 120),
('Bashundhara to Shahbag', 8.0, 80),
('Jatrabari to Farmgate', 14.0, 140),

-- Routes inside Chittagong City
('Agrabad to Halishahar', 6.0, 60),
('Nasirabad to GEC', 5.0, 50),
('Pahartali to New Market', 7.0, 70),
('Kotwali to CEPZ', 9.0, 90),
('Chawkbazar to Oxygen', 8.5, 85),

-- Routes across Bangladesh
('Dhaka to Chittagong', 250.0, 2500),
('Dhaka to Sylhet', 240.0, 2400),
('Dhaka to Rajshahi', 200.0, 2000),
('Dhaka to Khulna', 250.0, 2500),
('Chittagong to Coxs Bazar', 150.0, 1500),
('Sylhet to Moulvibazar', 60.0, 600),
('Khulna to Jessore', 70.0, 700),
('Rajshahi to Bogra', 100.0, 1000),
('Barisal to Patuakhali', 90.0, 900),
('Rangpur to Dinajpur', 80.0, 800);


//insert trip

INSERT INTO trip (driver_id, bus_id, date, route_name) VALUES 
-- Assigning trips within Dhaka City
('D202402', 'B202401', '2024-07-12', 'Dhanmondi to Uttara'),
('D202403', 'B202402', '2024-07-12', 'Gulshan to Motijheel'),
('D202404', 'B202403', '2024-07-13', 'Mirpur to Banani'),
('D202405', 'B202404', '2024-07-13', 'Bashundhara to Shahbag'),
('D202406', 'B202405', '2024-07-14', 'Jatrabari to Farmgate'),

-- Assigning trips within Chittagong City
('D202407', 'B202406', '2024-07-14', 'Agrabad to Halishahar'),
('D202408', 'B202407', '2024-07-15', 'Nasirabad to GEC'),
('D202409', 'B202408', '2024-07-15', 'Pahartali to New Market'),
('D202410', 'B202409', '2024-07-16', 'Kotwali to CEPZ'),
('D202411', 'B202410', '2024-07-16', 'Chawkbazar to Oxygen'),

-- Assigning trips across Bangladesh
('D202412', 'B202411', '2024-07-17', 'Dhaka to Chittagong'),
('D202413', 'B202412', '2024-07-17', 'Dhaka to Sylhet'),
('D202414', 'B202413', '2024-07-18', 'Dhaka to Rajshahi'),
('D202415', 'B202414', '2024-07-18', 'Dhaka to Khulna'),
('D202416', 'B202415', '2024-07-19', 'Chittagong to Coxs Bazar'),
('D202417', 'B202416', '2024-07-19', 'Sylhet to Moulvibazar'),
('D202418', 'B202417', '2024-07-20', 'Khulna to Jessore'),
('D202419', 'B202418', '2024-07-20', 'Rajshahi to Bogra'),
('D202420', 'B202419', '2024-07-21', 'Barisal to Patuakhali'),
('D202402', 'B202420', '2024-07-21', 'Rangpur to Dinajpur');


// insert maintance
INSERT INTO maintanance (bus_id, driver_id, issue, estimated_cost, issue_date, solved_status) VALUES 
('B202401', 'D202402', 'Engine Overheating', 5000.00, '2024-07-10', 'Pending'),
('B202402', 'D202403', 'Brake System Fault', 3000.00, '2024-07-11', 'Resolved'),
('B202403', 'D202404', 'Suspension Issues', 2500.00, '2024-07-12', 'Pending'),
('B202404', 'D202405', 'Electrical Problem', 4000.00, '2024-07-13', 'Pending'),
('B202405', 'D202406', 'Transmission Fluid Leak', 3500.00, '2024-07-14', 'Resolved'),
('B202406', 'D202407', 'Battery Replacement', 2000.00, '2024-07-15', 'Resolved'),
('B202407', 'D202408', 'AC Not Cooling', 1500.00, '2024-07-16', 'Pending'),
('B202408', 'D202409', 'Tire Replacement', 1800.00, '2024-07-17', 'Resolved'),
('B202409', 'D202410', 'Fuel Injector Cleaning', 2200.00, '2024-07-18', 'Pending'),
('B202410', 'D202411', 'Gearbox Issues', 2800.00, '2024-07-19', 'Pending'),
('B202411', 'D202412', 'Headlight Repair', 1200.00, '2024-07-20', 'Resolved'),
('B202412', 'D202413', 'Wiper Blade Replacement', 1000.00, '2024-07-21', 'Resolved'),
('B202413', 'D202414', 'Air Filter Change', 800.00, '2024-07-22', 'Pending'),
('B202414', 'D202415', 'Oil Change', 600.00, '2024-07-23', 'Pending'),
('B202415', 'D202416', 'Coolant Flush', 1500.00, '2024-07-24', 'Resolved'),
('B202416', 'D202417', 'Brake Pad Replacement', 2000.00, '2024-07-25', 'Pending'),
('B202417', 'D202418', 'Windshield Crack Repair', 300.00, '2024-07-26', 'Resolved'),
('B202418', 'D202419', 'Exhaust System Repair', 2800.00, '2024-07-27', 'Pending'),
('B202419', 'D202420', 'Alternator Replacement', 1800.00, '2024-07-28', 'Pending'),
('B202420', 'D202402', 'Spark Plug Change', 500.00, '2024-07-29', 'Resolved');



