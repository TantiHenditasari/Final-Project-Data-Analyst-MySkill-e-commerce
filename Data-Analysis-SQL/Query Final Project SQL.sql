-- DATA PREPARATION --
-- Merge the tables to create a main table
with main_data as (
select
    od.order_id,
    od.customer_id,
    od.order_date,
    od.sku_id,
    od.price,
    od.qty_ordered,
    od.before_discount,
    od.discount_amount,
    od.after_discount,
    od.is_gross,
    od.is_valid,
    od.is_net,
    od.payment_id,
    cd.registered_date,
    sd.sku_name,
    sd.base_price,
    sd.cogs,
    sd.category,
    pd.payment_method
from
    `FinalProject.order_detail` as od
left join
    `FinalProject.customer_detail` as cd
    on od.customer_id = cd.customer_id
left join
    `FinalProject.sku_detail` as sd
    on od.sku_id = sd.sku_id
left join
    `FinalProject.payment_detail` as pd
    on od.payment_id = pd.payment_id
),

-- Check missing value
select * from main_data
where
    order_id is null or
    customer_id is null or
    order_date is null or
    sku_id is null or
    price is null or
    qty_ordered is null or
    before_discount is null or
    discount_amount is null or
    after_discount is null or
    is_gross is null or
    is_valid is null or
    is_net is null or
    payment_id is null or
    registered_date is null or
    sku_name is null or
    base_price is null or
    cogs is null or
    category is null or
    payment_method is null

-- Check duplicated data
SELECT
  *,
  COUNT (*) AS dupliacte_number
FROM
  main_data
GROUP BY
  order_id,
  customer_id,
  order_date,
  sku_id,
  price,
  qty_ordered,
  before_discount,
  discount_amount,
  after_discount,
  is_gross,
  is_valid,
  is_net,
  payment_id,
  registered_date,
  sku_name,
  base_price,
  cogs,
  category,
  payment_method
HAVING
  COUNT(*) > 1

-- Number 1
-- During transactions that occurred in 2021, in which month was the total transaction value (after_discount) the largest? Use is_valid = 1 to filter transaction data
select
  format_date('%B', order_date) as month_name,
  extract(month from order_date) as month_numb,
  sum (after_discount) as total_transactions
from main_data
where extract (year from order_date) = 2021 and is_valid = 1
group by month_numb, month_name
order by total_transactions desc
limit 1

-- Number 2
-- During transactions in 2022, which category generated the largest transaction value? Use is_valid = 1 to filter transaction data
select
  category,
  sum(after_discount) as transaction_values
from main_data
where is_valid = 1 and extract(year from order_date) = 2022
group by category
order by transaction_values desc
limit 1

-- Number 3
-- Compare the transaction values of each category in 2021 with 2022. Specify which categories experienced an increase and which categories experienced a decrease in transaction value from 2021 to 2022
sales_2021 as (
select
  category,
  sum(after_discount) as transactions_2021
from main_data
where is_valid = 1 and extract(year from order_date) = 2021
group by category
),

sales_2022 as (
select
  category,
  sum(after_discount) as transactions_2022
from main_data
where is_valid = 1 and extract(year from order_date) = 2022
group by category
)

select
  s1.category,
  s1.transactions_2021,
  s2.transactions_2022,
  s2.transactions_2022 - s1.transactions_2021 as growth,
  case when (s2.transactions_2022 - s1.transactions_2021) > 0 then 'increase'
    when (s2.transactions_2022 - s1.transactions_2021) < 0 then 'decrease'
    else 'no change' 
    end as progress
from sales_2021 as s1 left join sales_2022 as s2
  on s1.category = s2.category

-- Number 4
-- Display the top 5 most popular payment methods used during 2022 (based on total unique orders)
select 
  payment_method,
  count(distinct order_id) AS unique_orders
from main_data
where is_valid = 1 and extract(year from order_date) = 2022
group by payment_method
order by unique_orders desc

-- Number 5
-- Sort these 5 products by their transaction value: Samsung, Apple, Sony, Huawei, Lenovo
select
  case 
    when lower(sku_name) like '%samsung%' then 'Samsung'
    when lower(sku_name) like '%apple%' then 'Apple'
    when lower(sku_name) like '%iphone%' then 'Apple'
    when lower(sku_name) like '%macbook%' then 'Apple'
    when lower(sku_name) like '%imac%' then 'Apple'
    when lower(sku_name) like '%sony%' then 'Sony'
    when lower(sku_name) like '%huawei%' then 'Huawei'
    when lower(sku_name) like '%lenovo%' then 'Lenovo'
    else 'Others'
    end as brand_name,
  sum(after_discount) as total_transactions
from main_data
where is_valid = 1 
group by brand_name
having brand_name != 'Others'
order by total_transactions desc

