{{ config(materialized="table") }} 

select 
*
from {{ ref("stg_customers") }}

-- dbt build --m <model.sql> --var 'is_test_run: false'
limit 10000