{% test check_string_is_empty(model, column_name) %}
select {{ column_name}}
from {{model}}
where TRIM({{ column_name }}) ='' 
{% endtest %}



