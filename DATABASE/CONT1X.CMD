@REM Use this command file if you have DB2/2 version 1.X installed.
@REM The version in the CD-ROM with the book is 2.1.1
@REM If you installed DB2/2 from the book's CD use CONTACT.CMD instead
@echo off
@rem COPYRIGHT: Copyright (C) International Business Machines Corp., 1992,1994.
@rem
If .%1 == . goto error
@echo  .
@echo WARNING: If the database CONTACT exists, it will be deleted.
@echo Then a new CONTACT database will be (re)created on drive %1:
@echo Press (Ctrl-c to cancel).
@echo.
@echo If asked for a userid and password use: USERID and PASSWORD
@echo respectively (enter all in upper case)
@echo.
@echo Please be patient creating the database takes a little while...
@echo.
pause
call startdbm
call dbm drop database contact
call dbm create database contact on %1
call dbm connect to contact
call dbm create table contact(name varchar(20) not null, area integer, updated char(8), phone char(13), primary key(Name))
call dbm insert into contact values('Dale Nilsson',     11,'01-22-95','(919)444-1555')
call dbm insert into contact values('Peter Jakab',      14,'01-22-95','(416)778-3633')
call dbm insert into contact values('Lou Mamo',         11,'10-14-95','(919)444-1369')
call dbm insert into contact values('Bruce Olson',      11,'01-22-95','(919)444-1327')
call dbm insert into contact values('George DeCandio',  11,'02-12-95','(919)444-1437')
call dbm insert into contact values('Dave Lavin',       11,'01-05-96','(919)444-1457')
call dbm insert into contact values('Kathy Endres',     11,'03-17-96','(919)444-1637')
call dbm insert into contact values('Peter Spung',      11,'11-09-95','(919)444-1417')
call dbm insert into contact values('Barry Lee   ',     11,'01-22-95','(919)444-1454')
call dbm insert into contact values('Terry Field ',     11,'02-12-95','(919)444-1534')
call dbm insert into contact values('Flora Batca ',     11,'01-05-96','(919)444-1435')
call dbm insert into contact values('Shakeel Maheet',   11,'03-17-96','(919)444-1545')
call dbm insert into contact values('Greg Clark  ',     11,'11-09-95','(919)444-1546')
call dbm insert into contact values('Bob Love   ',      11,'01-22-95','(919)444-1565')
call dbm insert into contact values('Mark Benge  ',     11,'02-12-95','(919)444-1658')
call dbm insert into contact values('Brian Price ',     11,'01-05-96','(919)444-1576')
call dbm insert into contact values('Peter Haggar',     11,'11-02-95','(919)444-4612')
call dbm insert into contact values('Steve Wasleski',   11,'02-12-95','(919)444-1543')
call dbm insert into contact values('Mark Anderson',    11,'01-05-96','(919)444-1523')
call dbm insert into contact values('Rich Kulp',        11,'03-17-96','(919)444-1551')
call dbm insert into contact values('Andre Malcinski',  11,'04-22-95','(919)444-1225')
call dbm insert into contact values('Hiroshi Tsjui',    11,'11-09-95','(919)444-1599')
call dbm insert into contact values('Kat Turk',         11,'07-21-95','(919)444-2569')
call dbm insert into contact values('Paul Holmes ',     11,'03-17-96','(919)444-1674')
call dbm insert into contact values('Ed VanVliet ',     11,'11-09-95','(919)444-1456')
call dbm insert into contact values('Jim Doherty ',     11,'01-22-95','(919)444-1975')
call dbm insert into contact values('Venkat Iyer ',     11,'04-22-95','(919)444-1225')
call dbm insert into contact values('Art Jolin ',       11,'06-12-95','(919)444-6255')
call dbm insert into contact values('Susan Carpenter',  11,'02-12-95','(919)444-1876')
call dbm insert into contact values('Ken Lebda   ',     11,'01-05-96','(919)444-1846')
call dbm insert into contact values('Don Ingerslew',    11,'03-17-96','(919)444-1486')
call dbm insert into contact values('Al Groelle  ',     11,'11-09-95','(919)444-1835')
call dbm insert into contact values('Leo Marland',      14,'02-12-95','(416)778-3258')
call dbm insert into contact values('Oma Sewhdat',      14,'01-05-96','(416)778-3338')
call dbm insert into contact values('Michael Ha ',      14,'03-17-96','(416)778-3631')
call dbm insert into contact values('Dave Russell',     14,'11-09-95','(416)778-3634')
call dbm insert into contact values('Maria Kwok ',      14,'01-22-95','(416)778-3732')
call dbm insert into contact values('Alistair Rennie',  14,'02-12-95','(416)778-3662')
call dbm insert into contact values('Randy Doda ',      14,'01-05-96','(416)778-3838')
call dbm insert into contact values('Allan Friedman',   14,'03-17-96','(416)778-3247')
call dbm insert into contact values('Pete Devenyi',     14,'11-09-95','(416)778-3234')
call dbm insert into contact values('Nancy Blackstad',  14,'11-09-95','(416)778-3154')
call dbm insert into contact values('Bill Sarantakos',  14,'01-22-95','(416)778-3246')
call dbm insert into contact values('Sheila Richardson',14,'01-25-95','(416)778-3255')
call dbm insert into contact values('Mike Polan ',      14,'02-12-95','(416)778-3853')
call dbm insert into contact values('Maxine Houghton',  14,'08-13-96','(416)778-2448')
call dbm insert into contact values('Terry Low  ',      14,'01-05-96','(416)778-3868')
call dbm insert into contact values('Christina Lau',    14,'03-17-96','(416)778-3538')
call dbm insert into contact values('Roger Pett ',      14,'11-09-95','(416)778-3477')
call dbm insert into contact values('Howard Young',     14,'01-22-95','(416)778-1234')
call dbm insert into contact values('Harm Sluiman',     14,'02-12-95','(416)778-2558')
call dbm insert into contact values('Ed Lynch   ',      14,'01-05-96','(416)778-2358')
call dbm insert into contact values('John Swainson',    14,'12-03-96','(416)778-2454')
call dbm insert into contact values('Tom Doucher',      14,'03-17-96','(416)778-6428')
call dbm insert into contact values('Chris Gray ',      14,'11-09-95','(416)778-7538')
call dbm insert into contact values('Mike Starkey',     14,'11-09-95','(416)778-7438')
call dbm insert into contact values('Barry Searle',     14,'01-22-95','(416)778-8538')
call dbm insert into contact values('Robert LeBlanc',   14,'02-12-95','(416)778-8543')
call dbm insert into contact values('John Stockton',    14,'01-05-96','(416)778-7453')
call dbm insert into contact values('Angus McIntyre',   14,'03-17-96','(416)778-8654')
call dbm insert into contact values('Pat Gerstle',       6,'11-09-95','(407)778-6543')
call dbm insert into contact values('Danny Sabah',      10,'01-22-95','(212)778-7454')
call dbm insert into contact values('Lou Gerstner',     10,'02-12-95','(212)778-3468')
call dbm insert into contact values('Tim Williams',     10,'01-05-96','(212)778-4568')
call dbm insert into contact values('Dee OConner',      10,'03-17-96','(212)778-4564')
call dbm insert into contact values('Tim Negris  ',     10,'11-09-95','(212)778-5648')
call dbm insert into contact values('Walter Fang',      13,'01-05-96','(408)276-4645')
call dbm insert into contact values('Marc Carrel',      13,'03-17-96','(408)789-1010')
call dbm insert into contact values('Mike Meehan',       2,'04-16-96','(617)345-3776')
call dbm create table areatabl(areanum integer not null, city varchar(16), state varchar(3), primary key(areanum))
call dbm insert into areatabl values( 1, 'ATLANTA'      , 'GA')
call dbm insert into areatabl values( 2, 'BOSTON'       , 'MA')
call dbm insert into areatabl values( 3, 'CHICAGO'      , 'IL')
call dbm insert into areatabl values( 4, 'DALLAS'       , 'TX')
call dbm insert into areatabl values( 5, 'DENVER'       , 'CO')
call dbm insert into areatabl values( 6, 'LEXINGTON'    , 'KY')
call dbm insert into areatabl values( 7, 'LOS ANGELES'  , 'CA')
call dbm insert into areatabl values( 8, 'MIAMI'        , 'FL')
call dbm insert into areatabl values( 9, 'MONTREAL'     , 'QUE')
call dbm insert into areatabl values( 10, 'NEW YORK'     , 'NY')
call dbm insert into areatabl values( 11, 'RALEIGH'      , 'NC')
call dbm insert into areatabl values( 12, 'SAN FRANCISCO', 'CA')
call dbm insert into areatabl values( 13, 'SAN JOSE'     , 'CA')
call dbm insert into areatabl values( 14, 'TORONTO'      , 'ONT')
call dbm insert into areatabl values( 15, 'VANCOUVER'    , 'BC')
call dbm insert into areatabl values( 16, 'WASHINGTON'   , 'DC')
call dbm create view contview (name, phone, city, state, updated) as select all name, phone, city, state, updated from contact, areatabl where Area=areanum
call dbm commit
call dbm connect reset
goto end
:error
@echo .
@echo Syntax: CONT1X  D
@echo Where D is the drive letter of the target drive for the database.
@echo Do not enter a colon (:) after the drive letter..
:end
