CREATE DATABASE consultas_medicas;

USE consultas_medicas;

CREATE TABLE Paciente (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    CPF VARCHAR(14),
    data_nasc DATE,
    Telefone VARCHAR(20)
);
CREATE TABLE Medico (
    id_medico INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Especialidade VARCHAR(80),
    CRM VARCHAR(20),
    Telefone VARCHAR(20)
);
CREATE TABLE Consulta (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    data_consulta DATE,
    Hora TIME,
    Motivo VARCHAR(200),
    Status VARCHAR(20),
    CONSTRAINT fk_consulta_paciente
        FOREIGN KEY (id_paciente)
        REFERENCES Paciente(id_paciente),
    CONSTRAINT fk_consulta_medico
        FOREIGN KEY (id_medico)
        REFERENCES Medico(id_medico)
); 