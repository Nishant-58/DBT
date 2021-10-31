With src_data as (
SELECT DISTINCT DATE, LOCATION_ISO_CODE, NEW_CASES ,NEW_RECOVERED ,NEW_DEATHS ,NEW_ACTIVE_CASES
from {{ source('Snowflake_FIVETRAN_INTERVIEW_DB', 'COVID_19_INDONESIA_NISHANT_KUMAR') }}
),

final as (
    select * from src_data
)
select * from final