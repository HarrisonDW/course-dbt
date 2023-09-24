{{config(materialized = 'view')}}

with source as (
    select 
        * 
    from {{ ref('stg_events') }}
)

select * from source