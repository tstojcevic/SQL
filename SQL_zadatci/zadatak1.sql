# xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Java-learning\SQL_vjezbe\zadatak1.sql

drop database if exists drzava;
create database drzava;
use drzava;

create table zupanija (
    sifra int not null primary key auto_increment,
    naziv varchar (20),
    zupan int
);

create table opcina (
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar (50)
);

create table mjesto (
    sifra int not null primary key auto_increment,
    opcina int,
    naziv varchar (50)
);

create table zupan (
    sifra int not null primary key auto_increment,
    ime varchar (20),
    prezime varchar (20)
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);
alter table zupanija add foreign key (zupan) references zupan(sifra);


