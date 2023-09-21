

with source as (
      select * from {{ source('src_postgres', 'customer') }}
),
renamed as (
    select
        {{ adapter.quote("territoryid") }},
        {{ adapter.quote("storeid") }},
        {{ adapter.quote("personid") }},
        {{ adapter.quote("customerid") }},
        {{ adapter.quote("modifieddate") }}
        {{ adapter.quote("accountnumber") }}
    from source
)
select * from renamed
  