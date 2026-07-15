# SQL Practice – Day 8: Self Join

## Overview

This repository contains my SQL practice on **Self Join**.

A **Self Join** is not a separate type of JOIN. It is a technique where a table is joined with itself using aliases.
It is useful when rows in the same table have a relationship with other rows, such as employees and their managers.

## Dataset

Table: **employees**

Columns:

* employee_id
* employee_name
* department
* manager_id

The `manager_id` stores the `employee_id` of another employee, making it possible to retrieve manager information using a Self Join.

## Topics Practiced

* Basic Self Join
* Employee and Manager relationship
* Displaying employee and manager details
* Filtering employees by manager
* Finding employees without managers
* Ordering Self Join results
* Retrieving manager department
* Filtering using manager information
* Counting employees under each manager
* Multiple Self Join (Employee → Manager → Manager's Manager)

## SQL Concepts Used

* INNER JOIN
* LEFT JOIN
* Table Aliases
* WHERE
* ORDER BY
* GROUP BY
* COUNT()
* LIKE
* Multiple Self Join

## Files

* `employees_dataset.sql` – Table creation and sample data
* `self_join_practice.sql` – Practice queries

## Key Learning

The most important lesson from this practice was understanding that a **Self Join uses the same table twice with different aliases**.
Instead of joining two different tables, SQL treats the same table as two separate references to retrieve related information,
such as an employee and their manager.

---

This project is part of my SQL learning journey and is intended for practice and improving query-writing skills.
