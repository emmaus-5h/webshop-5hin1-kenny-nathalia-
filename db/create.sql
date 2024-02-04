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




-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, artiesten_id, genres_id) values ('Camp Nowhere', 'peachtree rascals, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 10.5,2,1);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Blond', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11,10,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Is It A Crime? EP', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5,3,2);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Flower Boy', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13,5,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('WHO CARES?', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14.5,4,1);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('TEC', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14,6,3);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Nectar', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14,1,1);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('HDTV', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14,7,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('When We Were Younger', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14,8,4);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Un Verano Sin Ti', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14,9,5);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('Igor', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14,4,3);
insert into products (name, description, code, price, artiesten_id, genres_id values ('epic7', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14,11,6);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('epic8', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14,11,6);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('epic9', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14,11,6);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('epic10', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14,11,6);
insert into products (name, description, code, price, artiesten_id, genres_id) values ('epic11', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14,11,6);

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

insert into genres (name) values ('alternative/indie');
insert into genres (name) values ('R&B/soul');
insert into genres (name) values ('rap');
insert into genres (name) values ('pop');
insert into genres (name) values ('latin urban');
insert into genres (name) values ('Not Applicable');