-- Execution scripts to call on the saved stored procedures statements
USE PC_Sales_Stg
GO

CREATE PROCEDURE Sp_Get_Dims
AS
BEGIN

EXEC sp_create_dim_customer;
EXEC sp_create_dim_product;
EXEC Sp_Create_Dim_Date;
EXEC Sp_Create_Dim_Salesperson;
EXEC Sp_Create_Dim_Location;
EXEC Sp_Create_Dim_Channel;
EXEC Sp_Create_Dim_Payment_Method;
EXEC Sp_Create_Dim_Priority;
EXEC Sp_Create_Dim_Store;

END;

