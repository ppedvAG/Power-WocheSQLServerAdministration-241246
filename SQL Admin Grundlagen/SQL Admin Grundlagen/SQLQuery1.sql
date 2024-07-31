/*

Seiten
    53
------------------
8192 bytes
kopflast
------------------

8072 bytes
1 DS (fix Längen) <= 8060
max 700DS

1 

Seiten werden 1:1 in RAM gelesen ohne wenn und aber
------------------

8 Seiten am Stück = Block

Page Extent



*/



create table test1 ( id int identity, spx char(4100))

insert into test1
select 'XY' 
GO 10000

--10000 40 MB -- 80MB