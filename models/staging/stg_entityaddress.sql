with source as (
      select * from {{ source('src_postgres', 'businessentityaddress') }}
),
renamed as (
    select
        {{ adapter.quote("addresstypeid") }},
        {{ adapter.quote("businessentityid") }},
        {{ adapter.quote("modifieddate") }},
        {{ adapter.quote("addressid") }}

    from source
)
select * from renamed
  