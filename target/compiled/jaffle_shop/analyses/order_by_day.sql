with orders as (
    select * from DEMO_DB.PUBLIC.stg_orders
),
daily as (
    select
        order_date,
        count(*) as num_orders,
        
            sum(case when status = 'returned' then 1 else 0 end) as returned_total ,
        
            sum(case when status = 'completed' then 1 else 0 end) as completed_total ,
        
            sum(case when status = 'return_pending' then 1 else 0 end) as return_pending_total ,
        
            sum(case when status = 'shipped' then 1 else 0 end) as shipped_total ,
        
            sum(case when status = 'placed' then 1 else 0 end) as placed_total 
        
    from orders
    group by 1
),
compared as (
    select *,
        lag(order_num) over (order by order_date) as previous_day_orders
    from
        daily
)
select * from compared