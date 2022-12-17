CREATE DATABASE FORMULE1;

create table pilote (
    idpilote integer,
    nompilote VARCHAR(40),
    payspilote VARCHAR(40)
    );

alter table pilote add constraint pk_pilote primary key (idpilote);

select * from pilote;

alter table pilote add idecurie integer;

alter table pilote add constraint fk_pilote_ecurie foreign key (idecurie) references ecurie(idecurie);


create table ecurie (
    idecurie integer,
    nomecurie varchar(40),
    enginecurie varchar(40)
    );

alter table ecurie add constraint pk_ecurie primary key (idecurie);

select * from ecurie;

create table champion (
    idchampion integer,
    anneechampion integer,
    nbrvictoirechamp integer,
    nbrpointschamp integer,
    idpilote integer
);

alter table champion add constraint pk_champion primary key (idchampion);

alter table champion add constraint fk_champion_pilote foreign key (idpilote) references pilote(idpilote);

select * from champion;

create table grand_prix (
    idgp integer,
    nomville varchar(40),
    nom_circuit varchar(40),
    idpilote integer
);

alter table grand_prix add constraint pk_grand_prix primary key (idgp);

alter table grand_prix add constraint fk_grand_prix_pilote foreign key (idpilote) references pilote(idpilote);

alter table grand_prix add nompays varchar(40);

select * from grand_prix;


create table classement (
    idclassement integer,
    piloteposition integer,
    pilotepoints integer,
    idpilote integer
);

alter table classement add constraint pk_classement primary key (idclassement);

alter table classement add constraint fk_classement_pilote foreign key (idpilote) references pilote(idpilote);


select * from classement;




insert into ecurie (idecurie, nomecurie, enginecurie) values (1, 'Oracle Red Bull Racing', 'Honda');
insert into ecurie (idecurie, nomecurie, enginecurie) values (2, 'Ferrari', 'Ferrari');
insert into ecurie (idecurie, nomecurie, enginecurie) values (3, 'Mercedes', 'Mercedes');
insert into ecurie (idecurie, nomecurie, enginecurie) values (4, 'Alpine', 'Renault');
insert into ecurie (idecurie, nomecurie, enginecurie) values (5, 'McLaren', 'Mercedes');
insert into ecurie (idecurie, nomecurie, enginecurie) values (6, 'Alfa Romeo', 'Ferrari');
insert into ecurie (idecurie, nomecurie, enginecurie) values (7, 'Aston Martin', 'Mercedes');
insert into ecurie (idecurie, nomecurie, enginecurie) values (8, 'Haas', 'Ferrari');
insert into ecurie (idecurie, nomecurie, enginecurie) values (9, 'AlphaTauri', 'Honda');
insert into ecurie (idecurie, nomecurie, enginecurie) values (10, 'Williams', 'Mercedes');


insert into pilote(idpilote, nompilote, payspilote, idecurie) values (1, 'Max Verstappen', 'Pays-Bas', 1);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (2, 'Charles Leclerc', 'Monaco', 2);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (3, 'Sergio Perez', 'Mexique', 1);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (4, 'George Russel', 'Royaumes-Unis', 3);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (5, 'Carlos Sainz', 'Espagne', 2);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (6, 'Lewis Hamilton', 'Royaumes-Unis', 3);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (7, 'Lando Norris', 'Royaumes-Unis', 5);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (8, 'Esteban Ocon', 'France', 4);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (9, 'Fernando Alonso', 'Espagne', 4);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (10, 'Valterri Bottas', 'Finlande', 6);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (11, 'Daniel Ricciardo', 'Australie', 5);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (12, 'Sebastian Vettel', 'Allemagne', 7);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (13, 'Kevin Magnussen', 'Denmark', 8);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (14, 'Pierre Gasly', 'France', 9);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (15, 'Lance Stroll', 'Canada', 7);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (16, 'Mick Schumacher', 'Allemagne', 8);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (17, 'Yuki Tsunoda', 'Japon', 9);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (18, 'Zhou Guanyu', 'Chine', 6);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (19, 'Alexander Albon', 'Thailande', 10);
insert into pilote(idpilote, nompilote, payspilote, idecurie) values (20, 'Nicholas Latifi', 'Canada', 10);

insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (1, 'Sakhir', 'Bahrain International Circuit',2,'Bahrain');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (2, 'Jeddah', 'Jeddah Corniche Circuit',1,'Arabie Saoudite');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (3, 'Melbourne', 'Albert Park Circuit',2,'Australie');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (4, 'Imola', 'Emilia Romagna',1,'Italie');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (5, 'Miami Gardens', 'Miami International Autodrome', 1,'Etats-Unis');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (6, 'Barcelone', 'Circuit de Barcelona-Catalunya',1,'Espagne');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (7, 'Monte Carlo', 'Circuit de Monte Carlo',3,'Monaco');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (8, 'Baku', 'Baku City Circuit',1,'Azerbaijan');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (9, 'Montreal', 'Circuit Gilles-Villeneuve',1,'Canada');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (10, 'Silverstone', 'Silverstone Circuitx²',2,'Grande Bretagne');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (11, 'Speilberg', 'Red Bull Ring',2,'Autriche');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (12, 'Le Castellet', 'Circuit Paul Ricard',1,'France');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (13, 'Budapest', 'Hungaroring',1,'Hongrie');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (14, 'Stavelot', 'Circuit Spa-Francorchamps',1,'Belgique');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (15, 'Zandvoort', 'Circuit Zandvoort',1,'Pays-Bas');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (16, 'Monza', 'Autodromo Nazionale Monza',1,'Italie');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (17, 'Singapore', 'Marina Bay Circuit',3,'Singapore');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (18, 'Suzuka', 'Suzuka Circuit',1,'Japon');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (19, 'Austin', 'Circuit of the Americas',1,'Etats-Unis');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (20, 'Mexico City', 'Autodromo Hermanos Rodriguez',1,'Mexique');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (21, 'Interlagos', 'Autodromo Jose Carlos Pace',4,'Brésil');
insert into grand_prix (idgp, nomville, nom_circuit, idpilote, nompays) values (22, 'Abu Dhabi', 'Yas Marina Circuit',1,'Emirats-Arabes-Unis');

insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (1, 2005, 7, 133, 9);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (2, 2006, 7, 134, 9);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (3, 2008, 5, 98, 6);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (4, 2010, 5, 256, 12);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (5, 2011, 11, 392, 12);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (6, 2012, 5, 281, 12);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (7, 2013, 13, 397, 12);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (8, 2014, 11, 384, 6);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (9, 2015, 10, 381, 6);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (10, 2017, 9, 363, 6);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (11, 2018, 11, 408, 6);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (12, 2019, 11, 413, 6);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (13, 2020, 11, 347, 6);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (14, 2021, 10, 395.5, 1);
insert into champion (idchampion, anneechampion, nbrvictoirechamp, nbrpointschamp, idpilote) VALUES (15, 2022, 15, 454, 1);

drop table classement;

create table resultat (
    idresultat integer,
    idpilote integer,
    pilotepoints integer,
    idecurie integer,
    ecuriepoints integer
);

alter table resultat add constraint pk_resultat primary key (idresultat);

alter table resultat add constraint fk_resultat_pilote foreign key (idpilote) references pilote(idpilote);

alter table resultat add constraint fk_resultat_ecurie foreign key (idecurie) references ecurie(idecurie);

insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (1, 1, 454, 1, 759);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (2, 2, 308, 2, 554);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (3, 3, 305, 3, 515);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (4, 4, 275, 4, 173);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (5, 5, 246, 5, 159);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (6, 6, 240, 6, 55);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (7, 7, 122, 7, 55);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (8, 8, 92, 8, 37);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (9, 9, 81, 9, 35);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (10, 10, 49, 10, 8);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (11, 11, 37, null, null);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (12, 12, 37, null, null);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (13, 13, 25, null, null);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (14, 14, 23, null, null);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (15, 15, 18, null, null);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (16, 16, 12, null, null);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (17, 17, 12, null, null);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (18, 18, 6, null, null);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (19, 19, 4, null, null);
insert into resultat (idresultat, idpilote, pilotepoints, idecurie, ecuriepoints) values (20, 20, 2, null, null);

select * from resultat;

select count(*) from ecurie;






