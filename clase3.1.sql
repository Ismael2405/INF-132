Desplegar los jurados que calificaron con nota menor o igual a 50 en la parte de la vestimenta.
1. Select xp.apepaterno,xp.apematerno,xp.nombre
From Persona xp join (Select xj.ci
                    From Jurado xj join Calificaf xc
                    On xj.ci = xc.ci
                    Where xj.vestimenta<=50) Tmp
On xp.ci = Tmp.ci
Order by xp.apepaterno
2. Desplegar las casas bordaras que hicieron los trajes para los bloques de color Rosa o Celeste
Select xcb.razon_social
From CasaBordadora xcb join Bloque xb
on xcb.nit = xb.nit
Where xb.color like 'Rosa' OR xb.color like 'Celeste'
Order by xcb.razon_social
3. Desplegar las bandas que tocan para las fraternidades 'Saya Afroboliviana' y 'Pakhochis'
Select distinct xb.nombre_banda
From Banda xb join (Select xt.idbanda
                    From Toca xt join Fraternidad xf
                    On xt.idfrat = xf.idfrat
                    Where xf.nombre like 'Saya Afroboliviana' OR xf.nombre like 'Pakhochis') Tmp
On xb.idbanda = Tmp.idbanda
Order by nombre_banda