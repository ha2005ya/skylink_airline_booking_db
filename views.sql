-- View flight details to show flight information along with departure and arrival airport names
CREATE VIEW flight_details AS
SELECT 
    f.flightID,
    f.flightNumber,
    f.flightDate,
    f.status,
    dep.name AS departure_airport,
    arr.name AS arrival_airport
FROM flight f
JOIN airport dep ON f.depart_airportID = dep.airportID
JOIN airport arr ON f.arrival_airportID = arr.airportID;


-- View to show reservation details including passenger names and flight information
CREATE VIEW reservation_details AS
SELECT 
    r.reservationID,
    r.reservationDate,
    p.firstName,
    p.lastName,
    f.flightNumber
FROM reservation r
JOIN reservationPassenger rp ON r.reservationID = rp.reservationID
JOIN passenger p ON rp.passengerID = p.passengerID
JOIN flight f ON r.flightID = f.flightID;


-- View to show ticket details including passenger names and seat numbers
CREATE VIEW ticket_details AS
SELECT 
    t.ticketID,
    t.ticketNumber,
    p.firstName,
    p.lastName,
    t.flightID,
    t.seatNumber
FROM ticket t
JOIN passenger p ON t.passengerID = p.passengerID;


-- View payment details to show reservation amounts, payment amounts, and payment methods, along with payment status based on whether the total amount has been paid or not.
CREATE VIEW payment_details AS
SELECT 
    r.reservationID,
    r.totalAmount,
    p.amount,
    p.paymentMethod,
    CASE 
        WHEN p.amount >= r.totalAmount THEN 'Paid'
        ELSE 'Not Fully Paid'
    END AS payment_status
FROM reservation r
JOIN payment p ON r.reservationID = p.reservationID;


-- View to show available seats for each flight by excluding the seats that have already been booked in the ticket table.
CREATE VIEW available_seats AS
SELECT 
    fs.flightID,
    fs.seatNumber
FROM flightSeat fs
WHERE (fs.flightID, fs.seatNumber) NOT IN (
    SELECT flightID, seatNumber FROM ticket
);