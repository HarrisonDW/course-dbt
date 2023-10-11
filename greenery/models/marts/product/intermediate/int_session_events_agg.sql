{{
  config(
    materialized='table'
  )
}}

select 
    event_id
    , session_id
    , user_id
    , page_url
    , min(date(created_at)) as created_date
    , order_id
    , product_id
    {{ event_types('stg_events', 'event_type')}}
from {{ ref('stg_events') }}
group by all
