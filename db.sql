-- Database: student_placement

CREATE DATABASE IF NOT EXISTS student_placement;
USE student_placement;

-- Table for Students
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50),
    status ENUM('Not Placed', 'Placed') DEFAULT 'Not Placed'
);

-- Table for Companies
CREATE TABLE IF NOT EXISTS companies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(100),
    package DECIMAL(10, 2)
);

-- Table for Placements
CREATE TABLE IF NOT EXISTS placements (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    company_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (company_id) REFERENCES companies(id)
);
