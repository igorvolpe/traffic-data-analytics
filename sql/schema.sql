-- Script de Criação do Schema da Tabela de Tráfego

DROP TABLE IF EXISTS tb_trafego_veiculos;

CREATE TABLE tb_trafego_veiculos (
    id_registro SERIAL PRIMARY KEY,
    horario VARCHAR(20) NOT NULL,
    dia_mes INT NOT NULL,
    dia_semana VARCHAR(20) NOT NULL,
    qtd_carros INT NOT NULL DEFAULT 0,
    qtd_motos INT NOT NULL DEFAULT 0,
    qtd_onibus INT NOT NULL DEFAULT 0,
    qtd_caminhoes INT NOT NULL DEFAULT 0,
    qtd_total INT NOT NULL DEFAULT 0,
    situacao_trafego VARCHAR(20) NOT NULL
);

-- Índices para otimizar consultas analíticas por horário e dia da semana
CREATE INDEX idx_trafego_horario ON tb_trafego_veiculos(horario);
CREATE INDEX idx_trafego_dia_semana ON tb_trafego_veiculos(dia_semana);
CREATE INDEX idx_trafego_situacao ON tb_trafego_veiculos(situacao_trafego);
