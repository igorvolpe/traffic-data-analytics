# 🚦 Análise de Tráfego Urbano & Monitorização de Fluxo

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=power-bi&logoColor=black)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)

## 📌 Visão Geral do Projeto
Este projeto analisa mais de **5.900 registos de tráfego de veículos** recolhidos a cada 15 minutos ao longo de dois meses. O objetivo principal é mapear horários de pico, identificar estrangulamentos de trânsito e avaliar a composição do fluxo de veículos (Carros, Motos, Autocarros e Camiões) para apoiar tomadas de decisão em mobilidade urbana.

---

## 📊 Principais Insights de Negócio
- **Horário Crítico de Pico:** A maior densidade de tráfego ocorre entre as **15:45 e as 18:00**, atingindo uma média de **180 veículos por intervalo de 15 minutos**.
- **Estrangulamentos de Trânsito:** Cerca de **25,3% de todo o tempo registado** opera sob condições de congestionamento (`heavy` ou `high`).
- **Composição da Frota:** Os carros representam a maioria do volume (**~60%**), enquanto veículos pesados (camiões e autocarros) concentram-se em faixas horárias específicas do dia.

---

## 🛠️ Tecnologias e Ferramentas Utilizadas
- **Linguagem / Bibliotecas:** Python, Pandas, NumPy, Seaborn, Matplotlib, SQLAlchemy.
- **Banco de Dados:** SQLite (`schema.sql` e `queries.sql`).
- **Visualização de Dados:** Power BI (Medidas em DAX avançado, visualizações temporais e KPIs).
- **Ambiente de Desenvolvimento:** VS Code e Jupyter Notebooks.

---

## 🗄️ Estrutura de Consultas SQL (Exemplo)
```sql
-- Top 5 horários com maior volume médio de veículos
SELECT 
    horario,
    ROUND(AVG(qtd_total), 2) AS media_veiculos,
    MAX(qtd_total) AS max_veiculos
FROM tb_trafego_veiculos
GROUP BY horario
ORDER BY media_veiculos DESC
LIMIT 5;
