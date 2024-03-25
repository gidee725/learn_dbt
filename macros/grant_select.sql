{% macro grant_select(role=target.role, schema = target.schema) %}

    {% set sql %}
    grant usage on schema {{schema}} on role {{role}};
    grant select on all tables on schema {{schema}} on role {{role}};
    grant select on all views on schema {{schema}} on role {{role}};
    {% endset %}

    {{ log('granting select to all tables and views in schema'
     ~ target.schema ~ ' to role ' ~ role, info=True) }} 
    {% do run_query(sql) %}
    {{ log('privileges granted', info=True) }}

{% endmacro %}