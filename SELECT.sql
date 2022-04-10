--1 количество исполнителей в каждом жанре;
select G.name_genre, count(distinct EG.id_executor) 
from executorgenre EG
left join genre G on EG.id_genre = G.id_genre
group by G.name_genre;

--2 количество треков, вошедших в альбомы 2019-2020 годов;
select count(t.id_track) 
from tracks t
left join albums a on t.id_album = a.id_album 
where a.release_date between 2019 and 2020;

--3 средняя продолжительность треков по каждому альбому;
select a.name_album, round(avg(t.duration),2)
from tracks t 
left join albums a on t.id_album = a.id_album 
group by a.name_album;


--4 все исполнители, которые не выпустили альбомы в 2020 году;
select distinct e.name_executor 
from executoralbums ea
left join albums a on ea.id_album =a.id_album 
left join executor e on ea.id_executor  = e.id_executor 
where a.release_date <> 2020;

--5 названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select distinct c.name_collection 
from collection c 
left join track_collection tc on c.id_collection = tc.id_collection 
left join tracks t on tc.id_track = t.id_track
left join albums a on t.id_album = a.id_album
left join executoralbums ea on a.id_album = ea.id_album
left join executor e on  ea.id_executor  = e.id_executor 
where e.name_executor  = 'Miyagi';


--6 название альбомов, в которых присутствуют исполнители более 1 жанра;
select distinct a.name_album 
from executoralbums ea 
left join albums a on ea.id_album = a.id_album
left join executor e on ea.id_executor  = e.id_executor 
left join (select id_executor, COUNT(id_genre) as GENRES
            from executorgenre 
            group by id_executor 
            having COUNT(id_genre) > 1) C
on ea.id_executor = C.id_executor 
where not C.GENRES is null;

--7 наименование треков, которые не входят в сборники;
select name_track  from tracks t 
where id_track  not in (
	select distinct id_track  from track_collection); 

--8 исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
select  distinct  e.name_executor  from executor e
join executoralbums ea on e.id_executor = ea.id_executor 
where id_album  in (select id_album from tracks
					where duration = (select MIN(duration) from tracks)
					);
				
--9 название альбомов, содержащих наименьшее количество треков.
select a.name_album , COUNT(t.name_track) from albums a
join tracks t on a.id_album = t.id_album 
group by a.name_album 
having COUNT(t.name_track) = (select MIN(count) from (
		select a.name_album, COUNT(t.name_track) from albums a
		join tracks t on  a.id_album = t.id_album 
		group by a.name_album) as foo);