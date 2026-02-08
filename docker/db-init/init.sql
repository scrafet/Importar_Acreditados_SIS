CREATE DATABASE SIGH_EXTERNA;
GO
USE SIGH_EXTERNA;
GO
CREATE TABLE SisFiliaciones (
    idSiasis int NOT NULL,
    Codigo varchar(2) NOT NULL,
    AfiliacionDisa varchar(3) NOT NULL,
    AfiliacionTipoFormato varchar(2) NOT NULL,
    AfiliacionNroFormato varchar(10) NOT NULL,
    AfiliacionNroIntegrante varchar(2) NULL,
    DocumentoTipo varchar(1) NULL,
    CodigoEstablAdscripcion varchar(10) NULL,
    AfiliacionFecha datetime NULL,
    Paterno varchar(40) NOT NULL,
    Materno varchar(40) NOT NULL,
    Pnombre varchar(70) NOT NULL,
    Onombres varchar(70) NULL,
    Genero varchar(1) NULL,
    Fnacimiento datetime NULL,
    IdDistritoDomicilio varchar(6) NULL,
    Estado varchar(1) NULL,
    Fbaja varchar(10) NULL,
    DocumentoNumero varchar(10) NULL,
    MotivoBaja varchar(70) NULL,
    CONSTRAINT PK_SisFiliaciones PRIMARY KEY (idSiasis, Codigo)
);
GO
