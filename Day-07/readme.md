# SQL INNER JOIN Practice

## Overview

This repository contains my SQL practice on **INNER JOIN** using a small bookstore database. The purpose of this project is to understand how tables are related and how `INNER JOIN` combines data from multiple tables using common columns.

This project is part of my SQL learning journey as I build a strong foundation in database querying for data analytics.

---

## Database Structure

The project contains three tables:

### 1. Customers

Stores customer information.

| Column        | Description                 |
| ------------- | --------------------------- |
| customer_id   | Unique ID for each customer |
| customer_name | Customer's name             |
| city          | Customer's city             |

### 2. Books

Stores book details.

| Column    | Description             |
| --------- | ----------------------- |
| book_id   | Unique ID for each book |
| book_name | Name of the book        |
| category  | Book category           |
| price     | Price of the book       |

### 3. Orders

Stores customer orders.

| Column      | Description                   |
| ----------- | ----------------------------- |
| order_id    | Unique order ID               |
| customer_id | Customer who placed the order |
| book_id     | Book that was ordered         |
| quantity    | Number of books ordered       |
| order_date  | Date of the order             |

The `orders` table connects the `customers` and `books` tables using foreign keys.

---

## What I Practiced

This project includes practice queries for:

* Retrieving data from multiple tables
* Using `INNER JOIN`
* Joining two tables
* Joining three tables
* Using table aliases (`c`, `o`, `b`)
* Selecting specific columns
* Filtering records using the `WHERE` clause
* Understanding relationships between tables

---

## SQL Concepts Covered

* `SELECT`
* `FROM`
* `INNER JOIN`
* `ON`
* `WHERE`
* `DISTINCT`
* Table Aliases

---

## Learning Outcome

Through this project, I learned:

* Why databases store related information in different tables.
* How `INNER JOIN` returns only matching records.
* How to connect multiple tables using primary and foreign keys.
* How to write cleaner SQL queries using aliases.
* How to retrieve meaningful business information from multiple tables.

---

## Tools Used

* PostgreSQL
* SQL

---

## Author

**Khushi**

This repository documents my SQL learning journey as I practice concepts step by step and build a strong foundation for Data Analytics.
