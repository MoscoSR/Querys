


insert into estudiante (nombre_est,apellido_est,email_est)
values ('Luis','Castro', 'luisc@mail.com'),
       ('Maria','�D�az', 'mariac@mail.com'),
	   ('caro','Ruiz', 'cruiz@mail.com'),
	   ('Pedro','J�menez', 'pj09@mail.com'),
	   ('Juan','Jara', 'juan.jara@mail.com'),
	   ('Luz','Taborda', 'luz.taborda@mail.com'),
	   ('Diego','Garc�a', 'dg@mail.com'),
	   ('Luis','Marin', 'marinluis@mail.com'),
	   ('Karol','Gutierrez', 'karol@mail.com'),
	   ('Esteban','le�n', 'est.leon@mail.com'),
	   ('Lucho','�D�az', 'luchito@mail.com');

select * from estudiante;

insert into profesor
values --('alex','Villa','Scrum');
('Albeiro','Muriel','JavaScript'),
('Fredy','Mu�oz','Java'),
('jaime','Zapata','React');

update profesor
set especialidad = 'M�viles'
where id_prof = 2;

delete from profesor
where id_prof = 3;

select * from profesor;

insert into curso
values ('web 1', '104'),
('Bases de datos', '104');

select * from curso;

insert into matricula
values ('2023-07-13', '2023-08-01','2023-12-01', 1, 2,2),
('2023-07-13', '2023-08-01','2023-12-01', 1, 2,2);



select *from matricula;

