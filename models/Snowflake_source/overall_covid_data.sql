With src_data as (
SELECT DISTINCT DATE, LOCATION_ISO_CODE, TOTAL_CASES, TOTAL_RECOVERED , TOTAL_DEATHS, TOTAL_ACTIVE_CASES
from {{ source('Snowflake_FIVETRAN_INTERVIEW_DB', 'COVID_19_INDONESIA_NISHANT_KUMAR') }}
),

final as (
    select * from src_data
)
select * from final