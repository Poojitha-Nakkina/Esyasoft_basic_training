use Pooj

create table Customers(
     CustomerId int primary key,
	 CustomerName varchar(50),
	 CustomerAddress varchar(100),
	 Region varchar(10)
)


create table SmartMeterReadings(
     MeterId int ,
	 CustomerId int,
	 CustomerLocation varchar(20),
	 InstalledDate Date,
	 ReadingDateTime DATETIME,
	 EnergyConsumed float,
	 foreign key (CustomerId) references Customers(CustomerId)
)


insert into Customers values
(1, 'Krishna' , 'Gujarat','East'),
(2,'Oggy' , 'Kashmir','North'),
(3, 'Doremon' , 'Madhyapradesh' , 'North'),
(4,'Shinchan' , 'Tamilnadu','South'),
(5, 'Barbie' , 'Sikkim' , 'East')

select * from Customers


insert into SmartMeterReadings values
(301, 1 ,'basement' , '2024-07-15' , '2024-07-15 10:00:00' , 35.0 ),
(302, 2 ,'roof' , '2024-03-07' , '2024-03-07 08:24:40' , 24.5 ),
(303, 4 ,'basement' , '2024-11-24' , '2024-11-24 14:25:37' , 9.7 ),
(304, 5 ,'basement' , '2025-01-25' , '2025-01-25 15:36:30' , 55.5 ),
(305, 3,'roof' , '2023-03-09' , '2023-03-09 11:45:09' , 40.1 )


select * from SmartMeterReadings

/*Fetch all smartmeters readings where energyconsumed is between 10 and 50 */

select * from SmartMeterReadings where EnergyConsumed between 10 and 50

select * from SmartMeterReadings where InstalledDate between '2024-01-01' and '2024-12-31'

select * from SmartMeterReadings where InstalledDate < '2024-06-30'


insert into SmartMeterReadings values
(301, 1 ,'basement' , '2024-07-15' , '2024-07-17 08:00:00' , 27.0 ),
(301, 1 ,'basement' , '2024-07-15' , '2024-07-19 13:00:00' , 45.0 ),
(302, 2 ,'roof' , '2024-03-07' , '2024-03-10 08:24:40' , 20.5 ),
(302, 2 ,'roof' , '2024-03-07' , '2024-03-11 11:24:40' , 30.5 ),

(304, 5 ,'basement' , '2025-01-25' , '2025-01-29 11:36:29' , 50.7 ),
(304, 5 ,'basement' , '2025-01-25' , '2025-01-27 17:36:29' , 18.7 ),
(305, 3,'roof' , '2023-03-09' , '2023-03-11 12:43:09' , 59.5)


select  CustomerId,AVG(EnergyConsumed) as  AvgEnergyConsumed , MAX(EnergyConsumed) as MaxEnergyConsumed 
from SmartMeterReadings group by MeterId,CustomerId