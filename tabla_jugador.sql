
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

// Nottingham Forest
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

// AFC Bournemouth
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