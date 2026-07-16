# SQL Practice – Day 9: UNION & UNION ALL

## Overview

**UNION** and **UNION ALL**.

These SQL operators are used to combine the results of two or more `SELECT` statements into a single result set.

## Dataset

### Tables Used

* `current_employee`
* `former_employee`

Both tables contain the same structure:

* `emp_id`
* `emp_name`
* `department`

This dataset is designed to practice combining data from multiple tables and understand
the difference between `UNION` and `UNION ALL`.

## Topics Practiced

* Combining rows using `UNION`
* Combining rows using `UNION ALL`
* Filtering data before combining results
* Sorting combined results using `ORDER BY`
* Using `WHERE` with `UNION`
* Selecting multiple columns
* Understanding duplicate handling
* Pattern matching using `LIKE`

## Difference Between UNION and UNION ALL

### UNION

* Combines the results of multiple `SELECT` statements.
* Removes duplicate rows automatically.

### UNION ALL

* Combines the results of multiple `SELECT` statements.
* Keeps all rows, including duplicates.
* Usually performs faster because it does not remove duplicate rows.

## Files

* `dataset.sql` – Table creation and sample data
* `union_practice.sql` – Practice queries

---

This project is part of my SQL learning journey and is intended for practice and improving SQL query-writing skills.
