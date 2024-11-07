#UAM
# User Access Management System

A web-based application that facilitates user access to software applications within an organization. This system allows employees to request access, managers to review and approve or reject access requests, and admins to manage software applications.

---

## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Technologies Used](#technologies-used)
4. [Setup](#setup)
5. [Usage](#usage)
6. [User Roles](#user-roles)


---

## Introduction

This User Access Management System enables users to sign up, request access to applications, and allows managers to approve or reject requests. It is designed to improve organizational security and streamline access management.

## Features

- **User Registration (Sign-Up):** Allows new users to create accounts with a default role of "Employee."
- **User Authentication (Login):** Allows registered users to log in based on their roles.
- **Software Management (Admin Only):** Admins can create and manage software applications within the system.
- **Access Request System (Employee):** Employees can request access to software applications.
- **Access Approval System (Manager):** Managers can view, approve, or reject access requests.

## Technologies Used

- **Backend:** Java Servlets, JSP
- **Frontend:** HTML, CSS, JavaScript (Client-Side)
- **Database:** PostgreSQL
- **Build Tool:** Maven
- **Server-Side Container:** Java Servlet Container (e.g., Apache Tomcat)

## Setup

### Prerequisites

1. **Java Development Kit (JDK)**
2. **Apache Tomcat**
3. **Maven**
4. **PostgreSQL Database**

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/UserAccessManagementSystem.git
   ```
2. Navigate to the project directory:
   ```bash
   cd UserAccessManagementSystem
   ```
3. Configure the PostgreSQL database:
   - Create a new database and execute the `db_schema.sql` script located in the `database` folder to create tables for `users`, `software`, and `requests`.

4. Update database credentials in the project's configuration file (e.g., `db.properties`).

5. Build the project using Maven:
   ```bash
   mvn clean install
   ```

6. Deploy the `.war` file to the Apache Tomcat server.

### Running the Application

1. Start the PostgreSQL database server.
2. Start Apache Tomcat and navigate to `http://localhost:8080/UserAccessManagementSystem`.
3. Access the following pages to interact with the application based on your role:
   - **Sign-Up:** `/signup.jsp`
   - **Login:** `/login.jsp'


## User Roles

1. **Employee**
   - Can sign up, log in, and request access to applications.

2. **Manager**
   - Can log in, view, approve, or reject access requests.

3. **Admin**
   - Can log in, create software applications, and has all the permissions of an Employee and Manager.


