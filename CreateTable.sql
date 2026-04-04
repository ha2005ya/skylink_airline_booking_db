-- Create table for passenger

CREATE TABLE passenger(
passengerID NUMBER PRIMARY KEY,
firstName VARCHAR2(25) ,
lastName VARCHAR2(25) , 
passportNumber VARCHAR2(25) NOT NULL UNIQUE ,
phoneNumber VARCHAR2(20) NOT NULL ,
nationality VARCHAR2(50) ,
passportExpiryDate DATE NOT NULL ,
dateOfBirth DATE NOT NULL ,
gender VARCHAR2(10) NOT NULL ,
CONSTRAINT chk_gender
CHECK(gender IN ('Male' , 'Female'))
);


-- Create table for airport

CREATE TABLE AIRPORT(
airportID NUMBER PRIMARY KEY ,
name VARCHAR2(100) ,
city VARCHAR2(50) ,
country VARCHAR2(50) ,
airportCode VARCHAR2(10) NOT NULL UNIQUE
);


-- Create table for flight

CREATE TABLE flight(
flightID NUMBER PRIMARY KEY ,
flightNumber NUMBER  ,
flightDate DATE ,
departureTime DATE ,
arrivalTime DATE ,
depart_airportID NUMBER NOT NULL ,
arrival_airportID NUMBER NOT NULL ,
status VARCHAR2(20) NOT NULL ,
capacity NUMBER NOT NULL ,
CONSTRAINT chk_airports
CHECK(depart_airportID <> arrival_airportID),
CONSTRAINT chk_capacity
CHECK(capacity > 0),
CONSTRAINT chk_status
CHECK(status IN ('Scheduled' , 'Delayed' , 'Cancelled' , 'Completed')),
CONSTRAINT fk_depart_airport
FOREIGN KEY (depart_airportID) REFERENCES airport(airportID),
CONSTRAINT fk_arrival_airport
FOREIGN KEY(arrival_airportID) REFERENCES airport(airportID)
);


-- Create table for ticketclass

CREATE TABLE ticketClass(
classID NUMBER PRIMARY KEY,
className VARCHAR2(50),
basePrice NUMBER(10,2),
baggageAllowance NUMBER
);



-- Create table for flightseat

CREATE TABLE flightSeat(
FlightID NUMBER NOT NULL ,
seatNumber NUMBER NOT NULL ,
classID NUMBER NOT NULL ,
CONSTRAINT pk_flightseat
PRIMARY KEY (flightID , seatNumber) ,
CONSTRAINT fk_flightSeat_flight
FOREIGN KEY (flightID) REFERENCES flight(flightID) ,
CONSTRAINT fk_flightseat_flight
FOREIGN KEY (classID) REFERENCES ticketClass(classID));


-- Create table for reservation
CREATE TABLE reservation(
ReservationID NUMBER PRIMARY KEY ,
reservationDate DATE DEFAULT SYSDATE ,
flightID NUMBER NOT NULL ,
totalAmount NUMBER(10,2) NOT NULL ,
CONSTRAINT chk_total_amount
CHECK(totalAmount >= 0) ,
CONSTRAINT fk_reservation_flight
FOREIGN KEY (flightID) REFERENCES flight(flightID)
);


-- Create table for reservationpassenger
CREATE TABLE reservationPassenger(
reservationID NUMBER NOT NULL,
passengerID NUMBER NOT NULL ,
CONSTRAINT pk_reservationPassenger PRIMARY KEY (reservationID, 
passengerID), 
CONSTRAINT fk_reserPassenger_reser FOREIGN KEY (reservationID)
REFERENCES reservation(reservationID),
CONSTRAINT fk_reserPassenger_passenger FOREIGN KEY (passengerID)
REFERENCES passenger(passengerID)
);


-- Create table for ticket

CREATE TABLE ticket(
ticketID NUMBER PRIMARY KEY ,
ticketNumber NUMBER NOT NULL UNIQUE ,
issuedDate DATE DEFAULT SYSDATE ,
reservationID NUMBER NOT NULL ,
passengerID NUMBER NOT NULL ,
flightID NUMBER NOT NULL ,
seatNumber NUMBER NOT NULL ,
CONSTRAINT fk_ticket_reservation
FOREIGN KEY (reservationID) REFERENCES reservation(reservationID),
CONSTRAINT fk_ticket_passenger
FOREIGN KEY (passengerID) REFERENCES passenger(passengerID) ,
CONSTRAINT fk_ticket_flightseat
FOREIGN KEY (flightID , seatNumber)
REFERENCES flightSeat(flightID,seatNumber));


-- Create table for payment

CREATE TABLE payment(
paymentID NUMBER PRIMARY KEY , 
paymentMethod VARCHAR2(20) NOT NULL , 
paymentDate DATE DEFAULT SYSDATE , 
reservationID NUMBER NOT NULL UNIQUE , 
amount NUMBER(10,2) NOT NULL , 
currency VARCHAR2(10) NOT NULL , 
CONSTRAINT chk_amount 
CHECK (amount > 0), 
CONSTRAINT chk_currency 
CHECK (currency IN ('USD' , 'JOD' , 'ILS')  ), 
CONSTRAINT chk_payment_method 
CHECK (paymentMethod IN ('Cash' ,'Card' , 'Online')), 
CONSTRAINT fk_payment_reservation
FOREIGN KEY (reservationID) REFERENCES reservation(reservationID));

