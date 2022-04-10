insert into genre (id_genre, name_genre)
values 	(1,'Pop'),
		(2,'Hip-Hop'),
		(3,'Rock'),
		(4,'Jazz'),
		(5,'Blues');

insert into executor (id_executor, name_executor)
values	(1,'Andy Panda'),
		(2,'The Weeknd'),
		(3,'Nirvana'),
		(4,'Miyagi'),
		(5,'Eminem'),
		(6,'Michael Bublu'),
		(7,'Tom Waits'),
		(8,'Adele');
	
insert into executorgenre (id_executorgenre, id_genre, id_executor)
values	(1,1,8),
		(2,2,4),
		(3,3,3),
		(4,2,1),
		(5,2,5),
		(6,4,6),
		(7,5,7),
		(8,2,2);


insert into albums (id_album, name_album, release_date)
values  (1,'Buster Keaton', '2018'),
		(2,'Recovery', '2010'),
		(3,'Its Time', '2005'),
		(4,'King Kong', '2019'),
		(5,'Starboy', '2016'),
		(6,'Nirvana', '2002'),
		(7,'Real Gone', '2004'),
		(8,'21', '2011'),
		(9,'After Hours', '2020'),
		(10,'30', '2021');
	
insert into executoralbums (id_executoralbums, id_executor, id_album)
values	(1,1,4),
		(2,2,5),
		(3,2,9),
		(4,3,6),
		(5,4,1),
		(6,5,2),
		(7,6,3),
		(8,7,7),
		(9,8,8),
		(10,8,10);


insert into collection (id_collection, name_collection, data_collecion)
values	(1,'One', 2014),
		(2,'Two', 2021),
		(3,'Three', 2021),
		(4,'Four', 2018),
		(5,'Five', 2013),
		(6,'Six', 2021),
		(7,'Seven', 2021),
		(8,'Eight', 2018);
	
insert into tracks (id_track, name_track, duration, id_album)
values	(1,'Captain', 03.33, 1),
		(2,'On Fire', 03.55, 2),
		(3,'Starboy', 04.10, 5),
		(4,'Feeling Good', 03.55, 3),
		(5,'No Love', 05.20, 2),
		(6,'One And Only', 06.07, 8),
		(7,'Alone Again', 04.37, 9),
		(8,'Dumb', 02.58, 6),
		(9,'You and I', 04.12, 3),
		(10,'Green Grass', 02.57, 7),
		(11,'Someone Like You', 05.27, 8),
		(12,'My Little Love', 06.42, 10),
		(13,'So Bad', 05.51, 2),
		(14,'Mama Africa', 03.19, 4),
		(15,'Bismarck', 03.11, 1);
	
insert into track_collection (id_track_collection, id_track, id_collection)
values	(1, 2, 1),
		(2, 1, 4),
		(3, 13, 2),
		(4, 8, 3),
		(5, 6, 7),
		(6, 3, 1),
		(7, 4, 5),
		(8, 13, 2);


