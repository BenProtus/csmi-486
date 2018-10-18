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
#### 1.4.1 Employee -- An hourly member of the Lion Express

1.4.1.1 Name -- First name, Last name

1.4.1.2 Phone number

1.4.1.3 Email

1.4.1.4 Role -- Dispatcher, Driver, Supervisor, or Manager

1.4.1.5 Employee ID

#### 1.4.2 Student -- Lion Express Van Service User

1.4.2.1 Name -- First name, Last name

1.4.2.2 Phone number

1.4.2.3 Lion Mail

#### 1.4.3 Van -- Vehicles belonging to the Lion Express

1.4.3.1 License Plate Number

1.4.3.2 Mileage

1.4.3.3 Gas level

1.4.3.4 Issues

#### 1.4.4 Ride -- A one-hour ride cycle

1.4.4.1 License Plate Number

1.4.4.2 Employee ID

1.4.4.3 total number of students in van

1.4.4.4 Destination(s)

#### 1.4.5 Ride Group -- Group of students (1-8) requesting ride

1.4.4.1 Names -- First name, Last name

1.4.4.2 Phone number

1.4.4.3 Destination

1.4.4.4 Drop Off Time

1.4.4.5 Pick Up Time

#### 1.4.6 Ride Schedule -- Hourly Lion Express Rides

1.4.4.1 Names -- First name, Last name

1.4.4.2 Phone numbers

1.4.4.3 number of drop offs

1.4.4.4 number of pick ups

## 1.5 Entity-Relationship Diagram
![Lion Express ERD](https://raw.githubusercontent.com/BenProtusSmith/csmi-486/master/Lion%20Express%20Preliminary%20ERD.png)
