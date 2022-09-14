
  create or replace  view DEMO_DB.PUBLIC.stg_customers
  
   as (
    with customers as (
    
    select 
        id as customer_id,
        first_name,
        last_name

    from raw.jaffle_shop.customers
)

select * from customers
  );
