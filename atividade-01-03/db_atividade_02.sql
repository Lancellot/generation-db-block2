CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT PRIMARY KEY AUTO_INCREMENT,
marca VARCHAR(255),
nome VARCHAR(255) NOT NULL,
quantidade INT,
Valor DECIMAL(6,2) NOT NULL
);

INSERT INTO tb_produtos (marca, nome, quantidade, valor) VALUES
('Xiaomi', 'Smartwatch Redmi', 30, 450.00),
('Logitech', 'Mouse Sem Fio', 50, 220.00),
('Philco', 'Caixa de Som Bluetooth', 40, 350.00),
('Philips', 'Fone de Ouvido Intra-auricular', 60, 180.00),
('HP', 'Teclado Wireless', 35, 240.00),
('Samsung', 'Pendrive 64GB', 80, 120.00),
('Bose', 'Fone de Ouvido QuietComfort', 25, 1299.00),
('Canon', 'Câmera EOS Rebel T7', 7, 2800.00);


SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos
SET valor = CASE
	WHEN id = 2 THEN 280.99
    WHEN id = 7 THEN 1099.99
END
WHERE id IN (2,7);

SELECT * FROM tb_produtos WHERE id IN (2,7);