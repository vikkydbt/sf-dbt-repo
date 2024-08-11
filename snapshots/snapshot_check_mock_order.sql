{% snapshot scd_check_mock_order %}
    {{
        config(
            target_database='hr_db',
			target_schema='snap_sch',
			unique_key='ORDER_ID',
            strategy='check',
            check_cols=['STATUS', 'CITY'],
             invalidate_hard_deletes=True
        )
    }}
    select * from HR_DB.RAW.MOCK_ORDERS
{% endsnapshot %}


