{% macro cents_to_dollars(amount, decimal_place=2) %}
round(1*{{amount}} / 100, {{decimal_place}})
{% endmacro %}
