-- CREATE TABLE customer(
-- 	age INTEGER NOT NULL,
-- 	job VARCHAR(30) NOT NULL,
-- 	marital_status VARCHAR(30) NOT NULL,
-- 	education VARCHAR(30) NOT NULL,
-- 	default_status VARCHAR(15) NOT NULL,
-- 	balance BIGINT NOT NULL,
-- 	housing VARCHAR(15) NOT NULL,
-- 	loan VARCHAR(15) NOT NULL,
-- 	contact VARCHAR(20) NOT NULL,
-- 	day_of_month INTEGER NOT NULL,
-- 	month_name CHAR(5) NOT NULL, 
-- 	duration INTEGER NOT NULL,
-- 	campaign INTEGER NOT NULL,
-- 	pdays INTEGER NOT NULL,
-- 	previous INTEGER NOT NULL,
-- 	poutcome VARCHAR(20) NOT NULL,
-- 	y CHAR(5) NOT NULL
-- );

-- select 
-- column_name,
-- data_type
-- from INFORMATION_SCHEMA.COLUMNS
-- where column_name in ('age','loan','pdays')
-- and table_name = 'customer';

-- add a primary key 
alter table customer add column id serial primary key; 


-- quick look at the data 
select *
from customer 
limit 5; 


-- educational level of those who are single vs those who are married 
select education, 
	round(avg(case when marital_status='single' or marital_status='divorced' then 0
   	when marital_status='married' then 1 end),2) as pct_married
from customer
group by education; 

-- default status of clients with balances greater than or equal to $1000
select default_status, count(default_status) as count
from customer
where balance IN (select balance from customer where balance >= 1000)
group by default_status;


-- average balance
select education, round(avg(balance),2)
from customer
group by education;


-- was the campaign successful?
-- for the clients that did not subscribe to a term deposit during
-- the last marketing campaign, did they subscribe after this campaign?
select count(*)
from customer
where poutcome = 'failure' AND y = 'yes'

-- list of these customers 
select id, poutcome, y
from customer
where poutcome = 'failure' AND y = 'yes'
group by id, poutcome, y


-- did some people not subscribe to another term deposit who had before?
select id, poutcome, y
from customer
where poutcome = 'success' AND y = 'no'
group by id, poutcome, y




