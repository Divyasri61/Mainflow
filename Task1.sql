-- Step 1: Create Database
CREATE DATABASE StudentManagement;
USE StudentManagement;

-- Step 2: Create Students Table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Gender VARCHAR(1) CHECK (Gender IN ('M', 'F')),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

-- Step 3: Insert Sample Data
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('Ravi Teja', 'M', 15, 'A', 90, 85, 88),
('Sita Mahalakshmi', 'F', 16, 'B', 78, 82, 80),
('Venkatesh Reddy', 'M', 15, 'A', 92, 88, 89),
('Lakshmi Priya', 'F', 17, 'C', 70, 75, 72),
('Anil Kumar', 'M', 16, 'B', 85, 80, 83),
('Deepika Reddy', 'F', 15, 'A', 95, 92, 90),
('Suresh Babu', 'M', 17, 'C', 65, 70, 68),
('Keerthi Devi', 'F', 16, 'B', 82, 79, 81),
('Harsha Vardhan', 'M', 15, 'A', 88, 90, 86),
('Swathi Rao', 'F', 16, 'B', 84, 78, 80);

-- Task 1: Display All Students and Their Details
SELECT * FROM Students;

-- Task 2: Calculate the Average Scores for Each Subject
SELECT 
    AVG(MathScore) AS AvgMathScore, 
    AVG(ScienceScore) AS AvgScienceScore, 
    AVG(EnglishScore) AS AvgEnglishScore
FROM Students;

-- Task 3: Find the Student(s) with the Highest Total Score
SELECT *, (MathScore + ScienceScore + EnglishScore) AS TotalScore 
FROM Students 
ORDER BY TotalScore DESC 
LIMIT 1;

-- Task 4: Count the Number of Students in Each Grade
SELECT Grade, COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;

-- Task 5: Find the Average Score for Male and Female Students
SELECT Gender, 
    AVG(MathScore) AS AvgMathScore, 
    AVG(ScienceScore) AS AvgScienceScore, 
    AVG(EnglishScore) AS AvgEnglishScore
FROM Students
GROUP BY Gender;

-- Task 6: Identify Students with Math Score Above 80
SELECT * FROM Students WHERE MathScore > 80;

-- Task 7: Update the Grade of a Specific Student
UPDATE Students 
SET Grade = 'A' 
WHERE StudentID = 2;
