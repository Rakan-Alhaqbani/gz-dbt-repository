SELECT date_date 
, round(SUM(ads_cost),2)as ads_cost
, round(SUM(impression),2)as ads_imprssion
, round(SUM(click),2)as ads_clicks

FROM {{ref("int_campign")}}
GROUP by date_date
