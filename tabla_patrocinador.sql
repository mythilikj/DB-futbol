create type element as enum ('VESTIMENTA', 'APOYO ECONOMICO')

create table patrocinador(
	codigo_patrocinador varchar(10),
	nombre varchar(40),
	elemento element,
	constraint patrocinador_pk primary key(codigo_patrocinador)
);

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