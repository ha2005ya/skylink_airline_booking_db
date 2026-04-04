-- Insert into passenger
INSERT INTO passenger VALUES (1, 'Haya', 'Hany', 'P10001', '0791000001', 'Jordanian', TO_DATE('2030-12-31', 'YYYY-MM-DD'), TO_DATE('2005-01-15', 'YYYY-MM-DD'), 'Female'); 
INSERT INTO passenger VALUES (2, 'Ahmad', 'Ali', 'P10002', '0791000002', 'Jordanian', TO_DATE('2031-03-12', 'YYYY-MM-DD'), TO_DATE('2000-05-20', 'YYYY-MM-DD'), 'Male');
INSERT INTO passenger VALUES (3, 'Sara', 'Omar', 'P10003', '0791000003', 'Jordanian', TO_DATE('2032-08-20', 'YYYY-MM-DD'), TO_DATE('1998-11-02', 'YYYY-MM-DD'), 'Female'); 
INSERT INTO passenger VALUES (4, 'Yousef', 'Saleh', 'P10004', '0791000004', 'Jordanian', TO_DATE('2030-01-10', 'YYYY-MM-DD'), TO_DATE('1995-07-11', 'YYYY-MM-DD'), 'Male');
INSERT INTO passenger VALUES (5, 'Lina', 'Khaled', 'P10005', '0791000005', 'Jordanian', TO_DATE('2033-05-05', 'YYYY-MM-DD'), TO_DATE('2002-09-21', 'YYYY-MM-DD'), 'Female'); 
INSERT INTO passenger VALUES (6, 'Omar', 'Hassan', 'P10006', '0791000006', 'Jordanian', TO_DATE('2031-12-12', 'YYYY-MM-DD'), TO_DATE('1999-03-15', 'YYYY-MM-DD'), 'Male'); 
INSERT INTO passenger VALUES (7, 'Maya', 'Sami', 'P10007', '0791000007', 'Jordanian', TO_DATE('2032-09-09', 'YYYY-MM-DD'), TO_DATE('2001-06-22', 'YYYY-MM-DD'), 'Female'); 
INSERT INTO passenger VALUES (8, 'Fadi', 'Tariq', 'P10008', '0791000008', 'Jordanian', TO_DATE('2030-11-30', 'YYYY-MM-DD'), TO_DATE('1997-02-28', 'YYYY-MM-DD'), 'Male'); 
INSERT INTO passenger VALUES (9, 'Rana', 'Mahmoud', 'P10009', '0791000009', 'Jordanian', TO_DATE('2034-04-01', 'YYYY-MM-DD'), TO_DATE('2003-12-12', 'YYYY-MM-DD'), 'Female'); 
INSERT INTO passenger VALUES (10, 'Khaled', 'Adnan', 'P10010', '0791000010', 'Jordanian', TO_DATE('2031-07-07', 'YYYY-MM-DD'), TO_DATE('1996-10-10', 'YYYY-MM-DD'), 'Male');


-- Insert into airport 
INSERT INTO airport VALUES (1, 'Queen Alia International Airport', 'Amman', 'Jordan', 'AMM'); 
INSERT INTO airport VALUES (2, 'King Hussein International Airport', 'Aqaba', 'Jordan', 'AQJ');


-- Insert into flight
INSERT INTO flight VALUES (1, 101, TO_DATE('2026-03-01','YYYY-MM-DD'), TO_DATE('2026-03-01 08:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-01 10:00','YYYY-MM-DD HH24:MI'), 1, 2, 'Scheduled', 180); 
INSERT INTO flight VALUES (2, 102, TO_DATE('2026-03-02','YYYY-MM-DD'), TO_DATE('2026-03-02 15:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-02 17:30','YYYY-MM-DD HH24:MI'), 2, 1, 'Scheduled', 200); 
INSERT INTO flight VALUES (3, 103, TO_DATE('2026-03-03','YYYY-MM-DD'), TO_DATE('2026-03-03 09:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-03 11:30','YYYY-MM-DD HH24:MI'), 1, 2, 'Scheduled', 150); 
INSERT INTO flight VALUES (4, 104, TO_DATE('2026-03-04','YYYY-MM-DD'), TO_DATE('2026-03-04 13:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-04 15:30','YYYY-MM-DD HH24:MI'), 2, 1, 'Scheduled', 180); 
INSERT INTO flight VALUES (5, 105, TO_DATE('2026-03-05','YYYY-MM-DD'), TO_DATE('2026-03-05 07:30','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-05 09:45','YYYY-MM-DD HH24:MI'), 1, 2, 'Scheduled', 170);


-- Insert into ticketclass
INSERT INTO ticketClass VALUES (1, 'Economy', 150.00, 20); 
INSERT INTO ticketClass VALUES (2, 'Business', 400.00, 40);


-- Insert into flightseat
INSERT INTO flightSeat VALUES (1, 1, 1); 
INSERT INTO flightSeat VALUES (1, 2, 1); 
INSERT INTO flightSeat VALUES (1, 3, 2);
INSERT INTO flightSeat VALUES (2, 1, 1); 
INSERT INTO flightSeat VALUES (2, 2, 2);
INSERT INTO flightSeat VALUES (3, 1, 1); 
INSERT INTO flightSeat VALUES (3, 2, 1);
INSERT INTO flightSeat VALUES (4, 1, 2); 
INSERT INTO flightSeat VALUES (4, 2, 1);
INSERT INTO flightSeat VALUES (5, 1, 1); 
INSERT INTO flightSeat VALUES (5, 2, 2);


-- Insert into reservation
INSERT INTO reservation VALUES (1, sysdate ,1, 150.00); 
INSERT INTO reservation VALUES (2, sysdate ,2, 400.00); 
INSERT INTO reservation VALUES (3,sysdate , 3, 150.00); 
INSERT INTO reservation VALUES (4, sysdate ,4, 400.00); 
INSERT INTO reservation VALUES (5,sysdate ,5, 150.00);


-- Insert into ReservationPassenger 
INSERT INTO reservationPassenger VALUES (1, 1); 
INSERT INTO reservationPassenger VALUES (2, 2); 
INSERT INTO reservationPassenger VALUES (3, 3); 
INSERT INTO reservationPassenger VALUES (4, 4); 
INSERT INTO reservationPassenger VALUES (5, 5);


-- Insert into Ticket 
INSERT INTO ticket VALUES (1, 1001,sysdate, 1, 1, 1, 1); 
INSERT INTO ticket VALUES (2, 1002,sysdate, 2, 2, 2, 2); 
INSERT INTO ticket VALUES (3, 1003,sysdate, 3, 3, 3, 1); 
INSERT INTO ticket VALUES (4, 1004,sysdate, 4, 4, 4, 1); 
INSERT INTO ticket VALUES (5, 1005,sysdate, 5, 5, 5, 1);


-- Insert into Payment 
INSERT INTO payment VALUES (1, 'Card', sysdate ,1, 150.00, 'USD'); 
INSERT INTO payment VALUES (2, 'Online',sysdate , 2, 400.00, 'USD'); 
INSERT INTO payment VALUES (3, 'Cash',sysdate , 3, 150.00, 'USD'); 
INSERT INTO payment VALUES (4, 'Card',sysdate, 4, 400.00, 'USD'); 
INSERT INTO payment VALUES (5, 'Online',sysdate , 5, 150.00, 'USD');

