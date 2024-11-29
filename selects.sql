-- 1. Listar os eventos com o nome da faculdade e o valor total do pagamento por evento.
SELECT DISTINCT e.descricao AS evento, f.nome_faculdade, f.valor_pagamento
FROM Evento e
JOIN Formatura f ON e.id_formatura = f.id;

-- 2. Exibir os tipos de aperitivos e a média de preço por pessoa para cada tipo.
SELECT DISTINCT a.tipo_aperitivo, AVG(a.preco_pessoa) AS media_preco
FROM Aperitivo a
GROUP BY a.tipo_aperitivo;

-- 3. Exibir os tipos de aperitivos e o número total de cardápios em que cada tipo aparece.
SELECT DISTINCT a.tipo_aperitivo, COUNT(ca.id_cardapio) AS total_cardapios
FROM Aperitivo a
JOIN CardapioAperitivo ca ON a.id = ca.id_aperitivo
GROUP BY a.tipo_aperitivo;

-- 4. Listar os nomes dos profissionais e o total de horas que trabalharam em eventos, ordenados pelo maior total de horas.
SELECT DISTINCT p.nome, SUM(pe.duracao) AS total_horas
FROM Profissional p
JOIN ProfissionalEvento pe ON p.num_matricula = pe.matricula_profissional
GROUP BY p.nome
ORDER BY total_horas DESC;

-- 5. Listar os nomes dos eventos e a soma total dos preços dos aperitivos dos cardápios associados a esses eventos.
SELECT DISTINCT e.descricao AS evento, SUM(a.preco_pessoa) AS preco_total_aperitivos
FROM Evento e
JOIN Cardapio c ON e.id_cardapio = c.id
JOIN CardapioAperitivo ca ON c.id = ca.id_cardapio
JOIN Aperitivo a ON ca.id_aperitivo = a.id
GROUP BY e.descricao;

-- 6. Exibir os nomes dos eventos e os profissionais que trabalharam neles por mais de 4 horas.
SELECT DISTINCT e.descricao AS evento, p.nome AS profissional
FROM Evento e
JOIN ProfissionalEvento pe ON e.id = pe.id_evento
JOIN Profissional p ON pe.matricula_profissional = p.num_matricula
WHERE pe.duracao > 4;

-- 7. Exibir os nomes dos profissionais que trabalharam em 2 ou mais eventos.
SELECT DISTINCT p.nome, COUNT(pe.id_evento) AS total_eventos
FROM Profissional p
JOIN ProfissionalEvento pe ON p.num_matricula = pe.matricula_profissional
GROUP BY p.nome
HAVING COUNT(pe.id_evento) > 1;

-- 8. Listar os nomes e CNPJs dos buffets que possuem cardápios associados a eventos realizados no mês de dezembro.
SELECT DISTINCT b.nome AS buffet, b.cnpj
FROM Buffet b
JOIN Cardapio c ON b.cnpj = c.cnpj_buffet
JOIN Evento e ON c.id = e.id_cardapio
WHERE MONTH(e.data) = 12;

-- 9. Mostrar os buffets que possuem uma parceria maior que 2 anos, ordenados pelo tempo de parceria.
SELECT DISTINCT b.nome AS buffet, TIMESTAMPDIFF(YEAR, b.inicio_parceria, CURDATE()) AS anos_parceria
FROM Buffet b
WHERE TIMESTAMPDIFF(YEAR, b.inicio_parceria, CURDATE()) >= 3
ORDER BY anos_parceria DESC;

-- 10. Listar as formaturas e o total de eventos associados a cada uma, exibindo também o valor total arrecadado considerando o valor do pagamento de cada formatura. (usando SUB SELECT)
SELECT f.nome AS formatura, 
(SELECT COUNT(e.id) 
FROM Evento e 
WHERE e.id_formatura = f.id) AS total_eventos,
(SELECT SUM(f2.valor_pagamento) 
FROM Formatura f2 
WHERE f2.id = f.id) AS total_arrecadado
FROM Formatura f;
