truncate table [bronze].[crm_cust_info];
go

bulk insert [bronze].[crm_cust_info]
from 'C:\Users\AdityaGawade\Desktop\sql-data-warehouse-project-main\datasets\source_crm\cust_info.csv'
with (
	firstrow = 2,
	fieldterminator = ',',
	tablock
);
GO


truncate table [bronze].[crm_prd_info];
go

bulk insert [bronze].[crm_prd_info]
from 'C:\Users\AdityaGawade\Desktop\sql-data-warehouse-project-main\datasets\source_crm\prd_info.csv'
with ( 
	firstrow = 2,
	fieldterminator = ',',
	tablock
);
go


truncate table [bronze].[crm_sales_details];
go

bulk insert [bronze].[crm_sales_details]
from 'C:\Users\AdityaGawade\Desktop\sql-data-warehouse-project-main\datasets\source_crm\sales_details.csv'
with (
	firstrow = 2,
	fieldterminator = ',',
	tablock
);
go


truncate table [bronze].[erp_cust_az12];
go

bulk insert [bronze].[erp_cust_az12]
from 'C:\Users\AdityaGawade\Desktop\sql-data-warehouse-project-main\datasets\source_erp\CUST_AZ12.csv'
with (
	firstrow = 2,
	fieldterminator = ',',
	tablock
);
go 


truncate table [bronze].[erp_loc_a101];
go

bulk insert [bronze].[erp_loc_a101]
from 'C:\Users\AdityaGawade\Desktop\sql-data-warehouse-project-main\datasets\source_erp\LOC_A101.csv'
with (
	firstrow = 2,
	fieldterminator = ',',
	tablock
);
go 


truncate table [bronze].[erp_px_cat_g1v2];
go

bulk insert [bronze].[erp_px_cat_g1v2]
from 'C:\Users\AdityaGawade\Desktop\sql-data-warehouse-project-main\datasets\source_erp\PX_CAT_G1V2.csv'
with (
	firstrow = 2,
	fieldterminator = ',',
	tablock
);
go
