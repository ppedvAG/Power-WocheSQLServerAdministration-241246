--Seiten

/*
8192bytes 

Limit: 700 DS
1 DS (fixen Dtypen) kleiner als 8060
1DS mit fixen Löngen muss in Seite passen
8072 bytes Nutzlast

jede Seite kommt 1:1 in RAM

*/

--Tabelle test1 id int spx char(4100)

create table test3 (id int, spx char(4100), spy char(4100))

select 20000*4

---1 MIO DS mit 4100
--1 MIO * 8kb = 8GB HDD-- 8GB RAM

--Datentypen  date statt datetime  varchar statt char


--1 MIO DS mit 4000   1MIO mit 100bytes
--500000				80DS/Seite= 12500
--4GB                       110MB
--4,1GB im RAM


--kann man den Verlust einer Seite messen

dbcc showcontig('test1')

-- Mittlere Seitendichte (voll).....................: 50.79%
-- Gescannte Seiten.............................: 20000

--Kompression

-- Zeilenkompression / Seitenkompression

--bei txt kompression besser als bei Zahlen
--40-60%



--SQL neustarten
--Task Manager : RAM 400

set statistics io, time  on
select * from meineDB.dbo.test1

--Seiten :20000
--Dauer  1212 ms.  CPU 172 ms  RAM +30 Seitenstatt 20000)


schulung\Administrator
ppedv2023!

HV-SQL1

create database meineDB
GO

create table test1 ( id int identity, spx char(4100))
GO



TABELLE A 10000
TABELLE B 100000

Abfrage : Ergebnis 10 DS


Idee 
Salamitaktik


insert into test1
select 'XY'
GO 20000


--300kb


--SQL neustarten
--Task Manager : RAM 400 weniger oder gleich II

set statistics io, time  on
select * from meineDB.dbo.test1

--Seiten :20000 deutlich weniger 
--Dauer  1212 ms weniger oder mehr
--CPU 172 ms weniger  eher mehr oder gleich
--RAM +160MB  weniger oder mehr

