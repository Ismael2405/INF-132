1.
SELECT apepaterno, apematerno, nombre, nacionalidad
FROM Persona
WHERE sexo='FEMENINO'
AND nacionalidad='PERU'
ORDER BY apepaterno
2.
SELECT apepaterno, apematerno, nombre
FROM persona
WHERE TO_CHAR(fechanac, 'yyyy')='1990'
ORDER BY apepaterno;
3.
Select apepaterno, apematerno, nombre
From Persona
Where apepaterno like '____A'
Order by apepaterno
4.
Select nombre_banda, costo, categoria
From Banda
Where categoria like 'AUTOCTONA%'
And (costo between 3000 and 4000)
Order by nombre_banda
5. 
SELECT nombre, presupuesto, totalgasto
FROM fraternidad
WHERE totalgasto>=10000
OR (presupuesto between 250 and 400)
ORDER BY nombre;
6.
SELECT nombreb, color, fechafund
FROM bloque
WHERE (color like 'Rojo' OR color like 'Amarillo')
AND TO_CHAR(fechafund, 'MM') IN ('01', '03')
ORDER BY nombreb;
