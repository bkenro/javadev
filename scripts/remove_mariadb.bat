@echo off
set CLASSPATH=
set MARIADB_HOME=%DEV_HOME%\mariadb

set LANG=ja_JP.utf-8
set LC_ALL=ja_JP.utf-8

sc stop MariaDB
sc delete MariaDB
rmdir /s /q %MARIADB_HOME%\data
