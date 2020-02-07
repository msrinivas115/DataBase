
/*  =============================================
-- Author:		<Author, Srinivas>
-- Create date: <Create Date, 05/02/2020>
-- Description:	<Description, Searching User Details>
-- EXEC usp_GetUserDetails 2,'hyd',1

-- ============================================= */

CREATE PROCEDURE [dbo].[usp_GetUserDetails]
(
	@CountryId INT,
	@City	NVARCHAR (50),
	@PaymentType INT
)
AS 
BEGIN	
    SET NOCOUNT ON
		SELECT UserId,
			FirstName,
			LastName,
			EMail AS Email,
			Age,
			City,
			Address1,
			Address2, Payment, U.CountryId FROM [dbo].[Users] U 
			INNER JOIN CountryMaster CM ON U.CountryId = CM.CountryId WHERE CM.CountryId = @CountryId AND (City LIKE '%' + @City + '%' OR Payment = @PaymentType)
END