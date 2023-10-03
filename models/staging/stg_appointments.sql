{{ config(materialized="table") }} 

select 
* 
from {{ source("staging", "appointments") }}

-- dbt build --m <model.sql> --var 'is_test_run: false'
{% if var('is_test_run', default=true) %}

  limit 100

{% endif %}