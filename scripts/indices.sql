-- Índice criado para otimizar consultas que filtram ou ordenam os eventos com base na data.
-- Consultas como "listar eventos realizados em um intervalo de datas" ou "ordenar eventos por data"
-- serão executadas de forma mais eficiente, evitando uma varredura completa da tabela.
CREATE INDEX idx_evento_data ON Evento (data);


-- Índice criado para melhorar o desempenho de consultas que avaliam o início da parceria dos buffets.
-- Usado principalmente em condições de filtro, como "buffets com parceria maior que X anos",
-- e em ordenações por data de início da parceria, acelerando operações de comparação e ordenação.
CREATE INDEX idx_buffet_inicio_parceria ON Buffet (inicio_parceria);