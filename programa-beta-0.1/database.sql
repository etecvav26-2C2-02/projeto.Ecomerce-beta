CREATE DATABASE title;
USE title;

CREATE DATABASE IF NOT EXISTS loja;
USE loja;

CREATE TABLE usuarios (
    idusuario INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE cep (
    idcep INT AUTO_INCREMENT PRIMARY KEY,
    idusuario INT NOT NULL,
    cep VARCHAR(9) NOT NULL,
    endereco VARCHAR(60) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    FOREIGN KEY (idusuario) REFERENCES usuarios(idusuario)
);

CREATE TABLE produtos (
    idproduto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(70) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE carrinhos (
    idcarrinho INT AUTO_INCREMENT PRIMARY KEY,
    idusuario INT NOT NULL,
    FOREIGN KEY (idusuario) REFERENCES usuarios(idusuario)
);

CREATE TABLE itens_carrinho (
    iditem INT AUTO_INCREMENT PRIMARY KEY,
    idcarrinho INT NOT NULL,
    idproduto INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (idcarrinho) REFERENCES carrinhos(idcarrinho),
    FOREIGN KEY (idproduto) REFERENCES produtos(idproduto)
);

SELECT iditem, quantidade 
FROM itens_carrinho 
WHERE idcarrinho = 10 AND idproduto = 55;


INSERT INTO itens_carrinho (idcarrinho, idproduto, quantidade) 
VALUES (10, 55, 1);


UPDATE itens_carrinho 
SET quantidade = quantidade + 1 
WHERE iditem = 99;


SELECT 
    p.nome_produto, 
    p.preco, 
    ic.quantidade, 
    (p.preco * ic.quantidade) AS subtotal
FROM itens_carrinho ic
JOIN produtos p ON ic.idproduto = p.idproduto
WHERE ic.idcarrinho = 10;


DELETE FROM itens_carrinho 
WHERE idcarrinho = 10 AND idproduto = 55;





-- Senha -> 123456 -- Usuário --> 'admin'
INSERT INTO usuarios (usuario, senha)
VALUES (
    'admin',
    '6aab13aae91e7d6fbbd038f3868d7b7879fdc639863dc3da8cdba5a4a731b200'
);
