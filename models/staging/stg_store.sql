-- {{ config(schema='staging') }}

with source as (
      select * from {{ source('src_postgres', 'vw_store') }}
),
renamed as (
    select
        {{ adapter.quote("demographics") }},
        {{ adapter.quote("businessentityid") }},
        {{ adapter.quote("storename") }},
        {{ adapter.quote("modifieddate") }}
        {{ adapter.quote("salespersonid") }}

    from source
)
select * from renamed
  
