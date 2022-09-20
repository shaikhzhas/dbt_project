with payments as (
select * from DEMO_DB.PUBLIC.stg_payments
),

aggregated as (
select
sum(amount) as total_revenue
from payments
where status = 'success'
)

select * from aggregated