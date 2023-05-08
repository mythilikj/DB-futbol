create table partido
(codigo_jornada varchar(10), id_local varchar(10), id_visitante varchar(10),
 goles_local integer, goles_visitante integer, id_arbitro varchar(10),
 resultado integer,
 constraint partido_pk primary key (codigo_jornada),
 foreign key (id_local) references equipo,
 foreign key (id_visitante) references equipo,
 foreign key (id_arbitro) references arbitro
);

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
