@echo off
@if .%1 == . goto error
startdbm
sqlbind areatabv.bnd contact
sqlbind contactv.bnd contact
sqlbind contviev.bnd contact
sqlbind %1:\ibmcpp\bnd\DAXSCL.bnd contact
@echo .
@echo If all return codes where zero the bind operation was sucessful
@echo .
goto theend
:error
@echo .
@echo Syntax is: DOBIND1X X, where X is the drive where VisualAge is
installed @echo .
:theend
