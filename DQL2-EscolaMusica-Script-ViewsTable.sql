-- -----------------------------------------------------
-- Schema escolaMusica
-- -----------------------------------------------------
USE `escolaMusica` ;

-- 1. View para listar todos os musicistas e suas respectivas orquestras
CREATE VIEW `view_musicistas_orquestras` AS
SELECT m.nome AS musicista, o.nome AS orquestra
FROM `Musicista` m
JOIN `Orquestra` o ON m.Orquestra_idOrquestra = o.idOrquestra;

-- 2. View para listar todos os instrumentos e seus tipos
CREATE VIEW `view_instrumentos_tipos` AS
SELECT nome, tipo FROM `Instrumento`;

-- 3. View para listar todos os musicistas que tocam violino
CREATE VIEW `view_musicistas_violino` AS
SELECT m.nome, m.posicao, m.email
FROM `Musicista` m
JOIN `Instrumento` i ON m.Instrumento_idInstrumento = i.idInstrumento
WHERE i.nome = 'Violino';

-- 4. View para listar todas as orquestras com mais de 5 musicistas
CREATE VIEW `view_orquestras_grandes` AS
SELECT o.nome, COUNT(m.idMusicista) AS total_musicistas
FROM `Orquestra` o
JOIN `Musicista` m ON o.idOrquestra = m.Orquestra_idOrquestra
GROUP BY o.nome
HAVING total_musicistas > 5;

-- 5. View para listar os emails dos musicistas que tocam instrumentos de sopro
CREATE VIEW `view_emails_sopro` AS
SELECT m.email
FROM `Musicista` m
JOIN `Instrumento` i ON m.Instrumento_idInstrumento = i.idInstrumento
WHERE i.tipo = 'Sopro';

-- 6. View para listar os nomes das orquestras que têm musicistas nascidos após 1990
CREATE VIEW `view_orquestras_modernas` AS
SELECT DISTINCT o.nome
FROM `Orquestra` o
JOIN `Musicista` m ON o.idOrquestra = m.Orquestra_idOrquestra
WHERE m.dataNascimento > '1990-01-01';

-- 7. View para listar os tipos de instrumentos tocados na Orquestra Sinfônica
CREATE VIEW `view_tipos_instrumentos_sinfonica` AS
SELECT DISTINCT i.tipo
FROM `Instrumento` i
JOIN `Musicista` m ON i.idInstrumento = m.Instrumento_idInstrumento
JOIN `Orquestra` o ON m.Orquestra_idOrquestra = o.idOrquestra
WHERE o.nome = 'Orquestra Sinfônica';

-- 8. View para listar os nomes dos musicistas que tocam em mais de uma orquestra
CREATE VIEW `view_musicistas_multiorquestra` AS
SELECT m.nome
FROM `Musicista` m
JOIN `Orquestra` o ON m.Orquestra_idOrquestra = o.idOrquestra
GROUP BY m.nome
HAVING COUNT(DISTINCT o.idOrquestra) > 1;

-- 9. View para listar os nomes das orquestras que têm instrumentos de percussão
CREATE VIEW `view_orquestras_percussao` AS
SELECT DISTINCT o.nome
FROM `Orquestra` o
JOIN `Musicista` m ON o.idOrquestra = m.Orquestra_idOrquestra
JOIN `Instrumento` i ON m.Instrumento_idInstrumento = i.idInstrumento
WHERE i.tipo = 'Percussão';

-- 10. View para listar os nomes dos musicistas e suas datas de nascimento, ordenados por data de nascimento
CREATE VIEW `view_musicistas_nascimento` AS
SELECT nome, dataNascimento
FROM `Musicista`
ORDER BY dataNascimento;
