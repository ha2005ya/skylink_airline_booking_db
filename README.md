# ✈️ SkyLink Booking Database System

## 📌 Overview

The **SkyLink Booking Database System** is designed to manage airline ticket reservations efficiently.
It organizes and stores all essential data related to flights, passengers, bookings, payments, and seats in a structured relational database.

This project demonstrates a real-world application of database design concepts, including relationships, constraints, and data integrity.

---

## 🎯 Objectives

* Organize airline reservation data into structured tables
* Prevent common booking issues (duplicate seats, incorrect data)
* Ensure accurate and reliable booking records
* Improve data retrieval speed and efficiency
* Simulate a real airline reservation system

---

## 🧱 Database Entities

The system includes the following main entities:

* Passenger
* Flight
* Airport
* Reservation
* ReservationPassenger
* Ticket
* Payment
* FlightSeat
* TicketClass

---

## 🔗 Relationships

* Passenger ↔ Reservation (Many-to-Many)
* Flight → Reservation (One-to-Many)
* Flight → FlightSeat (One-to-Many)
* Reservation → Ticket (One-to-Many)
* Reservation → Payment (One-to-One)
* Airport → Flight (One-to-Many)
* TicketClass → FlightSeat (One-to-Many)

---

## ⚙️ Features

* Manage passengers and their personal data
* Track flights and schedules
* Handle reservations and ticket issuance
* Assign seats without duplication
* Record and validate payments
* Enforce constraints to maintain data integrity

---

## 🛠️ Technologies Used

* Oracle SQL
* SQL (DDL, DML, Constraints, Views)

---

## 📊 Sample Queries

### 🔹 Total Payment per Reservation

```sql
SELECT reservationID, SUM(amount) AS totalPaid
FROM payment
GROUP BY reservationID;
```

### 🔹 Filter Payments

```sql
SELECT *
FROM payment
WHERE amount > 100 AND currency = 'USD';
```

---

## 👁️ Views (Optional Enhancement)

The project includes views to simplify complex queries, such as:

* Flight details with airport names
* Reservation details with passenger info
* Payment status tracking
* Available seats per flight

---

## 🚀 Benefits

* Efficient data management
* Reduced booking errors
* Faster access to information
* Scalable and organized system design

---

## 📌 Conclusion

This project reflects how database systems can solve real-world problems in airline booking management by ensuring accuracy, consistency, and efficiency.

---

## 👩‍💻 Authors

* Haya Hany Ano Said
* Mariam Osama Awadallah
