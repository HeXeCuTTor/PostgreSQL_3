select genres.name, count(musicians.name) from musicians
join musiciansgenres on musicians.id = musiciansgenres.musicians_id
join genres on genres.id = musiciansgenres.genres_id
group by genres.name
order by count(musicians.name) desc

select albums.name, count(tracks.name) from tracks
join albums on albums.id = tracks.albums_id
where albums.exityear >= 2018 and albums.exityear <= 2020
group by albums.name
order by count(tracks.name) desc

select albums.name, avg(tracks.duration) from tracks
join albums on albums.id = tracks.albums_id
group by albums.name
order by avg(tracks.duration) desc

select musicians.name from musicians
where musicians.name not in (select musicians.name from musicians 
join authorsalbums on musicians.id = authorsalbums.musicians_id
join albums on authorsalbums.albums_id = albums.id
where (albums.exityear = 2020))

select collections.name from collections
where name like '%Eminem%'

select albums.name from musicians 
join musiciansgenres on musicians.id = musiciansgenres.musicians_id
join genres on genres.id = musiciansgenres.genres_id
join authorsalbums on musicians.id = authorsalbums.musicians_id
join albums on albums.id = authorsalbums.albums_id
group by albums.name, musicians.name
having count(genres.name) > 1
order by count(genres.name) desc

select tracks.name from collections
full join collectionstracks on collections.id = collectionstracks.collections_id
full join tracks on tracks.id = collectionstracks.tracks_id
where collections.name is null

select musicians.name, tracks.duration from tracks
join albums on tracks.albums_id = albums.id
join authorsalbums on albums.id = authorsalbums.albums_id 
join musicians on musicians.id = authorsalbums.musicians_id
where tracks.duration = (select min(tracks.duration) from tracks)
order by tracks.duration

select albums.name from albums
join tracks on tracks.albums_id = albums.id 
group by albums.name
having count(tracks.name) = (select count(tracks.name) from tracks 
join albums on albums.id = tracks.albums_id
group by albums.name
order by count(tracks.name) limit 1)
order by count(tracks.name)

