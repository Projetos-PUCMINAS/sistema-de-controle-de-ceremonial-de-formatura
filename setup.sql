CREATE DATABASE IF NOT EXISTS CerimonialDB;
USE CerimonialDB;

-- Tabela Profissional
CREATE TABLE Profissional (
    num_matricula BIGINT PRIMARY KEY,
    nome VARCHAR(255),
    telefone VARCHAR(15),
    tipo_profissional VARCHAR(100)
);

-- Tabela Aperitivo
CREATE TABLE Aperitivo (
    id INT PRIMARY KEY,
    descricao VARCHAR(255),
    preco_pessoa DOUBLE,
    tipo_aperitivo VARCHAR(100)
);

-- Tabela Firma
CREATE TABLE Firma (
    cnpj VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(100),
    rua VARCHAR(100),
    numero INT,
    cep VARCHAR(15),
    bairro VARCHAR(50)
);

-- Tabela Buffet (atualizado com cnpj_firma e inicio_parceria)
CREATE TABLE Buffet (
    cnpj VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(100),
    rua VARCHAR(100),
    numero INT,
    cep VARCHAR(15),
    bairro VARCHAR(50),
    inicio_parceria DATE,
    cnpj_firma VARCHAR(20),
    FOREIGN KEY (cnpj_firma) REFERENCES Firma(cnpj)
);

-- Tabela Cardapio
CREATE TABLE Cardapio (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cnpj_buffet VARCHAR(20),
    FOREIGN KEY (cnpj_buffet) REFERENCES Buffet(cnpj)
);

-- Tabela Formatura
CREATE TABLE Formatura (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    telefone VARCHAR(15),
    nome_faculdade VARCHAR(255),
    forma_pagamento VARCHAR(50),
    valor_pagamento DOUBLE,
    nome_curso VARCHAR(255),
    cnpj_firma VARCHAR(20),
    FOREIGN KEY (cnpj_firma) REFERENCES Firma(cnpj)
);

-- Tabela Evento (atualizado com id_formatura e id_cardapio)
CREATE TABLE Evento (
    id INT PRIMARY KEY,
    descricao VARCHAR(255),
    local VARCHAR(100),
    num_convidados MEDIUMINT,
    duracao TINYINT,
    data DATE,
    id_formatura INT,
    id_cardapio INT,
    FOREIGN KEY (id_formatura) REFERENCES Formatura(id),
    FOREIGN KEY (id_cardapio) REFERENCES Cardapio(id)
);

-- Tabela CardapioAperitivo (relação entre Cardapio e Aperitivo)
CREATE TABLE CardapioAperitivo (
    id_cardapio INT,
    id_aperitivo INT,
    PRIMARY KEY (id_cardapio, id_aperitivo),
    FOREIGN KEY (id_cardapio) REFERENCES Cardapio(id),
    FOREIGN KEY (id_aperitivo) REFERENCES Aperitivo(id)
);

-- Tabela ProfissionalEvento (relação entre Profissional e Evento)
CREATE TABLE ProfissionalEvento (
    id_evento INT,
    matricula_profissional BIGINT,
    duracao INT,
    PRIMARY KEY (id_evento, matricula_profissional),
    FOREIGN KEY (id_evento) REFERENCES Evento(id),
    FOREIGN KEY (matricula_profissional) REFERENCES Profissional(num_matricula)
);
