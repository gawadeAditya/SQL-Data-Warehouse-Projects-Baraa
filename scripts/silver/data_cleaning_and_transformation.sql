-- ======================================
-- Quality Checks Before Transformations
-- ======================================

select * from bronze.crm_cust_info

----------------------------------------------------

-- 1. Check for nulls/duplicates in primary key'

select cst_id, count (*) from silver.crm_cust_info
group by cst_id having count(*) > 1;

----------------------------------------------------

-- 2. Check for unwanted spaces
-- Expected output: No Results

select cst_firstname from silver.crm_cust_info
where cst_firstname != TRIM(cst_firstname);

----------------------------------------------------

-- 3. Data standardization and consistency
select distinct cst_marital_status from silver.crm_cust_info;

----------------------------------------------------

========================================================================================
-- Solution: To resolve all failed checks and insert cleaned data in the silver layer
========================================================================================

-- 1. cleaning bronze.crm_cust_info and inserting data in silver.crm_cust_info
---------------------------------------------------- 

insert into silver.crm_cust_info 
(
	cst_id,
	cst_key,
	cst_firstname,
	cst_lastname,
	cst_marital_status,
	cst_gndr,
	cst_create_date
)

select
cst_id,
cst_key,
TRIM(cst_firstname) as cst_firstname,																		 	   -- Trim unwanted Spaces
TRIM(cst_lastname) as cst_lastname,	

case when upper(trim(cst_material_status)) = 'S' then 'Single'
	 when upper(trim(cst_material_status)) = 'M' then 'Married'
	 else 'NA'
end as cst_marital_status,

case when upper(trim(cst_gndr)) = 'F' then 'Female'
	 when upper(trim(cst_gndr)) = 'M' then 'Male'
	 else 'NA'
end cst_gender,
cst_create_date

from 
(
	select *, ROW_NUMBER() over (partition by cst_id order by cst_create_date desc) as flag_last   --  arranges entries by dates (latest first)
	from bronze.crm_cust_info
)t where flag_last = 1 and cst_id is not null;      -- keeps only latest entries


select * from silver.crm_cust_info;

---------------------------------------------------
-- 2. cleaning of bronze.crm_prd_info and insert data in silve.crm_prd_info
---------------------------------------------------
