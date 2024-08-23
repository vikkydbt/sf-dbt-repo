{% set payment_methods = dbt_utils.get_column_values(table=ref('raw_payments'), column='payment_method') %}

{%- for col_name in payment_methods -%}
  {{col_name}}
{% endfor %}