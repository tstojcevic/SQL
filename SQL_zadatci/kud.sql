# C:\>xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Java-learning\SQL_vjezbe\kud.sql

drop database if exists kud;
create database kud;
use kud;

create table clan(
    sifra int not null primary key auto_increment,
    ime varchar (20),
    prezime varchar (20),
    oib char (11)
);

create table nastup (
    sifra int not null primary key auto_increment,
    vrijeme datetime,
    mjesto int,
    maxgledatelja int
);

create table mjesto (
    sifra int not null primary key auto_increment,
    naziv varchar (20),
    zupanija varchar (40),
    postanski_broj varchar (10)
);

create table clan_nastup (
    clan int,
    nastup int
);

alter table nastup add foreign key (mjesto) references mjesto(sifra);
alter table clan_nastup add foreign key (clan) references clan (sifra);
alter table clan_nastup add foreign key (nastup) references nastup (sifra);
