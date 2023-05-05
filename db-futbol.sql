create table arbitro(
	id varchar(30),
	primer_nombre varchar(30),
	primer_apellido varchar(40),
	fecha_nacimiento date
	constraint arbitro_pk primary key(id)
);

create table equipo
( id_equipo varchar(30), nombre varchar(50), valor_mill numeric(8,2),
 constraint equipo_pk primary key(id_equipo)
);

