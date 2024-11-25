-- 1.
select * from dealership.dealerships;
-- 2.
select * from vehicles
where dealership_id = 1;
-- 3
select * from vehicles
where vin like '156789';
-- Altere table to connect two of the same columns
alter table vehicles add dealership_id int;
ALTER TABLE vehicles 
ADD CONSTRAINT fk_vehicles_dealership
FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id);

-- update dealership id to match
-- update vehicles 
-- set dealership_id = 1
-- where vin = '156789'
-- 4.
select * from dealerships d
join vehicles v 
on d.dealership_id = v.dealership_id 
where v.vin = 156789;
-- 5.
select * from dealerships d
join vehicles v
on d.dealership_id = v.dealership_id 
where make like 'Ford'
and model like 'Explorer'
and color like 'Red';
-- 6.
select * from sales_contract s
join vehicles v
on s.vin = v.vin
join dealerships d
on v.dealership_id = d.dealership_id
where s.date between '2024-02-24' and '2024-07-26';


