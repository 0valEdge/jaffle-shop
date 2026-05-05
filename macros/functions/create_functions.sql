{% macro create_get_customer_segment() %}
    
    create or replace function get_customer_segment(total_revenue float)
    returns string
    as
    $$
        case
            when total_revenue >= 1000 then 'high'
            when total_revenue >= 500 then 'medium'
            when total_revenue is null then null
            else 'low'
        end
    $$;

{% endmacro %}