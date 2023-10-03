{{ config(materialized="table") }} 

select 
*
from {{ ref("stg_customers") }}

-- dbt build --m <model.sql> --var 'is_test_run: false'
{% if var('is_test_run', default=true) %}

  limit 100

{% endif %}
