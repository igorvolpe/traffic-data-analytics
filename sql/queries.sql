-- Queries Analíticas para o Relatório de Tráfego

-- 1. Top 10 horários com maior volume total de tráfego
SELECT 
    horario,
    AVG(qtd_total) AS media_veiculos,
    MAX(qtd_total) AS max_veiculos
FROM tb_trafego_veiculos
GROUP BY horario
ORDER BY media_veiculos DESC
LIMIT 10;

-- 2. Distribuição percentual do tráfego por categoria/situação
SELECT 
    situacao_trafego,
    COUNT(*) AS total_registros,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM tb_trafego_veiculos)), 2) AS percentual
FROM tb_trafego_veiculos
GROUP BY situacao_trafego
ORDER BY total_registros DESC;

-- 3. Média de veículos pesados (Ônibus + Caminhões) por dia da semana
SELECT 
    dia_semana,
    ROUND(AVG(qtd_onibus + qtd_caminhoes), 2) AS media_veiculos_pesados,
    ROUND(AVG(qtd_carros), 2) AS media_carros
FROM tb_trafego_veiculos
GROUP BY dia_semana
ORDER BY media_veiculos_pesados DESC;
