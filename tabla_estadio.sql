create table estadio(
	codigo_estadio varchar(10) unique, 
	nombre varchar(40), 
	capacidad integer, 
	ciudad varchar(30), 
	id_equipo_equipo varchar(10), 
	constraint estadio_pk primary key(codigo_estadio), 
	foreign key (id_equipo_equipo) references equipo
);

insert into estadio values ('1010', 'Etihad Stadium', 53400, 'Manchester', 10);
insert into estadio values ('1111', 'Emirates Stadium', 60704, 'Londres', 11);
insert into estadio values ('1212', 'Stamford Bridge Stadium', 40853, 'Londres', 12);
insert into estadio values ('1313', 'Anfield Stadium', 54074, 'Liverpool', 13);
insert into estadio values ('1414', 'Old Trafford Stadium', 74879, 'Manchester', 14);
insert into estadio values ('1515', 'Tottenham Hotspur Stadium', 62062, 'Tottenham', 15);
insert into estadio values ('1616', 'St James Park Stadium', 52338, 'Newcastle upon Tyne', 16);
insert into estadio values ('1717', 'London Stadium', 62500, 'Londres', 17);
insert into estadio values ('1818', 'King Power Stadium', 32273, 'Leicester', 18);
insert into estadio values ('1919', 'Villa Park Stadium', 42682, 'Birmingham', 19);
insert into estadio values ('2020', 'Molineux Stadium', 32050, 'Wolverhampton', 20);
insert into estadio values ('2121', 'St Marys Stadium', 32384, 'Southampton', 21);
insert into estadio values ('2222', 'AMEX Stadium ', 31800, 'Brighton & Hove', 22);
insert into estadio values ('2323', 'Goodison Park Stadium', 39571, 'Liverpool', 23);
insert into estadio values ('2424', 'The City Ground Stadium', 30445, 'Nottingham', 24);
insert into estadio values ('2525', 'Brentford Community Stadium', 17250, 'Brentford', 25);
insert into estadio values ('2626', 'Elland Road Stadium', 37890, 'Leeds', 26);
insert into estadio values ('2727', 'Selhurst Park Stadium', 26047, 'Londres', 27);
insert into estadio values ('2828', 'Craven Cottage Stadium', 22384, 'Londres', 28);
insert into estadio values ('2929', 'Vitality Stadium', 11329, 'Bournemouth', 29);
