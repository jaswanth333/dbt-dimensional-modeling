

with source as (
      select * from {{ source('src_postgres', 'vw_salesreason') }}
),
renamed as (
    select
        {{ adapter.quote("salesreason") }},
        {{ adapter.quote("salesreasonid") }},
        {{ adapter.quote("reasontype") }},
        {{ adapter.quote("modifieddate") }}

    from source
)
select * from renamed
  