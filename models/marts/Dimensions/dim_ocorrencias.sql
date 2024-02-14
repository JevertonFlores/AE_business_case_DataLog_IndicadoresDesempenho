WITH source AS (
    SELECT
        *
    FROM {{ source('staging', 'motivos_ocorrencias') }}
),

treated AS (
SELECT
    ROW_NUMBER() OVER (ORDER BY id_ocorrencia) AS sk_ocorrencia
    ,id_ocorrencia
    ,motivo 
    ,responsabilidade
FROM source
)

SELECT
    *
FROM treated