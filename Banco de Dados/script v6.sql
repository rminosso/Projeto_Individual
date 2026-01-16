create database fitlife;

use fitlife;

create table divtreino(
idDivisao int primary key auto_increment,
tipo varchar(45),
diasSemana int,
nivel varchar(45),
descricao varchar(500),
titulo varchar(50)
);

create table usuarios(
idUsuario int primary key auto_increment,
nome varchar(45) not null,
altura decimal (3,2),
dtNasc date,
dispTreino int,
prioridade varchar(45),
nivel varchar(45),
fkTreino int,
	constraint treinoDiv
		foreign key (fkTreino) references divtreino (idDivisao),
email varchar(45),
senha varchar(45)
);

create table medidas (
idMedidas int primary key auto_increment,
fkUsuario int not null,
dtRegistro date,
peito int,
bracoEsq int,
bracoDir int,
coxa int,
panturrilha int,
cintura int,
peso decimal(5,2),
    constraint usuarioMedidas
        foreign key (fkUsuario) references usuarios(idUsuario)
);

-- 1 dia na semana FULLBODY 
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES
('equilibrado', 1, 'iniciante', 'fullbody adaptacao', 'dia unico: agachamento livre, supino reto, remada baixa, desenvolvimento com halteres e prancha.'),
('equilibrado', 1, 'intermediario', 'fullbody basico', 'dia unico: agachamento livre, terra romeno, supino reto, puxada frente e abdominal infra.'),
('superior', 1, 'intermediario', 'fullbody superior', 'dia unico: supino reto, crucifixo, puxada frente, remada curvada, elevacao lateral e rosca direta.'),
('inferior', 1, 'intermediario', 'fullbody inferior', 'dia unico: agachamento livre, leg press, mesa flexora, stiff, panturrilha em pe e prancha.');

-- 2 dias na semana AB
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES
('equilibrado', 2, 'iniciante', 'upper lower basico', 'dia a - superior: supino reto, puxada frente, desenvolvimento e rosca direta. dia b - inferior: agachamento livre, leg press 45 e panturrilha sentado.'),
('equilibrado', 2, 'intermediario', 'upper lower progressivo', 'dia a - superior: supino reto, remada curvada, puxada frente, elevacao lateral e triceps corda. dia b - inferior: agachamento livre, stiff, cadeira extensora, mesa flexora e abdominal supra.'),
('superior', 2, 'intermediario', 'upper focus', 'dia a - peito: supino reto, supino inclinado e crucifixo. dia b - bracos: elevacao lateral, rosca direta, rosca martelo e triceps testa.'),
('inferior', 2, 'intermediario', 'lower focus', 'dia a - quadriceps: agachamento livre, cadeira extensora e leg press. dia b - posterior: stiff, mesa flexora, elevacao pelvica (glute bridge) e panturrilha.');

-- 3 dias na semana PPL (PUSH, PULL, LEGS)
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES
('equilibrado', 3, 'iniciante', 'ppl iniciante', 'dia a - push: supino reto e desenvolvimento. dia b - pull: puxada frente e remada baixa. dia c - legs: agachamento livre e cadeira extensora.'),
('equilibrado', 3, 'intermediario', 'ppl classico', 'dia a - push: supino reto, supino inclinado e triceps pulley. dia b - pull: puxada frente, remada curvada e rosca direta. dia c - legs: agachamento livre, leg press 45 e mesa flexora.'),
('superior', 3, 'intermediario', 'ppl foco superiores', 'dia a - push: supino reto, crucifixo e triceps testa. dia b - pull: puxada frente, remada baixa e rosca scott. dia c - combo: elevacao lateral, desenvolvimento halteres e leg press.'),
('inferior', 3, 'intermediario', 'ppl foco inferiores', 'dia a - anterior: agachamento livre, cadeira extensora e leg press. dia b - superior: supino reto, puxada frente e remada baixa. dia c - posterior: stiff, mesa flexora e elevacao pelvica.');

-- 4 dias na semana (AB-AB)
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES
('equilibrado', 4, 'intermediario', 'upper lower frequencia', 'dia a1: supino reto e remada curvada. dia b1: agachamento livre e levantamento terra. dia a2: crucifixo, puxada frente e elevacao lateral. dia b2: leg press, mesa flexora e panturrilha.'),
('equilibrado', 4, 'avancado', 'ab-ab periodizado', 'dia a: supino reto, puxada frente e desenvolvimento militar. dia b: agachamento livre, levantamento terra e leg press 45. foco em variacao de carga.'),
('superior', 4, 'avancado', 'ab-ab upper performance', 'dia a1/a2: supino reto, supino inclinado, puxada frente e remada curvada. dia b1/b2: agachamento hack, cadeira extensora e panturrilha.'),
('inferior', 4, 'avancado', 'ab-ab lower performance', 'dia a1/a2: agachamento livre, levantamento terra e leg press 45. dia b1/b2: supino reto, puxada frente e desenvolvimento halteres.');

-- 5 dias na semana (ABCDE)
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES
('equilibrado', 5, 'intermediario', 'abcde equilibrado', 'dia a: supino reto e crucifixo. dia b: puxada frente e remada baixa. dia c: agachamento e leg press. dia d: elevacao lateral e desenvolvimento. dia e: rosca direta e triceps corda.'),
('equilibrado', 5, 'avancado', 'abcde periodizado', 'dia a - peito: supino reto, inclinado e crossover. dia b - costas: barra fixa, remada curvada e serrote. dia c - pernas: agachamento livre, stiff e extensora. dia d - ombros: desenvolvimento, elevacao lateral e posterior. dia e - bracos: rosca scott e triceps testa.'),
('superior', 5, 'avancado', 'abcde high volume upper', 'dia a - peito: supino reto e inclinado halteres. dia b - costas: puxada frente e remada cavalinho. dia c - ombros: desenvolvimento e elevacao lateral. dia d - bracos: rosca direta e triceps pulley. dia e - pernas: agachamento livre, leg press e mesa flexora.'),
('inferior', 5, 'avancado', 'abcde high volume lower', 'dia a - quadriceps: agachamento livre e cadeira extensora. dia b - superior: supino reto e remada curvada. dia c - posterior: stiff e mesa flexora. dia d - superior: desenvolvimento e rosca direta. dia e - gluteos: elevacao pelvica e panturrilha.');
