--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  artiesten_id INTEGER,
  genres_id integer
);

create table artiesten ( 
  id integer primary key autoincrement, 
  name varchar(255),
  country TEXT,
  age NUMERIC(10)
  );

create table genres (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   name VARCHAR(255)
);

create table album_release (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name varchar(255),
  year numeric(10)
);

create table type (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name varchar(255),
  type varchar(255),
  artiesten_id integer
  );

--create table streaming_platforms (
  --id INTEGER PRIMARY KEY AUTOINCREMENT,
  --platform varchar(255),
  --artiesten_id   varchar(255)
----)

-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, artiesten_id, genres_id) values ('Camp Nowhere', 'peachtree rascals, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 10.5,2,1);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Blond', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11,10,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Is It A Crime?', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5,3,2);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Flower Boy', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13,5,3);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('WHO CARES?', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14.5,4,1);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('TEC', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '522662523-7', 14,6,3);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Nectar', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492648523-7', 14,1,1);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('HDTV', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '685662523-7', 14,7,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('When We Were Younger', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14,8,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Un Verano Sin Ti', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492821523-7', 14,9,5);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Igor', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '420562523-7', 14,4,3);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Bewitched', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14,12,7);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Cigarettes After Sex', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '772662523-7', 14,13,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Cry', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492062523-7', 14,13,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Beatopia', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14,14,1);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Our Extended Play', 'swag', '3416438743-0', 14,14,1); 
insert into products (name, description, code, price, artiesten_id, genres_id) values ('NEVER ENOUGH', 'caeser salad lol', '8145725486-7', 14,15,2);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Freudian', 'blablabaa', '5435952457-2', 14,15,2);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Lost', 'blahbalh', '6527852148-9', 14,16,2);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Sonder Son', 'blahdhaj', '7157814974-7', 14,17,2);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('channel ORANGE', 'balhahs', '5486147851-4', 14,10,2);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('To Pimp A Butterfly', 'hehehe', '9542587154-8', 14,18,3);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('good kid, m.A.A.d city', 'hehehhe', '8945175274-9', 14,18,3); 
insert into products (name, description, code, price, artiesten_id, genres_id) values ('After Hours', 'Abel', '8945175274-9', 14,19,2); 

--nog meer EP's? 

insert into artiesten (name, country, age) values ('Joji', 'USA', 31);
insert into artiesten (name, country, age) values ('Peach Tree Rascals', 'USA', 20);
insert into artiesten (name, country, age) values ('No Guidnce', 'UK', 20);
insert into artiesten (name, country, age) values ('Tyler The Creator', 'USA', 32);
insert into artiesten (name, country, age) values ('Rex Orange County', 'UK', 25);
insert into artiesten (name, country, age) values ('Lil Tecca', 'USA', 21);
insert into artiesten (name, country, age) values ('Tai Verdes', 'USA', 28);
insert into artiesten (name, country, age) values ('Grent Perez', 'AUS', 22);
insert into artiesten (name, country, age) values ('Bad Bunny', 'PR', 29);
insert into artiesten (name, country, age) values ('Frank Ocean', 'USA', 36);
insert into artiesten (name, country, age) values ('Not Applicable', '?', 0);
insert into artiesten (name, country, age) values ('Laufey','IS', 24);
insert into artiesten (name, country, age) values ('Cigarettes After Sex', 'USA', 41);
insert into artiesten (name, country, age) values ('Beabadoobee', 'UK', 23);
insert into artiesten (name, country, age) values ('Daniel Caesar', 'USA', 28);
insert into artiesten (name, country, age) values ('Brent Faiyaz', 'USA', 28);
insert into artiesten (name, country, age) values ('Kendrick Lamar', 'USA', 36);
insert into artiesten (name, country, age) values ('The Weeknd', 'USA', 33);


insert into genres (name) values ('Alternative/indie');
insert into genres (name) values ('R&B/soul');
insert into genres (name) values ('Hip-Hop/Rap');
insert into genres (name) values ('Pop');
insert into genres (name) values ('Latin urban');
insert into genres (name) values ('Not Applicable');
insert into genres (name) values ('Jazz');


insert into album_release (name, year) values ('Camp Nowhere', 2021 );
insert into album_release (name, year) values ('Blond', 2016);
insert into album_release (name, year) values ('Is It A Crime?', 2023);
insert into album_release (name, year) values ('Flower Boy', 2017);
insert into album_release (name, year) values ('WHO CARES?', 2022);
insert into album_release (name, year) values ('TEC', 2023);
insert into album_release (name, year) values ('Nectar', 2020);
insert into album_release (name, year) values ('HDTV', 2022);
insert into album_release (name, year) values ('When We Were Younger', 2023);
insert into album_release (name, year) values ('Un Verano Sin Ti', 2022);
insert into album_release (name, year) values ('Igor', 2021);
insert into album_release (name, year) values ('Bewitched', 2023);
insert into album_release (name, year) values ('Beatopia', 2022);
insert into album_release (name, year) values ('Our Extended Play', 2021);
insert into album_release (name, year) values ('Cry', '2019');
insert into album_release (name, year) values ('Cigarretes After Sex', 2017);
insert into album_release (name, year) values ('Never Enough', 2023);
insert into album_release (name, year) values ('Freudian', 2017);
insert into album_release (name, year) values ('Lost', 2017);
insert into album_release (name, year) values ('Sonder Son', 2017);
insert into album_release (name, year) values ('channel ORANGE', 2012);
insert into album_release (name, year) values ('To Pimp A Butterfly', 2015);
insert into album_release (name, year) values ('good kid, m.A.A.d city', 2012);


insert into type (name, type, artiesten_id) values ('Camp Nowhere', 'album', 2);
insert into type (name, type, artiesten_id) values ('Blond', 'album', 10);
insert into type (name, type, artiesten_id) values ('Is It A Crime?', 'EP', 3);
insert into type (name, type, artiesten_id) values ('Flower Boy', 'album', 4);
insert into type (name, type, artiesten_id) values ('WHO CARES?', 'album', 5);
insert into type (name, type, artiesten_id) values ('TEC', 'album', 6);
insert into type (name, type, artiesten_id) values ('Nectar', 'album', 1);
insert into type (name, type, artiesten_id) values ('HDTV', 'album', 7);
insert into type (name, type, artiesten_id) values ('When We Were Young', 'album',8);
insert into type (name, type, artiesten_id) values ('Un Verano Sin Ti', 'album', 9);
insert into type (name, type, artiesten_id) values ('Igor', 'album', 4);
insert into type (name, type, artiesten_id) values ('Bewitched', 'album', 12);
insert into type (name, type, artiesten_id) values ('Beatopia', 'album', 14);
insert into type (name, type, artiesten_id) values ('Our Extended Play', 'EP', 14);
insert into type (name, type, artiesten_id) values ('Cry', 'album', 13);
insert into type (name, type, artiesten_id) values ('Cigarettes After Sex', 'album', 13);
insert into type (name, type, artiesten_id) values ('NEVER ENOUGH', 'album', 15);
insert into type (name, type, artiesten_id) values ('Freudian', 'album', 15);
insert into type (name, type, artiesten_id) values ('Lost', 'EP', 16);
insert into type (name, type, artiesten_id) values ('Sonder Son', 'album',16);
insert into type (name, type, artiesten_id) values ('channel ORANGE', 'album', 10);
insert into type (name, type, artiesten_id) values ('To Pimp A Butterly', 'album',17);
insert into type (name, type, artiesten_id) values ('good kid, m.A.A.d city', 'album', 18);

