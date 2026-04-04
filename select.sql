-- حساب مجموع المبالغ المدفوعة لكل حجز على حدة 
SELECT reservationID, SUM(amount) AS totalPaid
FROM payment 
GROUP BY reservationID;


 -- عرض اسماءالمسافرين مع رقم وتاريخ الرحلة
SELECT p.firstname , p.lastname , f.flightnumber , f.flightdate
FROM passenger P
JOIN reservationpassenger rp ON p.passengerid = rp.passengerid
JOIN reservation r ON r.reservationid = rp.reservationid
JOIN flight f ON f.flightid = r.flightid ;


-- عرض كل الحجوزات مع المبلغ المدفوع
SELECT r.reservationid , r.totalamount , p.amount
FROM reservation r
JOIN payment p ON r.reservationid = p.reservationid;


-- عرض التذاكر مع اسم المسافر والمقعد
SELECT t.ticketid , p.firstname , t.seatnumber
FROM ticket t
JOIN passenger p ON p.passengerid = t.passengerid ;


-- عرض الرحلات مع اسم مطار الاقلاع والوصول
SELECT f.flightnumber , a1.name AS departure , a2.name AS arrival
FROM flight f
JOIN airport a1 ON f.depart_airportid = a1.airportid
JOIN airport a2 ON f.arrival_airportid = a2.airportid;


-- كم عدد المسافرين في كل رحلة
SELECT f.flightnumber , COUNT(rp.passengerid) AS "Total Passengers"
FROM flight f
JOIN reservation r ON f.flightid = r.flightid
JOIN reservationpassenger rp ON rp.reservationid = r.reservationid
GROUP BY f.flightnumber ;