CREATE DATABASE IF NOT EXISTS test_psicologico;
USE test_psicologico;

CREATE TABLE participante (
    idparticipante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    edad int,
    genero VARCHAR(45) NOT NULL
);

CREATE TABLE test (
    idtest INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(255),
    participante_idparticipante INT,
    FOREIGN KEY (participante_idparticipante) REFERENCES participante(idparticipante)
);

CREATE TABLE pregunta (
    idpregunta INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(45) NOT NULL,
    texto VARCHAR(255) NOT NULL,
    test_idtest INT,
    FOREIGN KEY (test_idtest) REFERENCES test(idtest)
);

CREATE TABLE respuesta (
    idrespuesta INT PRIMARY KEY AUTO_INCREMENT,
    texto VARCHAR(255) NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    test_idtest INT,
    participante_idparticipante INT,
    pregunta_idpregunta INT,
    FOREIGN KEY (test_idtest) REFERENCES test(idtest),
    FOREIGN KEY (participante_idparticipante) REFERENCES participante(idparticipante),
    FOREIGN KEY (pregunta_idpregunta) REFERENCES pregunta(idpregunta)
);