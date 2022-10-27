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

CREATE TABLE VENDEDOR (
    CODVEND char(4),
    NOMVEND varchar(60),
    APEVEND varchar(80),
    EMAVEND varchar(80),
    CELVEND char(9),
    DIRVEND varchar(70),
    ESTVEND char(1),
    PRIMARY KEY (CODVEND)
);

CREATE TABLE PRODUCTO (
    CODPRO char(5),
    DESCPRO varchar(80),
    CATPRO char(1),
    PREPRO decimal(8,2),
    STOCKPRO int,
    ESTPRO char(1),
    PRIMARY KEY (CODPRO)
);

CREATE TABLE PROVEEDOR (
    CODPROV char(5),
    RAZSOCPROV varchar(90),
    RUCPROV varchar(11),
    EMAPROV varchar(70),
    ESTPROV char(1),
    PRIMARY KEY (CODPROV)
);

CREATE TABLE VENTA (
    CODVEN char(5),
    FECVEN datetime,
    CODCLI char(4),
    CODVEND char(4),
    ESTVEN char(1),
    PRIMARY KEY (CODVEN)
);

CREATE TABLE VENTADETALLE (
    IDVENDET int,
    CODVEN char(5),
    CODPRO char(5),
    CANTPRO int,
    PRIMARY KEY (IDVENDET)
);

CREATE TABLE COMPRA (
    CODCOM char(5),
    FECCOM datetime,
    CODVEND char(4),
    CODPROV char(5),
    ESTCOM char(1),
    PRIMARY KEY (CODCOM)
);

CREATE TABLE COMPRADETALLE (
    IDCOMDET INTEGER,
    CODCOM CHAR(5),
    CODPRO CHAR(5),
    CANTPRO INTEGER,
    PRIMARY KEY (IDCOMDET)

);

