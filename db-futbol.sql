--- Creación de tablas

/*
Nota: Ejecutar la creación de tablas por separado. 
Nota: Primero debemos verificar el datestyle de nuestro pgAdmin con la siguiente sentencia:
		show datestyle
En caso tal de que el datestyle sea diferente a (DMY, SQL), por favor ejecutar esta sentencia:
		set datestyle = DMY, SQL;
*/

--> Arbitro
create table arbitro(
	id varchar(10),
	primer_nombre varchar(30),
	primer_apellido varchar(40),
	fecha_nacimiento date,
	constraint arbitro_pk primary key(id)
);

--> Equipo
create table equipo(
	id_equipo varchar(10), 
	nombre varchar(50), 
	valor_mill numeric(8,2),
	constraint equipo_pk primary key(id_equipo)
);

--> Estadio
create table estadio(
	codigo_estadio varchar(10) unique, 
	nombre varchar(40), 
	capacidad integer, 
	ciudad varchar(30), 
	id_equipo_equipo varchar(10), 
	constraint estadio_pk primary key(codigo_estadio), 
	foreign key (id_equipo_equipo) references equipo
);

--> Jugador
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

--> Partido
create table partido(
	codigo_jornada varchar(10), 
	id_local varchar(10), 
	id_visitante varchar(10),
	goles_local integer, 
	goles_visitante integer, 
	id_arbitro varchar(10),
	resultado integer,
	constraint partido_pk primary key (codigo_jornada),
	foreign key (id_local) references equipo,
	foreign key (id_visitante) references equipo,
	foreign key (id_arbitro) references arbitro
);

--> Patrocina
create table patrocina(
	codigo_patrocinador varchar(10),
	id_equipo varchar(10),
	constraint patrocina_pk primary key (codigo_patrocinador, id_equipo), 
	foreign key (codigo_patrocinador) references patrocinador,
	foreign key (id_equipo) references equipo
);

--> Patrocinador
create type element as enum ('VESTIMENTA', 'APOYO ECONOMICO');

create table patrocinador(
	codigo_patrocinador varchar(10),
	nombre varchar(40),
	elemento element,
	constraint patrocinador_pk primary key(codigo_patrocinador)
);

--> Registro Partido
create type action as enum('GOL','AMARILLA','ROJA', 'AUTOGOL');

create table registro_partido(
	id_accion serial, id_jugador varchar(10), codigo_jornada varchar(10), accion action,
	constraint registro_partido_pk primary key(id_accion),
	foreign key (id_jugador) references jugador,
	foreign key (codigo_jornada) references partido
);


--- Inserción de datos en la tabla Estadio
--> Arbitro
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

--> Equipo
insert into equipo values('10', 'Manchester City', 1000.05 );
insert into equipo values('11', 'Arsenal FC', 890.00 );
insert into equipo values('12', 'Chelsea FC', 1000.02 );
insert into equipo values('13', 'Liverpool FC', 879.00 );	
insert into equipo values('14', 'Manchester United', 795.70 );
insert into equipo values('15', 'Tottenham Hotspur', 680.30 );
insert into equipo values('16', 'Newcastle United', 494.30 );
insert into equipo values('17', 'West Ham United', 451.50 );
insert into equipo values('18', 'Leicester City', 443.10 );
insert into equipo values('19', 'Aston Villa', 437.00 );
insert into equipo values('20', 'Wolverhampton Wanderers', 398.70 );
insert into equipo values('21', 'Southampton FC', 397.00 );
insert into equipo values('22', 'Brighton & Hove Albion', 358.70 );
insert into equipo values('23', 'Everton FC', 352.90 );
insert into equipo values('24', 'Nottingham Forest', 332.65 );
insert into equipo values('25', 'Brentford FC', 318.10 );
insert into equipo values('26', 'Leeds United', 318.00 );
insert into equipo values('27', 'Crystal Palace', 309.95 );
insert into equipo values('28', 'Fulham FC', 253.50 );
insert into equipo values('29', 'AFC Bournemouth', 243.70 );

--> Estadio
/*
Nota: En el repositorio se encuentra el archivo 'datos_estadio.csv', para ejecutar la siguiente sentencia, hay que descargar el archivo.
Luego copiar la ruta donde se guardo el archivo en 'FROM 'inserte_ruta\datos_estadio.csv' 
*/
COPY estadio(codigo_estadio, nombre, capacidad, ciudad, id_equipo_equipo)
		   FROM 'C:\Users\Public\Downloads\datos_estadio.csv' DELIMITER ';' CSV HEADER;

--> Jugador
--- Manchester City (10)
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

--- Arsenal FC (11)
insert into jugador values ('1130', '11', 1, 'Aaron', 'Christopher', 'Ramsdale', null, 'Inglaterra', '14/05/1998');
insert into jugador values ('1131', '11', 30, 'Matthew', 'Charles', 'Turner', null, 'Estados Unidos', '24/06/1994');
insert into jugador values ('1132', '11', 12, 'William', 'Alain', 'Gabriel ', 'Saliba', 'Francia', '24/03/2001');
insert into jugador values ('1133', '11', 6, 'Gabriel', null, 'dos Santos', 'Magalhães', 'Brasil', '19/12/1997');
insert into jugador values ('1134', '11', 15, 'Jakub', 'Piotr', 'Kiwior', null, 'Polonia', '15/02/2000');
insert into jugador values ('1135', '11', 16, 'Robert', 'Samuel', 'Holding', null, 'Inglaterra', '20/09/1995');
insert into jugador values ('1136', '11', 35, 'Oleksandr', null, 'Zinchenko', null, 'Ucrania', '15/12/1996');
insert into jugador values ('1137', '11', 3, 'Kieran', null, 'Tierney', null, 'Isla de Man', '05/06/1997');
insert into jugador values ('1138', '11', 4, 'Benjamin', 'William', 'White', null, 'Inglaterra', '08/10/1997');
insert into jugador values ('1139', '11', 18, 'Takehiro', null, 'Tomiyasu', null, 'Japón', '05/11/1998');
insert into jugador values ('1140', '11', 5, 'Thomas', 'Teye', 'Partey', null, 'Ghana', '13/06/1993');
insert into jugador values ('1141', '11', 20, 'Jorge', 'Luiz', 'Frello', 'Filho', 'Brasil', '20/12/1991');
insert into jugador values ('1142', '11', 25, 'Mohamed', 'Naser', 'Elneny', null, 'Mahalla', '11/07/1992');
insert into jugador values ('1143', '11', 34, 'Granit', null, 'Xhaka', null, 'Suiza', '27/09/1992');
insert into jugador values ('1144', '11', 8, 'Martin ', null, 'Ødegaard', null, 'Noruega', '17/12/1998');
insert into jugador values ('1145', '11', 10, 'Emile', 'Smith', 'Rowe', null, 'Inglaterra', '28/07/2000');
insert into jugador values ('1146', '11', 21, 'Fábio', 'Daniel', 'Ferreira', 'Vieira', 'Portugal', '30/05/2000');
insert into jugador values ('1147', '11', 11, 'Gabriel', 'Teodoro', 'Martinelli', 'Silva', 'Brasil', '18/06/2001');
insert into jugador values ('1148', '11', 19, 'Leandro', null, 'Trossard', null, 'Bélgica', '04/12/1994');
insert into jugador values ('1149', '11', 7, 'Bukayo', null, 'Saka', null, 'Inglaterra', '05/09/2001');
insert into jugador values ('1150', '11', 24, 'Reiss', 'Luke', 'Nelson', null, 'Inglaterra', '10/12/1999');
insert into jugador values ('1151', '11', 9, 'Gabriel', 'Fernando', 'de Jesus', null, 'Brasil', '03/04/1997');
insert into jugador values ('1152', '11', 14, 'Edward', 'Keddar', 'Nketiah', null, 'Inglaterra', '30/05/1999');

--- Chelsea FC (12)
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

--- Liverpool FC (13)
insert into jugador values ('1353', '13', 1, 'Alisson', 'Ramses', 'Becker', null, 'Brasil', '02/10/1992');
insert into jugador values ('1354', '13', 62, 'Caoimhín', 'Odhran', 'Kelleher', null, 'Irlanda', '23/11/1998');
insert into jugador values ('1355', '13', 13, 'Adrián', 'San Miguel', 'del Castillo', null, 'España', '03/01/1987');
insert into jugador values ('1356', '13', 4, 'Virgil', null, 'del Castillo', null, 'Países Bajos', '08/07/1991');
insert into jugador values ('1357', '13', 5, 'Ibrahima', null, 'Konaté', null, 'Francia', '25/05/1999');
insert into jugador values ('1358', '13', 2, 'Joseph', 'Dave', 'Gomez', null, 'Inglaterra', '23/05/1997');
insert into jugador values ('1359', '13', 32, 'Joel', 'André', 'Matip', 'Job', 'Alemania', '08/08/1991');
insert into jugador values ('1360', '13', 47, 'Nathaniel', 'Harry', 'Phillips', null, 'Inglaterra', '21/03/1997');
insert into jugador values ('1361', '13', 46, 'Rhys', null, 'Williams', null, 'Inglaterra', '03/02/2001');
insert into jugador values ('1362', '13', 26, 'Andrew', 'Henry', 'Robertson', null, 'Escocia', '11/03/1994');
insert into jugador values ('1363', '13', 21, 'Konstantinos', null, 'Tsimikas', null, 'Grecia', '12/05/1996');
insert into jugador values ('1364', '13', 66, 'Trent', 'John', 'Alexander', 'Arnold', 'Inglaterra', '07/10/1998');
insert into jugador values ('1365', '13', 22, 'Calvin', 'William', 'Ramsay', null, 'Escocia', '31/07/2003');
insert into jugador values ('1366', '13', 3, 'Fabio', 'Henrique', 'Tavares', null, 'Brasil', '23/10/1993');
insert into jugador values ('1367', '13', 43, 'Stefan', null, 'Bajčetić', 'Maquieira', 'España', '22/10/2004');
insert into jugador values ('1368', '13', 6, 'Thiago', null, 'Alcántara', 'do Nascimento', 'Brasil', '11/04/1991');
insert into jugador values ('1369', '13', 8, 'Naby', 'Laye', 'Keïta', null, 'Guinea', '10/02/1995');
insert into jugador values ('1370', '13', 17, 'Curtis', null, 'Jones', null, 'Inglaterra', '30/01/2001');
insert into jugador values ('1371', '13', 29, 'Arthur', 'Henrique', 'Ramos', 'de Oliveira', 'Brasil', '12/08/1996');
insert into jugador values ('1372', '13', 14, 'Jordan', 'Brian', 'Henderson	', null, 'Inglaterra', '17/06/1990');
insert into jugador values ('1373', '13', 15, 'Alexander', 'Mark', 'Oxlade', 'Chamberlain', 'Inglaterra', '15/08/1993');
insert into jugador values ('1374', '13', 7, 'James', 'Philip', 'Milner', null, 'Inglaterra', '04/01/1986');
insert into jugador values ('1375', '13', 19, 'Harvey', 'Scott', 'Elliott', null, 'Inglaterra', '04/04/2003');
insert into jugador values ('1376', '13', 28, 'Fábio', 'Leandro', 'Carvalho', null, 'Portugal', '30/08/2002');
insert into jugador values ('1377', '13', 23, 'Luis', 'Fernando', 'Díaz', 'Marulanda', 'Colombia', '13/06/1997');
insert into jugador values ('1378', '13', 18, 'Cody', 'Mathès', 'Gakpo', null, 'Países Bajos', '07/05/1999');
insert into jugador values ('1379', '13', 20, 'Diogo', 'José', 'Teixeira', 'da Silva', 'Portugal', '04/12/1996');
insert into jugador values ('1380', '13', 11, 'Mohamed', 'Salah', 'Hamed', 'Ghaly', 'Egipto', '15/06/1992');
insert into jugador values ('1381', '13', 27, 'Darwin', 'Gabriel', 'Núñez', 'Ribeiro', 'Uruguay', '24/06/1999');
insert into jugador values ('1382', '13', 9, 'Roberto', 'Firmino', 'Barbosa', 'de Oliveira', 'Brasil', '02/10/1991');

--- Manchester United (14)
insert into jugador values ('1483', '14', 1, 'David', null, 'de Gea', 'Quintana', 'España', '07/11/1990');
insert into jugador values ('1484', '14', 31, 'Jack', null, 'Butland', null, 'Inglaterra', '10/03/1993');
insert into jugador values ('1485', '14', 22, 'Thomas', 'David', 'Heaton', null, 'Inglaterra', '15/04/1986');
insert into jugador values ('1486', '14', 6, 'Lisandro', null, 'Martínez', null, 'Argentina', '18/01/1998');
insert into jugador values ('1487', '14', 19, 'Raphaël', 'Xavier', 'Varane', null, 'Francia', '25/04/1993');
insert into jugador values ('1488', '14', 5, 'Jacob', 'Harry', 'Maguire', null, 'Inglaterra', '05/03/1993');
insert into jugador values ('1489', '14', 2, 'Victor', 'Jörgen', 'Nilsson', 'Lindelöf', 'Suecia', '17/07/1994');
insert into jugador values ('1490', '14', 4, 'Philip', 'Anthony', 'Jones', null, 'Inglaterra', '21/02/1992');
insert into jugador values ('1491', '14', 43, 'Teden', 'Mambuene', 'Mengi', null, 'Inglaterra', '30/04/2002');
insert into jugador values ('1492', '14', 23, 'Luke', 'Paul', 'Hoare', 'Shaw', 'Inglaterra', '12/07/1995');
insert into jugador values ('1493', '14', 12, 'Tyrell', 'Johannes', 'Chicco ', 'Malacia', 'Países Bajos', '17/08/1999');
insert into jugador values ('1494', '14', 33, 'Brandon', 'Paul', 'Williams', null, 'Inglaterra', '03/09/2000');
insert into jugador values ('1495', '14', 20, 'José', 'Diogo', 'Dalot', 'Teixeira', 'Portugal', '18/03/1999');
insert into jugador values ('1496', '14', 29, 'Aaron', null, 'Wan-Bissaka', null, 'Inglaterra', '26/11/1997');
insert into jugador values ('1497', '14', 18, 'Carlos', 'Henrique', 'Casimiro', null, 'Brasil', '23/02/1992');
insert into jugador values ('1498', '14', 39, 'Scott', 'Francis', 'McTominay', null, 'Inglaterra', '08/12/1996');
insert into jugador values ('1499', '14', 14, 'Christian', 'Dannemann', 'Eriksen', null, 'Dinamarca', '14/02/1992');
insert into jugador values ('1400', '14', 15, 'Marcel', null, 'Sabitzer', null, 'Austria', '17/03/1994');
insert into jugador values ('1401', '14', 17, 'Frederico', null, 'Rodrigues', 'de Paula Santos', 'Brasil', '05/03/1993');
insert into jugador values ('1402', '14', 34, 'Donny', null, 'van de Beek', null, 'Países Bajos', '18/04/1997');
insert into jugador values ('1403', '14', 55, 'Zidane', 'Aamar', 'Iqbal', null, 'Inglaterra', '27/04/2003');
insert into jugador values ('1404', '14', 73, 'Kobbie', null, 'Mainoo', null, 'Inglaterra', '19/04/2005');
insert into jugador values ('1405', '14', 8, 'Bruno', 'Miguel', 'Borges', 'Fernandes', 'Portugal', '08/09/1994');
insert into jugador values ('1406', '14', 10, 'Marcus', null, 'Rashford', null, 'Inglaterra', '31/10/1997');
insert into jugador values ('1407', '14', 25, 'Jadon', 'Malik', 'Sancho', null, 'Inglaterra', '25/03/2000');
insert into jugador values ('1408', '14', 36, 'Anthony', 'David', 'Elanga', null, 'Suecia', '27/04/2002');
insert into jugador values ('1410', '14', 49, 'Alejandro', null, 'Garnacho', 'Ferreyra', 'España', '01/07/2004');
insert into jugador values ('1411', '14', 21, 'Antony', null, 'Matheus', 'dos Santos', 'Brasil', '24/02/2000');
insert into jugador values ('1412', '14', 28, 'Facundo', null, 'Pellistri', 'Rebollo', 'Uruguay', '20/12/2001');
insert into jugador values ('1413', '14', 11, 'Mason', 'Will', 'Greenwood', null, 'Inglaterra', '01/10/2001');
insert into jugador values ('1414', '14', 9, 'Anthony', 'Jordan', 'Martial', null, 'Francia', '05/12/1995');
insert into jugador values ('1415', '14', 27, 'Wout', 'François', 'Weghorst', null, 'Países Bajos', '07/08/1992');

--- Tottenham Hotspur (15)
insert into jugador values ('1515', '15', 1, 'Hugo', 'Hadrien', 'Lloris', null, 'Francia', '26/12/1986');
insert into jugador values ('1516', '15', 20, 'Fraser', 'Gerard', 'Forster', null, 'Inglaterra', '17/03/1988');
insert into jugador values ('1517', '15', 41, 'Alfie', 'Malik', 'Whiteman', null, 'Inglaterra', '02/10/1998');
insert into jugador values ('1518', '15', 40, 'Brandon', 'Anthony', 'Austin', null, 'Inglaterra', '08/01/1999');
insert into jugador values ('1519', '15', 17, 'Cristian', 'Gabriel', 'Romero', null, 'Argentina', '27/04/1998');
insert into jugador values ('1520', '15', 15, 'Eric', 'Jeremy', 'Dier', null, 'Inglaterra', '15/01/1994');
insert into jugador values ('1521', '15', 6, 'Davinson', null, 'Sánchez', 'Mina', 'Colombia', '12/06/1996');
insert into jugador values ('1522', '15', 34, 'Clément', 'Nicolas', 'Lenglet', null, 'Francia', '17/06/1995');
insert into jugador values ('1523', '15', 25, 'Japhet', 'Manzambi', 'Tanganga', null, 'Inglaterra', '31/03/1999');
insert into jugador values ('1524', '15', 33, 'Benjamin', 'Thomas', 'Davies', null, 'Gales', '24/04/1993');
insert into jugador values ('1525', '15', 23, 'Pedro', 'Antonio', 'Porro ', 'Sauceda', 'España', '13/09/1999');
insert into jugador values ('1526', '15', 12, 'Emerson', 'Aparecido', 'Leite', 'de Souza', 'Brasil', '14/01/1999');
insert into jugador values ('1527', '15', 4, 'Oliver', 'William', 'Skipp', null, 'Inglaterra', '16/09/2000');
insert into jugador values ('1528', '15', 5, 'Pierre', 'Emile', 'Højbjerg', null, 'Dinamarca', '05/08/1995');
insert into jugador values ('1529', '15', 30, 'Rodrigo', null, 'Bentancur', 'Colmán', 'Uruguay', '25/06/1997');
insert into jugador values ('1530', '15', 38, 'Yves', null, 'Bissouma', null, 'Costa de Marfil', '30/08/1996');
insert into jugador values ('1531', '15', 29, 'Pape', 'Matar', 'Sarr', null, 'Senegal', '14/09/2002');
insert into jugador values ('1532', '15', 19, 'Kouassi', 'Ryan', 'Sessegnon', null, 'Inglaterra', '18/05/2000');
insert into jugador values ('1533', '15', 14, 'Ivan', null, 'Perišić', null, 'Croacia', '02/02/1989');
insert into jugador values ('1534', '15', 7, 'Heung-min', null, 'Son', null, 'Corea del Sur', '08/07/1992');
insert into jugador values ('1535', '15', 16, 'Arnaut', 'Danjuma', 'Groeneveld', null, 'Nigeria', '31/01/1997');
insert into jugador values ('1536', '15', 21, 'Dejan', null, 'Kulusevski', null, 'Suecia', '25/04/2000');
insert into jugador values ('1537', '15', 27, 'Lucas', null, 'Rodrigues ', 'Moura da Silva', 'Brasil', '13/08/1992');
insert into jugador values ('1538', '15', 10, 'Harry', 'Edward', 'Kane', null, 'Inglaterra', '28/07/1993');
insert into jugador values ('1539', '15', 9, 'Richarlison', null, 'de Andrade', null, 'Brasil', '10/05/1997');

--- Newcastle United (16)
insert into jugador values ('1640', '16', 22, 'Nicholas', 'David', 'Pope', null, 'Inglaterra', '19/04/1992');
insert into jugador values ('1641', '16', 1, 'Martin', null, 'Dúbravka', null, 'Eslovaquia', '15/01/1989');
insert into jugador values ('1642', '16', 18, 'Loris', 'Sven', 'Karius', null, 'Alemania', '22/06/1993');
insert into jugador values ('1643', '16', 29, 'Mark', 'Joseph', 'Gillespie', null, 'Inglaterra', '27/03/1992');
insert into jugador values ('1644', '16', 4, 'Sven', null, 'Botman', null, 'Países Bajos', '12/01/2000');
insert into jugador values ('1645', '16', 33, 'Daniel', 'Johnson', 'Burn', null, 'Inglaterra', '09/05/1992');
insert into jugador values ('1646', '16', 5, 'Fabian', 'Lukas', 'Schär', null, 'Suiza', '20/12/1991');
insert into jugador values ('1647', '16', 6, 'Jamaal', null, 'Lascelles', null, 'Inglaterra', '11/11/1993');
insert into jugador values ('1648', '16', 13, 'Matthew', 'Robert', 'Targett', null, 'Inglaterra', '18/09/1995');
insert into jugador values ('1649', '16', 12, 'Jamal', 'Piaras', 'Lewis', null, 'Inglaterra', '25/01/1998');
insert into jugador values ('1650', '16', 3, 'Paul', null, 'Dummett', null, 'Gales', '26/06/1991');
insert into jugador values ('1651', '16', 2, 'Kieran', 'John', 'Trippier', null, 'Inglaterra', '19/09/1990');
insert into jugador values ('1652', '16', 17, 'Emil', 'Henry', 'Krafth', null, 'Suecia', '02/08/1994');
insert into jugador values ('1653', '16', 19, 'Javier', null, 'Manquillo', 'Gaitán', 'España', '05/05/1994');
insert into jugador values ('1654', '16', 30, 'Harrison', 'Charles', 'Ashby', null, 'Inglaterra', '14/11/2001');
insert into jugador values ('1655', '16', 39, 'Bruno', 'Guimarães', 'Rodrigues', 'Moura', 'Brasil', '16/11/1997');
insert into jugador values ('1656', '16', 28, 'Joseph', 'George', 'Willock', null, 'Inglaterra', '20/08/1999');
insert into jugador values ('1657', '16', 36, 'Sean', 'David', 'Longstaff', null, 'Inglaterra', '30/10/1997');
insert into jugador values ('1658', '16', 11, 'Matthew', 'Thomas', 'Ritchie', null, 'Inglaterra', '10/09/1989');
insert into jugador values ('1659', '16', 7, 'Joelinton', 'Cassio', 'Apolinário', 'de Lira', 'Brasil', '14/08/1996');
insert into jugador values ('1660', '16', 32, 'Elliot', null, 'Anderson', null, 'Escocia', '06/11/2002');
insert into jugador values ('1661', '16', 8, 'Anthony', 'Michael', 'Gordon', null, 'Inglaterra', '24/02/2001');
insert into jugador values ('1662', '16', 10, 'Allan', 'Irénée', 'Saint-Maximin', null, 'Francia', '12/03/1997');
insert into jugador values ('1663', '16', 21, 'Ryan', null, 'Fraser', null, 'Escocia', '24/02/1994');
insert into jugador values ('1664', '16', 24, 'Miguel', 'Ángel', 'Almirón', 'Rejala', 'Paraguay', '10/02/1994');
insert into jugador values ('1665', '16', 23, 'Jacob', 'Kai', 'Murphy', null, 'Inglaterra', '24/02/1995');
insert into jugador values ('1666', '16', 14, 'Alexander', null, 'Isak', null, 'Suecia', '21/09/1999');
insert into jugador values ('1667', '16', 9, 'Callum', 'Eddie', 'Wilson', null, 'Inglaterra', '27/02/1992');

--- West Ham United (17)
insert into jugador values ('1768', '17', 13, 'Alphonse', 'Francis', 'Aréola', null, 'Francia', '27/02/1993');
insert into jugador values ('1769', '17', 1, 'Łukasz', 'Marek', 'Fabiański', null, 'Polonia', '18/04/1985');
insert into jugador values ('1770', '17', 27, 'Nayef', null, 'Aguerd', null, 'Marruecos', '30/03/1996');
insert into jugador values ('1771', '17', 4, 'Kurt', 'Happy', 'Zouma', null, 'Francia', '27/10/1994');
insert into jugador values ('1772', '17', 24, 'Jan', 'Thilo', 'Kehrer', null, 'Alemania', '21/09/1996');
insert into jugador values ('1773', '17', 21, 'Angelo', 'Obinze', 'Ogbonna', null, 'Italia', '23/05/1988');
insert into jugador values ('1774', '17', 33, 'Emerson', null, 'Palmieri', 'dos Santos', 'Brasil', '03/08/1994');
insert into jugador values ('1775', '17', 3, 'Aaron', 'William', 'Cresswell', null, 'Inglaterra', '15/12/1989');
insert into jugador values ('1776', '17', 2, 'Benjamin', 'Anthony', 'Johnson', null, 'Inglaterra', '24/01/2000');
insert into jugador values ('1777', '17', 5, 'Vladimir', null, 'Coufal', null, 'República Checa', '22/08/1992');
insert into jugador values ('1778', '17', 41, 'Declan', null, 'Rice', null, 'Inglaterra', '14/01/1999');
insert into jugador values ('1779', '17', 28, 'Tomáš', null, 'Souček', null, 'República Checa', '27/02/1995');
insert into jugador values ('1780', '17', 12, 'Flynn', null, 'Downes', null, 'Inglaterra', '20/01/1999');
insert into jugador values ('1781', '17', 11, 'Lucas', 'Tolentino', 'Coelho', 'de Lima', 'Brasil', '27/08/1997');
insert into jugador values ('1782', '17', 8, 'Pablo', null, 'Fornals', 'Malla', 'España', '22/02/1996');
insert into jugador values ('1783', '17', 10, 'Manuel', null, 'Lanzini', null, 'Argentina', '15/02/1993');
insert into jugador values ('1784', '17', 22, 'Mohamed', 'Saïd', 'Benrahma', null, 'Argelia', '10/08/1995');
insert into jugador values ('1785', '17', 14, 'Gnaly', 'Maxwel', 'Cornet', null, 'Costa de Marfil', '27/09/1996');
insert into jugador values ('1786', '17', 20, 'Jarrod', null, 'Bowen', null, 'Inglaterra', '20/12/1996');
insert into jugador values ('1787', '17', 7, 'Gianluca', null, 'Scamacca', null, 'Italia', '01/01/1999');
insert into jugador values ('1788', '17', 18, 'Daniel', 'William', 'Ings', null, 'Inglaterra', '23/07/1992');
insert into jugador values ('1789', '17', 9, 'Michail', 'Gregory', 'Antonio', null, 'Inglaterra', '28/03/1990');

-- Leicester City (18)
insert into jugador values('1830','18',1,'Danny',null,'Ward',null,'Gales','22/06/1993');
insert into jugador values('1831','18',31,'Daniel',' Lønne','Iversen',null,'Dinamarca','19/07/1997');
insert into jugador values('1832','18',12,'Alexander',null,'Smithies',null,'Inglaterra','05/03/1990');
insert into jugador values('1833','18',3,'Wout',null,'Faes',null,'Belgica','03/04/1998');
insert into jugador values('1834','18',4,'Çağlar',null,'Söyüncü',null,'Turquia','23/05/1996');
insert into jugador values('1835','18',15,'Harry','James','Souttar',null,'Australia','22/10/1998');
insert into jugador values('1836','18',18,'Daniel',null,'Amartey',null,'Ghana','21/12/1994');
insert into jugador values('1837','18',23,'Jannik',null,'Vestergaard',null,'Dinamarca','03/08/1992');
insert into jugador values('1838','18',6,'Jonathan','Grant','Evans',null,'Irlanda del Norte','03/01/1988');
insert into jugador values('1839','18',16,'Victor',null,'Kristiansen',null,'Dinamarca','16/12/2002');
insert into jugador values('1840','18',33,'Luke','Jonathan','Thomas',null,'Inglaterra','10/06/2001');
insert into jugador values('1841','18',5,'Ryan','Dominic','Bertrand',null,'Inglaterra','05/08/1989');
insert into jugador values('1842','18',27,'Timothy',null,'Castagne',null,'Belgica','05/12/1995');
insert into jugador values('1843','18',2,'James','Michael','Justin',null,'Inglaterra','23/02/1998');
insert into jugador values('1844','18',21,'Ricardo','Domingos','Barbosa','Pereira','Portugal','06/10/1993');
insert into jugador values('1845','18',25,'Onyinye','Wilfred','Ndidi',null,'Nigeria','16/12/1996');
insert into jugador values('1846','18',42,'Boubakary',null,'Soumaré',null,'Francia','27/02/1999');
insert into jugador values('1847','18',24,'Nampalys',null,'Mendy',null,'Senegal','23/06/1992');
insert into jugador values('1848','18',8,'Youri',null,'Tielemans',null,'Belgica','07/05/1997');
insert into jugador values('1849','18',22,'Kiernan','Frank','Dewsbury-Hall', null,'Inglaterra','06/09/1998');
insert into jugador values('1850','18',26,'Dennis',null,'Praet',null,'Belgica','14/05/1994');
insert into jugador values('1851','18',10,'James','Daniel','Maddison',null,'Inglaterra','23/11/1996');
insert into jugador values('1852','18',7,'Harvey','Lewis','Barnes',null,'Inglaterra','09/12/1997');
insert into jugador values('1853','18',37,'Mateus','Cardoso','Lemos','Martins','Brasil','15/02/2000');
insert into jugador values('1854','18',20,'Patson',null,'Daka',null,'Zambia','09/10/1998');
insert into jugador values('1855','18',14,'Kelechi','Promise','Iheanacho',null,'Nigeria','03/10/1996');
insert into jugador values('1856','18',9,'Jamie','Richard','Vardy',null,'Inglaterra','11/01/1987');

-- Aston Villa (19)
insert into jugador values('1957','19',1,'Damian','Emiliano','Martinez','Romero','Argentina','02/09/1992');
insert into jugador values('1958','19',25,'Robin','Patrick','Olsen',null,'Suecia','08/01/1990');
insert into jugador values('1959','19',12,'Jed','John','Steer',null,'Inglaterra','23/09/1992');
insert into jugador values('1960','19',38,'Viljami','Kari','Veikko','Sinisalo','Finlandia','11/10/2001');
insert into jugador values('1961','19',3,'Diego','Carlos','Santos','Silva','Brasil','15/03/1993');
insert into jugador values('1962','19',5,'Tyrone','Deon','Mings',null,'Inglaterra','13/03/1993');
insert into jugador values('1963','19',4,'Ezri','Konza','Ngoyo',null,'Inglaterra','23/10/1997');
insert into jugador values('1964','19',16,'Calum',null,'Chambers',null,'Inglaterra','20/01/1995');
insert into jugador values('1965','19',15,'Alexandre',null,'Moreno','Lopera','España','08/06/1993');
insert into jugador values('1966','19',27,'Lucas',null,'Digne',null,'Francia','20/07/1993');
insert into jugador values('1967','19',2,'Matthew','Stuart','Cash',null,'Polonia','07/08/1997');
insert into jugador values('1968','19',18,'Ashley','Simon','Young',null,'Inglaterra','09/07/1985');
insert into jugador values('1969','19',44,'Boubacar','Bernand','Kamara',null,'Francia','23/11/1999');
insert into jugador values('1970','19',32,'Leander',null,'Dendoncker',null,'Belgica','15/04/1995');
insert into jugador values('1971','19',6,'Douglas','Luiz','Soares','de Paulo','Brasil','09/05/1998');
insert into jugador values('1972','19',41,'Jacob','Matthew','Ramsey',null,'Inglaterra','28/05/2001');
insert into jugador values('1973','19',7,'John',null,'McGinn',null,'Escocia','18/10/1994');
insert into jugador values('1974','19',31,'Leon','Patrick','Bailey','Butler','Jamaica','09/08/1997');
insert into jugador values('1975','19',23,'Philippe',null,'Coutinho','Correia','Brasil','12/06/1992');
insert into jugador values('1976','19',10,'Emiliano',null,'Buendia','Stati','Argentina','25/12/1996');
insert into jugador values('1977','19',9,'Bertrand','Isidore','Traoré',null,'Burkina Faso','06/09/1995');
insert into jugador values('1978','19',11,'Oliver','George','Arthur','Watkins','Inglaterra','30/12/1995');
insert into jugador values('1979','19',22,'Jhon','Jader','Durán','Palacio','Colombia','13/12/2003');

-- Wolverhampton Wanderers (20)
insert into jugador values('2080','20',1,'José','Pedro','Malheiro','de Sá','Portugal','17/01/1993');
insert into jugador values('2081','20',25,'Daniel','Ian','Bentley',null,'Inglaterra','13/07/1993');
insert into jugador values('2082','20',13,'Louie',null, 'Moulden',null,'Inglaterra','06/01/2002');
insert into jugador values('2083','20',23,'Maximilian','William','Kilman',null,'Inglaterra',' 23/05/1997');
insert into jugador values('2084','20',4,'Nathan','Michael','Collins',null,'Irlanda','30/04/2001');
insert into jugador values('2085','20',15,'Craig',null,'Dawson',null,'Inglaterra','06/05/1990');
insert into jugador values('2086','20',24,'Tote','António','Gomes',null,'Portugal','16/01/1999');
insert into jugador values('2087','20',3,'Rayan',null,'Aït-Nouri',null,'Argelia','06/06/2001');
insert into jugador values('2088','20',19,'Jonathan','Castro','Otto',null,'España','03/03/1994');
insert into jugador values('2089','20',64,'Hugo','Bueno','López',null,'España','18/09/2002');
insert into jugador values('2090','20',22,'Nélson',null,'Cabral', 'Semedo','Portugal','16/11/1993');
insert into jugador values('2091','20',8,'Rúben','Diogo','da Silva', 'Neves','Portugal','13/03/1997');
insert into jugador values('2092','20',5,'Mario','René','Junior','Lemina','Gabón','01/09/1993');
insert into jugador values('2093','20',6,'Boubacar',null,'Traoré',null,'Malí','20/08/2001');
insert into jugador values('2094','20',59,'Joseph','Shaun','Hodge',null,'Irlanda','14/09/2002');
insert into jugador values('2095','20',27,'Matheus','Luiz','Nunes',null,'Portugal','27/08/1998');
insert into jugador values('2096','20',35,'João','Victor','Gomes','da Silva','Brasil','12/02/2001');
insert into jugador values('2097','20',28,'João','Filipe','Santos','Moutinho','Portugal','08/09/1986');
insert into jugador values('2098','20',10,'Daniel',null,'Castelo','Podence','Portugal','21/10/1995');
insert into jugador values('2099','20',20,'Francisco','Jorge','Tavares','Oliveira','Portugal','05/02/2000');
insert into jugador values('2000','20',7,'Pedro',null,'Lomba','Neto','Portugal','09/03/2000');
insert into jugador values('2001','20',21,'Pablo',null,'Sarabia','García','España','11/05/1992');
insert into jugador values('2002','20',37,'Adama',null,'Traoré','Diarra','España','25/01/1996');
insert into jugador values('2003','20',12,'Matheus','Santos','Carneiro','da Cunha','Brasil','27/05/1999');
insert into jugador values('2004','20',18,'Saša',null,'Kalajdžić',null,'Austria','07/07/1997');
insert into jugador values('2005','20',11,'Hee-chan', null,'Hwang',null,'Corea del Sur','26/01/1996');
insert into jugador values('2006','20',9,'Raúl','Alonso','Jiménez','Rodríguez','Mexico','05/05/1991');
insert into jugador values('2007','20',29,'Diego',null,'da Silva','Costa','España','07/10/1988');

-- Southampton FC (21)
insert into jugador values('2108','21',31,'Gavin',null,'Okeroghene','Bazunu','Irlanda','20/02/2002');
insert into jugador values('2109','21',1,'Alex','Simon','McCarthy',null,'Inglaterra','03/12/1989');
insert into jugador values('2110','21',13,'Wilfredo','Daniel','Caballero','Lazcano','Argentina','28/09/1981');
insert into jugador values('2111','21',37,'Armel',null,'Bella-Kotchap',null,'Alemania','11/12/2001');
insert into jugador values('2112','21',22,'Mohammed','Salisu','Abdul','Karim','Ghana',' 17/04/1999');
insert into jugador values('2113','21',6,'Duje',null,'Ćaleta-Car',null,'Croacia','17/09/1996');
insert into jugador values('2114','21',35,'Jan',null,'Bednarek',null,'Polonia','12/04/1996');
insert into jugador values('2115','21',4,'Lyanco','Evangelista','Silveira','Neves','Brasil','01/02/1997');
insert into jugador values('2116','21',15,'Romain','Paul','Jean-Michel','Perraud','Francia','22/09/1997');
insert into jugador values('2117','21',28,'Juan','Larios','López',null,'España','12/01/2004');
insert into jugador values('2118','21',2,'Kyle','Leonardus','Walker','Peters','Inglaterra','13/04/1997');
insert into jugador values('2119','21',21,'Valentino','Francisco','Livramento',null,'Inglaterra','12/11/2002');
insert into jugador values('2120','21',14,'James','Patrick','Bree',null,'Inglaterra','11/12/1997');
insert into jugador values('2121','21',45,'Roméo',null,'Lavia',null,'Belgica','06/01/2004');
insert into jugador values('2122','21',27,'Ibrahima',null, 'Diallo', null, 'Francia','08/03/1999');
insert into jugador values('2123','21',8,'James','Michael','Edward','Ward','Inglaterra','01/11/1994');
insert into jugador values('2124','21',26,'Carlos','Jonás','Alcaraz',null,'Argentina','30/11/2002');
insert into jugador values('2125','21',17,'Stuart',null,'Armstrong',null,'Escocia','30/03/1992');
insert into jugador values('2126','21',3,'Ainsley','Cory','Maitland','Niles','Inglaterra','29/08/1997');
insert into jugador values('2127','21',7,'Joseph', null,'Oluwaseyi','Temitope','Nigeria','21/07/1996');
insert into jugador values('2128','21',20,'Kamaldeen',null,'Sulemana',null,'Ghana','15/02/2002');
insert into jugador values('2129','21',24,'Mohamed', null,'Elyounoussi',null,'Noruega','04/08/1994');
insert into jugador values('2130','21',19,'Moussa', null,'Djenepo',null,'Malí','15/06/1998');
insert into jugador values('2131','21',11,'Mislav',null,'Oršić',null,'Croacia','29/12/1992');
insert into jugador values('2132','21',23,'Samuel','Ikechukwu','Edozie',null,'Inglaterra','28/01/2003');
insert into jugador values('2133','21',32,'Theo','James','Walcott',null,'Inglaterra','16/03/1989');
insert into jugador values('2134','21',10,'Ché','Zach','Everton','Fred','Escocia','13/07/1996');
insert into jugador values('2135','21',12,'Paul','Ebere','Onuachu',null,'Nigeria','28/05/1994');
insert into jugador values('2136','21',9,'Adam','James','Armstrong',null,'Inglaterra','10/02/1997');
insert into jugador values('2137','21',18,'Sékou',null,'Mara',null,'Francia','30/07/2002');

-- Brighton & Hove Albion (22)
insert into jugador values('2238','22',1,'Robert',null,'Sánchez',null,'España','18/11/1997');
insert into jugador values('2239','22',23,'Jason','Sean','Steele',null,'Inglaterra','18/08/1990');
insert into jugador values('2240','22',38,'Thomas','Peter','Wayne','McGill','Canadá','25/03/2000');
insert into jugador values('2241','22',4,'Adam','Harry','Webster',null,'Inglaterra','04/01/1995');
insert into jugador values('2242','22',5,'Lewis','Carl','Dunk',null,'Inglaterra','21/11/1991');
insert into jugador values('2243','22',6,'Levi','Lemar','Samuel','Colwill','Inglaterra','26/02/2003');
insert into jugador values('2244','22',29,'Jan','Paul','van', 'Hecke','Paises Bajos','08/06/2000');
insert into jugador values('2245','22',30,'Pervis','Josué','Estupiñán','Tenorio','Ecuador','21/01/1998');
insert into jugador values('2246','22',2,'Tariq','Kwame','Nii-Lante','Lamptey','Ghana','30/09/2000 ');
insert into jugador values('2247','22',34,'Joël','Ivo','Veltman',null,'Paises Bajos','15/01/1992');
insert into jugador values('2248','22',25,'Moisés','Isaac','Caicedo','Corozo','Ecuador','02/11/2001');
insert into jugador values('2249','22',10,'Alexis',null,'Mac','Allister','Argentina','24/12/1998');
insert into jugador values('2250','22',15,'Jakub','Piotr','Moder',null,'Polonia','07/04/1999');
insert into jugador values('2251','22',27,'Billy','Clifford','Gilmour',null,'Escocia','11/06/2001');
insert into jugador values('2252','22',13,'Pascal',null,'Groß',null,'Alemania','15/06/1991');
insert into jugador values('2253','22',26,'Yasin','Abbas','Ayari',null,'Suecia','06/10/2003');
insert into jugador values('2254','22',40,'Facundo','Valentín','Buonanotte',null,'Argentina','23/12/2004');
insert into jugador values('2255','22',19,'Jeremy','Leonel','Sarmiento','Morante','Ecuador','16/06/2002');
insert into jugador values('2256','22',14,'Adam','David','Lallana',null,'Inglaterra','10/05/1988');
insert into jugador values('2257','22',22,'Kaoru', null,'Mitoma',null,'Japon','20/05/1997');
insert into jugador values('2258','22',7,'Solomon','Benjamin','March',null,'Inglaterra','20/07/1994');
insert into jugador values('2259','22',20,'Julio','César','Enciso',null,'Paraguay','23/01/2004');
insert into jugador values('2260','22',28,'Evan',null,'Ferguson',null,'Irlanda','19/10/2004');
insert into jugador values('2261','22',18,'Daniel','Nii-Tackie','Mensah','Welbeck','Inglaterra','26/11/1990');
insert into jugador values('2262','22',21,'Deniz',null,'Undav',null,'Alemania','19/07/1996');

-- Everton FC (23)
insert into jugador values('2363','23',1,'Jordan','Lee','Pickford',null,'Inglaterra','07/03/1994');
insert into jugador values('2364','23',15,'Asmir',null,'Begović',null,'Bosnia y Herzegovina','20/06/1987');
insert into jugador values('2365','23',31,'Andrew','Michael','Lonergan',null,'Inglaterra','19/10/1983');
insert into jugador values('2366','23',2,'James','Alan','Tarkowski',null,'Inglaterra','19/11/1992');
insert into jugador values('2367','23',30,'Conor','David','Coady',null,'Inglaterra','25/02/1993');
insert into jugador values('2368','23',22,'Benjamin','Matthew','Godfrey',null,'Inglaterra','15/01/1998');
insert into jugador values('2369','23',4,'Mason','Anthony','Holgate',null,'Inglaterra','22/10/1996');
insert into jugador values('2370','23',13,'Yerry','Fernando','Mina','González','Colombia','23/09/1994');
insert into jugador values('2371','23',5,'Michael','Vincent','Keane',null,'Inglaterra','11/01/1993');
insert into jugador values('2372','23',19,'Vitaliy',null,'Mykolenko',null,'Ucrania','29/05/1999');
insert into jugador values('2373','23',29,'Rúben','Gonçalo','Silva','Nascimento','Portugal','09/04/1999');
insert into jugador values('2374','23',3,'Nathan', null,'Patterson',null,'Escocia','16/10/2001');
insert into jugador values('2375','23',23,'Séamus',null,'Coleman',null,'Irlanda','11/10/1988');
insert into jugador values('2376','23',8,'Amadou','Zeund','Georges','Ba Mvom','Belgica','16/08/2001');
insert into jugador values('2377','23',37,'James','David','Garner',null,'Inglaterra','13/03/2001');
insert into jugador values('2378','23',16,'Abdoulaye',null,'Doucouré',null,'Malí','01/01/1993');
insert into jugador values('2379','23',26,'Thomas',null,'Davies',null,'Inglaterra','30/06/1998');
insert into jugador values('2380','23',27,'Idrissa',null,'Gana','Gueye','Senegal','26/09/1989');
insert into jugador values('2381','23',17,'Alexander','Chuka','Iwobi',null,'Nigeria','03/05/1996');
insert into jugador values('2382','23',11,'Demarai','Ramelle','Gray',null,'Inglaterra','28/06/1996');
insert into jugador values('2383','23',7,'Dwight','James','Matthew','McNei','Inglaterra','22/11/1999');
insert into jugador values('2384','23',14,'Andros','Darryl','Townsend',null,'Inglaterra','16/07/1991');
insert into jugador values('2385','23',9,'Dominic','Nathaniel','Calvert','Lewin','Inglaterra','16/03/1997');
insert into jugador values('2386','23',20,'Neal',null,'Maupay',null,'Francia','14/08/1996');
insert into jugador values('2387','23',50,'Ellis','Reco','Simms',null,'Inglaterra','05/01/2001');

-- Nottingham Forest (24)
insert into jugador values('2465', '24', 1,'Dean', 'Bradley', 'Henderson', null, 'Inglaterra', '12/03/1997');
insert into jugador values('2466', '24', 12,'Keilor', 'Antonio', 'Navas', 'Gamboa', 'Costa Rica', '15/12/1986');
insert into jugador values('2467', '24', 13,'Wayne', 'Robert', 'Hennessey', null, 'Gales', '24/01/1987');
insert into jugador values('2468', '24', 19,'Moussa', 'null', 'Niakhaté', null, 'Senegal', '8/03/1996');
insert into jugador values('2469', '24', 26,'Scott', 'Fraser', 'McKenna', null, 'Escocia', '12/11/1996');
insert into jugador values('2470', '24', 4,'Joseph', 'Adrian', 'Worrall', null, 'Inglaterra', '10/01/1997');
insert into jugador values('2471', '24', 30,'Willy-Arnaud', 'Zobo', 'Boly', null, 'Costa de Marfil', '3/02/1991');
insert into jugador values('2472', '24', 3,'Steve', 'Anthony', 'Cook', null, 'Inglaterra', '19/04/1991');
insert into jugador values('2473', '24', 38,'Felipe', 'Augusto', 'de Almeida', 'Monteiro', 'Brasil', '16/05/1989');
insert into jugador values('2474', '24', 32,'Renan', 'Augusto', 'Lodi', 'dos Santos', 'Brasil', '8/04/1998');
insert into jugador values('2475', '24', 27,'Omar', 'Tyrell', 'Crawford', 'Richards', 'Inglaterra', '15/02/1998');
insert into jugador values('2476', '24', 15,'Harry', 'Stefano', 'Toffolo', null, 'Inglaterra', '19/08/1995');
insert into jugador values('2477', '24', 7,'Neco', 'Shay', 'Williams', null, 'Gales', '13/04/2001');
insert into jugador values('2478', '24', 2,'Giulian', 'null', 'Biancone', null, 'Francia', '31/03/2000');
insert into jugador values('2479', '24', 24,'Serge', 'Alain', 'Stephane', 'Aurier', 'Costa de Marfil', '24/12/1992');
insert into jugador values('2480', '24', 28,'Danilo', 'dos Santos', 'de Oliveira', null, 'Brasil', '29/04/2001');
insert into jugador values('2481', '24', 21,'Cheikhou', 'null', 'Kouyaté', null, 'Senegal', '21/12/1989');
insert into jugador values('2482', '24', 8,'Jack', 'Raymond', 'Colback', null, 'Inglaterra', '24/10/1989');
insert into jugador values('2483', '24', 5,'Orel', 'Johnson', 'Mangala', null, 'Bélgica', '18/03/1998');
insert into jugador values('2484', '24', 23,'Remo', 'Marco', 'Freuler', null, 'Suiza', '15/04/1992');
insert into jugador values('2485', '24', 22,'Ryan', 'James', 'Yates', null, 'Inglaterra', '21/11/1997');
insert into jugador values('2486', '24', 6,'Jonjo', 'null', 'Shelvey', null, 'Inglaterra', '27/02/1992');
insert into jugador values('2487', '24', 18,'Carlos', 'Miguel', 'Ribeiro', 'Dias', 'Portugal', '26/02/1993');
insert into jugador values('2488', '24', 10,'Morgan', 'Anthony', 'Gibbs-White', null, 'Inglaterra', '27/01/2000');
insert into jugador values('2489', '24', 20,'Brennan', 'Price', 'Johnson', null, 'Inglaterra', '23/05/2001');
insert into jugador values('2490', '24', 11,'Jesse', 'Ellis', 'Lingard', null, 'Inglaterra', '15/12/1992');
insert into jugador values('2491', '24', 31,'Gustavo', 'Henrique', 'Furtado', 'Scarpa', 'Brasil', '5/01/1994');
insert into jugador values('2492', '24', 34,'André', 'Morgan', 'Rami', 'Ayew', 'Ghana', '17/12/1989');
insert into jugador values('2493', '24', 17,'Alexander', 'Cole', 'Mighten', null, 'Inglaterra', '11/04/2002');
insert into jugador values('2494', '24', 9,'Taiwo', 'Michael', 'Awoniyi', null, 'Nigeria', '12/08/1997');
insert into jugador values('2495', '24', 25,'Emmanuel', 'Bonaventure', 'Dennis', null, 'Nigeria', '15/11/1997');
insert into jugador values('2496', '24', 39,'Christopher', 'Grant', 'Wood', null, 'Nueva Zelanda', '7/12/1991');
insert into jugador values('2497', '24', 16,'Samuel', 'William', 'Surridge', null, 'Inglaterra', '28/07/1998');
insert into jugador values('2498', '24', 33,'Lyle', 'James', 'Alfred', 'Taylor', 'Montserrat', '29/03/1990');

-- Brentford FC (25)
insert into jugador values('2540', '25', 1,'David', 'Raya', 'Martin', null, 'España', '15/09/1995');
insert into jugador values('2541', '25', 22,'Thomas', 'Fotaq', 'Strakosha', null, 'Albania', '19/03/1995');
insert into jugador values('2542', '25', 34,'Matthew', null, 'Cox', null, 'Inglaterra', '02/05/2003');
insert into jugador values('2543', '25', 20,'Kristoffer', 'Vassbakk', 'Ajer', null, 'Noruega', '17/04/1998');
insert into jugador values('2544', '25', 5,'Ethan', 'Rupert', 'Pinnock', null, 'Jamaica', '29/05/1993');
insert into jugador values('2545', '25', 18,'Pontus', 'Sven', 'Gustav', 'Jansson', 'Suecia', '13/02/1991');
insert into jugador values('2546', '25', 16,'Benjamin', 'Thomas', 'Mee', null, 'Inglaterra', '21/09/1989');
insert into jugador values('2547', '25', 13,'Mathias', 'Jattah-Njie', 'Jørgensen', null, 'Dinamarca', '23/04/1990');
insert into jugador values('2548', '25', 3,'Rico', 'Antonio', 'Henry', null, 'Inglaterra', '08/07/1997');
insert into jugador values('2549', '25', 2,'Aaron', 'Buchanan', 'Hickey', null, 'Escocia', '10/06/2002');
insert into jugador values('2550', '25', 30,'Mads', 'Roerslev', 'Rasmussen', null, 'Dinamarca', '24/06/1999');
insert into jugador values('2551', '25', 33,'Finley', 'John', 'Stevens', null, 'Gales', '10/04/2003');
insert into jugador values('2552', '25', 27,'Vitaly', null, 'Janelt', null, 'Alemania', '10/05/1998');
insert into jugador values('2553', '25', 6,'Christian', 'Thers', 'Nørgaard', null, 'Dinamarca', '10/03/1994');
insert into jugador values('2554', '25', 8,'Mathias', null, 'Jensen', null, 'Dinamarca', '01/01/1996');
insert into jugador values('2555', '25', 10,'Pelenda', 'Joshua', 'Tunga', 'Dasilva', 'Inglaterra', '23/10/1998');
insert into jugador values('2556', '25', 15,'Ogochukwu', 'Frank', 'Onyeka', null, 'Nigeria', '01/01/1998');
insert into jugador values('2557', '25', 26,'Shandon', 'Harkeem', 'Baptiste', null, 'Granada', '08/04/1998');
insert into jugador values('2558', '25', 14,'Saman', null, 'Ghoddos', null, 'Irán', '06/09/1993');
insert into jugador values('2559', '25', 11,'Yoane', null, 'Wissa', null, 'RD del Congo', '03/09/1996');
insert into jugador values('2560', '25', 23,'Keane', 'William', 'Lewis-Potter', null, 'Inglaterra', '22/02/2001');
insert into jugador values('2561', '25', 24,'Mikkel', 'Krogh', 'Damsgaard', null, 'Dinamarca', '03/07/2000');
insert into jugador values('2562', '25', 19,'Kevin', null, 'Schade', null, 'Alemania', '27/11/2001');
insert into jugador values('2563', '25', 9,'Ivan', 'Benjamin', 'Elijah', 'Toney', 'Inglaterra', '16/03/1996');

--Leeds (26)
insert into jugador values('2675', '26', 1,'Illan', 'Stéphane', 'Meslier', null, 'Francia', '02/03/2000');
insert into jugador values('2676', '26', 13,'Kristoffer-August', 'Sundquist', 'Klaesson', null, 'Noruega', '27/11/2000');
insert into jugador values('2677', '26', 22,'Joel', null, 'Robles', 'Blázquez', 'España', '17/06/1990');
insert into jugador values('2678', '26', 5,'Robin', 'Leon', 'Koch', null, 'Alemania', '17/07/1996');
insert into jugador values('2679', '26', 39,'Maximilian', null, 'Wöber', null, 'Austria', '04/02/1998');
insert into jugador values('2680', '26', 6,'Liam', 'David', 'Ian', 'Cooper', 'Escocia', '30/08/1991');
insert into jugador values('2681', '26', 21,'Pascal', 'Augustus', 'Struijk', null, 'Países Bajos', '11/08/1999');
insert into jugador values('2682', '26', 3,'Héctor', 'Junior', 'Firpo', 'Adamés', 'República Dominicana', '22/08/1996');
insert into jugador values('2683', '26', 25,'Rasmus', 'Nissen', 'Kristensen', null, 'Dinamarca', '11/07/1997');
insert into jugador values('2684', '26', 2,'Luke', 'David', 'Ayling', null, 'Inglaterra', '25/08/1991');
insert into jugador values('2685', '26', 15,'Stuart', 'Alan', 'Dallas', null, 'Irlanda del Norte', '19/04/1991');
insert into jugador values('2686', '26', 12,'Tyler', 'Shaan', 'Adams', null, 'Estados Unidos', '14/02/1999');
insert into jugador values('2687', '26', 8,'Marc', null, 'Roca', 'Junqué', 'España', '26/11/1996');
insert into jugador values('2688', '26', 28,'Weston', 'James', 'Earl', 'McKennie', 'Estados Unidos', '28/08/1998');
insert into jugador values('2689', '26', 4,'Adam', 'John', 'Forshaw', null, 'Inglaterra', '08/10/1991');
insert into jugador values('2690', '26', 7,'Brenden', 'Russell', 'Aaronson', null, 'Estados Unidos', '22/10/2000');
insert into jugador values('2691', '26', 42,'Sam', null, 'Greenwood', null, 'Inglaterra', '26/01/2002');
insert into jugador values('2692', '26', 11,'Jack', 'David', 'Harrison', null, 'Inglaterra', '20/11/1996');
insert into jugador values('2693', '26', 23,'Luis', 'Fernando', 'Sinisterra', 'Lucumí', 'Colombia', '17/06/1999');
insert into jugador values('2694', '26', 29,'Degnand', 'Wilfried', 'Gnonto', null, 'Italia', '05/11/2003');
insert into jugador values('2695', '26', 10,'Crysencio', 'Jilbert', 'Sylverio', null, 'Países Bajos', '30/10/2001');
insert into jugador values('2696', '26', 24,'Georginio', null, 'Rutter', null, 'Francia', '20/04/2002');
insert into jugador values('2697', '26', 9,'Patrick', 'James', 'Bamford', null, 'Inglaterra', '05/09/1993');
insert into jugador values('2698', '26', 19,'Rodrigo', null, 'Moreno', 'Machado', 'España', '06/03/1991');

--Crystal Palace (27)
insert into jugador values('2760', '27', 21,'Samuel', 'Luke', 'Johnstone', null, 'Inglaterra', '25/03/1993');
insert into jugador values('2761', '27', 13,'Vicente', null, 'Guaita', 'Panadero', 'España', '10/01/1987');
insert into jugador values('2762', '27', 41,'Joseph', 'Charles', 'Whitworth', null, 'Inglaterra', '29/02/2004');
insert into jugador values('2763', '27', 6,'Addji', 'Keaninkin', 'Marc-Israel', 'Guéhi', 'Inglaterra', '13/07/2000');
insert into jugador values('2764', '27', 16,'Joachim', 'Christian', 'Andersen', null, 'Dinamarca', '31/05/1996');
insert into jugador values('2765', '27', 26,'Christopher', 'Jeffrey', 'Richards', null, 'Estados Unidos', '28/03/2000');
insert into jugador values('2766', '27', 36,'Nathan', 'Kirk-Patrick', 'Ferguson', null, 'Inglaterra', '06/10/2000');
insert into jugador values('2767', '27', 5,'James', 'Oliver', 'Charles', 'Tomkins', 'Inglaterra', '29/03/1989');
insert into jugador values('2768', '27', 3,'Tyrick', null, 'Mitchell', null, 'Inglaterra', '01/09/1999');
insert into jugador values('2769', '27', 17,'Nathaniel', 'Edwin', 'Clyne', null, 'Inglaterra', '05/04/1991');
insert into jugador values('2770', '27', 2,'Joel', 'Edward', 'Philip', 'Ward', 'Inglaterra', '29/10/1989');
insert into jugador values('2771', '27', 28,'Cheick', 'Oumar', 'Doucouré', null, 'Malí', '08/01/2000');
insert into jugador values('2772', '27', 44,'Jaïro', 'Jocquim', 'Riedewald', null, 'Países Bajos', '09/09/1996');
insert into jugador values('2773', '27', 4,'Luka', 'null', 'Milivojevic', null, 'Serbia', '07/04/1991');
insert into jugador values('2774', '27', 8,'Albert', 'Mboyo', 'Sambi', 'Lokonga', 'Bélgica', '22/10/1999');
insert into jugador values('2775', '27', 29,'Naouirou', 'Mohamed', 'Ahamada', null, 'Francia', '29/03/2002');
insert into jugador values('2776', '27', 19,'William', 'James', 'Hughes', null, 'Inglaterra', '17/04/1995');
insert into jugador values('2777', '27', 18,'James', null, 'McArthur', null, 'Escocia', '07/10/1987');
insert into jugador values('2778', '27', 15,'Jeffrey', null, 'Schlupp', null, 'Ghana', '23/12/1992');
insert into jugador values('2779', '27', 10,'Eberechi', 'Oluchi', 'Eze', null, 'Inglaterra', '29/06/1998');
insert into jugador values('2780', '27', 11,'Dazet', 'Wilfried', 'Armel', 'Zaha', 'Costa de Marfil', '10/11/1992');
insert into jugador values('2781', '27', 7,'Michael', 'Akpovie', 'Olise', null, 'Francia', '12/12/2001');
insert into jugador values('2782', '27', 22,'Odsonne', null, 'Edouard', null, 'Francia', '16/01/1998');
insert into jugador values('2783', '27', 14,'Jean-Philippe', null, 'Mateta', null, 'Francia', '28/06/1997');
insert into jugador values('2784', '27', 9,'Jordan', 'Pierre', 'Ayew', null, 'Ghana', '11/09/1991');

--Fulham FC (28)
insert into jugador values('2850', '28', 17,'Bernd', null, 'Leno', null, 'Alemania', '04/03/1992');
insert into jugador values('2851', '28', 1,'Marek', null, 'Rodák', null, 'Eslovaquia', '13/12/1996');
insert into jugador values('2852', '28', 31,'Issa', 'Laye', 'Jean', 'Diop', 'Francia', '09/01/1997');
insert into jugador values('2853', '28', 4,'Abdul-Nasir', 'Oluwatosin', 'Oluwadoyinsolami', 'Adarabioyo', 'Inglaterra', '24/09/1997');
insert into jugador values('2854', '28', 5,'Shane', 'Patrick', 'Michael', 'Duffy', 'Irlanda', '01/01/1992');
insert into jugador values('2855', '28', 14,'Timothy', 'Michael', 'Ream', null, 'Estados Unidos', '05/10/1987');
insert into jugador values('2856', '28', 33,'Antonee', null, 'Robinson', null, 'Estados Unidos', '08/08/1997');
insert into jugador values('2857', '28', 3,'Layvin', 'Marc', 'Kurzawa', null, 'Francia', '04/09/1992');
insert into jugador values('2858', '28', 2,'Kenny', 'Joelle', 'Tete', null, 'Países Bajos', '09/10/1995');
insert into jugador values('2859', '28', 12,'Cédric', 'Ricardo', 'Alves', 'Soares', 'Portugal', '31/08/1991');
insert into jugador values('2860', '28', 26,'João', 'Maria', 'Palhinha', 'Gonçalves', 'Portugal', '09/07/1995');
insert into jugador values('2861', '28', 6,'Harrison', 'James', 'Reed', null, 'Inglaterra', '27/01/1995');
insert into jugador values('2862', '28', 28,'Sasa', null, 'Lukic', null, 'Serbia', '13/08/1996');
insert into jugador values('2863', '28', 10,'Thomas', null, 'Cairney', null, 'Escocia', '20/01/1991');
insert into jugador values('2864', '28', 35,'Tyrese', 'Jay', 'Francois', null, 'Australia', '16/07/2000');
insert into jugador values('2865', '28', 18,'Andreas', 'Hugo', 'Hoelgebaum', 'Pereira', 'Brasil', '01/01/1996');
insert into jugador values('2866', '28', 14,'Bobby', 'Armani', 'De Cordova-Reid', null, 'Jamaica', '02/02/1993');
insert into jugador values('2867', '28', 11,'Manor', null, 'Solomon', null, 'Israel', '24/07/1999');
insert into jugador values('2868', '28', 7,'Neeskens', null, 'Kebano', null, 'RD Congo', '10/03/1992');
insert into jugador values('2869', '28', 20,'Willian', 'Borges', 'da-Silva', null, 'Brasil', '09/08/1988');
insert into jugador values('2870', '28', 8,'Harry', null, 'Wilson', null, 'Gales', '22/03/1997');
insert into jugador values('2871', '28', 21,'Daniel', 'Owen', 'James', null, 'Gales', '10/11/1997');
insert into jugador values('2872', '28', 9,'Aleksandar', null, 'Mitrović', null, 'Serbia', '16/09/1994');
insert into jugador values('2873', '28', 30,'Carlos', 'Vinicius', 'Alves', 'Morais', 'Brasil', '25/03/1995');

-- AFC Bournemouth (29)
insert into jugador values('2945', '29', 13,'Norberto', null, 'Murara', null, 'Brasil', '19/07/1989');
insert into jugador values('2946', '29', 1,'Mark', null, 'Travers', null, 'Irlanda', '18/05/1999');
insert into jugador values('2947', '29', 12,'Darren', 'Edward', 'Andrew', 'Randolph', 'Irlanda', '12/05/1987');
insert into jugador values('2948', '29', 27,'Ilya', 'Borisovich', 'Zabarnyi', null, 'Ucrania', '01/09/2002');
insert into jugador values('2949', '29', 25,'Marcos', 'Nicolás', 'Senesi', 'Barón', 'Argentina', '10/05/1997');
insert into jugador values('2950', '29', 5,'Lloyd', null, 'Kelly', null, 'Inglaterra', '06/10/1998');
insert into jugador values('2951', '29', 6,'Christopher', 'James', 'Mepham', null, 'Gales', '05/11/1997');
insert into jugador values('2952', '29', 3,'Jack', null, 'Stephens', null, 'Inglaterra', '27/01/1994');
insert into jugador values('2953', '29', 18,'Matías', 'Nicolás', 'Viña', 'Susperreguy', 'Uruguay', '09/11/1997');
insert into jugador values('2954', '29', 33,'Jordan', 'Bhekithemba', 'Zemura', null, 'Zimbabue', '14/11/1999');
insert into jugador values('2955', '29', 17,'Jack', 'William', 'Stacey', null, 'Inglaterra', '06/04/1996');
insert into jugador values('2956', '29', 2,'Ryan', 'Marlowe', 'Fredericks', null, 'Inglaterra', '10/10/1992');
insert into jugador values('2957', '29', 15,'Adam', 'James', 'Smith', null, 'Inglaterra', '29/04/1991');
insert into jugador values('2958', '29', 8,'Jefferson', 'Andrés', 'Lerma', 'Solís', 'Colombia', '25/10/1994');
insert into jugador values('2959', '29', 29,'Philip', 'Anyanwu', 'Billing', null, 'Dinamarca', '11/06/1996');
insert into jugador values('2960', '29', 4,'Lewis', 'John', 'Cook', null, 'Inglaterra', '03/02/1997');
insert into jugador values('2961', '29', 14,'Joseph', 'Matthew', 'Rothwell', null, 'Inglaterra', '11/01/1995');
insert into jugador values('2962', '29', 16,'Marcus', 'Joseph', 'Tavernier', null, 'Inglaterra', '22/03/1999');
insert into jugador values('2963', '29', 22,'Hamed', 'Junior', 'Traorè', null, 'Costa de Marfil', '16/02/2000');
insert into jugador values('2964', '29', 10,'Ryan', null, 'Christie', null, 'Escocia', '22/02/1995');
insert into jugador values('2965', '29', 32,'Jaidon', null, 'Anthony', null, 'Inglaterra', '01/12/1999');
insert into jugador values('2966', '29', 19,'Felix', 'Junior', 'Stanislas', null, 'Inglaterra', '26/11/1989');
insert into jugador values('2967', '29', 11,'Dango', 'Aboubacar', 'Faissal', 'Ouattara', 'Burkina Faso', '11/02/2002');
insert into jugador values('2968', '29', 7,'David', 'Robert', 'Brooks', null, 'Gales', '08/07/1997');
insert into jugador values('2969', '29', 9,'Dominic', 'Ayodele', 'Solanke-Mitchell', null, 'Inglaterra', '14/09/1997');
insert into jugador values('2970', '29', 24,'Antoine', 'Serlom', 'Semenyo', null, 'Ghana', '07/01/2000');
insert into jugador values('2971', '29', 21,'Kieffer', 'Roberto', 'Francisco', 'Moore', 'Gales', '08/08/1992');


--> Partido
insert into partido values('0101', '27', '11', 0, 2, '103', 2);
insert into partido values('0102', '28', '13', 2, 2, '107', 0);
insert into partido values('0103', '15', '21', 4, 1, '115', 1);
insert into partido values('0104', '16', '24', 2, 0, '104', 1);
insert into partido values('0105', '26', '20', 2, 1, '105', 1);
insert into partido values('0106', '29', '19', 2, 0, '110', 1);
insert into partido values('0107', '23', '12', 0, 1, '108', 2);
insert into partido values('0108', '18', '25', 2, 2, '112', 0);
insert into partido values('0109', '14', '22', 1, 2, '101', 2);
insert into partido values('0110', '17', '10', 0, 2, '102', 2);

insert into partido values('0201', '19', '23', 2, 1, '102', 1);
insert into partido values('0202', '20', '28', 0, 0, '113', 0);
insert into partido values('0203', '21', '26', 2, 2, '118', 0);
insert into partido values('0204', '10', '29', 4, 0, '109', 1);
insert into partido values('0205', '22', '16', 0, 0, '117', 0);
insert into partido values('0206', '11', '18', 4, 2, '111', 1);
insert into partido values('0207', '25', '14', 4, 0, '106', 1);
insert into partido values('0208', '24', '17', 1, 0, '105', 1);
insert into partido values('0209', '12', '15', 2, 2, '103', 0);
insert into partido values('0210', '13', '27', 1, 1, '101', 0);

insert into partido values('0301', '15' , '20', 1 , 0 , '104', 1 );
insert into partido values('0302', '27' , '19', 3 , 1 , '107', 1 );
insert into partido values('0303', '23' , '24', 1 , 1 , '115', 0 );
insert into partido values('0304', '28' , '25', 3 , 2 , '110', 1 );
insert into partido values('0305', '18' , '21', 1 , 2 , '114', 2 );
insert into partido values('0306', '29' , '11', 0 , 3 , '108', 2 );
insert into partido values('0307', '26' , '12', 3 , 0 , '106', 1 );
insert into partido values('0308', '17' , '22', 0 , 2 , '103', 2 );
insert into partido values('0309', '16' , '10', 3 , 3 , '112', 0 );
insert into partido values('0310', '14' , '13', 2 , 1 , '102', 1 );

insert into partido values('0401', '21' , '14', 0 , 1 , '107', 2 );
insert into partido values('0402', '25' , '23', 1 , 1 , '113', 0 );
insert into partido values('0403', '22' , '26', 1 , 0 , '114', 1 );
insert into partido values('0404', '12' , '18', 2 , 1 , '101', 1 );
insert into partido values('0405', '13' , '29', 9 , 0 , '106', 1 );
insert into partido values('0406', '10' , '27', 4 , 2 , '111', 1 );
insert into partido values('0407', '11' , '29', 2 , 1 , '112', 1 );
insert into partido values('0408', '19' , '17', 0 , 1 , '109', 2 );
insert into partido values('0409', '20' , '16', 1 , 1 , '110', 0 );
insert into partido values('0410', '24' , '15', 0 , 2 , '108', 2 );

insert into partido values('0501', '28', '22', 2, 1, '119', 1);
insert into partido values('0502', '27', '25', 1, 1, '104', 0);
insert into partido values('0503', '21', '12', 2, 1, '102', 1);
insert into partido values('0504', '26', '23', 1, 1, '111', 0);
insert into partido values('0505', '29', '20', 0, 0 ,'103', 0);
insert into partido values('0506', '11', '19', 2, 1, '105', 1);
insert into partido values('0507', '10', '24', 6, 0, '101', 1);
insert into partido values('0508', '17', '15', 1, 1, '110', 0);
insert into partido values('0509', '13', '16', 2, 1, '115', 1);
insert into partido values('0510', '18', '14', 0, 1, '108', 2);

--> Patrocinador
insert into patrocinador values(001, 'Dafabet', 'APOYO ECONOMICO');
insert into patrocinador values(002, 'Umbro', 'VESTIMENTA');
insert into patrocinador values(003, 'Emirates Airlines', 'APOYO ECONOMICO');
insert into patrocinador values(004, 'Adidas', 'VESTIMENTA');
insert into patrocinador values(005, 'Cazoo', 'APOYO ECONOMICO');
insert into patrocinador values(006, 'Castore', 'VESTIMENTA');
insert into patrocinador values(007, 'Hollywoodbets', 'APOYO ECONOMICO');
insert into patrocinador values(008, 'American Express', 'APOYO ECONOMICO');
insert into patrocinador values(009, 'Nike', 'VESTIMENTA');
insert into patrocinador values(010, 'Three', 'APOYO ECONOMICO');
insert into patrocinador values(011, 'Cinch', 'APOYO ECONOMICO');
insert into patrocinador values(012, 'Macron', 'VESTIMENTA');
insert into patrocinador values(013, 'Stake.com', 'APOYO ECONOMICO');
insert into patrocinador values(014, 'Hummel', 'VESTIMENTA');
insert into patrocinador values(015, 'W88', 'APOYO ECONOMICO');
insert into patrocinador values(016, 'SBOTOP', 'APOYO ECONOMICO');
insert into patrocinador values(017, 'FBS', 'APOYO ECONOMICO');
insert into patrocinador values(018, 'Standard Chartered', 'APOYO ECONOMICO');
insert into patrocinador values(019, 'Etihad Airways', 'APOYO ECONOMICO');
insert into patrocinador values(020, 'Puma', 'VESTIMENTA');
insert into patrocinador values(021, 'Team Viewer', 'APOYO ECONOMICO');
insert into patrocinador values(022, 'Fun88', 'APOYO ECONOMICO');
insert into patrocinador values(023, 'Sportsbet.io', 'APOYO ECONOMICO');
insert into patrocinador values(024, 'AIA', 'APOYO ECONOMICO');
insert into patrocinador values(025, 'Betway', 'APOYO ECONOMICO');
insert into patrocinador values(026, 'AstroPay', 'APOYO ECONOMICO');

--> Patrocina
insert into patrocina values(019, 10);
insert into patrocina values(020, 10);
insert into patrocina values(003, 11);
insert into patrocina values(004, 11);
insert into patrocina values(010, 12);
insert into patrocina values(009, 12);
insert into patrocina values(018, 13);
insert into patrocina values(004, 13);
insert into patrocina values(021, 14);
insert into patrocina values(004, 14);
insert into patrocina values(024, 15);
insert into patrocina values(009, 15);
insert into patrocina values(022, 16);
insert into patrocina values(006, 16);
insert into patrocina values(025, 17);
insert into patrocina values(002, 17);
insert into patrocina values(017, 18);
insert into patrocina values(004, 18);
insert into patrocina values(005, 19);
insert into patrocina values(006, 19);
insert into patrocina values(026, 20);
insert into patrocina values(006, 20);
insert into patrocina values(023, 21);
insert into patrocina values(014, 21);
insert into patrocina values(008, 22);
insert into patrocina values(009, 22);
insert into patrocina values(013, 23);
insert into patrocina values(014, 23);
insert into patrocina values(014, 24);
insert into patrocina values(007, 25);
insert into patrocina values(002, 25);
insert into patrocina values(016, 26);
insert into patrocina values(004, 26);
insert into patrocina values(011, 27);
insert into patrocina values(012, 27);
insert into patrocina values(015, 28);
insert into patrocina values(004, 28);
insert into patrocina values(001, 29);
insert into patrocina values(002, 29);

--> Registro Partido
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1147', '0101', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2763', '0101', 'AUTOGOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1143', '0101', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1138', '0101', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2769', '0101', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2872', '0102', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2872', '0102', 'AUTOGOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1380', '0102', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1147', '0102', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2858', '0102', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2866', '0102', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2123', '0103', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1532', '0103', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1520', '0103', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2112', '0103', 'AUTOGOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1536', '0103', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1529', '0103', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1532', '0103', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1530', '0103', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1646', '0104', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1667', '0104', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2477', '0104', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2470', '0104', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2098', '0105', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2698', '0105', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2087', '0105', 'AUTOGOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2692', '0105', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2686', '0105', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2958', '0106', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2971', '0106', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1972', '0106', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1971', '0106', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2959', '0106', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1972', '0106', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1141', '0107', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2370', '0107', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1259', '0107', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1842', '0108', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1849', '0108', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2563', '0108', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2555', '0108', 'GOL');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2252', '0109', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2252', '0109', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2249', '0109', 'AUTOGOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1498', '0109', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1486', '0109', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1488', '0109', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1492', '0109', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1148', '0109', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1049', '0110', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1049', '0110', 'GOL');


insert into registro_partido (id_jugador, codigo_jornada,accion) values('1788', '0201', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1976', '0201', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1966', '0201', 'AUTOGOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1975', '0201', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1966', '0201', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1788', '0201', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1968', '0201', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2379', '0201', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2098', '0202', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2091', '0202', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2488', '0202', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2860', '0202', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2861', '0202', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2872', '0202', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2698', '0203', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2698', '0203', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2118', '0203', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2127', '0203', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2692', '0203', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2683', '0203', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2690', '0203', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2112', '0203', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1043', '0204', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1044', '0204', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1046', '0204', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2958', '0204', 'AUTOGOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2955', '0204', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2951', '0204', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2957', '0204', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1662', '0205', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2249', '0205', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2258', '0205', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1659', '0205', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1646', '0205', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1151', '0206', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1151', '0206', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1143', '0206', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1147', '0206', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1132', '0206', 'AUTOGOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1851', '0206', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1252', '0206', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1139', '0206', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2555', '0207', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2554', '0207', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2546', '0207', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2562', '0207', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1488', '0207', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1498', '0207', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1406', '0207', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1405', '0207', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2494', '0208', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1778', '0208', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2469', '0208', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2465', '0208', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2497', '0208', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2489', '0208', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1253', '0209', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1528', '0209', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1259', '0209', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1538', '0209', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1259', '0209', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1250', '0209', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1269', '0209', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2780', '0210', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1377', '0210', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1377', '0210', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1381', '0210', 'ROJA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2764', '0210', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2770', '0210', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2782', '0210', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2761', '0210', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1363', '0210', 'AMARILLA');


insert into registro_partido (id_jugador, codigo_jornada,accion) values('1538', '0301', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1528', '0301', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2087', '0301', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1538', '0301', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2084', '0301', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1978', '0302', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2780', '0302', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2780', '0302', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2783', '0302', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1973', '0302', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2780', '0302', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2778', '0302', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2489', '0303', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2382', '0303', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2470', '0303', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1661', '0303', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2477', '0303', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2381', '0303', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2376', '0303', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2866', '0304', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2860', '0304', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2553', '0304', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2563', '0304', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2872', '0304', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2860', '0304', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2858', '0304', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2555', '0304', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2546', '0304', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1851', '0305', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2134', '0305', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2134', '0305', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2129', '0305', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1854', '0305', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2127', '0305', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1851', '0305', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2121', '0305', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1851', '0305', 'GOL');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1144', '0306', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1144', '0306', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1132', '0306', 'GOL');	
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2954', '0306', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1151', '0306', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2957', '0306', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2690', '0307', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2698', '0307', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2692', '0307', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1253', '0307', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1253', '0307', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1253', '0307', 'ROJA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1271', '0307', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2249', '0308', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1148', '0308', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1772', '0308', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1775', '0308', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1043', '0309', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1664', '0309', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1667', '0309', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1651', '0309', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1049', '0309', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1045', '0309', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1655', '0309', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1646', '0309', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1035', '0309', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1651', '0309', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1659', '0309', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1407', '0310', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1406', '0310', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1380', '0310', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1364', '0310', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1487', '0310', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1495', '0310', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1405', '0310', 'AMARILLA');


insert into registro_partido (id_jugador, codigo_jornada,accion) values('1405', '0401', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1495', '0401', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1498', '0401', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1401', '0401', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1661', '0402', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2552', '0402', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2559', '0402', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2363', '0402', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1661', '0402', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2549', '0402', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2252', '0403', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2681', '0403', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2687', '0403', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2690', '0403', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2241', '0403', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2249', '0403', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1271', '0404', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1271', '0404', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1852', '0404', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1265', '0404', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1265', '0404', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1265', '0404', 'ROJA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1849', '0404', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1850', '0404', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1269', '0404', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1377', '0405', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1375', '0405', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1364', '0405', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1382', '0405', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1356', '0405', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2951', '0405', 'AUTOGOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1382', '0405', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1376', '0405', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1377', '0405', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2957', '0405', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1035', '0406', 'AUTOGOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2764', '0406', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1045', '0406', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1049', '0406', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1049', '0406', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1049', '0406', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1046', '0406', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2783', '0406', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2763', '0406', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2872', '0407', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1144', '0407', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1133', '0407', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1138', '0407', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1151', '0407', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2856', '0407', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2866', '0407', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2860', '0407', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1782', '0408', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1967', '0408', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1969', '0408', 'GOL');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2091', '0409', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1662', '0409', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2090', '0409', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1646', '0409', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2000', '0409', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1538', '0410', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1538', '0410', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2472', '0410', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2470', '0410', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2469', '0410', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2493', '0410', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1538', '0410', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2481', '0410', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2489', '0410', 'AMARILLA');


insert into registro_partido (id_jugador, codigo_jornada,accion) values('2872', '0501', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2249', '0501', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2242', '0501', 'AUTOGOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2245', '0501', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2856', '0501', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2861', '0501', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2780', '0502', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2559', '0502', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2549', '0502', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2563', '0502', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2771', '0502', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1271', '0503', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2121', '0503', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2136', '0503', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2112', '0503', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2123', '0503', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1272', '0503', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1661', '0504', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2693', '0504', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2379', '0504', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2686', '0504', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2683', '0504', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1661', '0504', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2374', '0504', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('2945', '0505', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2951', '0505', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2091', '0505', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1151', '0506', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1971', '0506', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1147', '0506', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1972', '0506', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1144', '0506', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1132', '0506', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1963', '0506', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1973', '0506', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1049', '0507', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1049', '0507', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1049', '0507', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1050', '0507', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1050', '0507', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1040', '0507', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('2495', '0507', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1772', '0508', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1779', '0508', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1530', '0508', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1521', '0508', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1524', '0508', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1781', '0508', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1774', '0508', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1539', '0508', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1533', '0508', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1666', '0509', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1382', '0509', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1376', '0509', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1647', '0509', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1651', '0509', 'AMARILLA');

insert into registro_partido (id_jugador, codigo_jornada,accion) values('1407', '0510', 'GOL');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1495', '0510', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1493', '0510', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1486', '0510', 'AMARILLA');
insert into registro_partido (id_jugador, codigo_jornada,accion) values('1851', '0510', 'AMARILLA');

