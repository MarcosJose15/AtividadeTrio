-- 02/10/2024 -----------------------------------------------------
-- Schema escolaMusica
-- -----------------------------------------------------
USE `escolaMusica` ;


 /* Perguntas/Relatórios Importantes

Quais são os nomes e descrições de todas as orquestras?
Quais são os nomes e tipos de todos os instrumentos?
Quais são os nomes, datas de nascimento e posições de todos os musicistas?
Quais musicistas tocam violino?
Quais orquestras têm mais de 5 musicistas?
Quais são os emails dos musicistas que tocam instrumentos de sopro?
Quais são os nomes das orquestras que têm musicistas nascidos após 1990?
Quais são os tipos de instrumentos tocados na Orquestra Sinfônica?
Quais são os nomes dos musicistas e suas respectivas orquestras?
Quais são os nomes dos musicistas que tocam em mais de uma orquestra?
Quais são os nomes e tipos dos instrumentos que não são de cordas?
Quais são os nomes das orquestras que têm instrumentos de percussão?
Quais são os nomes dos musicistas que tocam na Orquestra de Jazz?
Quais são os nomes e posições dos musicistas que tocam oboé?
Quais são os nomes das orquestras que têm musicistas com o sobrenome ‘Silva’?
Quais são os nomes dos musicistas e os tipos de instrumentos que tocam?
Quais são os nomes das orquestras que têm mais de 3 tipos diferentes de instrumentos?
Quais são os nomes dos musicistas que tocam instrumentos de metais?
Quais são os nomes das orquestras que têm musicistas com mais de 30 anos?
Quais são os nomes dos musicistas e suas datas de nascimento, ordenados por data de nascimento?
Script SQL
SQL */

-- 1. Nomes e descrições de todas as orquestras
SELECT nome, descricao FROM `escolaMusica`.`Orquestra`;

-- 2. Nomes e tipos de todos os instrumentos
SELECT nome, tipo FROM `escolaMusica`.`Instrumento`;

-- 3. Nomes, datas de nascimento e posições de todos os musicistas
SELECT nome, dataNascimento, posicao FROM `escolaMusica`.`Musicista`;

-- 4. Musicistas que tocam violino
SELECT nome FROM `escolaMusica`.`Musicista` WHERE `Instrumento_idInstrumento` = (SELECT idInstrumento FROM `escolaMusica`.`Instrumento` WHERE nome = 'Violino');

-- 5. Orquestras com mais de 5 musicistas
SELECT o.nome, COUNT(m.idMusicista) AS total_musicistas
FROM `escolaMusica`.`Orquestra` o
JOIN `escolaMusica`.`Musicista` m ON o.idOrquestra = m.Orquestra_idOrquestra
GROUP BY o.nome
HAVING total_musicistas > 5;

-- 6. Emails dos musicistas que tocam instrumentos de sopro
SELECT m.email
FROM `escolaMusica`.`Musicista` m
JOIN `escolaMusica`.`Instrumento` i ON m.Instrumento_idInstrumento = i.idInstrumento
WHERE i.tipo = 'Sopro';

-- 7. Nomes das orquestras que têm musicistas nascidos após 1990
SELECT DISTINCT o.nome
FROM `escolaMusica`.`Orquestra` o
JOIN `escolaMusica`.`Musicista` m ON o.idOrquestra = m.Orquestra_idOrquestra
WHERE m.dataNascimento > '1990-01-01';

-- 8. Tipos de instrumentos tocados na Orquestra Sinfônica
SELECT DISTINCT i.tipo
FROM `escolaMusica`.`Instrumento` i
JOIN `escolaMusica`.`Musicista` m ON i.idInstrumento = m.Instrumento_idInstrumento
JOIN `escolaMusica`.`Orquestra` o ON m.Orquestra_idOrquestra = o.idOrquestra
WHERE o.nome = 'Orquestra Sinfônica';

-- 9. Nomes dos musicistas e suas respectivas orquestras
SELECT m.nome AS musicista, o.nome AS orquestra
FROM `escolaMusica`.`Musicista` m
JOIN `escolaMusica`.`Orquestra` o ON m.Orquestra_idOrquestra = o.idOrquestra;

-- 10. Musicistas que tocam em mais de uma orquestra
SELECT m.nome
FROM `escolaMusica`.`Musicista` m
JOIN `escolaMusica`.`Orquestra` o ON m.Orquestra_idOrquestra = o.idOrquestra
GROUP BY m.nome
HAVING COUNT(DISTINCT o.idOrquestra) > 1;

-- 11. Instrumentos que não são de cordas
SELECT nome, tipo FROM `escolaMusica`.`Instrumento` WHERE tipo != 'Cordas';

-- 12. Orquestras que têm instrumentos de percussão
SELECT DISTINCT o.nome
FROM `escolaMusica`.`Orquestra` o
JOIN `escolaMusica`.`Musicista` m ON o.idOrquestra = m.Orquestra_idOrquestra
JOIN `escolaMusica`.`Instrumento` i ON m.Instrumento_idInstrumento = i.idInstrumento
WHERE i.tipo = 'Percussão';

-- 13. Musicistas que tocam na Orquestra de Jazz
SELECT m.nome
FROM `escolaMusica`.`Musicista` m
JOIN `escolaMusica`.`Orquestra` o ON m.Orquestra_idOrquestra = o.idOrquestra
WHERE o.nome = 'Orquestra de Jazz';

-- 14. Musicistas que tocam oboé
SELECT nome, posicao FROM `escolaMusica`.`Musicista` WHERE `Instrumento_idInstrumento` = (SELECT idInstrumento FROM `escolaMusica`.`Instrumento` WHERE nome = 'Oboé');

-- 15. Orquestras que têm musicistas com o sobrenome 'Silva'
SELECT DISTINCT o.nome
FROM `escolaMusica`.`Orquestra` o
JOIN `escolaMusica`.`Musicista` m ON o.idOrquestra = m.Orquestra_idOrquestra
WHERE m.nome LIKE '%Silva%';

-- 16. Nomes dos musicistas e os tipos de instrumentos que tocam
SELECT m.nome AS musicista, i.tipo AS instrumento
FROM `escolaMusica`.`Musicista` m
JOIN `escolaMusica`.`Instrumento` i ON m.Instrumento_idInstrumento = i.idInstrumento;

-- 17. Orquestras que têm mais de 3 tipos diferentes de instrumentos
SELECT o.nome
FROM `escolaMusica`.`Orquestra` o
JOIN `escolaMusica`.`Musicista` m ON o.idOrquestra = m.Orquestra_idOrquestra
JOIN `escolaMusica`.`Instrumento` i ON m.Instrumento_idInstrumento = i.idInstrumento
GROUP BY o.nome
HAVING COUNT(DISTINCT i.tipo) > 3;

-- 18. Musicistas que tocam instrumentos de metais
SELECT m.nome
FROM `escolaMusica`.`Musicista` m
JOIN `escolaMusica`.`Instrumento` i ON m.Instrumento_idInstrumento = i.idInstrumento
WHERE i.tipo = 'Metais';

-- 19. Orquestras que têm musicistas com mais de 30 anos
SELECT DISTINCT o.nome
FROM `escolaMusica`.`Orquestra` o
JOIN `escolaMusica`.`Musicista` m ON o.idOrquestra = m.Orquestra_idOrquestra
WHERE TIMESTAMPDIFF(YEAR, m.dataNascimento, CURDATE()) > 30;

-- 20. Nomes dos musicistas e suas datas de nascimento, ordenados por data de nascimento
SELECT nome, dataNascimento FROM `escolaMusica`.`Musicista` ORDER BY dataNascimento;

USE escolamusica;
SELECT * FROM orquestra;
SELECT * FROM instrumento;
SELECT * FROM musicista;
SELECT * FROM sinfonia;
SELECT * FROM origem;