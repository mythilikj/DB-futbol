create table estadio(
	codigo_estadio varchar(10) unique, 
	nombre varchar(40), 
	capacidad integer, 
	ciudad varchar(30), 
	id_equipo_equipo varchar(10), 
	constraint estadio_pk primary key(codigo_estadio), 
	foreign key (id_equipo_equipo) references equipo
);

COPY estadio(codigo_estadio, nombre, capacidad, ciudad, id_equipo_equipo)
		   FROM 'C:\Users\Public\Downloads\tabla_estadio.csv' DELIMITER ';' CSV HEADER;
