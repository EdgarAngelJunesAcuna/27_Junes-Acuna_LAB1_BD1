/*Listar base de datos del servidor*/
SHOW DATABASES;

/*CREAR BASE DE DATOS*/
CREATE DATABASE dbElectrodomesticos;

/*PONER EN USO LA BASE DE DATOS*/
USE dbElectrodomesticos;

/*Crear tabla*/
CREATE TABLE CLIENTE (
    CODCLI CHAR(4),
    NOMCLI VARCHAR(60),
    APECLI VARCHAR(80),
    EMACLI VARCHAR(80),
    CELCLI CHAR(9),
    DIRCLI VARCHAR(70),
    ESTCLI char(1),
    PRIMARY KEY (CODCLI)
);