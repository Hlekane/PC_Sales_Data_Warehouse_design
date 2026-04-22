

-- Execution scripts to call on the saved stored procedures statement for the dact table
USE PC_Sales_Stg
GO

CREATE PROCEDURE Sp_Get_Fact_Table
AS
BEGIN

EXEC Sp_Create_PC_Sales_Fact

END;