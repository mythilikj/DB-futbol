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

