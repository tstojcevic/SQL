# xampp\mysql\bin\mysql -uroot--default_character_set=utf8 < D:\Java-learning\SQL_vjezbe\zadatak4.sql

drop database if exists firma;
create database firma;
use firma;

create table projekt (
    sifra int not null primary key auto_increment,
    naziv varchar(20),
    cijena decimal (18,2)
);

create table programer (
    sifra int not null primary key auto_increment,
    ime varchar(20),
    prezime varchar(20),
    datumrodenja datetime,
    placa decimal (18,2)
);

create table sudjeluje (
    projekt int,
    programer int,
    datumpocetka datetime,
    datumkraja datetime
);

alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);
