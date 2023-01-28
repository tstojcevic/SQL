# xampp\mysql\bin\mysql -uroot--default_character_set=utf8 < D:\Java-learning\SQL_vjezbe\zadatak2.sql

drop database if exists samouprava;
create database samouprava;
use samouprava;

create table zupanija (
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan varchar(50)
);

create table opcina (
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar (50)
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);
