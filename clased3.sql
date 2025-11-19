EJEMPLO CON TABLA TEMPORAL
(Select xc.idcarr, xf.idfrat
From Carrera xc join Fraternidad xf
On xc.idcarr = xf.idcarr
Where xc.nombre like 'Informatica')
Desplegar los bloques que pertenecen a la carrera de auditoria
Select xb.nombreb,xb.idfrat
From Bloque xb join (Select xc.idcarr, xf.idfrat
                    From Carrera xc join Fraternidad xf
                    On xc.idcarr = xf.idcarr
                    Where xc.nombre like 'Informatica') Tmp
on xb.idfrat = Tmp.idfrat


EJEMPLO SIN TABLA TEMPORAL
Select xc.idcarr, xf.idfrat, xb.*
From Carrera xc join Fraternidad xf On xc.idcarr = xf.idcarr
        join Bloque xb On xb.idfrat = xf.idfrat
Where xc.nombre like 'Informatica'


1.Desplegar los jurados que calificaron a la Banda 'PAGADOR'
Select xp.apepaterno,xp.apematerno,xp.nombre,xp.nacionalidad
From Persona xp join (Select xcb.ci
                    From Calificab xcb join Banda xb
                    On xcb.idbanda = xb.idbanda
                    Where xb.nombre_banda like 'PAGADOR') Tmp 
On xp.ci = Tmp.ci
Order by xp.apepaterno

2. 
Select xp.apepaterno, xp.apematerno, xp.nombre, xp.nacionalidad
From Calificab xcb join Banda xb On xcb.idbanda = xb.idbanda
    join Persona xp On xp.ci = xcb.ci
Where xb.nombre_banda like 'PAGADOR'

3. Desplegar los bloques que representan a la danza Llamerada
Select xb.nombreb, xb.color
From Bloque xb join (Select xf.idfrat
                    From Fraternidad xf join Danza xd
                    On xf.iddanza = xd.iddanza
                    Where xd.nombre_d like 'Llamerada') Tmp
On xb.idfrat = Tmp.idfrat
Order by xb.nombreb

4.
Select xb.nombreb, xb.color
From Fraternidad xf join Danza xd On xf.iddanza = xd.iddanza
    join Bloque xb On xb.idfrat = xf.idfrat
Where xd.nombre_d like 'Llamerada'
Order by xb.nombreb

5.
Select xp.apepaterno, xp.apematerno, xp.nombre
From Persona xb join (Select xf.id
                    From Fraternidad xf join Danza xd
                    On xf.iddanza = xd.iddanza
                    Where xd.nombre_d like 'Llamerada') Tmp
On xb.idfrat = Tmp.idfrat
Order by xb.nombreb