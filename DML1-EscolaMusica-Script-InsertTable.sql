

-- Inserir registros na tabela Orquestra
INSERT INTO `escolaMusica`.`Orquestra` (`nome`, `descricao`)
VALUES 
('Orquestra Sinfônica', 'Orquestra principal da escola'),
('Orquestra de Câmara', 'Orquestra de pequeno porte'),
('Orquestra Juvenil', 'Orquestra para jovens músicos'),
('Orquestra de Cordas', 'Orquestra composta por instrumentos de cordas'),
('Orquestra de Sopros', 'Orquestra composta por instrumentos de sopro'),
('Orquestra de Jazz', 'Orquestra especializada em jazz'),
('Orquestra Barroca', 'Orquestra especializada em música barroca'),
('Orquestra Filarmônica', 'Orquestra filarmônica da escola'),
('Orquestra de Percussão', 'Orquestra composta por instrumentos de percussão'),
('Orquestra Experimental', 'Orquestra para experimentação musical');

-- Inserir registros na tabela Instrumento
INSERT INTO `escolaMusica`.`Instrumento` (`nome`, `tipo`)
VALUES 
('Violino', 'Cordas'),
('Viola', 'Cordas'),
('Violoncelo', 'Cordas'),
('Contrabaixo', 'Cordas'),
('Flauta', 'Sopro'),
('Clarinete', 'Sopro'),
('Oboé', 'Sopro'),
('Trompete', 'Metais'),
('Trombone', 'Metais'),
('Tímpano', 'Percussão');
-- -----------------------------------------------------
-- Schema escolaMusica
-- -----------------------------------------------------
USE `escolaMusica` ;

-- Inserir registros na tabela Musicista
INSERT INTO `escolaMusica`.`Musicista` (`nome`, `dataNascimento`, `posicao`, `email`, `Instrumento_idInstrumento`, `Orquestra_idOrquestra`, `telefone`)
VALUES 
('Ana Silva', '1990-05-12', 'Violinista', 'ana.silva@example.com', 1, 1, '123456789'),
('Bruno Souza', '1985-08-23', 'Violoncelista', 'bruno.souza@example.com', 3, 1, '987654321'),
('Carlos Pereira', '1992-11-30', 'Flautista', 'carlos.pereira@example.com', 5, 2, '456789123'),
('Daniela Costa', '1988-02-14', 'Clarinetista', 'daniela.costa@example.com', 6, 2, '789123456'),
('Eduardo Lima', '1995-07-19', 'Oboísta', 'eduardo.lima@example.com', 7, 3, '321654987'),
('Fernanda Alves', '1991-03-22', 'Trompetista', 'fernanda.alves@example.com', 8, 3, '654987321'),
('Gabriel Santos', '1987-12-05', 'Trombonista', 'gabriel.santos@example.com', 9, 4, '789456123'),
('Helena Rocha', '1993-09-17', 'Timpanista', 'helena.rocha@example.com', 10, 4, '123789456'),
('Igor Martins', '1990-01-25', 'Violinista', 'igor.martins@example.com', 1, 5, '456123789'),
('Juliana Mendes', '1989-06-11', 'Violoncelista', 'juliana.mendes@example.com', 3, 5, '789456789');

-- Inserir registros na tabela Instrumento
INSERT INTO `escolaMusica`.`Instrumento` (`nome`, `tipo`)
VALUES 
('Violino', 'Cordas'),
('Viola', 'Cordas'),
('Violoncelo', 'Cordas'),
('Contrabaixo', 'Cordas'),
('Flauta', 'Sopro'),
('Clarinete', 'Sopro'),
('Oboé', 'Sopro'),
('Trompete', 'Metais'),
('Trombone', 'Metais'),
('Tímpano', 'Percussão');
