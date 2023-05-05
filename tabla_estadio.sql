create table estadio(
	codigo_estadio varchar(10) unique, 
	nombre varchar(40), 
	capacidad integer, 
	ciudad varchar(30), 
	id_equipo_equipo varchar(10), 
	constraint estadio_pk primary key(codigo_estadio), 
	foreign key (id_equipo_equipo) references equipo
);

insert into estadio values ('1010', 'Etihad Stadium', 53400, 'Manchester', 10 );
insert into estadio values ('1111', 'Emirates Stadium', 60704, 'Londres', 11 );
