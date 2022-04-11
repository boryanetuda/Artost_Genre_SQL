create table if not exists Artist (
	id serial primary key,
	name varchar (40) not null
);
	
create table if not exists Album (
	id serial primary key,
	name varchar (40) not null,
	year_date integer,
	artist_id integer references Artist(id)
);

create table if not exists Track (
	id serial primary key,
	name varchar (40) not null,
	length real check (length > 0),
	album_id integer references Album(id)
);

create table if not exists Genre (
	id serial primary key,
	name varchar (40) not null
);

alter table Artist 
	add column genre_id int references Genre(id)
;