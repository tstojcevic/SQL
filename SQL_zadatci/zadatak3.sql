# xampp\mysql\bin\mysql -uroot--default_character_set=utf8 < D:\Java-learning\SQL_vjezbe\zadatak3.sql

drop database if exists hijerarhija;
create database hijerarhija;
use hijerarhija;

create table zaposlenik (
    sifra int not null primary key auto_increment,
    ime varchar(20),
    prezime varchar(20),
    placa decimal (18,2),
    nadredeni int
);

alter table zaposlenik add foreign key (nadredeni) references zaposlenik(sifra);
