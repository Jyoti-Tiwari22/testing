CREATE TABLE `offer2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(255) DEFAULT NULL,
  `state` char(3) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  `country` varchar(3) DEFAULT NULL,
  `istatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_offer_zip_country` (`country`,`zipcode`),
  KEY `idx_name` (`name`),
  KEY `idx_state` (`state`),
  KEY `idx_status` (`status`),
  KEY `idx_all` (`status`,`state`,`city_name`),
  KEY `idx_pop` (`population`),
  KEY `idx_sta` (`status`),
  KEY `idx_country_offer` (`country`),
  KEY `idx3` (`zipcode`)
) ENGINE=InnoDB AUTO_INCREMENT=3139206 DEFAULT CHARSET=utf8;

create table offer2;

insert into offer2 (
select 
	mcoffer.id, mcoffer.zipcode, offer.state, mcoffer.id, offer.city_name, 
	mcoffer.name, offer.population, 1 as status, geolocations.latitude, geolocations.longitude,'US' as country, 
	1 as istatus 
	FROM 
mcoffer, geolocations,site, offer  where 
site.id = mcoffer.id and geolocations.address = mcoffer.address and offer.zipcode = mcoffer.zipcode);



create index idx1 on geolocations(address);
create index idx2 on mcoffer(address);
create index idx3 on offer(zipcode);
create index idx4 on mcoffer(zipcode);

alter table geolocations change address address varchar(255);

alter table offer rename offer_bak;
alter table offer2 rename offer;



