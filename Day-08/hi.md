# SQL LEFT JOIN Practice

## Introduction

This repository contains my practice on the **LEFT JOIN** clause in SQL using a simple **Book Store** database.

The goal of this practice is to understand how `LEFT JOIN` works, how it differs from `INNER JOIN`, 
and how it behaves when there are matching and non-matching records between tables.

---

## Database Used

**Database Name:** `book_store`

### Tables

* Customers
* Orders
* Books

---

## Topics Covered

* Basic `LEFT JOIN`
* Joining multiple tables
* Table aliases
* Selecting specific columns
* Filtering records using `WHERE`
* Sorting results using `ORDER BY`
* Finding unmatched records using `IS NULL`
* Displaying only matched records using `IS NOT NULL`
* Understanding how filtering on the right table affects a `LEFT JOIN`

---

## What I Learned

During this practice, I learned that:

* `LEFT JOIN` returns **all rows from the left table**.
* When no matching record exists in the right table, SQL returns `NULL` values for the right table's columns.
* `IS NULL` is useful for finding records that do not have a matching row.
* `IS NOT NULL` returns only the rows that have matching records.
* Applying a `WHERE` condition to a column from the right table (for example, `WHERE b.price > 500`) removes
  rows containing `NULL`, making the result behave similarly to an `INNER JOIN`.

---

## Skills Practiced

* SQL JOINs
* Multi-table Queries
* Data Filtering
* Data Sorting
* NULL Handling
* Query Writing

---
## Tools Used

* PostgreSQL
* SQL

---

## Author

**Khushi**

This repository is part of my SQL learning journey. I'm practicing one SQL concept at a time, 
writing different types of queries, and documenting my progress to strengthen my understanding of SQL.
