WITH source AS (
    SELECT
        *
    FROM {{ ref('datalog_CustosMensais') }}
)

SELECT
	TO_CHAR(TO_DATE("Data", 'MM/DD/YYYY'), 'YYYY-MM-DD')::DATE AS data
	,"ID_Veiculo" AS id_veiculo
	,"KM Percorridos" AS km_percorridos
	,"ValorAbastecimento" AS vlr_abastecimento
	,"ValorManutencao" AS vlr_manutencao
	,"CustoFixo" AS custo_fixo
	,"CustoTotal" AS custo_total
FROM source