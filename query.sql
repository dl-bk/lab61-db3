--1 
SELECT * FROM WARDS;

--2
SELECT doctors.surname, doctors.phone FROM Doctors;

--3
SELECT WARDS.FLOOR FROM WARDS
GROUP BY WARDS.FLOOR;

--4 
SELECT DISEASES.NAME AS "Name of disease", DISEASES.SEVERITY AS "Severity of disease" FROM DISEASES;

--5 
SELECT D.NAME FROM DEPARTMENTS D
WHERE D.BUILDING = 4 AND D.FINANCING < 3000000;

--6
SELECT D.NAME FROM DEPARTMENTS D
WHERE D.BUILDING = 3 AND D.FINANCING BETWEEN 30000 AND 1000000;

--8
SELECT W.name FROM Wards W
WHERE W.BUILDING IN (3, 4) AND W.FLOOR = 2;

--9 
SELECT D.name, D.building, D.financing FROM DEPARTMENTS D
WHERE D.building IN (2, 4) AND (D.financing < 11000 OR D.financing > 25000);

--10
SELECT Doc.surname FROM DOCTORS Doc
WHERE (Doc.salary + 120) > 85000;

--11
SELECT Doc.surname FROM DOCTORS Doc
WHERE (Doc.salary / 2) > (500 * 3);

--12 
SELECT E.name FROM EXAMINATIONS E
WHERE (E.dayofweek BETWEEN 1 AND 3) AND 
	CAST(E.starttime AS TIME) >= '12:00:00' AND 
  	CAST(E.endtime AS TIME) <= '15:00:00'
GROUP BY E.name;

--13
SELECT D.name, D.building FROM Departments D
WHERE D.building IN (1,3,8,10);

--14
SELECT Diseases.name FROM Diseases
WHERE Diseases.severity NOT IN (1,2);

--15
SELECT D.name FROM Departments D
WHERE D.building NOT IN (1,3);

--16
SELECT D.name FROM Departments D
WHERE D.building IN (1,3);

--17
SELECT Doc.surname FROM DOCTORS Doc
WHERE Doc.surname LIKE 'N%';