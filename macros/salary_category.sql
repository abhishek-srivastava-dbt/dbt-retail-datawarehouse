{% macro salary_category(column_name) %}

CASE
    WHEN {{ column_name }} >= 100000 THEN 'High Salary'
    WHEN {{ column_name }} >= 50000 THEN 'Medium Salary'
    ELSE 'Low Salary'
END

{% endmacro %}