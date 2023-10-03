{#
  This macro returns federal state number(fake)
#}

{% macro get_federal_state(city) -%}

case {{ city }}
    when 'Berlin' then 1
    when 'Frankfurt' then 2
    when 'Köln' then 3
    else 4
end

{%- endmacro%}