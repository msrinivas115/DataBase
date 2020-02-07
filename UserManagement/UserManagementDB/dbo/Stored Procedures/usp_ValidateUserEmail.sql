

/*  =============================================
-- Author:		<Author, Srinivas>
-- Create date: <Create Date, 05/02/2020>
-- Description:	<Description, Saving User Details>
-- EXEC usp_ValidateUserEmail 'seenu115@gamil.com'

-- ============================================= */

CREATE PROCEDURE [dbo].[usp_ValidateUserEmail]
(
    @EMail  NVARCHAR (100)
)
AS 
BEGIN	
    SET NOCOUNT ON
	DECLARE @UserID INT
	SELECT @UserID = UserId FROM dbo.Users WHERE EMail = @EMail --AND UserId = @UserId
	RETURN @UserID
END