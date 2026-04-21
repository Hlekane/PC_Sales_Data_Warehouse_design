-- Create a stored procedure to DROP the stored procedures for the all the dim tables

USE PC_Sales_Stg
GO

CREATE PROCEDURE Sp_Drop_Dim_Procedures
AS 
BEGIN
DROP PROCEDURE Sp_Create_Dim_Customer;

DROP PROCEDURE Sp_Create_Dim_Product;

DROP PROCEDURE Sp_Create_Dim_Date;

DROP PROCEDURE Sp_Create_Dim_Salesperson;

DROP PROCEDURE Sp_Create_Dim_Location;

DROP PROCEDURE Sp_Create_Dim_Channel;

DROP PROCEDURE Sp_Create_Dim_Payment_Method;

DROP PROCEDURE Sp_Create_Dim_Priority;

DROP PROCEDURE Sp_Create_Dim_Store;

END;

