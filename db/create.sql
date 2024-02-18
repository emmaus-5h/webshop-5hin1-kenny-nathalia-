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
  genres_id integer,
  types_id integer,
  album_release_id integer 
);

create table artiesten ( 
  id integer primary key autoincrement, 
  name TEXT,
  country TEXT,
  age NUMERIC(10, 2)
  );

create table genres (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   name TEXT
);

create table album_release (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  datum numeric(10, 2)
);

create table types (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  type TEXT
  );

create table streaming-platforms (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  platform TEXT
);

create table streaming-platforms_artiesten (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
  streaming_platform_id INTEGER,
  artiesten2_id INTEGER
  );

-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Camp Nowhere', 'omd', '816905633-0', 10.5,2,1,1,1);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Blond', 'yja', '077030122-3', 11,10,4,2,2);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Is It A Crime?', 'whoopsie', '445924201-X', 13.5,3,2,3,3);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Flower Boy', 'gras', '693155505-7', 13,5,3,4,4);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('WHO CARES?', 'swag', '686928463-6', 14.5,4,1,5,5);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('TEC', 'swag', '522662523-7', 14,6,3,6,6);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Nectar', 'oooj', '492648523-7', 14,1,1,7,7);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('HDTV', 'afff.', '685662523-7', 14,7,4,8,8);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('When We Were Younger', 'sawhg', '686928463-6', 14,8,4,9,9);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Un Verano Sin Ti', 'swag', '492821523-7', 14,9,5,10,10);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Igor', 'omd', '420562523-7', 14,4,3,11,11);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Bewitched', 'umm', '686928463-6', 14,12,7,12,12);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Cigarettes After Sex', 'ehhhhh', '772662523-7', 14,13,4,13,13);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Cry', 'tja.', '492062523-7', 14,13,4,14,14);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Beatopia', 'mhm', '492662523-7', 14,14,1,15,15);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Our Extended Play', 'swag', '3416438743-0', 14,14,1,16,16); 
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('NEVER ENOUGH', 'caeser salad lol', '8145725486-7', 14,15,2,17,17);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Freudian', 'blablabaa', '5435952457-2', 14,15,2,18,18);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Lost', 'blahbalh', '6527852148-9', 14,16,2,19,19);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('Sonder Son', 'blahdhaj', '7157814974-7', 14,17,2,20,20);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('channel ORANGE', 'balhahs', '5486147851-4', 14,10,2,21,21);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('To Pimp A Butterfly', 'hehehe', '9542587154-8', 14,18,3,22,22);
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('good kid, m.A.A.d city', 'hehehhe', '8945175274-9', 14,18,3,23,23); 
insert into products (name, description, code, price, artiesten_id, genres_id, types_id,album_release_id) values ('After Hours', 'Abel', '8945175274-9', 14,19,2,24,24); 

--nog meer EP's? 

insert into artiesten (name, country, age) values ('Joji', 'USA', 31);
insert into artiesten (name, country, age) values ('Peach Tree Rascals', 'USA', 20);
insert into artiesten (name, country, age) values ('No Guidnce', 'UK', 20);
insert into artiesten (name, country, age) values ('Tyler The Creator', 'USA', 32);
insert into artiesten (name, country, age) values ('Rex Orange County', 'UK', 25);
insert into artiesten (name, country, age) values ('Lil Tecca', 'USA', 21);
insert into artiesten (name, country, age) values ('Tai Verdes', 'USA', 28);
insert into artiesten (name, country, age) values ('Grentperez', 'AUS', 22);
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


insert into album_release (name, datum) values ('Camp Nowhere', 2021);
insert into album_release (name, datum) values ('Blond', 2016);
insert into album_release (name, datum) values ('Is It A Crime?', 2023);
insert into album_release (name, datum) values ('Flower Boy', 2017);
insert into album_release (name, datum) values ('WHO CARES?', 2022);
insert into album_release (name, datum) values ('TEC', 2023);
insert into album_release (name, datum) values ('Nectar', 2020);
insert into album_release (name, datum) values ('HDTV', 2022);
insert into album_release (name, datum) values ('When We Were Younger', 2023);
insert into album_release (name, datum) values ('Un Verano Sin Ti', 2022);
insert into album_release (name, datum) values ('Igor', 2021);
insert into album_release (name, datum) values ('Bewitched', 2023);
insert into album_release (name, datum) values ('Beatopia', 2022);
insert into album_release (name, datum) values ('Our Extended Play', 2021);
insert into album_release (name, datum) values ('Cry', '2019');
insert into album_release (name, datum) values ('Cigarretes After Sex', 2017);
insert into album_release (name, datum) values ('Never Enough', 2023);
insert into album_release (name, datum) values ('Freudian', 2017);
insert into album_release (name, datum) values ('Lost', 2017);
insert into album_release (name, datum) values ('Sonder Son', 2017);
insert into album_release (name, datum) values ('channel ORANGE', 2012);
insert into album_release (name, datum) values ('To Pimp A Butterfly', 2015);
insert into album_release (name, datum) values ('good kid, m.A.A.d city', 2012);


insert into types (name, type) values ('Camp Nowhere', 'album');
insert into types (name, type) values ('Blond', 'album');
insert into types (name, type) values ('Is It A Crime?', 'EP');
insert into types (name, type) values ('Flower Boy', 'album');
insert into types (name, type) values ('WHO CARES?', 'album');
insert into types (name, type) values ('TEC', 'album');
insert into types (name, type) values ('Nectar', 'album');
insert into types (name, type) values ('HDTV', 'album');
insert into types (name, type) values ('When We Were Young', 'album');
insert into types (name, type) values ('Un Verano Sin Ti', 'album');
insert into types (name, type) values ('Igor', 'album');
insert into types (name, type) values ('Bewitched', 'album');
insert into types (name, type) values ('Beatopia', 'album');
insert into types (name, type) values ('Our Extended Play', 'EP');
insert into types (name, type) values ('Cry', 'album');
insert into types (name, type) values ('Cigarettes After Sex', 'album');
insert into types (name, type) values ('NEVER ENOUGH', 'album');
insert into types (name, type) values ('Freudian', 'album');
insert into types (name, type) values ('Lost', 'EP');
insert into types (name, type) values ('Sonder Son', 'album');
insert into types (name, type) values ('channel ORANGE', 'album');
insert into types (name, type) values ('To Pimp A Butterly', 'album');
insert into types (name, type) values ('good kid, m.A.A.d city', 'album');


insert into streaming-platforms (platform) values ('Spotify');
insert into streaming-platforms (platform) values ('Apple Music');
insert into streaming-platforms (platform) values ('Deezer');
insert into streaming-platforms (platform) values ('Youtube');
insert into streaming-platforms (platform) values ('Amazon Music');

--n:m 

insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 1);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 2);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 3);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 4);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 5);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 6);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 7);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 8);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 9);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 10);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 12);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 13);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 14);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 15);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 16);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 17);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (1, 18);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 1);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 2);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 3);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 4);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 5);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 6);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 7);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 8);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 9);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 10);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 12);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 13);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 14);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 15);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 16);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 17);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (2, 18);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 1);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 2);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 3);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 4);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 5);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 6);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 7);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 8);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 9);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 10);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 12);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 13);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 14);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 14);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 15);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 16);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 17);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (3, 18);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 1);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 2);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 3);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 4);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 5);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 6);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 7);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 8);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 9);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 10);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 12);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 13);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 14);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 15);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 16);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 17);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (4, 18);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 1);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 2);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 3);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 4);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 5);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 6);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 7);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 8);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 9);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 10);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 12);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 13);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 14);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 15);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 16);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 17);
insert into streaming-platforms_artiesten (streaming_platform_id, artiesten2_id) values (5, 18);
