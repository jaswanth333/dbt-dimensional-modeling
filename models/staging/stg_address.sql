with source as (
      select * from {{ source('src_postgres', 'address') }}
),
renamed as (
    select
        {{ adapter.quote("addressline2") }},
        {{ adapter.quote("addressline1") }},
        {{ adapter.quote("spatiallocation") }},
        {{ adapter.quote("stateprovinceid") }},
        {{ adapter.quote("postalcode") }},
        {{ adapter.quote("city") }},
        {{ adapter.quote("modifieddate") }},
        {{ adapter.quote("addressid") }}

    from source
)
select * from renamed
  