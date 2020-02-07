
/*  =============================================
-- Author:		<Author, Srinivas>
-- Create date: <Create Date, 05/02/2020>
-- Description:	<Description, Saving User Details>
-- EXEC usp_SaveUserDetails 0,'User2','User2','User1@gmail.com',23,'A','B','HYD',2,1

-- ============================================= */

CREATE PROCEDURE [dbo].[usp_SaveUserDetails]
(
	@UserId INT,
    @FirstName NVARCHAR (100),
    @LastName  NVARCHAR (100),
    @EMail     NVARCHAR (50),
    @Age       INT NULL,
	@Address1  NVARCHAR (200),
	@Address2  NVARCHAR (200),
    @City NVARCHAR (200),
	@CountryId INT,
	@PaymentType INT
)
AS 
BEGIN	
    SET NOCOUNT ON
	DECLARE @UId INT 
	-- Condition for inser or update
	IF @UserId <= 0
	BEGIN
		INSERT INTO [dbo].[Users] (FirstName, LastName, EMail, Age, Address1, Address2, City, Payment, CountryId)
			VALUES (@FirstName, @LastName, @EMail, @Age, @Address1, @Address2, @City, @PaymentType, @CountryId)
		SELECT @UId = SCOPE_IDENTITY()
		PRINT @UId
		RETURN @UId
	END
	ELSE
	BEGIN
		UPDATE [dbo].[Users] SET FirstName = @FirstName, LastName = @LastName, EMail = @EMail, Age= @Age, Address1 = @Address1, Address2 = @Address2 WHERE UserId = @UserId
		SET @UId = @UserId
		RETURN @UId
	END
END