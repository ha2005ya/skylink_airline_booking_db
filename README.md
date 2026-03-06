# SkyLink Airline Reservation Database
This project was made using sqlpluse Oracle, the idea is about a blood donation system that has the following entities:

BloodBank(Bank_id PK, Bank_name, address, contact_num)
BloodUnits (unit_id PK, blood_type, Bank_id FK)
Donor (Donor_id PK, Full_name, mobileNum, Blood_type,availability,health_state )
Patient(Patient_id PK, FullName, Blood_type)
Assistant (Assistant_id PK, FullName, PhoneNum,HireDate,Bank_id FK)
Donation_log (Donation_id PK, Date_time, Assistant_id FK,Donor_id FK,unit_id FK)
Consumption_logs (con_id PK,unit_id, FK patient_id FK, date_and_time)


## Overview

SkyLink Booking DB is a relational database system designed to manage airline ticket reservations efficiently.
The system organizes and stores information related to passengers, flights, reservations, seats, tickets, payments, and airports.

This project demonstrates how a structured database design can solve common issues in traditional booking systems such as duplicate reservations, seat conflicts, and inconsistent payment records.

---

## Project Objectives

The main goals of this project are:

* Design a **real-world airline reservation database**
* Apply **database normalization and relational design**
* Implement **data integrity constraints**
* Prevent booking conflicts such as duplicate seat assignments
* Ensure accurate tracking of passengers, flights, and payments

---

## Database Entities

The system consists of the following main tables:

* **Passenger** – Stores passenger personal information
* **Airport** – Stores airport details
* **Flight** – Contains flight schedules and status
* **Reservation** – Manages booking records
* **ReservationPassenger** – Links passengers to reservations
* **Ticket** – Stores issued tickets for passengers
* **Payment** – Manages payment transactions
* **FlightSeat** – Defines seats available for each flight
* **TicketClass** – Defines ticket categories and pricing

---

## Key Features

* Relational database design using **Oracle SQL**
* Implementation of **Primary Keys and Foreign Keys**
* Use of **CHECK, UNIQUE, and NOT NULL constraints**
* Data insertion using **DML statements**
* Query operations using:

  * SELECT
  * JOIN
  * GROUP BY
  * HAVING
  * Subqueries
  * UPDATE and DELETE operations

---

## Database Design

The database follows a structured relational model with well-defined relationships:

* Passenger ↔ Reservation (Many-to-Many)
* Flight → Reservation (One-to-Many)
* Flight → FlightSeat (One-to-Many)
* Reservation → Payment (One-to-One)
* Reservation → Ticket (One-to-Many)

This structure ensures consistency and prevents data duplication.

---

## Technologies Used

* **Oracle Database**
* **SQL (DDL & DML)**
* **Relational Database Design**
* **ERD Modeling**

---

## Example Queries

Example operations implemented in the project include:

* Retrieving passenger flight information
* Calculating total payments per reservation
* Tracking seat availability
* Managing booking and payment records

---

## Project Motivation

This project was developed as part of a database course to simulate a real airline reservation system.
It also reflects the importance of building structured systems that could support future transportation and travel management solutions.

---

## Author

**Haya Hany Ano Said**
Data Science & Artificial Intelligence Student

---

## License

This project is for educational purposes.
