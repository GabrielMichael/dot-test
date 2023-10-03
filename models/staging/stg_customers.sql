{{ config(materialized="view") }} 

select 
*,
{{ get_federal_state('city') }} as federal_state_nr,
{{ dbt_utils.surrogate_key(['customer_id']) }} as fake_key 
from {{ source("staging", "customers") }}

-- dbt build --m <model.sql> --var 'is_test_run: false'
{% if var('is_test_run', default=true) %}

  limit 100

{% endif %}
