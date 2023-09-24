{{
  config(
    materialized='table'
  )
}}

SELECT
    DISTINCT product_id
    , name
    , price
FROM {{ ref('int_products') }}
