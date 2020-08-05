--insert into domain (name, country_code, folder,strategy) VALUES('jobsrnearme.com','US','/var/www/html/jobsrnearme.com/site/','2');
insert into domain (name, country_code, folder,strategy) VALUES('jobsrnearme.com','US','/var/www/html/jobsrnearme.com/site/','2');
-- insert into domain (name, country_code, folder,strategy) VALUES('jobsnearmytown.com','US','./mcdonalds/','2');

insert into job_rate(site,start_date,job_rate) values('jobsrnearme.com','2020-01-01','1000');

insert into setting(site,skey,svalue) VALUES('jobsrnearme.com','slug', 'open-positions');

insert into setting(site,skey,svalue) VALUES('jobsrnearme.com','primary_color_0', 'rgb(193,17,35)'); -- rgb(255,189,0)
insert into setting(site,skey,svalue) VALUES('jobsrnearme.com','primary_color_1', 'rgb(183,7,25)');
insert into setting(site,skey,svalue) VALUES('jobsrnearme.com','primary_color_2', 'white');
insert into setting(site,skey,svalue) VALUES('jobsrnearme.com','primary_color_3', 'rgb(193,17,35)');
insert into setting(site,skey,svalue) VALUES('jobsrnearme.com','primary_color_4', 'rgb(183,7,25)');
insert into setting(site,skey,svalue) VALUES('jobsrnearme.com','navbar_text_color', '#000');
insert into setting(site,skey,svalue) VALUES('jobsrnearme.com','footer_color', 'rgb(255,189,0)');
insert into setting(site,skey,svalue) VALUES('jobsrnearme.com','rgba_button_shadow', 'rgba(220,220,220,0.75)');

-- update setting set svalue='rgb(255,189,0)' where skey='footer_color';
-- update setting set svalue='white' where skey='primary_color_0';


