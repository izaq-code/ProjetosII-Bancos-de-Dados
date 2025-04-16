DROP DATABASE IF EXISTS al2f;

CREATE DATABASE al2f;

USE al2f;

-- cliente
CREATE TABLE cliente(
    id_cliente int AUTO_INCREMENT PRIMARY KEY ,
    contato varchar(15),
    nome char(255)
) ENGINE = innoDB;

-- projeto
CREATE TABLE projeto(
    id_projeto int PRIMARY KEY AUTO_INCREMENT,
    caminho_doc varchar(512),
    descricao varchar(255),
    data_abertura DATE,
    data_fechamento DATE,
    status_projeto varchar(75),
    diretorio_projeto varchar(512),
    id_cliente int(5),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
) ENGINE = innoDB;

-- ticket de reclamacao
CREATE TABLE ticket_de_reclamacao(
    id_ticket int PRIMARY KEY AUTO_INCREMENT,
    descricao varchar(255),
    data_abertura DATE,
    data_fechamento DATE,
    status_ticket varchar(75),
    id_cliente int(5),
    id_projeto int(5),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_projeto) REFERENCES projeto(id_projeto)
) ENGINE = innoDB;

-- cargo
CREATE TABLE cargo(
     nome_cargo char(255) PRIMARY KEY
) ENGINE = innoDB;

-- funcionario
CREATE TABLE funcionario(
    id_funcionario int PRIMARY KEY AUTO_INCREMENT,
    nome char(255),
    telefone varchar(15),
    salario_hora float(8,2),
    email varchar(255),
    nome_cargo char(255),
    FOREIGN KEY (nome_cargo) REFERENCES cargo(nome_cargo)
) ENGINE = innoDB;

-- etapas do projeto
CREATE TABLE etapas_do_projeto(
    id_etapa int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(255),
    descricao varchar(255),
    data_inicio DATE,
    data_fim_prevista DATE,
    data_fim_real DATE,
    status_etapa varchar(75),
    id_funcionario int(5),
    id_projeto int(5),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (id_projeto) REFERENCES projeto(id_projeto)
) ENGINE = innoDB;