
create table jugador(
	id_jugador varchar(10), 
	id_equipo varchar(10), 
	dorsal integer, 
	primer_nombre varchar(30), 
	segundo_nombre varchar(30),
	primer_apellido varchar(30), 
	segundo_apellido varchar(30), 
	nacionalidad varchar(30), 
	fecha_nacimiento date,
	constraint jugador_pk primary key (id_jugador), 
	foreign key (id_equipo) references equipo
);



insert into jugador values('1030', '10', 31, 'Ederson', null, 'Santana', 'De Moraes','Brasil', '17/08/1993' );
insert into jugador values('1031', '10', 18, 'Stefan', null, 'Ortega', 'Moreno','Alemania', '06/11/1992' );
insert into jugador values('1032', '10', 33, 'Scott', 'Paul', 'Carson', null,'Inglaterra', '03/09/1985' );
insert into jugador values('1033', '10', 3, 'Ruben', 'Santos', 'Gato Alves', 'Dias','Portugal', '14/05/1997' );
insert into jugador values('1034', '10', 6, 'Nathan', 'Benjamin', 'Aké', null ,'Paises Bajos','18/02/1995' );
insert into jugador values('1035', '10', 5, 'John', null , 'Stones', null ,'Inglaterra','28/05/1994' );
insert into jugador values('1036', '10', 14, 'Aymeric', 'Jean' , 'Louis', 'Gerard' ,'España','27/05/1994' );
insert into jugador values('1037', '10', 25, 'Manuel', null , 'Obafemi', 'Akanji' ,'Suiza','19/07/1995' );
insert into jugador values('1038', '10', 21, 'Sergio', null , 'Gómez', 'Martín' ,'España','04/09/2000' );
insert into jugador values('1039', '10', 2, 'Kyle', 'Andrew' , 'Walker', null ,'Inglaterra','28/05/1990' );
insert into jugador values('1040', '10', 82, 'Rico', 'Henry' , 'Mark', 'Lewis' ,'Inglaterra','21/11/2004' );
insert into jugador values('1041', '10', 16, 'Rodrigo', null , 'Hernández', 'Cascante' ,'España','22/06/1996' );
insert into jugador values('1042', '10', 4, 'Kalvin', null , 'Mark', 'Phillips' ,'Inglaterra','02/12/1995' );
insert into jugador values('1043', '10', 8, 'Ilkay', null , 'Gundogän', null ,'Alemania','24/10/1990' );
insert into jugador values('1044', '10', 17, 'Kevin', null , 'De Bruyne', null ,'Belgica','28/06/1991 ' );
insert into jugador values('1045', '10', 20, 'Bernardo', 'Mota' , 'Veiga', 'de Carvalho' ,'Portugal','10/08/1994' );
insert into jugador values('1046', '10', 47, 'Phil', 'Walter' , 'Phoden', null ,'Inglaterra','28/05/2000' );
insert into jugador values('1047', '10', 10, 'Jack', 'Peter' , 'Grealish', null ,'Inglaterra','10/09/1995' );
insert into jugador values('1048', '10', 26, 'Riyad', null , 'Mahrez', null ,'Argelia','21/02/1991' );
insert into jugador values('1049', '10', 9, 'Erling', 'Braut' , 'Haland', null ,'Noruega','21/07/2000' );
insert into jugador values('1050', '10', 19, 'Julian', null , 'Alvaréz', null ,'Argentina','31/01/2000' );

