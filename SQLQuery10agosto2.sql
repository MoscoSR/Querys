
create database myfirstBD;
--use myfirstBD;

create table profesor(

	id_prof int identity(1,1) not null,
	nombre_prof varchar(55) not null,
	apellido_prof varchar(55) not null,
	especialidad varchar(55) not null,
	constraint pk_profesor primary key (id_prof)

);

create table estudiante(
	id_est int identity(1,1) not null,
	nombre_est varchar (55) not null,
	apellido_est varchar(55) not null,
	email_est varchar(55) not null,
	constraint pk_estudiante primary key (id_est)
);

create table curso(
	id_curso int identity(1,1) not null,
	nombre_curso varchar(55) not null,
	aula varchar(55) not null,
	constraint pk_curso primary key (id_curso)
);


--alter table curso
--drop column profesor;

create table matricula(
	id_matricula int identity(1,1) not null,
	fecha_matricula date not null,
	fecha_inicio date not null,
	fecha_fin date not null,
	estudiante int not null,
	profesor int not null,
	curso int not null,
	constraint pk_matricula primary key (id_matricula),
	constraint fk_estudiante foreign key (estudiante)
	references estudiante(id_est),
	constraint fk_profesor foreign key (profesor)
	references profesor(id_prof),
	constraint fk_curso foreign key (curso)
	references curso(id_curso)
);

create table ingreso_matricula(
id_ing int identity (1,1) not null,
valor_curso int not null,
cantidad_cursos int not null,
valor_matricula as valor_curso*cantidad_cursos,
estudiante int not null,
constraint pk_ingreso_matricula primary key (id_ing),
constraint fk_est foreign key (estudiante)
references estudiante(id_est)
);