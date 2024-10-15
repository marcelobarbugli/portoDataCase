WITH Tabela_1_Formatada AS (
    SELECT *,
           -- Conversão do campo Ano_Mes para o formato aaaamm
           substr(ano_mes, 7, 4) || substr(ano_mes, 4, 2) AS AnoMes_Formatted
    FROM Tabela_1
),
Operador_Contagem AS (
    SELECT 
           T1.matricula, 
           T1.AnoMes_Formatted,
           T1.leads,
           T1.trabalhado,
           T1.abordado,
           T1.negociado,
           T1.rec_orcamento,
           T1.cotado,
           T1.transm_bru,
           T1.transm_liq,
           T1.rec_canc_transm,
           T1.premio_transm,
           T1.premio_rec_canc,
           T1.premio_emi,
           T1.ticket_med_bru,
           T1.ticket_med_lid,
           T1.'%Trabalhado',
           T1.'%Abordado',
           T1.'%Cotado',
           T1.'%Conversão_Bruta',
           T1.'%Conversão_Líquida',
           T1.'%Eficiência',
           T1.AnoMes_Formatted,
           T2.monitoria,
           T2.sac,
           T2.tempo_logado,
           -- Verifica se a transmissão bruta está dentro ou abaixo da meta
           CASE
               WHEN T1.transm_bru > 1000 THEN 'dentro da meta'
               ELSE 'abaixo da meta'
           END AS Status_Meta,
           -- Enumeração da quantidade de vezes que o operador aparece no mês e matrícula
           ROW_NUMBER() OVER (PARTITION BY T1.matricula, T1.AnoMes_Formatted ORDER BY T1.matricula) AS Operador_Sequencial
    FROM Tabela_1_Formatada T1
    LEFT JOIN Tabela_2 T2
        ON T1.matricula = T2.matricula
)
SELECT *
FROM Operador_Contagem;
