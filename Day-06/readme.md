# SQL Timestamp Functions Practice

This repository contains SQL practice exercises focused on working with `TIMESTAMP` data in PostgreSQL.

## Topics Covered

* NOW()
* CURRENT_DATE
* CURRENT_TIME
* CURRENT_TIMESTAMP
* TIMEOFDAY()
* DATE()
* TIMESTAMP
* Type Casting (`::date`, `::time`)
* EXTRACT()
* BETWEEN
* GROUP BY
* ORDER BY
* Aggregate Functions with Timestamps

## Dataset

A food delivery dataset was created to simulate real-world order data.

Columns included:

* order_id
* customer_name
* restaurant
* city
* order_time
* delivery_time
* amount

The dataset contains 20 sample food delivery orders.
## Dataset
![table](table.png)

## Practice Scenarios

The queries answer business-oriented questions such as:

* Display the current date and time
* Extract year, month, day, hour, minute, and quarter from timestamps
* Filter orders by specific dates and times
* Find lunch-time and dinner-time orders
* Count daily orders
* Calculate daily sales
* Identify the busiest ordering hours
* Find the city with the most evening orders

## Skills Practiced

* Working with TIMESTAMP data
* Date and time extraction
* Filtering by date and time
* Type casting
* Business-oriented SQL analysis
* Aggregation using date and time values

## Tools Used

* PostgreSQL
* pgAdmin

## Author

Khushi
