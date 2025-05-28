DROP DATABASE IF EXISTS al2f;
CREATE DATABASE al2f;
USE al2f;

-- Tabela de clientes
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    contato VARCHAR(15),
    orcamento_disponivel DECIMAL(8,2),
    nome VARCHAR(255) NOT NULL
) ENGINE = InnoDB;

-- Tabela de status 
CREATE TABLE status (
    nome_status VARCHAR(75) PRIMARY KEY
) ENGINE = InnoDB;

-- Tabela de cargos
CREATE TABLE cargo (
    nome_cargo VARCHAR(255) PRIMARY KEY
) ENGINE = InnoDB;

-- Tabela de funcionários
CREATE TABLE funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(15),
    salario_hora DECIMAL(10,2) NOT NULL,
    email VARCHAR(255),
    nome_cargo VARCHAR(255),
    FOREIGN KEY (nome_cargo) REFERENCES cargo(nome_cargo)
) ENGINE = InnoDB;

-- Tabela de projetos
CREATE TABLE projeto (
    id_projeto INT AUTO_INCREMENT PRIMARY KEY,
    caminho_doc VARCHAR(512),
    descricao VARCHAR(255) NOT NULL,
    data_abertura DATE NOT NULL,
    data_fechamento DATE,
    status VARCHAR(75) NOT NULL,
    diretorio_projeto VARCHAR(512),
    id_cliente INT NOT NULL,
    FOREIGN KEY (status) REFERENCES status(nome_status),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
) ENGINE = InnoDB;

-- Tabela de tickets de reclamação
CREATE TABLE ticket_de_suporte (
    id_ticket INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    data_abertura DATE NOT NULL,
    data_fechamento DATE,
    status VARCHAR(75) NOT NULL,
    id_cliente INT NOT NULL,
    id_projeto INT NOT NULL,
    FOREIGN KEY (status) REFERENCES status(nome_status),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_projeto) REFERENCES projeto(id_projeto)
) ENGINE = InnoDB;

-- Tabela de etapas dos projetos
CREATE TABLE etapa_projeto (
    id_etapa INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    data_inicio DATE NOT NULL,
    data_fim_prevista DATE,
    data_fim_real DATE,
    status VARCHAR(75) NOT NULL,
    id_funcionario INT NOT NULL,
    id_projeto INT NOT NULL,
    FOREIGN KEY (status) REFERENCES status(nome_status),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (id_projeto) REFERENCES projeto(id_projeto)
) ENGINE = InnoDB;
