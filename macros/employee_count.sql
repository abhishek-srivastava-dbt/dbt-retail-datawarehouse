{% macro employee_count() %}

    {% set query %}

        SELECT COUNT(*) AS total_employees
        FROM {{ ref('stg_employees') }}

    {% endset %}

    {% set results = run_query(query) %}

    {% set total = results.columns[0].values()[0] %}

    {{ log("Total Employees : " ~ total, info=True) }}

{% endmacro %}