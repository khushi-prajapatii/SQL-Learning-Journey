# SQL RIGHT JOIN Practice

## Overview

This folder contains my SQL practice queries for understanding the **RIGHT JOIN** operation.

A RIGHT JOIN returns **all records from the right table** and the matching records from the left table. 
If there is no matching record in the left table, SQL returns `NULL` for those columns.

## Database Used

**Book Store Database**

Tables:

* **Customers**
* **Orders**
* **Books**

Relationships:

* `orders.customer_id` → `customers.customer_id`
* `orders.book_id` → `books.book_id`

## SQL Concepts Practiced

* RIGHT JOIN
* Table Aliases
* JOIN Conditions (`ON`)
* `IS NULL`
* Retrieving data from multiple related tables

## Learning Outcome

Through these exercises, I learned how RIGHT JOIN returns all rows from the right table, 
how unmatched records are represented using `NULL`, and how to identify records with no matching data in another table.
