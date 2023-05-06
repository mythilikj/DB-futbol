
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


//Manchester City
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


//	##CHELSEA FC


insert into jugador values('1250', '12', 16, 'Edouard', 'Osuque' , 'Mendy', null ,'Senegal','01/03/1992' );
insert into jugador values('1251', '12', 1, 'Kepa', null , 'Arrizabalaga', 'Revuelta' ,'España','03/10/1994' );
insert into jugador values('1252', '12', 33, 'Wesley', null , 'Fofana', null ,'Francia','17/12/2000' );
insert into jugador values('1253', '12', 26, 'Kalidou', null , 'Koulibaly', null ,'Senegal','20/06/1991');
insert into jugador values('1254', '12', 14, 'Trevoh', 'Thomas' , 'Chalobah', null ,'Inglaterra','05/07/1999');
insert into jugador values('1255', '12', 6, 'Thiago', 'Emiliano' , 'Da Silva', null ,'Brasil',' 22/09/1984');
insert into jugador values('1256', '12', 32, 'Marc', null , 'Cucurella', 'Saseta' ,'España','22/07/1998');
insert into jugador values('1257', '12', 21, 'Benjamin', 'James' , 'Chilwell', null ,'Inglaterra','21/12/1996');
insert into jugador values('1258', '12', 67, 'Lewis', null , 'Hall', null ,'Inglaterra','08/09/2004');
insert into jugador values('1259', '12', 24, 'Reece', null , 'James', null ,'Inglaterra','08/12/1999');
insert into jugador values('1260', '12', 28, 'César', null , 'Azpilicueta', 'Tanco' ,'España','28/08/1989');
insert into jugador values('1261', '12', 5, 'Enzo', 'Jeremías' , 'Fernandez', null,'Argentina','17/01/2001');
insert into jugador values('1262', '12', 7, 'N´Golo', null, 'Kante', null,'Francia','29/03/1991');
insert into jugador values('1263', '12', 20, 'Denis', 'Lemi', 'Zakaria', 'Lako','Suiza','20/11/1996');
insert into jugador values('1264', '12', 8, 'Mateo', null, 'Kovacic', null,'Croacia','06/05/1994');
insert into jugador values('1265', '12', 23, 'Connor', null, 'Gallagher', null,'Inglaterra','06/02/2000');
insert into jugador values('1266', '12', 12, 'Ruben', 'Ira', 'Loftus', 'Cheek','Inglaterra','23/01/1996');
insert into jugador values('1267', '12', 30, 'Carney', 'Chibueze', 'Chukwuemeka', null ,'Inglaterra','20/10/2003');
insert into jugador values('1268', '12', 19, 'Mason', 'Tony', 'Mount', null ,'Inglaterra','10/01/1999');
insert into jugador values('1269', '12', 29, 'Kai', 'Lukas', 'Havertz', null ,'Alemania','11/06/1999');
insert into jugador values('1270', '12', 15, 'Mykhaylo', null ,'Mudryk', null ,'Ucrania','05/01/2001');
insert into jugador values('1271', '12', 17, 'Raheem', 'Shaquille' ,'Sterling', null ,'Inglaterra','08/12/1994');
insert into jugador values('1272', '12', 10, 'Christian', 'Mate' ,'Pulisíc', null ,'Estados Unidos','18/09/1998');
insert into jugador values('1273', '12', 31, 'Chukwunonso', 'Tristan ' ,'Madueke', null ,'Inglaterra','10/03/2002');
insert into jugador values('1274', '12', 22, 'Hakim', null,'Ziyech', null ,'Marruecos','19/03/1993');
insert into jugador values('1275', '12', 11, 'Joao', 'Felix','Sequeira', null ,'Portugal','10/11/1999');
insert into jugador values('1276', '12', 18, 'Armando', null,'Broja', null ,'Albania','10/09/2001');
insert into jugador values('1277', '12', 9, 'Pierre', 'Emerik','Emiliano', 'Francois' ,'Gabon','18/06/1989');

