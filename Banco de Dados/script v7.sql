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

-- 1X na semana
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES
('equilibrado', 1, 'iniciante', 'Fullbody iniciante equilibrado', 'Dia único: Agachamento livre, Supino máquina, Puxada frente e Abdominal supra '),
('equilibrado', 1, 'intermediario', 'Fullbody intermediario equilibrado', 'Dia único: Agachamento livre, Levantamento terra, Supino reto, Remada curvada e Prancha'),
('equilibrado', 1, 'avancado', 'Fullbody avancado equilibrado', 'Dia único: Agachamento pesado, Supino reto, Barra fixa com peso, Desenvolvimento militar e Tríceps testa'),
('superior', 1, 'iniciante', 'Fullbody iniciante superior', 'Dia único: Supino máquina, Remada baixa, Desenvolvimento máquina, Rosca direta e Tríceps pulley'),
('superior', 1, 'intermediario', 'Fullbody intermediario superior', 'Dia único: Supino reto, Puxada frente, Desenvolvimento halteres, Elevação lateral e Bíceps/Tríceps'),
('superior', 1, 'avancado', 'Fullbody avancado superior', 'Dia único: Supino inclinado, Remada cavalinho, Desenvolvimento Arnold, Paralelas e Rosca Scott'),
('inferior', 1, 'iniciante', 'Fullbody iniciante inferior', 'Dia único: Leg press 45, Cadeira extensora, Mesa flexora, Panturrilha sentado e Abdominal'),
('inferior', 1, 'intermediario', 'Fullbody intermediario inferior', 'Dia único: Agachamento livre, Stiff, Leg press 45, Cadeira extensora e Panturrilha em pé'),
('inferior', 1, 'avancado', 'Fullbody avancado inferior', 'Dia único: Agachamento livre pesado, Terra sumô, Passada, Mesa flexora e Panturrilha burrinho');


-- 2X na semana
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES
('equilibrado', 2, 'iniciante', 'AB iniciante equilibrado', 'Dia A: Supino reto máquina, Puxada frente, Desenvolvimento máquina e Abdominal'),
('equilibrado', 2, 'iniciante', 'AB iniciante equilibrado', 'Dia B: Leg press 45, Cadeira extensora, Mesa flexora e Panturrilha'),
('equilibrado', 2, 'intermediario', 'AB intermediario equilibrado', 'Dia A: Supino reto, Remada baixa, Elevação lateral, Tríceps corda e Rosca direta'),
('equilibrado', 2, 'intermediario', 'AB intermediario equilibrado', 'Dia B: Agachamento livre, Stiff, Leg press 45, Cadeira extensora e Panturrilha'),
('equilibrado', 2, 'avancado', 'AB avancado equilibrado', 'Dia A: Supino reto (foco força), Remada curvada, Militar e Paralelas'),
('equilibrado', 2, 'avancado', 'AB avancado equilibrado', 'Dia B: Agachamento livre (foco força), Levantamento terra, Leg press e Panturrilha'),
('superior', 2, 'iniciante', 'AB iniciante superior', 'Dia A: Supino máquina, Desenvolvimento máquina e Tríceps pulley'),
('superior', 2, 'iniciante', 'AB iniciante superior', 'Dia B: Puxada frente, Remada baixa e Rosca direta'),
('superior', 2, 'intermediario', 'AB intermediario superior', 'Dia A: Supino reto, Supino inclinado, Crucifixo e Tríceps testa'),
('superior', 2, 'intermediario', 'AB intermediario superior', 'Dia B: Barra fixa, Remada curvada, Serrote e Rosca direta'),
('superior', 2, 'avancado', 'AB avancado superior', 'Dia A: Supino reto, Militar, Elevação lateral e Tríceps francês'),
('superior', 2, 'avancado', 'AB avancado superior', 'Dia B: Levantamento terra, Remada cavalinho, Facepull e Rosca Scott'),
('inferior', 2, 'iniciante', 'AB iniciante inferior', 'Dia A: Leg press 45 e Cadeira extensora'),
('inferior', 2, 'iniciante', 'AB iniciante inferior', 'Dia B: Mesa flexora e Panturrilha sentado'),
('inferior', 2, 'intermediario', 'AB intermediario inferior', 'Dia A: Agachamento livre, Leg press e Extensora'),
('inferior', 2, 'intermediario', 'AB intermediario inferior', 'Dia B: Stiff, Mesa flexora e Elevação pélvica'),
('inferior', 2, 'avancado', 'AB avancado inferior', 'Dia A: Agachamento livre e Agachamento frontal'),
('inferior', 2, 'avancado', 'AB avancado inferior', 'Dia B: Levantamento terra sumô e Passada');

-- 3X na semana
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES
('equilibrado', 3, 'iniciante', 'PPL iniciante equilibrado', 'Dia A (Push): Supino máquina, Desenvolvimento halteres e Tríceps pulley'),
('equilibrado', 3, 'iniciante', 'PPL iniciante equilibrado', 'Dia B (Pull): Puxada frente, Remada baixa e Rosca direta'),
('equilibrado', 3, 'iniciante', 'PPL iniciante equilibrado', 'Dia C (Legs): Leg press 45, Mesa flexora e Panturrilha'),
('equilibrado', 3, 'intermediario', 'PPL intermediario equilibrado', 'Dia A: Supino reto, Inclinado, Lateral e Tríceps'),
('equilibrado', 3, 'intermediario', 'PPL intermediario equilibrado', 'Dia B: Puxada frente, Remada curvada, Crucifixo inverso e Bíceps'),
('equilibrado', 3, 'intermediario', 'PPL intermediario equilibrado', 'Dia C: Agachamento livre, Stiff, Leg press e Panturrilha'),
('equilibrado', 3, 'avancado', 'PPL avancado equilibrado', 'Dia A: Supino reto pesado, Arnold press e Paralelas'),
('equilibrado', 3, 'avancado', 'PPL avancado equilibrado', 'Dia B: Barra fixa com peso, Remada cavalinho e Rosca 21'),
('equilibrado', 3, 'avancado', 'PPL avancado equilibrado', 'Dia C: Agachamento livre pesado, Terra e Passada'),
('superior', 3, 'iniciante', 'PPL iniciante superior', 'Dia A: Peito e Tríceps (Supino maq, Corda)'),
('superior', 3, 'iniciante', 'PPL iniciante superior', 'Dia B: Costas e Bíceps (Puxada, Rosca)'),
('superior', 3, 'iniciante', 'PPL iniciante superior', 'Dia C: Ombros e Trapézio (Desenv. maq, Encolhimento)'),
('superior', 3, 'intermediario', 'PPL intermediario superior', 'Dia A: Peito e Costas (Supino e Remada)'),
('superior', 3, 'intermediario', 'PPL intermediario superior', 'Dia B: Ombros e Braços (Militar e Super-série)'),
('superior', 3, 'intermediario', 'PPL intermediario superior', 'Dia C: Upper Body Pump (Crossover, Pulldown, Lateral)'),
('superior', 3, 'avancado', 'PPL avancado superior', 'Dia A: Foco Peitoral (Supinos e Crucifixos)'),
('superior', 3, 'avancado', 'PPL avancado superior', 'Dia B: Foco Dorsal (Barra fixa e Remadas)'),
('superior', 3, 'avancado', 'PPL avancado superior', 'Dia C: Foco Braços e Ombros (Isoladores)'),
('inferior', 3, 'iniciante', 'PPL iniciante inferior', 'Dia A: Foco Quadríceps (Leg press)'),
('inferior', 3, 'iniciante', 'PPL iniciante inferior', 'Dia B: Foco Posterior (Mesa flexora)'),
('inferior', 3, 'iniciante', 'PPL iniciante inferior', 'Dia C: Foco Glúteos e Panturrilh'),
('inferior', 3, 'intermediario', 'PPL intermediario inferior', 'Dia A: Agachamento e Extensora'),
('inferior', 3, 'intermediario', 'PPL intermediario inferior', 'Dia B: Stiff e Flexora'),
('inferior', 3, 'intermediario', 'PPL intermediario inferior', 'Dia C: Elevação pélvica e Abdutora'),
('inferior', 3, 'avancado', 'PPL avancado inferior', 'Dia A: Agachamento livre e Hack'),
('inferior', 3, 'avancado', 'PPL avancado inferior', 'Dia B: Levantamento Terra e Flexora vertical'),
('inferior', 3, 'avancado', 'PPL avancado inferior', 'Dia C: Agachamento Sumô e Passada');

-- 4X na semana
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES
('equilibrado', 4, 'iniciante', 'ABCD iniciante equilibrado', 'Dia A: Supino máquina e Tríceps pulley'),
('equilibrado', 4, 'iniciante', 'ABCD iniciante equilibrado', 'Dia B: Puxada frente e Rosca martelo'),
('equilibrado', 4, 'iniciante', 'ABCD iniciante equilibrado', 'Dia C: Leg press 45 e Mesa flexora'),
('equilibrado', 4, 'iniciante', 'ABCD iniciante equilibrado', 'Dia D: Desenvolvimento máquina e Abdominal'),
('equilibrado', 4, 'intermediario', 'ABCD intermediario equilibrado', 'Dia A: Peito e Tríceps (Supino reto, Testa)'),
('equilibrado', 4, 'intermediario', 'ABCD intermediario equilibrado', 'Dia B: Costas e Bíceps (Remada curvada, Scott)'),
('equilibrado', 4, 'intermediario', 'ABCD intermediario equilibrado', 'Dia C: Pernas completo (Agachamento, Stiff)'),
('equilibrado', 4, 'intermediario', 'ABCD intermediario equilibrado', 'Dia D: Ombros e Trapézio (Militar, Encolhimento)'),
('equilibrado', 4, 'avancado', 'ABCD avancado equilibrado', 'Dia A: Peito e Bíceps (Supino, Rosca direta)'),
('equilibrado', 4, 'avancado', 'ABCD avancado equilibrado', 'Dia B: Pernas completo (Agachamento, Terra)'),
('equilibrado', 4, 'avancado', 'ABCD avancado equilibrado', 'Dia C: Ombros e Tríceps (Arnold, Corda)'),
('equilibrado', 4, 'avancado', 'ABCD avancado equilibrado', 'Dia D: Costas e Posterior ombro (Barra fixa, Facepull)'),
('superior', 4, 'iniciante', 'ABCD iniciante superior', 'Dia A: Empurrar (Peito/Ombro)'),
('superior', 4, 'iniciante', 'ABCD iniciante superior', 'Dia B: Puxar (Costas/Bíceps)'),
('superior', 4, 'iniciante', 'ABCD iniciante superior', 'Dia C: Empurrar Maquinas'),
('superior', 4, 'iniciante', 'ABCD iniciante superior', 'Dia D: Puxar Maquinas'),
('superior', 4, 'intermediario', 'ABCD intermediario superior', 'Dia A: Peito foco'),
('superior', 4, 'intermediario', 'ABCD intermediario superior', 'Dia B: Costas foco'),
('superior', 4, 'intermediario', 'ABCD intermediario superior', 'Dia C: Ombros foco'),
('superior', 4, 'intermediario', 'ABCD intermediario superior', 'Dia D: Braços foco'),
('superior', 4, 'avancado', 'ABCD avancado superior', 'Dia A: Peito pesado'),
('superior', 4, 'avancado', 'ABCD avancado superior', 'Dia B: Costas pesada'),
('superior', 4, 'avancado', 'ABCD avancado superior', 'Dia C: Peito volume (Isoladores)'),
('superior', 4, 'avancado', 'ABCD avancado superior', 'Dia D: Costas volume (Isoladores)'),
('inferior', 4, 'iniciante', 'ABCD iniciante inferior', 'Dia A: Agachamento goblet'),
('inferior', 4, 'iniciante', 'ABCD iniciante inferior', 'Dia B: Mesa flexora'),
('inferior', 4, 'iniciante', 'ABCD iniciante inferior', 'Dia C: Leg press'),
('inferior', 4, 'iniciante', 'ABCD iniciante inferior', 'Dia D: Panturrilha e Abs'),
('inferior', 4, 'intermediario', 'ABCD intermediario inferior', 'Dia A: Quadríceps'),
('inferior', 4, 'intermediario', 'ABCD intermediario inferior', 'Dia B: Posterior'),
('inferior', 4, 'intermediario', 'ABCD intermediario inferior', 'Dia C: Glúteos'),
('inferior', 4, 'intermediario', 'ABCD intermediario inferior', 'Dia D: Pernas completo'),
('inferior', 4, 'avancado', 'ABCD avancado inferior', 'Dia A: Agachamento força'),
('inferior', 4, 'avancado', 'ABCD avancado inferior', 'Dia B: Terra força'),
('inferior', 4, 'avancado', 'ABCD avancado inferior', 'Dia C: Agachamento hipertrofia'),
('inferior', 4, 'avancado', 'ABCD avancado inferior', 'Dia D: Stiff hipertrofia');

-- 5X na semana
INSERT INTO divtreino (tipo, diasSemana, nivel, titulo, descricao) VALUES
('equilibrado', 5, 'iniciante', 'ABCDE iniciante equilibrado', 'Dia A: Supino halteres, Voador e Abs'),
('equilibrado', 5, 'iniciante', 'ABCDE iniciante equilibrado', 'Dia B: Puxada frente, Remada baixa e Lombar'),
('equilibrado', 5, 'iniciante', 'ABCDE iniciante equilibrado', 'Dia C: Leg press 45, Extensora e Panturrilha'),
('equilibrado', 5, 'iniciante', 'ABCDE iniciante equilibrado', 'Dia D: Desenvolvimento maq, Lateral e Abs'),
('equilibrado', 5, 'iniciante', 'ABCDE iniciante equilibrado', 'Dia E: Rosca direta e Tríceps corda'),
('equilibrado', 5, 'intermediario', 'ABCDE intermediario equilibrado', 'Dia A: Peito (Supino reto, Inclinado, Crossover)'),
('equilibrado', 5, 'intermediario', 'ABCDE intermediario equilibrado', 'Dia B: Costas (Barra fixa, Remada, Serrote)'),
('equilibrado', 5, 'intermediario', 'ABCDE intermediario equilibrado', 'Dia C: Pernas (Agachamento, Leg, Flexora'),
('equilibrado', 5, 'intermediario', 'ABCDE intermediario equilibrado', 'Dia D: Ombros (Militar, Lateral, Frontal)'),
('equilibrado', 5, 'intermediario', 'ABCDE intermediario equilibrado', 'Dia E: Braços (Direta, Scott, Testa, Corda)'),
('equilibrado', 5, 'avancado', 'ABCDE avancado equilibrado', 'Dia A: Peito (Foco Superior)'),
('equilibrado', 5, 'avancado', 'ABCDE avancado equilibrado', 'Dia B: Dorsal (Foco Largura)'),
('equilibrado', 5, 'avancado', 'ABCDE avancado equilibrado', 'Dia C: Pernas (Foco Quadríceps)'),
('equilibrado', 5, 'avancado', 'ABCDE avancado equilibrado', 'Dia D: Ombros (Foco Lateral/Posterior)'),
('equilibrado', 5, 'avancado', 'ABCDE avancado equilibrado', 'Dia E: Posterior e Glúteos'),
('superior', 5, 'iniciante', 'ABCDE iniciante superior', 'Dia A: Supino maq'),
('superior', 5, 'iniciante', 'ABCDE iniciante superior', 'Dia B: Puxada frente'),
('superior', 5, 'iniciante', 'ABCDE iniciante superior', 'Dia C: Desenvolvimento'),
('superior', 5, 'iniciante', 'ABCDE iniciante superior', 'Dia D: Rosca direta'),
('superior', 5, 'iniciante', 'ABCDE iniciante superior', 'Dia E: Tríceps pulley'),
('superior', 5, 'intermediario', 'ABCDE intermediario superior', 'Dia A: Peito pesado'),
('superior', 5, 'intermediario', 'ABCDE intermediario superior', 'Dia B: Costas pesada'),
('superior', 5, 'intermediario', 'ABCDE intermediario superior', 'Dia C: Ombros completo'),
('superior', 5, 'intermediario', 'ABCDE intermediario superior', 'Dia D: Braços superset'),
('superior', 5, 'intermediario', 'ABCDE intermediario superior', 'Dia E: Upper Weakpoints'),
('superior', 5, 'avancado', 'ABCDE avancado superior', 'Dia A: Chest Day'),
('superior', 5, 'avancado', 'ABCDE avancado superior', 'Dia B: Back Day'),
('superior', 5, 'avancado', 'ABCDE avancado superior', 'Dia C: Shoulder Day'),
('superior', 5, 'avancado', 'ABCDE avancado superior', 'Dia D: Arm Day'),
('superior', 5, 'avancado', 'ABCDE avancado superior', 'Dia E: Chest/Back Pump'),
('inferior', 5, 'iniciante', 'ABCDE iniciante inferior', 'Dia A: Agachamento livre'),
('inferior', 5, 'iniciante', 'ABCDE iniciante inferior', 'Dia B: Mesa flexora'),
('inferior', 5, 'iniciante', 'ABCDE iniciante inferior', 'Dia C: Elevação pélvica'),
('inferior', 5, 'iniciante', 'ABCDE iniciante inferior', 'Dia D: Panturrilha'),
('inferior', 5, 'iniciante', 'ABCDE iniciante inferior', 'Dia E: Cadeira adutora'),
('inferior', 5, 'intermediario', 'ABCDE intermediario inferior', 'Dia A: Quadríceps'),
('inferior', 5, 'intermediario', 'ABCDE intermediario inferior', 'Dia B: Posterior'),
('inferior', 5, 'intermediario', 'ABCDE intermediario inferior', 'Dia C: Glúteos'),
('inferior', 5, 'intermediario', 'ABCDE intermediario inferior', 'Dia D: Panturrilha/Abs'),
('inferior', 5, 'intermediario', 'ABCDE intermediario inferior', 'Dia E: Perna completa'),
('inferior', 5, 'avancado', 'ABCDE avancado inferior', 'Dia A: Quadríceps'),
('inferior', 5, 'avancado', 'ABCDE avancado inferior', 'Dia B: Posterior'),
('inferior', 5, 'avancado', 'ABCDE avancado inferior', 'Dia C: Glúteos'),
('inferior', 5, 'avancado', 'ABCDE avancado inferior', 'Dia D: Quadríceps'),
('inferior', 5, 'avancado', 'ABCDE avancado inferior', 'Dia E: Posterior');

