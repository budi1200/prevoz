/*
Created		21. 03. 2018
Modified		21. 03. 2018
Project		
Model		
Company		
Author		
Version		
Database		mySQL 5 
*/


Create table uporabniki (
	id Serial NOT NULL,
	ime Varchar(20) NOT NULL,
	priimek Varchar(20) NOT NULL,
	telefon Int NOT NULL,
 Primary Key (id)) ENGINE = MyISAM;

Create table kraji (
	id Serial NOT NULL,
	ime Varchar(20) NOT NULL,
	posta Int NOT NULL,
 Primary Key (id)) ENGINE = MyISAM;

Create table prevozi (
	id Serial NOT NULL,
	uporabnik_id Bigint UNSIGNED NOT NULL,
	kraj_zacetek_id Bigint UNSIGNED NOT NULL,
	kraj_cilj_id Bigint UNSIGNED NOT NULL,
	cas Timestamp NOT NULL,
	st_oseb Int NOT NULL,
	avto_opis Varchar(20) NOT NULL,
	cena Int NOT NULL,
	zavarovanje Varchar(20) NOT NULL,
	opis Text NOT NULL,
 Primary Key (id)) ENGINE = MyISAM;


Alter table prevozi add Foreign Key (uporabnik_id) references uporabniki (id) on delete  restrict on update  restrict;
Alter table prevozi add Foreign Key (kraj_zacetek_id) references kraji (id) on delete  restrict on update  restrict;
Alter table prevozi add Foreign Key (kraj_cilj_id) references kraji (id) on delete  restrict on update  restrict;


