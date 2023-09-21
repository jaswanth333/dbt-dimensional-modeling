
with source as (
      select * from {{ source('src_postgres', 'vw_salesorderheader') }}
),
renamed as (
    select
        {{ adapter.quote("totaldue") }},
        {{ adapter.quote("creditcardapprovalcode") }},
        {{ adapter.quote("customerid") }},
        {{ adapter.quote("modifieddate") }},
        {{ adapter.quote("subtotal") }}
        {{ adapter.quote("taxamt") }},
        {{ adapter.quote("billtoaddressid") }},
        {{ adapter.quote("duedate") }},
        {{ adapter.quote("freight") }},
        {{ adapter.quote("onlineorderflag") }},
        {{ adapter.quote("status") }},
        {{ adapter.quote("territoryid") }},
        {{ adapter.quote("Comment") }},
        {{ adapter.quote("purchaseordernumber") }},
        {{ adapter.quote("shipdate") }},
        {{ adapter.quote("revisionnumber") }},
        {{ adapter.quote("orderdate") }},
        {{ adapter.quote("accountnumber") }},
        {{ adapter.quote("currencyrateid") }},
        {{ adapter.quote("shiptoaddressid") }},
        {{ adapter.quote("salesordernumber") }},
        {{ adapter.quote("salesorderid") }},
        {{ adapter.quote("shipmethodid") }},
        {{ adapter.quote("creditcardid") }},
        {{ adapter.quote("salespersonid") }}

    from source
)
select * from renamed
  