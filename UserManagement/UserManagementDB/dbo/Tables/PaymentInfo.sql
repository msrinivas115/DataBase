CREATE TABLE [dbo].[PaymentInfo] (
    [PaymentId]   INT           IDENTITY (1, 1) NOT NULL,
    [PaymentType] NVARCHAR (50) NULL,
    CONSTRAINT [PK_PaymentInfo] PRIMARY KEY CLUSTERED ([PaymentId] ASC)
);

