@echo off
set CLASSPATH=
set MARIADB_HOME=%DEV_HOME%\mariadb

set LANG=ja_JP.utf-8
set LC_ALL=ja_JP.utf-8

set path=%MARIADB_HOME%\bin;%path%


mysql_install_db.exe --datadir=%MARIADB_HOME%\data --service=MariaDB --password=root
copy %DEV_HOME%\scripts\my.ini %MARIADB_HOME%\data\my.ini /Y
sc start MariaDB
