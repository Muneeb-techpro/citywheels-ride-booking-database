# CityWheels Ride Booking Database

A fully designed database project for **CityWheels Ride Booking System**, including schema, queries, ERD, and documentation. The system is designed following industry-standard database design principles, ensuring scalability, integrity, and efficient data retrieval.

---

## 📂 Project Structure

citywheels-ride-booking-database/
│
├── database/
│ ├── schema.sql # SQL script for creating tables and relationships
│ └── business_queries.sql # SQL queries for business operations
│
├── design/
│ ├── erd.png # Entity Relationship Diagram
│ └── relational-schema.pdf # Relational schema diagram in PDF format
│
├── docs/
│ ├── citywheels-ride-booking-database-documentation.docx # Detailed documentation (editable)
│ └── citywheels-ride-booking-database-documentation.pdf # Detailed documentation (PDF)
│
├── media/
│ └── citywheels-ride-booking-database-demo.mp4 # Project demo video
│
└── README.md # This file


---

## 📝 Project Overview

The **CityWheels Ride Booking Database** project is designed to manage ride booking operations efficiently. It includes:

- **Database Schema:** Properly normalized tables with primary and foreign keys.  
- **Business Queries:** SQL queries to handle booking, customer management, and reporting.  
- **Design Artifacts:** ERD and relational schema diagrams for visual understanding.  
- **Documentation:** Step-by-step guide with explanations of the database design, queries, and sample data.

---

## 💻 Features

- Creation of tables for rides, customers, drivers, and bookings.
- Implementation of relationships with constraints.
- Predefined queries to retrieve important business information:
  - Booking history
  - Driver performance
  - Revenue reports
- Clean and professional ERD and relational schema diagrams.

---

## 📄 Documentation

Documentation is available in both **editable** and **PDF** formats:

- `docs/citywheels-ride-booking-database-documentation.docx`
- `docs/citywheels-ride-booking-database-documentation.pdf`

The documentation includes:

1. Project description  
2. Database design rationale  
3. Table structures and relationships  
4. Sample queries and outputs  
5. Screenshots and diagrams  

---

## 🛠 Technologies Used

- MySQL 8.0
- SQL (DDL & DML)
- ER Modeling
- Relational Schema Design
- Third Normal Form (3NF)


---

## 📊 Database Statistics

- 12 normalized tables
- 600+ sample records
- 10 complex analytical queries
- Fully normalized to Third Normal Form (3NF)

---

## 🔒 Data Integrity & Design Principles

- Primary and Foreign Key constraints
- Referential integrity enforcement
- Proper indexing for performance
- 3NF normalization to eliminate redundancy
- Structured naming conventions

---

## 🎥 Demo

A demonstration video is available at:

- `media/citywheels-ride-booking-database-demo.mp4`

It showcases database setup, query execution, and sample outputs.

---

## ⚡ How to Use

1. Clone the repository:

```bash
git clone https://github.com/yourusername/citywheels-ride-booking-database.git

```
2. Navigate to the database folder:
```bash
cd citywheels-ride-booking-database/database

```
3. Import the schema and queries in MySQL or any SQL client:
```bash
source schema.sql;
source business_queries.sql;

```
---

## 📌 Notes

Ensure that MySQL Server 8.0+ is installed and running before executing the SQL scripts.

Large media files (like demo video) may take time to download.

Use the .docx file if you want to edit or customize the documentation.

---


## 📫 Author

Muneeb Hussain<br>
BSCS, University of Central Punjab<br>
Email: muneeb.hussain106@gmail.com

---

## 🏷 License

This project was developed for academic purposes as part of a Database Systems course. It may be used for educational and reference purposes.

---