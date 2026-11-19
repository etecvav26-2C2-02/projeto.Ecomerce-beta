CREATE DATABASE title;
USE title;

CREATE TABLE usuarios (
    idusuario INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

-- Senha -> 123456 -- Usuário --> 'admin'
INSERT INTO usuarios (usuario, senha)
VALUES (
    'admin',
    '6aab13aae91e7d6fbbd038f3868d7b7879fdc639863dc3da8cdba5a4a731b200'
);
