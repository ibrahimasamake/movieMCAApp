CREATE DATABASE IF NOT EXISTS student_management_db
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_unicode_ci;

USE student_management_db;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_code VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20),
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    address TEXT,
    course VARCHAR(100) NOT NULL,
    enrollment_year INT NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO students (student_code, first_name, last_name, email, phone, date_of_birth, gender, address, course, enrollment_year, status)
VALUES
('STU001', 'John', 'Doe', 'john.doe@example.com', '1234567890', '2000-05-15', 'Male', '123 Main St, City', 'Computer Science', 2022, 'Active'),
('STU002', 'Jane', 'Smith', 'jane.smith@example.com', '0987654321', '2001-08-22', 'Female', '456 Oak Ave, Town', 'Mathematics', 2022, 'Active'),
('STU003', 'Bob', 'Johnson', 'bob.johnson@example.com', '5551234567', '1999-12-10', 'Male', '789 Pine Rd, Village', 'Physics', 2021, 'Graduated'),
('STU004', 'Alice', 'Williams', 'alice.williams@example.com', '4449876543', '2002-03-30', 'Female', '321 Elm St, City', 'Computer Science', 2023, 'Active'),
('STU005', 'Charlie', 'Brown', 'charlie.brown@example.com', '7775553333', '2000-07-18', 'Male', '654 Maple Dr, Suburb', 'Engineering', 2022, 'Inactive');
