# Detailed Database Design

## 1.1 Project Description
Create a database for the Lion Express to keep track of the data involved in the school's van service. Use PostgreSQL as the Database Management System. Users include Lion Express staff in the short term, with the potential to scale into an application for LMU students to schedule rides.

## 1.2 Data Description
Database will contain data pertaining to the Employees (name, phone#, email, etc.), information about the Vans (mileage, gas, issues, etc.), and potential user information (name, phone#, ride times, etc.).

## 1.3 User Data
The data available for each user to interact with, based on their role.

#### 1.3.1 LMU Student
* Destinations
* Drop Off Times
* Pick Up Times

#### 1.3.2 Dispatcher
* Staff Information
* Staff Schedule
* Hourly Riders

#### 1.3.3 Driver
* Dispatcher Data
* Available Vans

#### 1.3.4 Supervisor
* Driver Data
* Detailed Vehicle Information

#### 1.3.5 Manager
* Supervisor Data
* Detailed Employee Information

## 1.4 Data Dictionary
Final tables/columns with descriptions for each.

#### 1.4.1 LMU Student: LMU students signed up for a reservation on the Lion Express.
* Phone Number (text): Phone number given by LMU student.
* Lion Mail (text): School email of LMU student.
* Name: First name (text), Last name (text)

#### 1.4.2 Employee: Current workers at the Lion Express.
* Employee ID (text): ID given to employee.
* Name: First name (text), Last name (text)
* Phone number (text): Phone number registered to employee.
* Email (text): Email registered to employee
* Position: Dispatcher, Driver, Supervisor, Manager (text): Position at Lion Express.

#### 1.4.3 Van: The van the Lion Express employee will be driving for any given trip.
* License Plate Number (text): License plate number of van.
* Mileage (int): Number of miles on van.
* Gas level (float): Gas level between zero and one. Zero being empty and one being full.
* Van Usable (boolean): Is this van available/operational for drivers?
* Issues (text): Any issues the van may have such as: tire pressure low, weak breaks, etc..

#### 1.4.4 Ride Group: The group of students riding in any given trip.
* Ride Group Number (int): Unique number identifier for any given group of students riding together.
* Student (name): Student who made a reservation for the Lion Express.
* Rider_1 (name): Potential rider in group.
* Rider_2 (name): Potential rider in group.
* Rider_3 (name): Potential rider in group.
* Rider_4 (name): Potential rider in group.
* Rider_5 (name): Potential rider in group.
* Rider_6 (name): Potential rider in group.
* Destination (text): Final destination where Lion Express will drop of ride group.
* Pick up (text): Pick up time.
* Drop off (text): Drop off time.

#### 1.4.5 Ride Schedule: Schedule of rides throughout the day.
* Ride Index (text): Unique index for every hour of operation.
* Hour (int): Any given hour of the day, starting .
* Ride Group Number (int): Ride group traveling during a given hour.
* Van In Use (text): License plate of the van being driven at each hour.
* Driver (name): Name of the employee driving at the hour specified.

## 1.5 Entity-Relationship Diagram
![Lion Express ERD](https://raw.githubusercontent.com/BenProtusSmith/csmi-486/master/LionExpressERD.png)

## Example Database Queries
#### What are the different positions at the Lion Express?

`SELECT DISTINCT "position" FROM employees;`

#### Who is driving from 7pm to 7:59pm?

`SELECT driver FROM ride_schedule WHERE hour =7;`

#### Which vans are available to use at 5pm with no issues?

`SELECT license_plate FROM van WHERE in_use = FALSE AND issues = 'None’;`

#### Which van(s) have no issues and the most gas such that we can use it for most of the day?

`SELECT license_plate FROM van WHERE gas_level = (SELECT MAX(gas_level) FROM van WHERE issues = 'None’);`

#### Need send email to all students at 8pm that rides are cancelled. What are their emails?

`SELECT lion_mail FROM students WHERE name = (SELECT student FROM ride_group  WHERE pick_up = 8 OR drop_off = 8);`
