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

-- Limpando registros antigos para evitar duplicidade (Opcional)
-- TRUNCATE TABLE divtreino;

-- 1 DIA NA SEMANA (Fullbody) 
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES 
('equilibrado', 1, 'Iniciante', 'Fullbody Adaptação', 'Treino Único: Agachamento Livre, Supino Reto, Remada Curvada, Desenvolvimento Militar e Prancha.');

-- 2 DIAS NA SEMANA (Upper/Lower) 
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES 
('equilibrado', 2, 'Iniciante', 'Upper/Lower Básico', 'Dia A: Supino, Puxada, Desenvolvimento. Dia B: Agachamento, Leg Press, Stiff e Panturrilha.'),
('superior', 2, 'Intermediário', 'Upper Focus', 'Dia A (Peito/Costas): Supino e Remada. Dia B (Braços): Rosca Scott, Tríceps Corda e Martelo.'),
('inferior', 2, 'Intermediário', 'Lower Focus', 'Dia A (Pernas): Agachamento e Afundo. Dia B (Manutenção): Supino e Puxada Frente.');

-- 3 DIAS NA SEMANA (PPL - Push/Pull/Legs)
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES 
('equilibrado', 3, 'Iniciante', 'PPL iniciante', 'Push: Supino e Desenv. Pull: Puxada e Remada. Legs: Agachamento e Extensora.'),
('superior', 3, 'Intermediário', 'PPL Superior Focus', 'A: Peito/Tríceps. B: Costas/Bíceps. C: Ombros e estímulo de Pernas.'),
('inferior', 3, 'Intermediário', 'PPL Inferior Focus', 'A: Quadríceps. B: Superior Completo. C: Posterior e Glúteos.');

-- 4 DIAS NA SEMANA (AB-AB)
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES 
('equilibrado', 4, 'Intermediário', 'Upper/Lower Frequência', 'A1/B1 foco em força (poucas reps). A2/B2 foco em hipertrofia (mais reps).'),
('superior', 4, 'Avançado', 'AB-AB Upper Performance', 'A1/A2 com alto volume de Peito e Costas. B1/B2 Manutenção rápida de membros inferiores.'),
('inferior', 4, 'Avançado', 'AB-AB Lower Performance', 'A1/A2 com foco em força no Agachamento e Terra. B1/B2 Estímulo de membros superiores.');

-- 5 DIAS NA SEMANA (ABCDE) - Foco em Avançados
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES 
('equilibrado', 5, 'Intermediário', 'ABCDE Equilibrado', 'A: Peito | B: Costas | C: Pernas | D: Ombros | E: Braços. Volume moderado por dia.'),
('superior', 5, 'Avançado', 'ABCDE High Volume Upper', 'Divisão focada em isolamento total de grupos superiores. Pernas treinadas 1x na semana com alta intensidade.'),
('inferior', 5, 'Avançado', 'ABCDE High Volume Lower', 'A: Quadríceps | B: Peito/Costas | C: Posterior | D: Ombros/Braços | E: Glúteos e Panturrilha.');


