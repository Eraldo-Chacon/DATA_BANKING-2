
CREATE DATABASE SGEventos;

USE SGEventos;

CREATE TABLE pessoa (
id_pessoa VARCHAR(8) PRIMARY KEY,
nome CHAR(200),
email VARCHAR(200),
telefone DECIMAL(11)
);

CREATE TABLE participantes (
id_participantes VARCHAR(11) PRIMARY KEY,
categoria VARCHAR(200),
id_pessoa VARCHAR(8),
FOREIGN KEY(id_pessoa) REFERENCES pessoa (id_pessoa)
);

CREATE TABLE organizadores (
id_organizadores INT auto_increment PRIMARY KEY,
nome CHAR(200),
contato VARCHAR(200),
cerimonial CHAR(100),
id_pessoa VARCHAR(8),
FOREIGN KEY(id_pessoa) REFERENCES pessoa (id_pessoa)
);

CREATE TABLE evento (
id_evento VARCHAR(8) PRIMARY KEY,
nome_evento CHAR(200),
descricao BLOB(400),
data_inicio DATETIME,
data_fim DATETIME,
endereco BLOB(400),
id_organizadores INT,
FOREIGN KEY(id_organizadores) REFERENCES organizadores (id_organizadores)
);


CREATE TABLE inscricoes (
id_inscricoes VARCHAR(8) PRIMARY KEY,
data_inscricao DATETIME,
status_pagamento CHAR(100),
tipo_reserva VARCHAR(100),
id_participantes VARCHAR(11),
id_evento VARCHAR(8),
FOREIGN KEY(id_participantes) REFERENCES participantes (id_participantes),
FOREIGN KEY(id_evento) REFERENCES evento (id_evento)
);

INSERT INTO pessoa (id_pessoa, nome, email, telefone) VALUES
('P0000001', 'Eraldo Alves Chacon', 'eraldochacon@gmail.com', 61994247482),
('P0000002', 'Bruno Almeida Santos', 'bruno.santos2@yahoo.com', 21976543210),
('P0000003', 'Carla Souza Lima', 'carla.lima3@outlook.com', 31965432109),
('P0000004', 'Diego Ferreira Costa', 'diego.costa4@gmail.com', 41954321098),
('P0000005', 'Terezinha Alves Camargos', 'terezinha@hotmail.com', 61943210987),
('P0000006', 'Amancio Joaquim Chacon', 'amanciochacon@gmail.com', 61932109876),
('P0000007', 'Gabriela Rocha Mendes', 'gabriela.mendes7@yahoo.com', 71921098765),
('P0000008', 'Henrique Lima Castro', 'henrique.castro8@outlook.com', 81910987654),
('P0000009', 'Isabela Santos Cruz', 'isabela.cruz9@gmail.com', 91909876543),
('P0000010', 'João Pedro Almeida', 'joao.almeida10@hotmail.com', 11998765432),
('P0000011', 'Terezinha Alves Camargos', 'terezinha@gmail.com', 61987654321),
('P0000012', 'Lucas Oliveira Lima', 'lucas.lima12@yahoo.com', 31976543210),
('P0000013', 'Marina Costa Silva', 'marina.silva13@outlook.com', 41965432109),
('P0000014', 'Natália Mendes Santos', 'natalia.santos14@gmail.com', 51954321098),
('P0000015', 'Otávio Pereira Rocha', 'otavio.rocha15@hotmail.com', 61943210987),
('P0000016', 'Patrícia Almeida Cruz', 'patricia.cruz16@gmail.com', 71932109876),
('P0000017', 'Rafael Lima Ferreira', 'rafael.ferreira17@yahoo.com', 81921098765),
('P0000018', 'Sofia Castro Mendes', 'sofia.mendes18@outlook.com', 91910987654),
('P0000019', 'Thiago Santos Oliveira', 'thiago.oliveira19@gmail.com', 11909876543),
('P0000020', 'Vanessa Souza Costa', 'vanessa.costa20@hotmail.com', 21998765432),
('P0000021', 'André Gomes Silva', 'andre.silva21@gmail.com', 31987654321),
('P0000022', 'Beatriz Lima Almeida', 'beatriz.almeida22@yahoo.com', 41976543210),
('P0000023', 'César Rocha Santos', 'cesar.santos23@outlook.com', 51965432109),
('P0000024', 'Daniela Mendes Lima', 'daniela.lima24@gmail.com', 61954321098),
('P0000025', 'Eduardo Ferreira Cruz', 'eduardo.cruz25@hotmail.com', 71943210987),
('P0000026', 'Fernanda Oliveira Costa', 'fernanda.costa26@gmail.com', 81932109876),
('P0000027', 'Gustavo Almeida Souza', 'gustavo.souza27@yahoo.com', 91921098765),
('P0000028', 'Helena Santos Mendes', 'helena.mendes28@outlook.com', 11910987654),
('P0000029', 'Igor Lima Ferreira', 'igor.ferreira29@gmail.com', 21909876543),
('P0000030', 'Juliana Castro Silva', 'juliana.silva30@hotmail.com', 31998765432),
('P0000031', 'Leonardo Rocha Lima', 'leonardo.lima31@gmail.com', 41987654321),
('P0000032', 'Mariana Mendes Santos', 'mariana.santos32@yahoo.com', 51976543210),
('P0000033', 'Nicolas Oliveira Cruz', 'nicolas.cruz33@outlook.com', 61965432109),
('P0000034', 'Priscila Ferreira Costa', 'priscila.costa34@gmail.com', 71954321098),
('P0000035', 'Renato Almeida Souza', 'renato.souza35@hotmail.com', 81943210987),
('P0000036', 'Sabrina Lima Mendes', 'sabrina.mendes36@gmail.com', 91932109876),
('P0000037', 'Tiago Santos Ferreira', 'tiago.ferreira37@yahoo.com', 11921098765),
('P0000038', 'Valentina Castro Silva', 'valentina.silva38@outlook.com', 21910987654),
('P0000039', 'Vinícius Oliveira Lima', 'vinicius.lima39@gmail.com', 31909876543),
('P0000040', 'Yasmin Souza Mendes', 'yasmin.mendes40@hotmail.com', 41998765432);

INSERT INTO participantes (id_participantes, categoria, id_pessoa) VALUES
('PART000001', 'Cliente', 'P0000001'),
('PART000002', 'Vendedor', 'P0000002'),
('PART000003', 'Parceiro', 'P0000003'),
('PART000004', 'Fornecedor', 'P0000004'),
('PART000005', 'Cliente', 'P0000005'),
('PART000006', 'Vendedor', 'P0000006'),
('PART000007', 'Parceiro', 'P0000007'),
('PART000008', 'Fornecedor', 'P0000008'),
('PART000009', 'Cliente', 'P0000009'),
('PART000010', 'Vendedor', 'P0000010'),
('PART000011', 'Parceiro', 'P0000011'),
('PART000012', 'Fornecedor', 'P0000012'),
('PART000013', 'Cliente', 'P0000013'),
('PART000014', 'Vendedor', 'P0000014'),
('PART000015', 'Parceiro', 'P0000015'),
('PART000016', 'Fornecedor', 'P0000016'),
('PART000017', 'Cliente', 'P0000017'),
('PART000018', 'Vendedor', 'P0000018'),
('PART000019', 'Parceiro', 'P0000019'),
('PART000020', 'Fornecedor', 'P0000020'),
('PART000021', 'Cliente', 'P0000021'),
('PART000022', 'Vendedor', 'P0000022'),
('PART000023', 'Parceiro', 'P0000023'),
('PART000024', 'Fornecedor', 'P0000024'),
('PART000025', 'Cliente', 'P0000025'),
('PART000026', 'Vendedor', 'P0000026'),
('PART000027', 'Parceiro', 'P0000027'),
('PART000028', 'Fornecedor', 'P0000028'),
('PART000029', 'Cliente', 'P0000029'),
('PART000030', 'Vendedor', 'P0000030'),
('PART000031', 'Parceiro', 'P0000031'),
('PART000032', 'Fornecedor', 'P0000032'),
('PART000033', 'Cliente', 'P0000033'),
('PART000034', 'Vendedor', 'P0000034'),
('PART000035', 'Parceiro', 'P0000035'),
('PART000036', 'Fornecedor', 'P0000036'),
('PART000037', 'Cliente', 'P0000037'),
('PART000038', 'Vendedor', 'P0000038'),
('PART000039', 'Parceiro', 'P0000039'),
('PART000040', 'Fornecedor', 'P0000040');

INSERT INTO organizadores (nome, contato, cerimonial, id_pessoa) VALUES
('Eraldo Alves Chacob', 'eraldochacon@gmail.com', 'Chacon3d', 'P0000001'),
('Bruno Almeida Santos', 'bruno.santos2@yahoo.com', 'Eventos Estrela', 'P0000002'),
('Carla Souza Lima', 'carla.lima3@outlook.com', 'Festas do Sul', 'P0000003'),
('Diego Ferreira Costa', 'diego.costa4@gmail.com', 'Cerimonial Lua', 'P0000004'),
('Elisa Mendes Oliveira', 'elisa.oliveira5@hotmail.com', 'Eventos Brilhantes', 'P0000005'),
('Felipe Gomes Pereira', 'felipe.pereira6@gmail.com', 'Celebrações Top', 'P0000006'),
('Gabriela Rocha Mendes', 'gabriela.mendes7@yahoo.com', 'Festas Encantadas', 'P0000007'),
('Henrique Lima Castro', 'henrique.castro8@outlook.com', 'Cerimonial Aurora', 'P0000008'),
('Isabela Santos Cruz', 'isabela.cruz9@gmail.com', 'Eventos Perfeitos', 'P0000009'),
('João Pedro Almeida', 'joao.almeida10@hotmail.com', 'Festas Premium', 'P0000010'),
('Karla Ferreira Souza', 'karla.souza11@gmail.com', 'Cerimonial Sonhos', 'P0000011'),
('Lucas Oliveira Lima', 'lucas.lima12@yahoo.com', 'Eventos do Campo', 'P0000012'),
('Marina Costa Silva', 'marina.silva13@outlook.com', 'Festas Luxo', 'P0000013'),
('Natália Mendes Santos', 'natalia.santos14@gmail.com', 'Cerimonial Harmonia', 'P0000014'),
('Otávio Pereira Rocha', 'otavio.rocha15@hotmail.com', 'Eventos Modernos', 'P0000015'),
('Patrícia Almeida Cruz', 'patricia.cruz16@gmail.com', 'Festas Estilo', 'P0000016'),
('Rafael Lima Ferreira', 'rafael.ferreira17@yahoo.com', 'Cerimonial Elegância', 'P0000017'),
('Sofia Castro Mendes', 'sofia.mendes18@outlook.com', 'Eventos Inesquecíveis', 'P0000018'),
('Thiago Santos Oliveira', 'thiago.oliveira19@gmail.com', 'Festas Vibrantes', 'P0000019'),
('Vanessa Souza Costa', 'vanessa.costa20@hotmail.com', 'Cerimonial Magia', 'P0000020'),
('André Gomes Silva', 'andre.silva21@gmail.com', 'Eventos Clássicos', 'P0000021'),
('Beatriz Lima Almeida', 'beatriz.almeida22@yahoo.com', 'Festas Românticas', 'P0000022'),
('César Rocha Santos', 'cesar.santos23@outlook.com', 'Cerimonial Ouro', 'P0000023'),
('Daniela Mendes Lima', 'daniela.lima24@gmail.com', 'Eventos Criativos', 'P0000024'),
('Eduardo Ferreira Cruz', 'eduardo.cruz25@hotmail.com', 'Festas Dinâmicas', 'P0000025'),
('Fernanda Oliveira Costa', 'fernanda.costa26@gmail.com', 'Cerimonial Primavera', 'P0000026'),
('Gustavo Almeida Souza', 'gustavo.souza27@yahoo.com', 'Eventos Sofisticados', 'P0000027'),
('Helena Santos Mendes', 'helena.mendes28@outlook.com', 'Festas Memoráveis', 'P0000028'),
('Igor Lima Ferreira', 'igor.ferreira29@gmail.com', 'Cerimonial Estrelar', 'P0000029'),
('Juliana Castro Silva', 'juliana.silva30@hotmail.com', 'Eventos Únicos', 'P0000030'),
('Leonardo Rocha Lima', 'leonardo.lima31@gmail.com', 'Festas Grandiosas', 'P0000031'),
('Mariana Mendes Santos', 'mariana.santos32@yahoo.com', 'Cerimonial Encanto', 'P0000032'),
('Nicolas Oliveira Cruz', 'nicolas.cruz33@outlook.com', 'Eventos Festivos', 'P0000033'),
('Priscila Ferreira Costa', 'priscila.costa34@gmail.com', 'Festas Inspiradoras', 'P0000034'),
('Renato Almeida Souza', 'renato.souza35@hotmail.com', 'Cerimonial Luz', 'P0000035'),
('Sabrina Lima Mendes', 'sabrina.mendes36@gmail.com', 'Eventos Chiques', 'P0000036'),
('Tiago Santos Ferreira', 'tiago.ferreira37@yahoo.com', 'Festas Autênticas', 'P0000037'),
('Valentina Castro Silva', 'valentina.silva38@outlook.com', 'Cerimonial Glamour', 'P0000038'),
('Vinícius Oliveira Lima', 'vinicius.lima39@gmail.com', 'Eventos Épicos', 'P0000039'),
('Yasmin Souza Mendes', 'yasmin.mendes40@hotmail.com', 'Festas Fantásticas', 'P0000040');

INSERT INTO evento (id_evento, nome_evento, descricao, data_inicio, data_fim, endereco, id_organizadores) VALUES
('EV000001', 'Feira de Tecnologia 2025', 'Evento sobre inovação tecnológica', '2025-06-01 09:00:00', '2025-06-03 18:00:00', 'Rua das Flores, 123, São Paulo, SP', 1),
('EV000002', 'Congresso de Educação', 'Discussões sobre ensino moderno', '2025-07-10 08:00:00', '2025-07-12 17:00:00', 'Av. Paulista, 456, São Paulo, SP', 2),
('EV000003', 'Festival de Música', 'Shows de artistas nacionais', '2025-08-15 14:00:00', '2025-08-16 23:00:00', 'Praça da Liberdade, 789, Belo Horizonte, MG', 3),
('EV000004', 'Seminário de Negócios', 'Networking e palestras', '2025-09-20 09:00:00', '2025-09-21 18:00:00', 'Rua XV de Novembro, 101, Curitiba, PR', 4),
('EV000005', 'Exposição de Arte', 'Mostra de artistas contemporâneos', '2025-10-05 10:00:00', '2025-10-10 20:00:00', 'Rua das Artes, 234, Rio de Janeiro, RJ', 5),
('EV000006', 'Workshop de Marketing', 'Estratégias digitais', '2025-06-15 09:00:00', '2025-06-16 17:00:00', 'Av. Atlântica, 567, Recife, PE', 6),
('EV000007', 'Feira de Gastronomia', 'Culinária regional', '2025-07-25 12:00:00', '2025-07-27 22:00:00', 'Rua do Sabor, 890, Salvador, BA', 7),
('EV000008', 'Congresso Médico', 'Avanços na saúde', '2025-08-01 08:00:00', '2025-08-03 18:00:00', 'Av. Beira-Mar, 123, Fortaleza, CE', 8),
('EV000009', 'Festival de Cinema', 'Exibição de filmes independentes', '2025-09-10 14:00:00', '2025-09-15 22:00:00', 'Rua do Cinema, 456, Porto Alegre, RS', 9),
('EV000010', 'Seminário de TI', 'Tecnologias emergentes', '2025-10-20 09:00:00', '2025-10-22 17:00:00', 'Rua da Inovação, 789, Brasília, DF', 10),
('EV000011', 'Feira de Livros', 'Lançamentos literários', '2025-06-05 10:00:00', '2025-06-07 20:00:00', 'Rua das Letras, 101, São Paulo, SP', 11),
('EV000012', 'Workshop de Design', 'Tendências em UX/UI', '2025-07-15 09:00:00', '2025-07-16 17:00:00', 'Av. Copacabana, 234, Rio de Janeiro, RJ', 12),
('EV000013', 'Congresso de Direito', 'Atualizações jurídicas', '2025-08-20 08:00:00', '2025-08-22 18:00:00', 'Rua da Justiça, 567, Belo Horizonte, MG', 13),
('EV000014', 'Feira de Startups', 'Inovação e empreendedorismo', '2025-09-25 09:00:00', '2025-09-27 18:00:00', 'Av. do Futuro, 890, Recife, PE', 14),
('EV000015', 'Festival de Dança', 'Apresentações de dança', '2025-10-10 14:00:00', '2025-10-12 22:00:00', 'Rua do Ritmo, 123, Salvador, BA', 15),
('EV000016', 'Seminário de Sustentabilidade', 'Práticas ecológicas', '2025-06-20 09:00:00', '2025-06-21 17:00:00', 'Rua Verde, 456, Curitiba, PR', 16),
('EV000017', 'Feira de Moda', 'Tendências de 2025', '2025-07-05 10:00:00', '2025-07-07 20:00:00', 'Av. da Moda, 789, São Paulo, SP', 17),
('EV000018', 'Congresso de Engenharia', 'Inovações tecnológicas', '2025-08-10 08:00:00', '2025-08-12 18:00:00', 'Rua da Engenharia, 101, Porto Alegre, RS', 18),
('EV000019', 'Festival de Teatro', 'Peças de teatro nacionais', '2025-09-15 14:00:00', '2025-09-20 22:00:00', 'Rua do Palco, 234, Rio de Janeiro, RJ', 19),
('EV000020', 'Workshop de Liderança', 'Habilidades de gestão', '2025-10-25 09:00:00', '2025-10-26 17:00:00', 'Av. Liderança, 567, Brasília, DF', 20),
('EV000021', 'Feira de Saúde', 'Bem-estar e prevenção', '2025-06-10 10:00:00', '2025-06-12 20:00:00', 'Rua da Saúde, 890, Fortaleza, CE', 21),
('EV000022', 'Seminário de Finanças', 'Gestão financeira', '2025-07-20 09:00:00', '2025-07-21 17:00:00', 'Av. Financeira, 123, São Paulo, SP', 22),
('EV000023', 'Festival de Jogos', 'Competições de e-sports', '2025-08-25 14:00:00', '2025-08-27 22:00:00', 'Rua dos Jogos, 456, Belo Horizonte, MG', 23),
('EV000024', 'Congresso de Arquitetura', 'Tendências urbanas', '2025-09-05 08:00:00', '2025-09-07 18:00:00', 'Av. Urbana, 789, Curitiba, PR', 24),
('EV000025', 'Feira de Turismo', 'Destinos nacionais', '2025-10-15 10:00:00', '2025-10-17 20:00:00', 'Rua das Viagens, 101, Recife, PE', 25),
('EV000026', 'Workshop de Fotografia', 'Técnicas fotográficas', '2025-06-25 09:00:00', '2025-06-26 17:00:00', 'Rua da Luz, 234, Salvador, BA', 26),
('EV000027', 'Festival de Literatura', 'Encontros com autores', '2025-07-30 14:00:00', '2025-08-01 22:00:00', 'Av. das Letras, 567, Porto Alegre, RS', 27),
('EV000028', 'Seminário de RH', 'Gestão de pessoas', '2025-08-05 09:00:00', '2025-08-06 17:00:00', 'Rua dos Talentos, 890, São Paulo, SP', 28),
('EV000029', 'Feira de Tecnologia Verde', 'Soluções sustentáveis', '2025-09-30 10:00:00', '2025-10-02 20:00:00', 'Av. Sustentável, 123, Rio de Janeiro, RJ', 29),
('EV000030', 'Congresso de Marketing', 'Estratégias de mercado', '2025-10-05 08:00:00', '2025-10-07 18:00:00', 'Rua do Mercado, 456, Brasília, DF', 30),
('EV000031', 'Festival de Cultura', 'Tradições brasileiras', '2025-06-30 14:00:00', '2025-07-02 22:00:00', 'Rua da Cultura, 789, Fortaleza, CE', 31),
('EV000032', 'Workshop de Inovação', 'Novas ideias', '2025-07-12 09:00:00', '2025-07-13 17:00:00', 'Av. da Criatividade, 101, Belo Horizonte, MG', 32),
('EV000033', 'Feira de Carreira', 'Oportunidades de emprego', '2025-08-15 10:00:00', '2025-08-17 20:00:00', 'Rua do Trabalho, 234, São Paulo, SP', 33),
('EV000034', 'Seminário de Educação Infantil', 'Metodologias de ensino', '2025-09-12 09:00:00', '2025-09-13 17:00:00', 'Av. da Educação, 567, Curitiba, PR', 34),
('EV000035', 'Festival de Ciência', 'Experimentos científicos', '2025-10-20 14:00:00', '2025-10-22 22:00:00', 'Rua da Ciência, 890, Recife, PE', 35),
('EV000036', 'Congresso de Psicologia', 'Saúde mental', '2025-06-12 08:00:00', '2025-06-14 18:00:00', 'Av. da Mente, 123, Salvador, BA', 36),
('EV000037', 'Feira de Artesanato', 'Produtos artesanais', '2025-07-17 10:00:00', '2025-07-19 20:00:00', 'Rua do Artesanato, 456, Porto Alegre, RS', 37),
('EV000038', 'Workshop de Vendas', 'Técnicas de negociação', '2025-08-22 09:00:00', '2025-08-23 17:00:00', 'Av. das Vendas, 789, São Paulo, SP', 38),
('EV000039', 'Festival de Esportes', 'Competições esportivas', '2025-09-17 14:00:00', '2025-09-19 22:00:00', 'Rua do Esporte, 101, Rio de Janeiro, RJ', 39),
('EV000040', 'Seminário de Logística', 'Gestão de cadeias', '2025-10-27 09:00:00', '2025-10-28 17:00:00', 'Av. da Logística, 234, Brasília, DF', 40);

INSERT INTO inscricoes (id_inscricoes, data_inscricao, status_pagamento, tipo_reserva, id_participantes, id_evento) VALUES
('INS00001', '2025-05-15 10:00:00', 'Pago', 'VIP', 'PART000001', 'EV000001'),
('INS00002', '2025-06-20 14:00:00', 'Pendente', 'Padrão', 'PART000002', 'EV000002'),
('INS00003', '2025-07-25 09:00:00', 'Cancelado', 'Estudante', 'PART000003', 'EV000003'),
('INS00004', '2025-08-30 11:00:00', 'Pago', 'VIP', 'PART000004', 'EV000004'),
('INS00005', '2025-09-15 15:00:00', 'Pendente', 'Padrão', 'PART000005', 'EV000005'),
('INS00006', '2025-05-30 12:00:00', 'Pago', 'Estudante', 'PART000006', 'EV000006'),
('INS00007', '2025-07-05 10:00:00', 'Cancelado', 'VIP', 'PART000007', 'EV000007'),
('INS00008', '2025-07-15 14:00:00', 'Pago', 'Padrão', 'PART000008', 'EV000008'),
('INS00009', '2025-08-25 09:00:00', 'Pendente', 'Estudante', 'PART000009', 'EV000009'),
('INS00010', '2025-10-01 11:00:00', 'Pago', 'VIP', 'PART000010', 'EV000010'),
('INS00011', '2025-05-20 15:00:00', 'Cancelado', 'Padrão', 'PART000011', 'EV000011'),
('INS00012', '2025-06-25 10:00:00', 'Pago', 'Estudante', 'PART000012', 'EV000012'),
('INS00013', '2025-08-01 12:00:00', 'Pendente', 'VIP', 'PART000013', 'EV000013'),
('INS00014', '2025-09-10 14:00:00', 'Pago', 'Padrão', 'PART000014', 'EV000014'),
('INS00015', '2025-09-25 09:00:00', 'Cancelado', 'Estudante', 'PART000015', 'EV000015'),
('INS00016', '2025-06-01 11:00:00', 'Pago', 'VIP', 'PART000016', 'EV000016'),
('INS00017', '2025-06-15 15:00:00', 'Pendente', 'Padrão', 'PART000017', 'EV000017'),
('INS00018', '2025-08-05 10:00:00', 'Pago', 'Estudante', 'PART000018', 'EV000018'),
('INS00019', '2025-09-01 12:00:00', 'Cancelado', 'VIP', 'PART000019', 'EV000019'),
('INS00020', '2025-10-10 14:00:00', 'Pago', 'Padrão', 'PART000020', 'EV000020'),
('INS00021', '2025-05-25 09:00:00', 'Pendente', 'Estudante', 'PART000021', 'EV000021'),
('INS00022', '2025-07-01 11:00:00', 'Pago', 'VIP', 'PART000022', 'EV000022'),
('INS00023', '2025-08-10 15:00:00', 'Cancelado', 'Padrão', 'PART000023', 'EV000023'),
('INS00024', '2025-08-20 10:00:00', 'Pago', 'Estudante', 'PART000024', 'EV000024'),
('INS00025', '2025-09-30 12:00:00', 'Pendente', 'VIP', 'PART000025', 'EV000025'),
('INS00026', '2025-06-10 14:00:00', 'Pago', 'Padrão', 'PART000026', 'EV000026'),
('INS00027', '2025-07-15 09:00:00', 'Cancelado', 'Estudante', 'PART000027', 'EV000027'),
('INS00028', '2025-07-20 11:00:00', 'Pago', 'VIP', 'PART000028', 'EV000028'),
('INS00029', '2025-09-15 15:00:00', 'Pendente', 'Padrão', 'PART000029', 'EV000029'),
('INS00030', '2025-09-20 10:00:00', 'Pago', 'Estudante', 'PART000030', 'EV000030'),
('INS00031', '2025-06-15 12:00:00', 'Cancelado', 'VIP', 'PART000031', 'EV000031'),
('INS00032', '2025-07-01 14:00:00', 'Pago', 'Padrão', 'PART000032', 'EV000032'),
('INS00033', '2025-08-01 09:00:00', 'Pendente', 'Estudante', 'PART000033', 'EV000033'),
('INS00034', '2025-09-01 11:00:00', 'Pago', 'VIP', 'PART000034', 'EV000034'),
('INS00035', '2025-10-01 15:00:00', 'Cancelado', 'Padrão', 'PART000035', 'EV000035'),
('INS00036', '2025-06-01 10:00:00', 'Pago', 'Estudante', 'PART000036', 'EV000036'),
('INS00037', '2025-07-01 12:00:00', 'Pendente', 'VIP', 'PART000037', 'EV000037'),
('INS00038', '2025-08-15 14:00:00', 'Pago', 'Padrão', 'PART000038', 'EV000038'),
('INS00039', '2025-09-01 09:00:00', 'Cancelado', 'Estudante', 'PART000039', 'EV000039'),
('INS00040', '2025-10-15 11:00:00', 'Pago', 'VIP', 'PART000040', 'EV000040');

SELECT p.nome, e.nome_evento
FROM inscricoes i
JOIN participantes pa ON i.id_participantes = pa.id_participantes
JOIN pessoa p ON pa.id_pessoa = p.id_pessoa
JOIN evento e ON i.id_evento = e.id_evento
WHERE e.id_evento = 'EV000001';

SELECT p.nome, e.nome_evento
FROM inscricoes i
JOIN participantes pa ON i.id_participantes = pa.id_participantes
JOIN pessoa p ON pa.id_pessoa = p.id_pessoa
JOIN evento e ON i.id_evento = e.id_evento
WHERE e.id_evento = 'EV000006';

SELECT p.nome, e.nome_evento
FROM inscricoes i
JOIN participantes pa ON i.id_participantes = pa.id_participantes
JOIN pessoa p ON pa.id_pessoa = p.id_pessoa
JOIN evento e ON i.id_evento = e.id_evento
WHERE e.id_evento = 'EV000011';

SELECT 
    p.nome,
    COALESCE(e.nome_evento, 'Nenhum evento') AS nome_evento
FROM 
    pessoa p
    LEFT JOIN participantes pa ON p.id_pessoa = pa.id_pessoa
    LEFT JOIN inscricoes i ON pa.id_participantes = i.id_participantes
    LEFT JOIN evento e ON i.id_evento = e.id_evento
WHERE 
    p.id_pessoa IN ('P0000001', 'P0000005', 'P0000003')
ORDER BY 
    p.nome, e.nome_evento;