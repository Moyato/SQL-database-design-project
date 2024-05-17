create database hoteldataset;

use hoteldataset;

create table hoteldataset1(
Customer_ID INT,
Nationality	TEXT,
Age	INT,
DaysSinceCreation INT,	
NameHash	varchar(255),
DocIDHash	varchar(255),
AverageLeadTime	INT,
LodgingRevenue	decimal(10,2),
OtherRevenue	decimal(10,2),
BookingsCanceled	INT,
BookingsNoShowed	INT,
BookingsCheckedIn	INT,
PersonsNights	INT,
RoomNights	INT,
DaysSinceLastStay	INT,
DaysSinceFirstStay	INT,
DistributionChannel	TEXT,
MarketSegment	TEXT,
SRHighFloor	INT,
SRLowFloor	INT,
SRAccessibleRoom INT,	
SRMediumFloor	INT,
SRBathtub	INT,
SRShower	INT,
SRCrib	INT,
SRKingSizeBed	INT,
SRTwinBed	INT,
SRNearElevator	INT,
SRAwayFromElevator	INT,
SRNoAlcoholInMiniBar	INT,
SRQuietRoom INT 
);

select *
from hoteldataset1;

CREATE TABLE IF NOT EXISTS customers AS
SELECT DISTINCT Customer_ID,
    Nationality,Age,
DistributionChannel,MarketSegment,
NameHash,DocIDHash
from hoteldataset1;
	
    select* from customers;
    
CREATE TABLE IF NOT EXISTS records AS
SELECT DISTINCT DocIDHash,
AverageLeadTime,PersonsNights,
RoomNights,DaysSinceLastStay,
DaysSinceFirstStay	
from hoteldataset1;

select * from records;

CREATE TABLE IF NOT EXISTS revenue AS
SELECT DISTINCT DocIDHash,LodgingRevenue,OtherRevenue 
from hoteldataset1;

select * from revenue;

CREATE TABLE IF NOT EXISTS bookings AS
SELECT DocIDHash,BookingsCanceled, BookingsNoShowed, BookingsCheckedIn,DaysSinceCreation
from hoteldataset1;

select * from bookings;

CREATE TABLE IF NOT EXISTS hotel_accomendations AS
SELECT DocIDHash,SRHighFloor, SRLowFloor, SRAccessibleRoom,SRMediumFloor,SRBathtub, SRShower, SRCrib, SRKingSizeBed, SRTwinBed,SRNearElevator,	
SRAwayFromElevator,SRNoAlcoholInMiniBar,SRQuietRoom
from hoteldataset1;

select * from hotel_accomendations
