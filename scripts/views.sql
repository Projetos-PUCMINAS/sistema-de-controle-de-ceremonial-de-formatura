-- View criada para consolidar informações sobre os profissionais e os eventos em que participaram.
-- Inclui o nome do profissional, o ID do evento, o total de horas trabalhadas em cada evento
-- e o número de eventos em que o profissional esteve envolvido.
-- Facilita consultas que analisam a carga de trabalho dos profissionais por evento e no geral.
CREATE VIEW vw_profissionais_eventos AS
SELECT 
    p.nome AS profissional,
    pe.id_evento,
    SUM(pe.duracao) AS total_horas, -- Total de horas trabalhadas pelo profissional em cada evento
    COUNT(pe.id_evento) AS total_eventos -- Número de eventos em que o profissional participou
FROM ProfissionalEvento pe
JOIN Profissional p ON pe.matricula_profissional = p.num_matricula
GROUP BY p.nome, pe.id_evento;


-- View criada para fornecer uma visão detalhada dos eventos, incluindo informações relacionadas à formatura 
-- e os custos dos aperitivos associados ao evento.
-- Consolida dados como o ID e a descrição do evento, o nome da faculdade, o valor total pago pela formatura
-- e a soma total dos preços dos aperitivos utilizados no evento. 
-- Útil para gerar relatórios detalhados de eventos com informações financeiras e de consumo.
CREATE VIEW vw_eventos_detalhados AS
SELECT 
    e.id AS id_evento, -- Identificador único do evento
    e.descricao AS evento, -- Nome ou descrição do evento
    f.nome_faculdade, -- Nome da faculdade associada à formatura do evento
    f.valor_pagamento, -- Valor total pago pela formatura associada ao evento
    SUM(a.preco_pessoa) AS preco_total_aperitivos -- Soma dos preços por pessoa dos aperitivos servidos no evento
FROM Evento e
JOIN Formatura f ON e.id_formatura = f.id
LEFT JOIN Cardapio c ON e.id_cardapio = c.id
LEFT JOIN CardapioAperitivo ca ON c.id = ca.id_cardapio
LEFT JOIN Aperitivo a ON ca.id_aperitivo = a.id
GROUP BY e.id, f.nome_faculdade, f.valor_pagamento;