CREATE DATABASE cardealership;
use cardealership;
create table dealership(
dealership_id   int auto_increment primary key,
name            varchar(50) ,
address         varchar(50) ,
phone           varchar(12)
);

create table vehicles(
vin int primary key,
sold varchar(5),
color varchar(50),
brand varchar(50)
);
create table inventory(
dealership_id int,
vin int,
foreign key (dealership_id) references dealership(dealership_id),
foreign key (vin) references vehicles(vin)
);
create table sales_contracts(
price double,
contract_year int,
id int auto_increment primary key,
vin int,
foreign key (vin) references vehicles (vin)
);

INSERT INTO dealership (name, address, phone) VALUES
('Auto Galaxy', '123 Main St, Denver, CO', '303-555-0101'),
('City Motors', '456 Elm Ave, Austin, TX', '512-555-0123'),
('Speed Wheels', '789 Maple Dr, Orlando, FL', '407-555-0198'),
('DriveLine Auto', '321 Oak Rd, Phoenix, AZ', '602-555-0145'),
('Urban AutoHub', '654 Pine Ln, Seattle, WA', '206-555-0111'),
('Prestige Motors', '987 Birch St, Miami, FL', '305-555-0180'),
('Metro Cars', '213 Cedar St, Dallas, TX', '214-555-0172'),
('Sunset Auto Mall', '876 Spruce Blvd, Los Angeles, CA', '323-555-0132'),
('Prime Auto Center', '135 Willow Rd, Chicago, IL', '773-555-0191'),
('NextGen Motors', '246 Aspen Dr, Atlanta, GA', '404-555-0155'),
('Highway Auto', '975 Palm St, Tampa, FL', '813-555-0129'),
('Capital Motors', '643 Redwood Ln, Sacramento, CA', '916-555-0188'),
('Riverside Autos', '302 Lakeview Dr, Boise, ID', '208-555-0177'),
('AutoPro Sales', '112 North St, Nashville, TN', '615-555-0190'),
('Starline Motors', '499 West End Rd, Houston, TX', '713-555-0113'),
('Legend Auto Group', '1888 Sierra Ave, Reno, NV', '775-555-0144'),
('TrueValue Cars', '27 Beacon St, Boston, MA', '617-555-0169'),
('Premier Rides', '338 Lake Rd, Madison, WI', '608-555-0182'),
('Everest Autos', '707 Summit Blvd, Denver, CO', '303-555-0175'),
('Canyon Auto Sales', '455 Canyon Dr, Tucson, AZ', '520-555-0116'),
('Elite Motors', '121 Skyline Rd, Charlotte, NC', '980-555-0133'),
('North Star Autos', '909 Aurora Ln, Anchorage, AK', '907-555-0108'),
('Bay Area Cars', '788 Bay St, San Francisco, CA', '415-555-0161'),
('Grand Auto World', '663 Main St, Indianapolis, IN', '317-555-0127'),
('Velocity Wheels', '534 Driftwood Blvd, San Diego, CA', '619-555-0186'),
('Infinity Motors', '301 Venture Way, Salt Lake City, UT', '801-555-0157'),
('Peak Auto Sales', '221 Mountain Rd, Asheville, NC', '828-555-0170'),
('TopGear Motors', '100 Speedway Blvd, Daytona, FL', '386-555-0119'),
('Greenlight Autos', '820 Signal Rd, Portland, OR', '503-555-0120'),
('Titan Auto Group', '900 Iron Horse Way, Detroit, MI', '313-555-0185');

INSERT INTO vehicles (vin, sold, color, brand) VALUES
(1001, 'yes', 'Red', 'Toyota'),
(1002, 'no', 'Blue', 'Honda'),
(1003, 'yes', 'Black', 'Ford'),
(1004, 'no', 'White', 'Chevrolet'),
(1005, 'yes', 'Gray', 'BMW'),
(1006, 'no', 'Silver', 'Nissan'),
(1007, 'yes', 'Green', 'Kia'),
(1008, 'no', 'Yellow', 'Volkswagen'),
(1009, 'yes', 'Orange', 'Hyundai'),
(1010, 'no', 'Beige', 'Mazda'),
(1011, 'yes', 'Brown', 'Jeep'),
(1012, 'no', 'Purple', 'Tesla'),
(1013, 'yes', 'Blue', 'Subaru'),
(1014, 'no', 'Black', 'Toyota'),
(1015, 'yes', 'White', 'Ford'),
(1016, 'no', 'Red', 'Chevrolet'),
(1017, 'yes', 'Gray', 'Honda'),
(1018, 'no', 'Silver', 'Kia'),
(1019, 'yes', 'Green', 'BMW'),
(1020, 'no', 'Orange', 'Hyundai'),
(1021, 'yes', 'Beige', 'Nissan'),
(1022, 'no', 'Yellow', 'Mazda'),
(1023, 'yes', 'Blue', 'Volkswagen'),
(1024, 'no', 'Black', 'Tesla'),
(1025, 'yes', 'Red', 'Subaru'),
(1026, 'no', 'White', 'Jeep'),
(1027, 'yes', 'Brown', 'Toyota'),
(1028, 'no', 'Purple', 'Ford'),
(1029, 'yes', 'Gray', 'Chevrolet'),
(1030, 'no', 'Silver', 'Honda');

INSERT INTO inventory (dealership_id, vin) VALUES
(1, 1001),
(2, 1002),
(3, 1003),
(4, 1004),
(5, 1005),
(6, 1006),
(7, 1007),
(8, 1008),
(9, 1009),
(10, 1010),
(11, 1011),
(12, 1012),
(13, 1013),
(14, 1014),
(15, 1015),
(16, 1016),
(17, 1017),
(18, 1018),
(19, 1019),
(20, 1020),
(21, 1021),
(22, 1022),
(23, 1023),
(24, 1024),
(25, 1025),
(26, 1026),
(27, 1027),
(28, 1028),
(29, 1029),
(30, 1030);


select * from dealership;

INSERT INTO sales_contracts (price, contract_year, vin) VALUES
(25000.00, 2022, 1001),
(18000.50, 2023, 1002),
(30500.75, 2024, 1003),
(15000.00, 2021, 1004),
(22000.00, 2025, 1005),
(19999.99, 2022, 1006),
(27000.00, 2023, 1007),
(18500.00, 2024, 1008),
(32000.00, 2021, 1009),
(24500.00, 2025, 1010),
(21000.00, 2023, 1011),
(23000.00, 2022, 1012),
(28000.00, 2021, 1013),
(31000.00, 2025, 1014),
(29500.00, 2024, 1015),
(26500.00, 2023, 1016),
(17500.00, 2022, 1017),
(21500.00, 2021, 1018),
(22500.00, 2025, 1019),
(23500.00, 2024, 1020),
(26000.00, 2022, 1021),
(20000.00, 2023, 1022),
(30000.00, 2024, 1023),
(27000.00, 2021, 1024),
(28000.00, 2025, 1025),
(25000.00, 2023, 1026),
(19500.00, 2022, 1027),
(28500.00, 2021, 1028),
(24000.00, 2024, 1029),
(22500.00, 2025, 1030);






