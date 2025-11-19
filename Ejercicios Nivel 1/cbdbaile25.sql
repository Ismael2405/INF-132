1.
SELECT apepaterno, apematerno, nombre, nacionalidad
FROM Persona
WHERE sexo='FEMENINO'
AND nacionalidad='PERU'
ORDER BY apepaterno
2.
Select apepaterno, apematerno, nombre
From Persona
Where to_char(fechanac, 'yyyy') = 1990
Order by apepaterno
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
Select nombre, presupuesto, totalgasto
From Fraternidad
Where presupuesto between 250 and 400
or (totalgasto >=10000)
Order by nombre
6.
Select nombre, color, fechafund
From Bloque
Where color like 'AMARILLO' 
or (color like 'ROJO')
And (to_char(fechafund, 'mm') = '01') or (to_char(fechafund, 'mm') = '03')
Order by nombre
