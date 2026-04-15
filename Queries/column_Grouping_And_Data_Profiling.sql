-- column grouping and data profiling

SELECT [Continent]
      ,[Country_or_State]
      ,[Province_or_City]

FROM [PC_Sales_Stg].[dbo].[PC_sales_dataset_Stg];

SELECT 
      [Shop_Name]
      ,[Shop_Age]

FROM [PC_Sales_Stg].[dbo].[PC_sales_dataset_Stg];

 SELECT
      [PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[Storage_Capacity]
      ,[RAM]

FROM [PC_Sales_Stg].[dbo].[PC_sales_dataset_Stg];

 SELECT
       [Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]

FROM [PC_Sales_Stg].[dbo].[PC_sales_dataset_Stg];

 SELECT
       [Sales_Person_Name]
      ,[Sales_Person_Department]

FROM [PC_Sales_Stg].[dbo].[PC_sales_dataset_Stg];

 SELECT  
    [Channel]

FROM [PC_Sales_Stg].[dbo].[PC_sales_dataset_Stg];

   SELECT  
       [Purchase_Date]
      ,[Ship_Date]

FROM [PC_Sales_Stg].[dbo].[PC_sales_dataset_Stg];

  SELECT  
       [Priority]

FROM [PC_Sales_Stg].[dbo].[PC_sales_dataset_Stg];

 SELECT 
    [Payment_Method]

 FROM [PC_Sales_Stg].[dbo].[PC_sales_dataset_Stg]

 SELECT 
       [Cost_Price]
      ,[Sale_Price]
      ,[Discount_Amount]
      ,[Finance_Amount]
      ,[Credit_Score]
      ,[Cost_of_Repairs]
      ,[Total_Sales_per_Employee]
      ,[PC_Market_Price]

FROM [PC_Sales_Stg].[dbo].[PC_sales_dataset_Stg];
