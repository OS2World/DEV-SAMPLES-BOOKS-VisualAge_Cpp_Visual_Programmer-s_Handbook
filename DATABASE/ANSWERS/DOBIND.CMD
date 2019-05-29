@echo off
@if .%1 == . goto error
db2start
db2 connect to contact
db2 bind areatabv.bnd
db2 bind contactv.bnd
db2 bind contviev.bnd
db2 bind %1:\ibmcpp\bnd\DAXSCL.bnd
db2 connect reset
@echo .
@echo If all return codes where zero the bind operation was sucessful
@echo .
goto theend
:error
@echo .
@echo Syntax is: DOBIND X, where X is the drive where VisualAge is installed
@echo .
:theend
