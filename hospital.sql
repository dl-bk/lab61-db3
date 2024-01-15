CREATE TABLE Departments(
	Id SERIAL PRIMARY KEY,
	Building INTEGER NOT NULL CHECK(Building >= 1 AND Building <= 5),
	Financing DECIMAL(10, 2) NOT NULL DEFAULT 0 CHECK(Financing >= 0),
	NAME VARCHAR(100) UNIQUE NOT NULL
);
INSERT INTO Departments (Building, Financing, Name) VALUES
    (1, 500000.00, 'Cardiology'),
    (2, 700000.00, 'Pediatrics'),
    (3, 600000.00, 'Surgery'),
    (4, 800000.00, 'Oncology');
	
CREATE TABLE Diseases(
	Id SERIAL PRIMARY KEY,
	NAME VARCHAR(100) UNIQUE NOT NULL,
	Severity INTEGER NOT NULL DEFAULT 1 CHECK(Severity >= 1)
);
INSERT INTO Diseases (Name, Severity) VALUES
    ('Flu', 2),
    ('Hypertension', 3),
    ('Diabetes', 4),
    ('Bronchitis', 2),
    ('Migraine', 1);
	
CREATE TABLE Doctors(
	Id SERIAL PRIMARY KEY,
	NAME VARCHAR(255) NOT NULL,
	Phone CHAR(10),
	Salary DECIMAL(10, 2) NOT NULL CHECK(Salary >= 0),
	SURNAME VARCHAR(255) NOT NULL
);
INSERT INTO Doctors (Name, Phone, Salary, Surname) VALUES
    ('John', '1234567890', 80000.00, 'Doe'),
    ('Emily', '9876543210', 75000.00, 'Smith'),
    ('Michael', '5555555555', 90000.00, 'Johnson'),
    ('Sarah', '3333333333', 85000.00, 'Williams'),
    ('David', '7777777777', 82000.00, 'Jones');
	
CREATE TABLE Examinations(
	Id SERIAL PRIMARY KEY,
	DayOfWeek INT NOT NULL CHECK(DayOfWeek BETWEEN 1 AND 7),
	EndTime TIME NOT NULL,
	NAME VARCHAR(100) UNIQUE NOT NULL,
	StartTime TIME NOT NULL CHECK(StartTime BETWEEN '08:00' AND '18:00')
);
INSERT INTO Examinations (DayOfWeek, EndTime, Name, StartTime) VALUES
    (1, '12:00', 'Morning Checkup', '08:00'),
    (3, '15:30', 'Afternoon Exam', '13:00'),
    (5, '17:00', 'Evening Consultation', '16:00'),
    (2, '10:30', 'Routine Blood Test', '09:00'),
    (4, '14:45', 'X-ray Session', '12:30');

CREATE TABLE Wards(
	Id SERIAL PRIMARY KEY,
	Building INTEGER NOT NULL CHECK(Building >= 1 AND Building <= 5),
	--FOREIGN KEY (Building) REFERENCES Departments(Building),
	Floor INT NOT NULL CHECK(Floor >= 1),
	NAME VARCHAR(20) UNIQUE NOT NULL
);
INSERT INTO Wards (Building, Floor, Name) VALUES
    (1, 2, 'Cardiology Ward'),
    (2, 1, 'Pediatrics Ward'),
    (3, 3, 'Surgery Ward'),
    (4, 2, 'Oncology Ward'),
    (5, 1, 'Neurology Ward');