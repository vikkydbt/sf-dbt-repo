--Entering values in Jinja
{{"India"}}  
{{12}}
{{12.25}}
{{['a','b','c']}}  --passing  list 
{{{'empno':'1001','ename':'Ajay','city':'Bangalore'}}} --passing  dictionary 

----------------------------------------------------------------------------------------
-- Variables in Jinja
--Declare using single bracket,
{{"India"}}   
{% set mystring1 = "Hello dbt1" %}                 --without hypen  
{{mystring1}}

--Note Hypen is used to remove blank line
{%- set mystring2 = "Hello dbt 2" -%}  --with hypen
{{mystring2}}

--Note Hypen is used to remove blank line
{%- set mystring3 = "True" -%}  --with hypen
{{mystring3}}

-- Comments in Jinja
{# This is my jinja comment #}
-- This is my sql comment

--------------------------------------------------------------------------------------------
------------------ IF ELSE
{% if 1==2 %}
    {{"I am inside if statement"}}
{% else %}
    {{"I am inside else statement"}}
{% endif %}

------------------ IF ELSEIF
{% if 1==1 %}
    {{"I am inside if statement"}}
{% elif 1==2 %}
    {{"I am inside else statement"}}
{% else %}
    {{"I am inside third statement"}}
{% endif %}

------------------ Loops
-- Method 1
{%- for i in ['a','b','c'] -%}
{{i}}
{% endfor %}

-- Method 2: Combine them with variables
{%set lst=['a','b','c'] %}
{%- for i in lst -%}
{{i}}
{% endfor %}