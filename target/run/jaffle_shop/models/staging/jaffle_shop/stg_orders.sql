
  create or replace  view DEMO_DB.PUBLIC.stg_orders
  
   as (
    with orders as (
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status
    from raw.jaffle_shop.orders
)

select * from orders
  );
