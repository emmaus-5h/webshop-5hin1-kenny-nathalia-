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

create table streaming_platforms (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  platform varchar(255),
);

create table streaming_platforms_artiesten
  streaming_platforms_id integer,
  artiesten_id integer
  primary key (streaming_platforms_id, artiesten_id)
  foreign key (streaming_platforms_id) references streaming_platforms
  foreign key (artiesten_id) references artiesten
  );

-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, artiesten_id, genres_id) values ('Camp Nowhere', 'omd', '816905633-0', 10.5,2,1);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Blond', 'yja', '077030122-3', 11,10,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Is It A Crime?', 'whoopsie', '445924201-X', 13.5,3,2);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Flower Boy', 'gras', '693155505-7', 13,5,3);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('WHO CARES?', 'swag', '686928463-6', 14.5,4,1);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('TEC', 'swag', '522662523-7', 14,6,3);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Nectar', 'oooj', '492648523-7', 14,1,1);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('HDTV', 'afff.', '685662523-7', 14,7,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('When We Were Younger', 'sawhg', '686928463-6', 14,8,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Un Verano Sin Ti', 'swag', '492821523-7', 14,9,5);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Igor', 'omd', '420562523-7', 14,4,3);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Bewitched', 'umm', '686928463-6', 14,12,7);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Cigarettes After Sex', 'ehhhhh', '772662523-7', 14,13,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Cry', 'tja.', '492062523-7', 14,13,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Beatopia', 'mhm', '492662523-7', 14,14,1);
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


insert into streaming_platforms (platform) values ('Spotify');
insert into streaming_platforms (platform) values ('Apple Music');
insert into streaming_platforms (platform) values ('Deezer');
insert into streaming_platforms (platform) values ('Youtube');
insert into streaming_platforms (platform) values ('Amazon Music');

--n:m 

insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 1);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 2);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 3);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 4);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 5);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 6);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 7);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 8);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 9);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 10);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 12);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 13);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 14);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 15);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 16);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 17);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (1, 18);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 1);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 2);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 3);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 4);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 5);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 6);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 7);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 8);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 9);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 10);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 12);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 13);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 14);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 15);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 16);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 17);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (2, 18);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 1);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 2);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 3);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 4);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 5);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 6);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 7);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 8);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 9);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 10);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 12);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 13);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 14);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 14);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 15);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 16);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 17);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (3, 18);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 1);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 2);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 3);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 4);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 5);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 6);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 7);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 8);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 9);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 10);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 12);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 13);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 14);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 15);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 16);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 17);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (4, 18);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 1);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 2);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 3);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 4);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 5);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 6);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 7);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 8);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 9);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 10);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 12);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 13);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 14);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 15);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 16);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 17);
insert into streaming_platforms_artiesten (streaming_platforms_id, artiesten_id) values (5, 18);
