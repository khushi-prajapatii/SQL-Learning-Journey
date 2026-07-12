# SQL FULL JOIN Practice

## Overview

This folder contains my SQL practice queries for understanding the **FULL JOIN** operation.

A **FULL JOIN** returns:

* All matching records from both tables.
* All unmatched records from the left table.
* All unmatched records from the right table.

If there is no matching record, SQL returns `NULL` for the missing values.

## Database Used

**Book Store Database**

Tables:

* Customers
* Orders
* Books


## Practice Queries

1. Display customer names and their order IDs.
2. Display book names and their order IDs.
3. Display customer names and book names using three related tables.
4. Display customer details along with order information.
5. Display book details along with ordered quantities.
6. Display customer names, book names, and quantities ordered.
7. Find customers without orders or books that have never been ordered using `IS NULL`.
8. Display complete order information by combining customers, orders, and books.


## Learning Outcome

Through these exercises, I learned how FULL JOIN combines matching records while also including unmatched rows from both tables. 
