CREATE DATABASE db_empresa_x;

USE db_empresa_x;

CREATE TABLE tb_colaboradores (
id BIGINT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cpf CHAR(11) NOT NULL,
cargo VARCHAR(255),
salario DECIMAL(7,2) NOT NULL,
ativo BOOLEAN
);

INSERT INTO tb_colaboradores (nome, cpf, cargo, salario, ativo) VALUES
('Ana Clara Mendes', '12345678901', 'Desenvolvedora Junior', 3500.00, TRUE),
('Bruno Ferreira da Silva', '98765432109', 'Analista de RH Pleno', 5800.50, TRUE),
('Carla Souza Lima', '11223344556', 'Gerente de Projetos', 9150.75, TRUE),
('Daniel Oliveira Gomes', '66778899001', 'Estagiário de Marketing', 800.00, FALSE),
('Elena Rodrigues Alves', '50505050505', 'Analista Financeiro Senior', 7600.25, TRUE);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores 
SET ativo = CASE
	WHEN id = 4 THEN TRUE
    WHEN id = 5 THEN FALSE
END
WHERE id IN (4,5);

SELECT * FROM tb_colaboradores WHERE id IN (4,5);