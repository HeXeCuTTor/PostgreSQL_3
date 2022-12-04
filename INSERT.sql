insert into genres
values (1, 'Rock'), (2, 'Heavy Metal'), (3, 'Pop-music'), (4, 'Classic'), (5, 'Rap');

insert into musicians(name)
values ('Linkin Park'), ('Rammstein'),('Metallica'),('Eminem'),('Kanye West'),('Lady Gaga'),('Ludwig v. Beethoven'), ('Pyotr Chaikovskiy'), ('The Black Eyed Peas');

insert into albums(name,exityear)
values ('Детский альбом', 1878), ('Rosenrot', 2005), ('Metallica', 1991), ('Kamikaze', 2018), ('The College Dropout', 2004), ('The Remix', 2010), ('Meteora', 2003), ('Monkey Business', 2005);

insert into tracks(albums_id, name, duration) 
values (2, 'Rosenrot', 235), (2, 'Mann gegen Mann', 231), (1, 'Вальс', 106), (8, 'Pump it', 213), (8, 'My Humps', 326), (4, 'Venom', 269), (4, 'Fall', 262), (5, 'Graduation Day', 82), (5,'Jesus Walks', 193), (7, 'Faint', 162), (7, 'Numb', 188), (3, 'The Unforgiven', 386), (3, 'Sad but True', 323), (6, 'Poker Face', 218), (6, 'Paparazzi', 200), (2, 'Spring', 325);

insert into collections(id, name, exityear)
values (1, 'Favourite', 2015), (2, 'The Best', 2018), (3, 'New', 2020), (4, 'Fun', 2017), (5, 'Joy', 2021), (6, 'Cool', 2014), (7, 'Big', 2019), (8, 'Finally', 2013);

insert into authorsalbums(albums_id, musicians_id)
values (1, 8), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 1), (8, 9);

insert into musiciansgenres (genres_id, musicians_id) 
values (1, 1), (2, 2), (2, 3), (5, 4), (5, 5), (3, 6), (4, 7), (4, 8), (3, 9);

insert into collectionstracks (collections_id, tracks_id)
values (1, 2), (1, 3), (1, 6), (2, 6), (2, 7), (2, 8), (3, 10), (3, 11), (3, 12), (4, 15), (4, 4), (5, 3), (5, 8), (6, 9), (6, 13), (7, 1), (7, 16), (8, 2), (8, 3), (8, 8), (8, 14)

insert into albums(name,exityear)
values ('Deutschland', 2019)

insert into tracks(albums_id, name, duration)
values(9, 'Zick Zack', 244), (9, 'Deutschland', 300)

insert into albums(name,exityear)
values ('Music to be murdered by', 2020)

insert into tracks(albums_id, name,duration)
values(10, 'Godzilla', 211), (10, 'Darkness', 337)

insert into authorsalbums(albums_id, musicians_id)
values (9, 2), (10, 4)

update Collections
set name = 'The Best Eminem'
where ID = 2

insert into musiciansgenres(genres_id, musicians_id)
values(1,2), (2,1)



