Create database restaurante;
use restaurante;

CREATE TABLE tabela (
    id INT AUTO_INCREMENT PRIMARY KEY,
    localização INT,
    hourValue DECIMAL(5,2)
);
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);
CREATE TABLE scheduling (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tId INT NOT NULL,  -- Chave estrangeira para a tabela table
    cId INT NOT NULL,  -- Chave estrangeira para a tabela client
    date DATE NOT NULL,
    status ENUM('reserved', 'canceled', 'open', 'payment', 'closed') NOT NULL,
    FOREIGN KEY (tId) REFERENCES tabela(id),
    FOREIGN KEY (cId) REFERENCES cliente(id)
);

CREATE TABLE productsche (
    eId INT NOT NULL,  -- Chave estrangeira para a tabela scheduling
    pId INT NOT NULL,  -- Chave estrangeira para a tabela product
    quantity INT NOT NULL,
    PRIMARY KEY (eId, pId),
    FOREIGN KEY (eId) REFERENCES scheduling(id),
    FOREIGN KEY (pId) REFERENCES produto(id)
);
