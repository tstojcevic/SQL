# xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Java-learning\SQL_vjezbe\postolar.sql

drop database if exists postolar;
create database postolar;
use postolar;

create table obuca (
    sifra int not null primary key auto_increment,
    materijal varchar (20),
    ostecenje varchar (50),
    velicina decimal (18,2),
    korisnik int
);

create table korisnik (
    sifra int not null primary key auto_increment,
    ime varchar (20),
    prezime varchar(20),
    broj_mobitela varchar (15)
);

create table popravak (
    sifra int not null primary key auto_increment,
    cijena decimal (18,2),
    vrijeme_popravka datetime,
    segrt int
);

create table segrt (
    sifra int not null primary key auto_increment,
    ime varchar (20),
    prezime varchar (20),
    oib char (11)
);

create table obuca_popravak (
    obuca int,
    popravak int
);

alter table popravak add foreign key (segrt) references segrt (sifra);
alter table obuca_popravak add foreign key (obuca) references obuca (sifra);
alter table obuca_popravak add foreign key (popravak) references popravak (sifra);
alter table obuca add foreign key (korisnik) references korisnik (sifra);

