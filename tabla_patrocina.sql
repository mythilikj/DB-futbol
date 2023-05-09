create table patrocina(
	codigo_patrocinador varchar(10),
	id_equipo varchar(10),
	constraint patrocina_pk primary key (codigo_patrocinador, id_equipo), 
	foreign key (codigo_patrocinador) references patrocinador,
	foreign key (id_equipo) references equipo
);

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