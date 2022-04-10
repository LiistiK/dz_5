create table if not exists Genre(
	id_genre serial primary key,
	name_genre varchar(40) not null
	);

create table if not exists executor(
	id_executor serial primary key,
	name_executor varchar(50) not null
	);

create table if not exists ExecutorGenre(
	id_executorgenre serial primary key,
	id_genre integer references Genre(id_genre),
	id_executor integer references executor(id_executor)
	);

create table if not exists albums(
	id_album serial primary key,
	name_album varchar(50) not null,
	release_date integer not null
	);

create table if not exists ExecutorAlbums(
	id_executoralbums serial primary key,
	id_executor integer references executor(id_executor),
	id_album integer references albums(id_album)
	);
	
create table if not exists tracks(
	id_track serial primary key,
	name_track varchar(50) not null,
	duration numeric  not null,
	id_album  integer references albums(id_album)
	);
	
create table if not exists Collection(
	id_collection serial primary key,
	name_collection varchar(50) not null,
	data_collecion integer  not null
	);

create table if not exists track_collection(
	id_track_collection serial primary key,
	id_track integer references tracks(id_track),
	id_collection integer references Collection(id_collection)
);