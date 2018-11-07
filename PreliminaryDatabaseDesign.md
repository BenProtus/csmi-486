# Preliminary Database Design

## 1.1 Project Description
Create a database for the Lion Express to keep track of the data involved in the school's van service. Use MySQL as the Database Management System. Users include Lion Express staff in the short term, with the potential to scale into an application for LMU students to schedule rides.

## 1.2 Data Description
Database will contain data pertaining to the Employees (name, phone#, email, etc.), information about the Vans (mileage, gas, issues, etc.), and potential user information (name, phone#, dropOff, pickUp, etc.).

## 1.3 User Data
The data available for each user to interact with, based on their role

#### 1.3.1 LMU Student
1.3.1.1 Destinations

1.3.1.2 Drop Off Times

1.3.1.3 Pick Up Times

#### 1.3.2 Dispatcher
1.3.2.1 Staff Information

1.3.2.2 Staff Schedule

1.3.2.4 Hourly Riders

#### 1.3.3 Driver
1.3.3.1 Dispatcher (1.3.2) Data

1.3.3.2 Available Vans

#### 1.3.4 Supervisor
1.3.4.1 Driver (1.3.3) Data

1.3.4.2 Detailed Vehicle Information

#### 1.3.5 Manager
1.3.5.1 Supervisor (1.3.4) Data

1.3.5.2 Detailed Employee Information

## 1.4 Database Schema
#### LMU Student
* Phone Number (int)
* Lion Mail (text)
* Name: First and Last name (text)

#### Employee
* Employee ID (int)
* Name: First name, Last name (text)
* Phone number (int)
* Email (text)
* Role: Dispatcher, Driver, Supervisor, Manager (text)

#### Van
* License Plate Number (text)
* Mileage (int)
* Gas level (float)
* Issues (text)

#### Ride Group
* Ride Group Number (int)
* Student (text)
* Rider_1 (text)
* Rider_2 (text)
* Rider_3 (text)
* Rider_4 (text)
* Rider_5 (text)
* Rider_6 (text)
* Destination (text)
* Pick up (text)
* Drop off (text)

#### Ride Schedule
* Hour (text)
* Ride Group Number(s) (int)

## 1.5 Entity-Relationship Diagram
![Lion Express ERD](https://raw.githubusercontent.com/BenProtusSmith/csmi-486/master/Lion%20Express%20Preliminary%20ERD.png)
