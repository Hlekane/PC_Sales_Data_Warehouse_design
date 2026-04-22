USE master;
GO

-- Create Staging Database
IF DB_ID('PC_Sales_Stg') IS NULL
BEGIN
    CREATE DATABASE PC_Sales_Stg;
END
GO

-- Create Data Warehouse Database
IF DB_ID('PC_Sales_Dwh') IS NULL
BEGIN
    CREATE DATABASE PC_Sales_Dwh;
END
GO