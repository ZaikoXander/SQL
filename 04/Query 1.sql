DROP database cadastro;

CREATE database cadastro
default character set utf8mb4
default collate utf8mb4_general_ci;
-- UTF8

CREATE database meubanco;
-- LATIN1

DROP database meubanco;

CREATE Table pessoas(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo enum('M', 'F'),
    peso DECIMAL(5, 2),
    altura DECIMAL(3, 2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
) DEFAULT charset = utf8mb4;