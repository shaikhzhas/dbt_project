select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    employee_id as unique_field,
    count(*) as n_records

from DEMO_DB.PUBLIC.employees
where employee_id is not null
group by employee_id
having count(*) > 1



      
    ) dbt_internal_test