DROP DATABASE FORMULARIO;
USE master;
CREATE DATABASE FORMULARIO;
USE FORMULARIO;


CREATE TABLE EstadoCivil(
idEstadoCivil int primary key not null identity(1,1),
nombre varchar(40)
);

CREATE TABLE Hobbys(
idHobby int primary key not null identity (1,1),
nombre varchar(40)
);

CREATE TABLE Persona(
idPersona int primary key not null identity(1,1),
cedula VARCHAR(12),
nombre VARCHAR(45) NOT NULL,
apellido VARCHAR(45) NOT NULL,
edad  INT CHECK (edad>15),
telefono VARCHAR(45),
email VARCHAR(100),
foto varchar(max),
fk_estadoCivil int FOREIGN KEY REFERENCES EstadoCivil(idEstadoCivil)
);

CREATE TABLE PersonaHobbys(

fk_persona int foreign key references Persona(idPersona),
fk_hobby int foreign key references Hobbys(idHobby),
primary key(fk_persona,fk_hobby)

);



INSERT INTO EstadoCivil(EstadoCivil.nombre) values('SOLTER@');
INSERT INTO EstadoCivil(EstadoCivil.nombre) values ('CASAD@');
INSERT INTO EstadoCivil(EstadoCivil.nombre) values('UNION LIBRE');
INSERT INTO EstadoCivil(EstadoCivil.nombre) values('VIUD@');

INSERT INTO Hobbys(nombre) values('Anime');
INSERT INTO Hobbys(nombre) values('Musica');
INSERT INTO Hobbys(nombre) values('VideoJuegos');
