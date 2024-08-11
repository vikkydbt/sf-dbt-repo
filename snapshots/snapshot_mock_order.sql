{% snapshot scd_timestamp_mock_order %}

    {{
        config(
            target_database='hr_db',
            target_schema='snap_sch',
            unique_key='ORDER_ID',
            strategy='timestamp',
            updated_at='UPDATED_AT',
        )
    }}

    select * from  HR_DB.RAW.MOCK_ORDERS

{% endsnapshot %}