create table if not exists Genres (
	id SERIAL primary key,
	name TEXT not null unique
);

create table if not exists Musicians (
	id SERIAL primary key,
	name text not null
);

create table if not exists MusiciansGenres (
	genres_id integer references Genres(id),
	musicians_id integer references Musicians(id),
	constraint pk primary key (genres_id, musicians_id)
	);

create table if not exists Albums (
	id SERIAL primary key,
	name text not null,
	exityear integer not null
);

create table if not exists AuthorsAlbums (
	albums_id integer references Albums(id),
	musicians_id integer references Musicians(id),
	constraint keys primary key (albums_id, musicians_id)
);

create table if not exists Tracks (
	id SERIAL primary key,
	albums_id integer not null references Albums(id),
	name text not null,
	duration integer not null
);


create table if not exists Collections (
	id SERIAL primary key,
	name text not null,
	exityear integer not null check (exityear > 2000)
);

create table if not exists CollectionsTracks (
	collections_id integer references Collections(id),
	tracks_id integer references Tracks(id),
	constraint ct primary key (collections_id, tracks_id)
);