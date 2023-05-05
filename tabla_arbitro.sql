--- Creación de tabla Árbitro
create table arbitro(
	id varchar(30),
	primer_nombre varchar(30),
	primer_apellido varchar(40),
	fecha_nacimiento date,
	constraint arbitro_pk primary key(id)
);

--- Inserción de datos en la tabla Árbitro
insert into arbitro values ('101', 'Paul', 'Tierney', '25/12/1980');
insert into arbitro values ('102', 'Michael', 'Oliver', '20/02/1985');
insert into arbitro values ('103', 'Anthony', 'Taylor', '20/10/1978');
insert into arbitro values ('104', 'Simon', 'Hooper', '15/07/1982');
insert into arbitro values ('105', 'Robert', 'Jones', '04/04/1987');
insert into arbitro values ('106', 'Stuart', 'Attwell', '06/10/1982');
insert into arbitro values ('107', 'Andrew', 'Madley', '05/09/1983');
insert into arbitro values ('108', 'Craig', 'Pawson', '02/03/1979');
insert into arbitro values ('109', 'David', 'Coote', '11/07/1982');
insert into arbitro values ('110', 'Peter', 'Bankes', '18/05/1982');
insert into arbitro values ('111', 'Darren', 'England', '23/12/1985');
insert into arbitro values ('112', 'Jarred', 'Gillett', '01/11/1986');
insert into arbitro values ('113', 'John', 'Brooks', null);
insert into arbitro values ('114', 'Michael', 'Salisbury', null);
insert into arbitro values ('115', 'Andre', 'Marriner', '01/01/1971');
insert into arbitro values ('116', 'Chris', 'Kavanagh', '04/09/1985');
insert into arbitro values ('117', 'Graham', 'Scott', '10/10/1968');
insert into arbitro values ('118', 'Tony', 'Harrington', null);
insert into arbitro values ('119', 'Thomas', 'Bramall', null);
insert into arbitro values ('120', 'Darren', 'Bond', null);
insert into arbitro values ('121', 'Tim', 'Robinson', '01/01/1984');
insert into arbitro values ('122', 'Bobby', 'Madley', '06/10/1985');