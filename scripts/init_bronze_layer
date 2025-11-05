
if OBJECT_ID ('bronze.crm_cust_info', 'U') is not null
	drop table bronze.crm_cust_info;
GO

create table bronze.crm_cust_info (
cst_id int,
cst_key nvarchar(50),
cst_firstname nvarchar(50),
cst_lastname nvarchar(50),
cst_material_status nvarchar(50),
cst_gndr nvarchar(50),
cst_create_date DATE
);
GO


-- source_crm\prd_info

if OBJECT_ID('bronze.crm_prd_info', 'U') is not null
	drop table bronze.crm_prd_info;
GO

create table bronze.crm_prd_info (
prd_id int,
prd_key nvarchar(50),
prd_nm	nvarchar(50),
prd_cost int,
prd_line nvarchar(50),
prd_start_dt datetime,
prd_end_dt datetime
);
GO


-- source_crm\sales_details

if OBJECT_ID('bronze.crm_sales_details', 'U') is not null
	drop table bronze.crm_sales_details;
GO

create table bronze.crm_sales_details(
sls_ord_num nvarchar(50), 
sls_prd_key	nvarchar(50), 
sls_cust_id int,
sls_order_dt int,
sls_ship_dt	int,
sls_due_dt	int, 
sls_sales int,
sls_quantity int,
sls_price int
);
GO


-- source_erp\CUST_AZ12

if OBJECT_ID('bronze.erp_cust_az12', 'U') is not null
 drop table bronze.erp_cust_az12;
GO

create table bronze.erp_cust_az12 (
cid nvarchar(50),
bday date,
gndr nvarchar(50)
);
GO


-- source_erp\LOC_A101

if object_id('bronze.erp_loc_a101', 'U') is not null
	drop table bronze.erp_loc_a101;
GO 

create table bronze.erp_loc_a101(
id nvarchar(50),
cntry nvarchar(50)
);
GO



-- source_erp\PX_CAT_G1V2

if object_id('bronze.erp_px_cat_g1v2', 'U') is not null
	drop table bronze.erp_px_cat_g1v2;
GO

create table bronze.erp_px_cat_g1v2(
id varchar(50),
cat varchar(50),
subcat varchar(50),
maintenance varchar(50)
);
GO
