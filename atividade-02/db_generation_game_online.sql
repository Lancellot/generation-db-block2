CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
classe VARCHAR(255) NOT NULL UNIQUE,
descricao TEXT,
ataque_base INT DEFAULT 0,
defesa_base INT DEFAULT 0,
agilidade_base INT DEFAULT 0
);

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
nivel INT DEFAULT 1,
ataque INT DEFAULT 0,
defesa INT DEFAULT 0,
agilidade INT DEFAULT 0,
classe_id BIGINT,

FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (classe, descricao, ataque_base, defesa_base, agilidade_base)
VALUES
('Guerreiro', 'Classe focada em força e resistência.', 800, 1000, 400),
('Mago', 'Especialista em ataques mágicos e feitiços.', 1200, 400, 600),
('Arqueiro', 'Ataques à distância com grande agilidade.', 700, 600, 1200),
('Assassino', 'Alta velocidade e dano crítico furtivo.', 1100, 500, 1500),
('Paladino', 'Guerreiro sagrado com boa defesa e cura.', 900, 1200, 500);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, agilidade, classe_id)
VALUES
('Arthorius', 10, 1500, 1200, 600, 1),   
('Melindra', 18, 2600, 500, 1100, 2),    
('Faelar', 12, 1100, 80, 1600, 3),      
('Shadowblade', 200, 3000, 700, 200, 4), 
('Luminor', 15, 1700, 1500, 700, 5),     
('Kael', 7, 900, 600, 1400, 3),          
('Seraphine', 22, 3100, 550, 1800, 2),   
('Brutalus', 5, 1200, 1300, 500, 1);     


SELECT * FROM tb_personagens
WHERE ataque > 2000;

SELECT * FROM tb_personagens
WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE '%C%';

SELECT p.id, p.nome, p.nivel, p.ataque, c.classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.id, p.nome, p.nivel, p.ataque, c.classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.classe = 'Arqueiro';

SELECT 
    p.nome,
    p.ataque + c.ataque_base AS ataque_total,
    p.defesa + c.defesa_base AS defesa_total
FROM tb_personagens p
LEFT JOIN tb_classes c ON p.classe_id = c.id
WHERE p.nome = 'Arthorius';
