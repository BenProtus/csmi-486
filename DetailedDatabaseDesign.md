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
* Phone Number (int): Phone number given by LMU student.
* Lion Mail (text): School email of LMU student.
* Name: First and Last name (text)

#### 1.4.2 Employee: Current workers at the Lion Express.
* Employee ID (int): ID given to employee.
* Name: First name, Last name (text)
* Phone number (int): Phone number registered to employee.
* Email (text): Email registered to employee
* Role: Dispatcher, Driver, Supervisor, Manager (text): Position at Lion Express.

#### 1.4.3 Van: The van the Lion Express employee will be driving for any given trip.
* License Plate Number (text): License plate number of van.
* Mileage (int): Number of miles on van.
* Gas level (float): Gas level between zero and one. Zero being empty and one being full.
* Issues (text): Any issues the van may have such as: tire pressure low, weak breaks, etc..

#### 1.4.4 Ride Group: The group of students riding in any given trip.
* Ride Group Number (int): Unique number identifier for any given group of students riding together.
* Student (text): Student who made a reservation for the Lion Express.
* Rider_1 (text): Potential rider in group.
* Rider_2 (text): Potential rider in group.
* Rider_3 (text): Potential rider in group.
* Rider_4 (text): Potential rider in group.
* Rider_5 (text): Potential rider in group.
* Rider_6 (text): Potential rider in group.
* Destination (text): Final destination where Lion Express will drop of ride group.
* Pick up (text): Pick up time.
* Drop off (text): Drop off time.

#### 1.4.5 Ride Schedule: Schedule of rides throughout the day.
* Hour (text): Any given hour of the day.
* Ride Group Number(s) (int): Number of ride groups riding during a given hour.

## 1.5 Entity-Relationship Diagram
![Lion Express ERD](https://raw.githubusercontent.com/BenProtusSmith/csmi-486/master/LionExpressERD.png)
