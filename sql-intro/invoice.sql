select count(*) from invoice where billing_country = 'USA'
select *, (total * 0.99) AS total_value from invoice order by total_value desc limit 1;
select  *,  (total * 0.99) as value_totalfrom  invoiceorder by  value_total asc limit  1;
select * from invoice where total > 5
select count(*) from invoice where total < 5
select count(*) from invoice where billing_state in ('CA', 'AZ', 'TX')
select avg(total) from invoice
select sum(total) from invoice
update invoice set total = 24 where invoice_id = 5 --I CAN'T FIND WHERE IT WENT
DELETE FROM invoice WHERE invoice_id = 1 -- DIDN'T DELETE BECAUSE OF FOREIGN KEY CONSTRAINT