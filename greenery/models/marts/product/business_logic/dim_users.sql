{{
  config(
    materialized='table'
  )
}}

SELECT
  user_id,
  email,
  first_name,
  last_name,
  phone_number,
  created_at,
  updated_at,
  address_id
FROM {{ ref('int_users') }}
