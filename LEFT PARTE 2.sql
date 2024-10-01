CREATE DATABASE SOUNDWAVE; 
CREATE TABLE ARTISTAS(ID_ARTISTA INT PRIMARY KEY, NOME_ARTISTA VARCHAR (30));
CREATE TABLE ALBUNS ( ID_ALBUM INT PRIMARY KEY, TITULO_ALBUM  VARCHAR (30), ID_ARTISTA INT,FOREIGN KEY (id_artista) REFERENCES artistas(id_artista));
INSERT INTO artistas (id, nome)
VALUES
(1, 'The Beatles'),
(2, 'Pink Floyd'),
(3, 'Queen');
INSERT INTO albuns (id, titulo, artista_id)
VALUES
(1, 'Abbey Road', 1),
(2, 'The Wall', 2),
(3, 'A Night at the Opera', 3),
(4, 'Álbum Sem Artista', NULL);
SELECT albuns.titulo AS titulo_album, artistas.nome AS nome_artista
FROM albuns
LEFT JOIN artistas ON albuns.artista_id = artistas.id;


CREATE DATABASE LOJA_RELOGIOS;
CREATE TABLE FABRICANTES ( ID_FABRICANTE INT PRIMARY KEY, NOME_FABRICANTE VARCHAR (30));
CREATE TABLE RELOJOS ( ID_RELOGIO INT PRIMARY KEY, MODELO_RELOGIO VARCHAR (30), ID_FABRICANTE INT,FOREIGN KEY (id_fabricante) REFERENCES fabricantes(id_fabricante));
INSERT INTO fabricantes (id, nome)
VALUES
(1, 'Rolex'),
(2, 'Omega'),
(3, 'Tag Heuer');
INSERT INTO relogios (id, modelo, fabricante_id)
VALUES
(1, 'Submariner', 1),
(2, 'Speedmaster', 2),
(3, 'Carrera', 3),
(4, 'Relógio Sem Fabricante', NULL);
SELECT relogios.modelo AS modelo_relogio, fabricantes.nome AS nome_fabricante
FROM relogios
LEFT JOIN fabricantes ON relogios.fabricante_id = fabricantes.id;

CREATE DATABASE NOVACASA;
CREATE TABLE PROPRIETARIOS( ID_PRORIETARIO INT PRIMARY KEY, NOME_PROPRIETARIO VARCHAR (20));
CREATE TABLE IMOVEIS ( ID_MOVEIS INT PRIMARY KEY, ENDERECO VARCHAR (40), ID_PROPRIETARIO INT,FOREIGN KEY (id_proprietario) REFERENCES proprietarios(id_proprietario));
INSERT INTO proprietarios (id, nome)
VALUES
(1, 'João Silva'),
(2, 'Maria Oliveira'),
(3, 'Carlos Souza');
INSERT INTO imoveis (id, endereco, proprietario_id)
VALUES
(1, 'Rua das Flores, 123', 1),
(2, 'Av. Paulista, 456', 2),
(3, 'Rua do Mercado, 789', 3),
(4, 'Rua Sem Dono, 101', NULL);
SELECT imoveis.endereco AS endereco_imovel, proprietarios.nome AS nome_proprietario
FROM imoveis
LEFT JOIN proprietarios ON imoveis.proprietario_id = proprietarios.id;

CREATE DATABASE TECHEDU;
CREATE TABLE CURSOS(ID_CURSO INT PRIMARY KEY, NOME_CURSO VARCHAR (30));
CREATE TABLE ALUNOS ( ID_ALUNO INT PRIMARY KEY, NOME_ALUNO VARCHAR (30), ID_CURSO INT,FOREIGN KEY (id_curso) REFERENCES cursos(id_curso));
INSERT INTO cursos (id, nome)
VALUES
(1, 'Informática'),
(2, 'Eletrotécnica'),
(3, 'Mecânica');
INSERT INTO alunos (id, nome, curso_id)
VALUES
(1, 'Ana Souza', 1),
(2, 'João Lima', 2),
(3, 'Carla Ribeiro', 3),
(4, 'Marcos Oliveira', NULL);
SELECT alunos.nome AS nome_aluno, cursos.nome AS nome_curso
FROM alunos
LEFT JOIN cursos ON alunos.curso_id = cursos.id;

CREATE DATABASE UNITECH;
CREATE TABLE  DEPARTAMENTOS( ID_DEPARTAMENTOS INT PRIMARY KEY, NOME_DEPARTAMENTO VARCHAR (30));
CREATE TABLE PROFFESSORES ( ID_PROFESSOR INT PRIMARY KEY, NOME_PROFESSOR VARCHAR (30), ID_DEPARTAMENTO INT, FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento));
 INSERT INTO departamentos (id, nome)
VALUES
(1, 'Ciências Exatas'),
(2, 'Ciências Humanas'),
(3, 'Engenharia');
INSERT INTO professores (id, nome, departamento_id)
VALUES
(1, 'Dr. Pedro Lima', 1),
(2, 'Dra. Maria Soares', 2),
(3, 'Dr. João Ferreira', NULL),
(4, 'Dra. Ana Figueira', 3);
SELECT professores.nome AS nome_professor, departamentos.nome AS nome_departamento
FROM professores
LEFT JOIN departamentos ON professores.departamento_id = departamentos.id;

CREATE DATABASE HEALTHCARE;
CREATE TABLE DEPARTAMENTO ( ID_DEPARTAMENTO INT PRIMARY KEY, NOME_DEPARTAMENTO VARCHAR(30));
CREATE TABLE MEDICOS ( ID_MEDICO INT PRIMARY KEY, NOME_MEDICO VARCHAR (30), ID_DEPARTAMENTO INT, FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento));
INSERT INTO Departamentos (id, nome)
VALUES
  (1, 'Cardiologia'),
  (2, 'Neurologia'),
  (3, 'Ortopedia');

INSERT INTO Medicos (id, nome, id_departamento)
VALUES
  (1, 'Dr. Carlos Mendes', 1),
  (2, 'Dra. Julia Amaral', 2),
  (3, 'Dr. Paulo Castro', NULL),
  (4, 'Dra. Marta Souza', 3);
  SELECT m.nome AS nome_medico, d.nome AS nome_departamento
FROM Medicos m
LEFT JOIN Departamentos d ON m.id_departamento = d.id;