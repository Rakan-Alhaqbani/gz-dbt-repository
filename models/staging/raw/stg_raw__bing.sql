with 

source as (

    select * from {{ source('raw', 'bing') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
       campaing_name,
        Cast(ads_cost as FLOAT64),
        impression,
        click

    from source

)

select * from renamed
