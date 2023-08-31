CREATE DATABASE	myfirstBD;

use myfirstBD;

--drop database myfirstBD;


-- 
create table estudiante(

id int primary key  not null,
nombre_est varchar(55) not null,
apell_est varchar(55) not null,
correo varchar(55) not null,
curso int not null
);

-- Esta sentencia adicciona una columna a la base de datos

alter table estudiante

add phone varchar(20) not null

-- Esta setencia borra la tabla
drop table estudiante;


-- Esta sentencia elimina una columna

alter table ESTUDIANTE
drop column phone;

-- Cambiar un nombre de una columna

EXEC sp_rename 'estudiante.correo', 'email', 'COLUMN';

-- Renombrar una tabla

EXEC sp_rename 'estudiante', 'estudiantes';

drop table estudiantes;

-- Usando constrains

create table curso(
	id_curso int identity(1,1) not null,
	constraint pk_key primary key (id_curso)
);

create table estudiantes(

id int not null,
nombre_est varchar(55) not null,
apell_est varchar(55) not null,
correo varchar(55) not null,
curso int not null,
constraint pk_estudiantes primary key (id),
constraint fk_curso foreign key (curso)
references curso(id_curso)

);




