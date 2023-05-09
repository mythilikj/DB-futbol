create type action as enum('GOL','AMARILLA','ROJA', 'AUTOGOL');

create table registro_partido(
	id_accion serial, id_jugador varchar(10), codigo_jornada varchar(10), accion action,
	constraint registro_partido_pk primary key(id_accion),
	foreign key (id_jugador) references jugador,
	foreign key (codigo_jornada) references partido
);




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
insert into registro_partido (id_jugador, codigo_jornada,accion)values('2866', '0102', 'AMARILLA');



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
