select * from estudiante;

-- Uso de distinct

select distinct nombre_est
from estudiante;

-- Uso where

select nombre_est, apellido_est
from estudiante
where id_est = 6;


select nombre_est, apellido_est
from estudiante
where id_est between 6 and 9;

select nombre_est, apellido_est
from estudiante
where (id_est =  6 or id_est = 9);

select nombre_est, apellido_est
from estudiante
where (nombre_est =  'Luis' and apellido_est = 'Marin');

select nombre_est, apellido_est
from estudiante
where (nombre_est =  'Luis');

select * from estudiante;


-- Order by 

select nombre_est, apellido_est
from estudiante
order by apellido_est;



select nombre_est, apellido_est
from estudiante
order by apellido_est DESC;

--Top

select top 5 * from estudiante;

-- si quiero mostrar las ultimas filas 

select top 5 * from estudiante 
order by apellido_est DESC ;

