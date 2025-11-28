CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    quantidade INT DEFAULT 0,
    validade DATE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Medicamentos', 'Produtos farmacêuticos como remédios e suplementos'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Higiene', 'Produtos de higiene pessoal, sabonetes e shampoos'),
('Vitaminas', 'Suplementos e vitaminas para saúde'),
('Materiais Médicos', 'Materiais de uso médico, curativos e equipamentos');

INSERT INTO tb_produtos (nome, valor, quantidade, validade, categoria_id)
VALUES
('Paracetamol', 25.00, 50, '2026-12-31', 1),
('Shampoo Anti-Caspa', 32.50, 30, '2025-10-15', 2),
('Sabonete Líquido', 12.00, 100, '2026-03-20', 3),
('Vitamina C 500mg', 55.00, 40, '2027-01-10', 4),
('Máscara Facial', 60.00, 25, '2026-08-05', 2),
('Curativo 10x10cm', 8.50, 200, '2028-06-01', 5),
('Ibuprofeno', 48.00, 60, '2026-11-30', 1),
('Creme Hidratante', 45.00, 50, '2026-09-15', 2);

SELECT * FROM tb_produtos
WHERE valor > 50;

SELECT * FROM tb_produtos
WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

SELECT p.id, p.nome, p.valor, p.quantidade, p.validade, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.id, p.nome, p.valor, p.quantidade, p.validade, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome_categoria = 'Cosméticos';