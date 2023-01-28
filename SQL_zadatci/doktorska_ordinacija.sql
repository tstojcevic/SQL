# xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Java-learning\SQL_vjezbe\doktorska_ordinacija.sql

drop database if exists doktorska_odrdinacija;
create database doktorska_odrdinacija;
use doktorska_odrdinacija;

create table doktor (
    sifra int not null primary key auto_increment,
    ime varchar(20),
    prezime varchar (20),
    specijalizacija varchar(50)
);

create table pacijent (
    sifra int not null primary key auto_increment,
    ime varchar (20),
    prezime varchar (20),
    bolest varchar (50)
);

create table medicinska_sestra (
    sifra int not null primary key auto_increment,
    ime varchar (20),
    prezime varchar (20),
    rang varchar (20),
    doktor int
);

create table lijecenje (
    doktor int,
    pacijent int
);

alter table medicinska_sestra add foreign key (doktor) references doktor (sifra);
alter table lijecenje add foreign key (doktor) references doktor (sifra);
alter table lijecenje add foreign key (pacijent) references pacijent (sifra);
