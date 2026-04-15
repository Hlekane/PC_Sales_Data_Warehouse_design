-- Drop the initial customer dimension without a unique ID

DROP TABLE [PC_Sales_Stg].[dbo].[PC_Sales_Fact]

-- Create a new table and insert a unique ID, Customer_ID

CREATE TABLE [PC_Sales_Stg].[dbo].[PC_Sales_Fact](
	[PC_Sales_ID] INT IDENTITY (1,1) PRIMARY KEY,
	[Customer_ID] [int],
	[Date_ID] [int],
	[Location_ID] [int],
	[Channel_ID] [int],
	[Payment_Method_ID] [int],
	[Store_ID] [int],
	[Product_ID] [Int],
	[Priority_ID] [Int],
	[Salesperson_ID] [Int],
	[Cost_Price] [int] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Discount_Amount] [int] NOT NULL,
	[Finance_Amount] [nvarchar](50) NOT NULL,
	[Credit_Score] [int] NOT NULL,
	[Cost_of_Repairs] [nvarchar](50) NOT NULL,
	[Total_Sales_per_Employee] [int] NOT NULL,
	[PC_Market_Price] [int] NOT NULL

	-- inserting foreign keys
	Constraint fk_Customer_ID
			Foreign key (Customer_ID)
			References [PC_Sales_Stg].[dbo].[dim_Customer] (Customer_ID),
	Constraint fk_Channel_ID
			Foreign key (Channel_ID)
			References [PC_Sales_Stg].[dbo].[dim_Channel] (Channel_ID),
	Constraint fk_Date_ID
			Foreign key (Date_ID)
			References [PC_Sales_Stg].[dbo].[dim_Date] (Date_ID),
	Constraint fk_Location_ID
			Foreign key (Location_ID)
			References [PC_Sales_Stg].[dbo].[Dim_Location] (Location_ID),
	Constraint fk_Payment_Method_ID
			Foreign key (Payment_Method_ID)
			References [PC_Sales_Stg].[dbo].[dim_Payment_Method] (Payment_Method_ID),
	Constraint fk_Store_ID
			Foreign key (Store_ID)
			References [PC_Sales_Stg].[dbo].[dim_Store] (Store_ID),
	Constraint fk_Product_ID
			Foreign key (Product_ID)
			References [PC_Sales_Stg].[dbo].[dim_Product] (Product_ID),
	Constraint fk_Priority_ID
			Foreign key (Priority_ID)
			References [PC_Sales_Stg].[dbo].[dim_Priority] (Priority_ID),
	Constraint fk_Salesperson_ID
			Foreign key (Salesperson_ID)
			References [PC_Sales_Stg].[dbo].[dim_Salesperson] (Salesperson_ID),
);

-- Insert data into the customer dimension from the staging dataset, use distinct to remove duplicates

INSERT INTO [PC_Sales_Stg].[dbo].[PC_Sales_Fact](Cost_Price,Sale_Price,Discount_Amount,Finance_Amount,Credit_Score,Cost_of_Repairs,Total_Sales_per_Employee,PC_Market_Price)
SELECT Cost_Price,Sale_Price,Discount_Amount,Finance_Amount,Credit_Score,Cost_of_Repairs,Total_Sales_per_Employee,PC_Market_Price
FROM [PC_Sales_Stg].[dbo].[PC_sales_dataset_Stg];

-- Check whether the table was succesfully created
SELECT * FROM [PC_Sales_Stg].[dbo].[PC_Sales_Fact];