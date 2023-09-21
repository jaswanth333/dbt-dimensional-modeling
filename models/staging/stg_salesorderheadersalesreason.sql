

with source as (
      select * from {{ source('src_postgres', 'salesorderheadersalesreason') }}
),
renamed as (
    select
        {{ adapter.quote("salesorderid") }},
        {{ adapter.quote("salesreasonid") }},
        {{ adapter.quote("modifieddate") }}

    from source
)
select * from renamed
  