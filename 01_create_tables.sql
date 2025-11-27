CREATE DATABASE IF NOT EXISTS AdotaPet;
USE AdotaPet;

-- =========================
-- ENDERECO
-- =========================
CREATE TABLE ENDERECO (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    bairro VARCHAR(60) NOT NULL,
    cidade VARCHAR(60) NOT NULL,
) ENGINE=InnoDB;

-- =========================
-- ADOTANTE
-- =========================
CREATE TABLE ADOTANTE (
    id_adotante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    id_endereco INT NOT NULL,
    FOREIGN KEY (id_endereco)
      REFERENCES ENDERECO(id_endereco)
) ENGINE=InnoDB;

-- =========================
-- VOLUNTARIO
-- =========================
CREATE TABLE VOLUNTARIO (
    id_voluntario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE
) ENGINE=InnoDB;

-- =========================
-- DISPONIBILIDADE DO VOLUNTARIO
-- =========================
CREATE TABLE DISPONIBILIDADE_VOLUNTARIO (
    id_disponibilidade INT AUTO_INCREMENT PRIMARY KEY,
    id_voluntario INT NOT NULL,
    dia_semana VARCHAR(20) NOT NULL,
    horario_inicio VARCHAR(20) NOT NULL,
    horario_fim VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_voluntario) REFERENCES VOLUNTARIO(id_voluntario)
) ENGINE=InnoDB;

-- =========================
-- ANIMAL
-- =========================
CREATE TABLE ANIMAL (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    status_adocao VARCHAR(30) NOT NULL
) ENGINE=InnoDB;

-- =========================
-- HISTORICO MEDICO
-- =========================
CREATE TABLE HISTORICO_MEDICO (
    id_historico INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT NOT NULL,
    descricao VARCHAR(255),
    data_registro DATE NOT NULL,
    tipo NOT NULL,
    FOREIGN KEY (id_animal) REFERENCES ANIMAL(id_animal)
) ENGINE=InnoDB;

-- =========================
--  DOCUMENTO
-- =========================
CREATE TABLE DOCUMENTO (
    id_documento INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    caminho_arquivo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    id_animal INT NOT NULL,
    FOREIGN KEY (id_animal) REFERENCES ANIMAL(id_animal)
) ENGINE=InnoDB;

-- =========================
-- EVENTO
-- =========================
CREATE TABLE EVENTO (
    id_evento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_evento DATE NOT NULL,
    local_evento VARCHAR(150) NOT NULL,
    descricao VARCHAR(255)
) ENGINE=InnoDB;

-- =========================
-- ADOCAO
-- =========================
CREATE TABLE ADOCAO (
    id_adocao INT AUTO_INCREMENT PRIMARY KEY,
    data_entrevista DATE,
    data_aprovacao DATE,
    data_entrega DATE,
    status VARCHAR(20) NOT NULL,
    id_adotante INT NOT NULL,
    id_animal INT NOT NULL,
    FOREIGN KEY (id_adotante) REFERENCES adotante(id_adotante),
    FOREIGN KEY (id_animal) REFERENCES animal(id_animal)
) ENGINE=InnoDB;
