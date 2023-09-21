

with source as (
      select * from {{ source('src_postgres', 'vw_person') }}
),
renamed as (
    select
        {{ adapter.quote("businessentityid") }},
        {{ adapter.quote("firstname") }},
        {{ adapter.quote("title") }},
        {{ adapter.quote("persontype") }},
        {{ adapter.quote("numberchildrenathome") }},
        {{ adapter.quote("gender") }},
        {{ adapter.quote("middlename") }},
        {{ adapter.quote("modifieddate") }},
        {{ adapter.quote("houseownerflag") }},
        {{ adapter.quote("occupation") }},
        {{ adapter.quote("maritalstatus") }},
        {{ adapter.quote("namestyle") }},
        {{ adapter.quote("commutedistance") }},
        {{ adapter.quote("suffix") }},
        {{ adapter.quote("education") }},
        {{ adapter.quote("lastname") }},
        {{ adapter.quote("numbercarsowned") }},
        {{ adapter.quote("totalchildren") }},
        {{ adapter.quote("birthdate") }},
        {{ adapter.quote("emailpromotion") }},
        {{ adapter.quote("datefirstpurchase") }}
    from source
)
select * from renamed
  