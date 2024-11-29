USE CerimonialDB;

-- Populando a tabela Profissional
INSERT INTO Profissional (num_matricula, nome, telefone, tipo_profissional) VALUES
(101, 'Bernardo Bruno Alvim', '11111111111', 'Garçom'),
(102, 'Marcos Japonês Alberto', '22222222222', 'Segurança'),
(103, 'Arthur Astolfo', '33333333333', 'Coordenador de Evento'),
(104, 'Votor Costa Larga', '44444444444', 'Cerimonialista'),
(105, 'Joaquim Kinkasss', '55555555555', 'Decorador'),
(106, 'Arlindo FEIN', '66666666666', 'Músico'),
(107, 'Bernardo Pazzuti', '77777777777', 'Fotógrafo'),
(108, 'Fernando Soninho', '88888888888', 'Segurança'),
(109, 'Gaybriel Peçanha', '99999999999', 'Garçom'),
(110, 'Vinicius F1', '00000000000', 'Coordenador de Evento');

-- Populando a tabela Aperitivo
INSERT INTO Aperitivo (id, descricao, preco_pessoa, tipo_aperitivo) VALUES
(1, 'Mini coxinha', 2.50, 'Salgado'),
(2, 'Bruschetta', 3.00, 'Entrada'),
(3, 'Bolinho de queijo', 2.75, 'Salgado'),
(4, 'Canapé de salmão', 4.50, 'Entrada'),
(5, 'Quibe frito', 2.25, 'Salgado'),
(6, 'Tábua de frios', 6.50, 'Tábua'),
(7, 'Mini hambúrguer', 5.00, 'Prato Principal'),
(8, 'Empadinha de frango', 3.25, 'Salgado'),
(9, 'Espetinho de camarão', 7.00, 'Entrada'),
(10, 'Tartare de atum', 8.00, 'Entrada Gourmet');

-- Populando a tabela Firma
INSERT INTO Firma (cnpj, nome, rua, numero, cep, bairro) VALUES
('42345678000100', 'Firma Eventos ABC', 'Rua Aurora', 12, '45678-901', 'Aurora Park'),
('52345678000100', 'Firma Decorações XYZ', 'Av. Central', 34, '56789-012', 'Central City'),
('62345678000100', 'Firma Segurança SS', 'Rua Nova', 56, '67890-123', 'Nova Vila');

-- Populando a tabela Buffet
INSERT INTO Buffet (cnpj, nome, rua, numero, cep, bairro, inicio_parceria, cnpj_firma) VALUES
('12345678000100', 'Buffet Gourmet', 'Rua das Flores', 123, '12345-678', 'Centro', '2020-01-01', '42345678000100'),
('22345678000100', 'Buffet Elegance', 'Av. Paulista', 456, '23456-789', 'Bela Vista', '2021-06-15', '52345678000100'),
('32345678000100', 'Buffet Premium', 'Rua dos Jardins', 789, '34567-890', 'Jardim América', '2022-03-10', '52345678000100');

-- Populando a tabela Cardapio
INSERT INTO Cardapio (id, nome, cnpj_buffet) VALUES
(1, 'Cardápio Clássico', '12345678000100'),
(2, 'Cardápio Elegante', '22345678000100'),
(3, 'Cardápio Gourmet', '32345678000100');

-- Populando a tabela Formatura
INSERT INTO Formatura (id, nome, telefone, nome_faculdade, forma_pagamento, valor_pagamento, nome_curso, cnpj_firma) VALUES
(1, 'Formatura Direito 2024', '98765432100', 'Universidade Federal de Direito', 'Boleto', 12000.00, 'Direito', '42345678000100'),
(2, 'Formatura Medicina 2024', '98765432200', 'Faculdade São Paulo', 'Cartão', 15000.00, 'Medicina', '52345678000100'),
(3, 'Formatura Engenharia 2025', '98765432300', 'Instituto de Tecnologia', 'Transferência', 10000.00, 'Engenharia', '62345678000100');

-- Populando a tabela Evento
INSERT INTO Evento (id, descricao, local, num_convidados, duracao, data, id_formatura, id_cardapio) VALUES
(1, 'Formatura de Direito', 'Salão A', 200, 5, '2024-12-01', 1, 1),
(2, 'Formatura de Medicina', 'Salão B', 300, 6, '2024-12-15', 2, 2),
(3, 'Formatura de Engenharia', 'Salão C', 150, 4, '2025-01-10', 3, 3);

-- Populando a tabela CardapioAperitivo
INSERT INTO CardapioAperitivo (id_cardapio, id_aperitivo) VALUES
(1, 1), (1, 2), (1, 3), 
(2, 4), (2, 5), (2, 6),
(3, 7), (3, 8), (3, 9), (3, 10);

-- Populando a tabela ProfissionalEvento
INSERT INTO ProfissionalEvento (id_evento, matricula_profissional, duracao) VALUES
(1, 101, 5), 
(1, 102, 5),
(2, 101, 3),
(2, 103, 6), 
(2, 104, 6),
(3, 105, 4),
(3, 106, 4),
(1, 107, 5), 
(2, 108, 6),
(3, 109, 4),
(1, 110, 5);


