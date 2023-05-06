
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

// BRENTFORD FC
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


-- Leicester City
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


-- Aston Villa
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


-- Wolverhampton Wanderers
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
