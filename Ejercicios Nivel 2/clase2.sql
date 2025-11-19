Select xf.nombre, xf.idFacu, xfa.*
From Fraternidad xf join Facultad xfa 
on xf.idFacu=xfa.idFacu


Select xf.nombre, xf.idFacu, xfa.nombre_f
From Fraternidad xf join Facultad xfa 
on xf.idFacu=xfa.idFacu
where to_char(xfa.fecha_fund,('YYYY'))='1975'

1.
Select xp.apepaterno, xp.apematerno, xp.nombre
From Persona xp join Fraterno xf
on xp.ci=xf.ci
Where sexo like 'FEMENINO'
and to_char(fecha_nac, 'YYYY')>='1995'
2. 
Select xf.nombre, xf.fundacion
From Fraternidad xf join Danza xd
on xf.iddanza=xd.iddanza
Where nombre_d like 'Tinkus'
3.
Select xp.apepaterno, xp.apematerno, xp.nombre, xj.institucion
From Persona xp join Jurado xj
on xp.ci=xj.ci
Where sexo like 'MASCULINO'
Order by xp.nombre
4.
Select xb.nombreb, xb.color
From Bloque xb join Casabordadora xc
on xb.nit=xc.nit
where (xc.razon_social like 'ESCORPION' or xc.razon_social like 'EL PIONERO') and (xb.color like 'Azul' or xb.color like 'Amarillo' or xb.color like 'Verde')
Order by nombreb 