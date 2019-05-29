@echo off
@rem COPYRIGHT: Copyright (C) International Business Machines Corp., 1992,1994.
@rem
If .%1 == . goto error
@echo .
@echo WARNING: If the database CONTACT exists, it will be deleted.
@echo Then a new CONTACT database will be (re)created on drive %1:
@echo Press (Ctrl-c to cancel).
@echo.
@echo If asked for a userid and password use: USERID and PASSWORD
@echo respectively (enter all in upper case)
@echo.
@echo Please be patient; creating the database takes a little while ...
@echo.
pause
db2start

@echo .
@echo Dropping CONTACT database if it exists already

db2 drop database contact

@echo .
@echo Creating CONTACT database ...

db2 create database contact on %1

db2 -fcontact.cli -o -t

goto end
:error
@echo .
@echo Syntax: CONTACT X
@echo Where X is the drive letter of the target drive for the database.
@echo Do not enter a colon (:) after the drive letter..
:end
