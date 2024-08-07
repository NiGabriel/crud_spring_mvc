# crud_spring_mvc


# TestWithMVC

TestWithMVC is a simple CRUD application developed using Spring MVC. The project is created in NetBeans IDE 18 and uses various libraries and technologies as described below.

## Technologies and Libraries Used

- **Java**: JDK 1.8
- **IDE**: NetBeans IDE 18
- **Spring MVC**: 4.3.29
- **JSTL**: 1.2.7
- **Lombok**: jar
- **MySQL Connector**: mysql-connector-java-8.0.11
- **Server**: Apache Tomcat
- **Context Path**: `/TestWithMVC`

## Project Structure

The project follows a typical Spring MVC structure:

- **src/main/java**: Contains the Java source files
  - **controller**: Contains the Spring MVC controllers
  - **model**: Contains the model classes
  - **config**: Contains configuration classes and database connection setup
- **src/main/resources**: Contains resource files
- **src/main/webapp**: Contains web resources
  - **WEB-INF**: Contains JSP files and web.xml
- **pom.xml**: Project Object Model file for managing dependencies

## Prerequisites

Before you begin, ensure you have the following installed:

- Java JDK 1.8
- Apache Maven
- Apache Tomcat
- MySQL database

## Setup Instructions

1. **Clone the repository:**

   ```bash
   git clone https://github.com/NiGabriel/crud_spring_mvc.git
   cd crud_spring_mvc

2. **Set up the database:**

Create a MySQL database named bus.
Use the following SQL script to create the necessary tables:

CREATE TABLE student (
    id INT,
    fullnames VARCHAR(255),
    gender VARCHAR(10),
    age INT,
    department VARCHAR(255),
    PRIMARY KEY (id)
);

