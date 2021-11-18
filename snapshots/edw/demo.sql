{% snapshot hist_survey_access_snapshot %}

    {{
        config(
          tags = ['demo'],
          alias = 'Customer_SCD2',
          strategy = 'check',
          unique_key = 'C_CUSTKEY',
          check_cols = 'ALL',
          invalidate_hard_deletes=True, 

        )
    }}

    select * from {{ source('tst','CUSTOMER') }}