CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(5,2) NOT NULL,
    ingredientes TEXT,
    tamanho VARCHAR(255),
    categoria_id BIGINT,
    
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Salgada', 'Pizzas com sabores salgados tradicionais'),
('Doce', 'Pizzas com sabores doces'),
('Especial', 'Pizzas gourmet ou especiais da casa'),
('Vegetariana', 'Pizzas sem carne, apenas vegetais e queijos'),
('Bebidas', 'Bebidas como refrigerantes, sucos e água');

INSERT INTO tb_pizzas (nome, valor, ingredientes, tamanho, categoria_id) VALUES
('Margherita', 48.50, 'Molho de tomate, queijo, manjericão', 'M-G', 1),
('Pepsi', 8.50, 'Refrigerante de cola', 'Lata', 5),
('Portuguesa', 60.00, 'Presunto, ovos, cebola, azeitonas, queijo', 'M-G', 1),
('Frango com Catupiry', 52.50, 'Frango desfiado, catupiry, milho', 'M-G', 1),
('Veggie', 50.00, 'Tomate, abobrinha, pimentão, queijo', 'M-G', 4),
('Calabresa Tradicional', 47.00, 'Calabresa, cebola, queijo', 'M-G', 1),
('Gaucha', 85.00, 'Lombo suíno, bacon, queijo, maionese, alface, tomate, milho, ervilha', 'M-G', 3),
('Doce de Leite', 65.00, 'Doce de leite, chocolate, queijo', 'P-M', 2),
('Quatro Queijos', 70.00, 'Mozzarella, gorgonzola, parmesão, catupiry', 'Grande', 1);

SELECT * FROM tb_pizzas
WHERE valor > 45;

SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas
WHERE nome LIKE '%M%';

SELECT p.id, p.nome, p.valor, p.tamanho, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.id, p.nome, p.valor, p.tamanho, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome_categoria = 'Doce';