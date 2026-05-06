{% test is_positive_int(model, column_name) %}

SELECT *
FROM {{ model }}
WHERE {{ target.database }}.{{ target.schema }}.is_positive_int({{ column_name }}) != 1

{% endtest %}