IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'Users' and column_name = 'CompanyCountryId') ALTER TABLE [dbo].Users ADD [CompanyCountryId] [int] 
GO

IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'Users' and column_name = 'CompanyDistrictId') ALTER TABLE [dbo].[Users] ADD [CompanyDistrictId] [int]   
GO

IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'ProductSizes' and column_name = 'StokEndDate') ALTER TABLE [dbo].[ProductSizes] ADD [StokEndDate] [datetime]   
GO
 
IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'Products' and column_name = 'StokEndDate') ALTER TABLE [dbo].[Products] ADD [StokEndDate] [datetime]   
GO

IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'AlternativeMarkets' and column_name = 'SecretCode2') ALTER TABLE [dbo].[AlternativeMarkets] ADD [SecretCode2] [bit]   
GO

IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'Products' and column_name = 'ProductKey') ALTER TABLE [dbo].[Products] ADD [ProductKey] nvarchar(250)   
GO

/****** Object:  Trigger [dbo].[UpdateStok]    Script Date: 13.09.2014 13:46:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   TRIGGER [dbo].[UpdateStok]
ON [dbo].[OrderDetails]
FOR INSERT
AS 
BEGIN

DECLARE UpdateStok_Cursor CURSOR FOR SELECT ProductId,ProductSizeId,Quantity*Carpan,StorageId from Inserted

declare @ProductId int,@ProductSizeId int,@iQuantity int,@StorageId int

OPEN UpdateStok_Cursor
FETCH NEXT FROM UpdateStok_Cursor INTO  @ProductId,@ProductSizeId,@iQuantity,@StorageId

WHILE @@FETCH_STATUS = 0
BEGIN

if (@ProductSizeId > 0)
Begin
Update ProductSizes set StockQty=isnull(StockQty-@iQuantity,0) where ProductSizeId=@ProductSizeId
Update Products set StockQty = (Select isnull(sum(StockQty),0) from ProductSizes where StockQty>0 and ProductId=@ProductId) where ProductId=@ProductId
--textil tamamlan�nca a��lacak elvan
--update ProductStorages set Quantity=isnull(Quantity-@iQuantity,0) where ProductSizeOptionId =@ProductSizeId and ProductId=@ProductId and StorageId=@StorageId
--extra control
declare @StockQty int
select @StockQty = isnull(sum(StockQty),0) from ProductSizes where StockQty >=0 and ProductSizeId=@ProductSizeId
	if (@StockQty <= 0)
    Begin
    delete dbo.ShoppingCart Where ProductSizeId=@ProductSizeId
	Update Products set StokEndDate=GETDATE() where  ProductId=@ProductId
	Update ProductSizes set StokEndDate=GETDATE() where  ProductSizeId=@ProductSizeId
    End
    else
    begin
    Update dbo.ShoppingCart set Qty=@StockQty Where ProductSizeId=@ProductSizeId
    end
    End
    Else
    Begin

    Update Products set StockQty=StockQty- @iQuantity where ProductId=@ProductId
    update ProductStorages set Quantity=isnull(Quantity-@iQuantity,0) where ProductSizeOptionId =@ProductSizeId and ProductId=@ProductId and StorageId=@StorageId
	declare @StockQty2 int
    select @StockQty2 = isnull(StockQty,0) from Products where ProductId=@ProductId
		if (@StockQty2 <= 0)
        Begin
	    Update Products set StokEndDate=GETDATE() where  ProductId=@ProductId
        End
    End

    FETCH NEXT FROM UpdateStok_Cursor INTO @ProductId,@ProductSizeId,@iQuantity ,@StorageId
    END
    CLOSE UpdateStok_Cursor
    DEALLOCATE UpdateStok_Cursor

    END

GO

 
/****** Object:  Table [dbo].[BookMarks]    Script Date: 13.09.2014 13:47:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookMarks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BookMarks](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [nvarchar](50) NULL,
	[MenuName] [nvarchar](250) NULL,
	[UserID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_BookMarks_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_BookMarks] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DatabaseBackUpList]    Script Date: 13.09.2014 13:47:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DatabaseBackUpList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DatabaseBackUpList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserName] [nvarchar](100) NULL,
	[UserIp] [nvarchar](100) NULL,
	[Path] [nvarchar](100) NULL,
	[BackUpDate] [nvarchar](100) NULL,
	[BackUpAgain] [nvarchar](100) NULL,
 CONSTRAINT [PK_DatabaseBackUpList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Licances]    Script Date: 13.09.2014 13:47:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Licances]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Licances](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[LicanceName] [nvarchar](100) NULL,
	[LicanceKey] [nvarchar](100) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Licances] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 13.09.2014 13:47:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Notifications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Notifications](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[NotificationSubject] [nvarchar](150) NULL,
	[NotificationDetail] [nvarchar](500) NULL,
	[SubjectLink] [nvarchar](150) NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO

 
/****** Object:  View [dbo].[ProductSizeList]    Script Date: 13.09.2014 13:51:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[ProductSizeList]
AS
SELECT        dbo.ProductSizes.ProductSizeId, dbo.ProductSizes.ProductId, dbo.ProductSizes.ProductSizeOptionId, dbo.ProductSizeOptions.ProductSizeOptionName, 
                         dbo.ProductSizeOptionsValues.ProductSizeOptionsValueName AS Size0Name, dbo.ProductSizeOptionsValues.ProductSizeOptionsPath AS Size0Path, 
                         ISNULL(dbo.ProductImages.ImageId, 0) AS ProductImageId, ProductSizeOptionsValues_1.ProductSizeOptionsValueName AS Size1Name, 
                         ProductSizeOptionsValues_2.ProductSizeOptionsValueName AS Size2Name, dbo.ProductSizes.StockQty, dbo.ProductSizes.Barcode, 
                         dbo.ProductImages.Path AS ProductImagePath, dbo.ProductSizeOptions.ProductSize0Active, dbo.ProductSizeOptions.ProductSize1Active, 
                         dbo.ProductSizeOptions.ProductSize2Active, dbo.Products.ProductCode, dbo.ProductSizeOptions.ProductSize0Name, dbo.ProductSizeOptions.ProductSize1Name, 
                         dbo.ProductSizeOptions.ProductSize2Name, dbo.ProductSizes.ProductSize0ValueId, dbo.ProductSizes.ProductSize1ValueId, dbo.ProductSizes.ProductSize2ValueId, 
                         dbo.ProductSizes.StockQty2, dbo.ProductSizes.StockChange, dbo.ProductSizes.StockCheck, dbo.ProductSizes.StokEndDate
FROM            dbo.ProductSizes INNER JOIN
                         dbo.ProductSizeOptions ON dbo.ProductSizes.ProductSizeOptionId = dbo.ProductSizeOptions.ProductSizeOptionId INNER JOIN
                         dbo.ProductSizeOptionsValues ON dbo.ProductSizes.ProductSize0ValueId = dbo.ProductSizeOptionsValues.ProductSizeOptionsValueId INNER JOIN
                         dbo.Products ON dbo.ProductSizes.ProductId = dbo.Products.ProductId LEFT OUTER JOIN
                         dbo.ProductSizeOptionsValues AS ProductSizeOptionsValues_1 ON 
                         dbo.ProductSizes.ProductSize1ValueId = ProductSizeOptionsValues_1.ProductSizeOptionsValueId LEFT OUTER JOIN
                         dbo.ProductSizeOptionsValues AS ProductSizeOptionsValues_2 ON 
                         dbo.ProductSizes.ProductSize2ValueId = ProductSizeOptionsValues_2.ProductSizeOptionsValueId LEFT OUTER JOIN
                         dbo.ProductImages ON dbo.ProductSizes.ProductImageId = dbo.ProductImages.ImageId

GO


/****** Object:  View [dbo].[UserList]    Script Date: 13.09.2014 13:51:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[UserList]
AS
SELECT        dbo.Users.UserId, dbo.Users.FullName, dbo.Users.Name, dbo.Users.Email, dbo.Users.Password, dbo.Users.Phone1, dbo.Users.Phone2, 
                         dbo.Users.FaxNumber, dbo.Users.MobilePhone, dbo.CRMCitys.CityName AS UserCity, dbo.Users.CreatedDate, dbo.Users.DisAccount, 
                         dbo.Users.Description, dbo.Users.IsActive, dbo.Users.Addres, dbo.Users.StokIsk, dbo.Users.StokIskActive, dbo.Users.UserType, dbo.Users.UserSex, 
                         dbo.Users.CompanyCode, dbo.Users.CompanyName, dbo.Users.CompanyPhone1, dbo.Users.CompanyPhone2, dbo.Users.CompanyEmail, 
                         dbo.Users.CompanyAddres, dbo.Users.CompanyWeb, dbo.Users.IsReseller, dbo.Users.TCKimlikNo, dbo.Users.PortalId
FROM            dbo.Users LEFT OUTER JOIN
                         dbo.CRMCitys ON dbo.Users.CityId = dbo.CRMCitys.CityId



GO

 

/****** Object:  StoredProcedure [dbo].[OrdersAddN11]    Script Date: 13.09.2014 13:51:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [dbo].[OrdersAddN11]
(
    @PortalId					int,
    @CartId					nvarchar(50),
    @OrderDate				 datetime,
    @PaymenType				 nvarchar(30),
    @IsPayed				bit,
    @Note					nvarchar(400),
    @ShippingName			nvarchar(100),
    @ShippingPhoneNo		 nvarchar(15),
    @ShippingMobilePhoneNo	 nvarchar(15),
    @ShippingCityName		nvarchar(50),
    @ShippingAddress		 nvarchar(400),
    @ShippingCargoName		 nvarchar(50),
    @BillingName			nvarchar(100),
	@BillingPhoneNo		 nvarchar(15),
    @BillingMobilePhoneNo	 nvarchar(15),
    @BillingTaxOffice		nvarchar(50),
    @BillingTaxNo			nvarchar(20),
    @BillingCityName		nvarchar(50),
    @BillingAddress			nvarchar(400),
    @ToplamTutar			decimal(18,2),
    @KdvDahilToplam			decimal(18,2),
    @ToplamKdv				decimal(18,2),
    @ToplamKargo			decimal(18,2),
    @KargoDahilToplamTutar	decimal(18,2),
    @CekIndirimi	decimal(18,2)=0,
    @ToplamIndirim			decimal(18,2),
    @ToplamAgirlik			decimal(18,2),
    @ToplamHacim			decimal(18,2),
    @ToplamDesi decimal(18,2)=0,
    @ShoppingCartDefId  int=0,
    @BankName				 nvarchar(50),
    @BankId				 int,
    @CardName	nvarchar(50)='',
    @Taksit					 int,
    @BankaToplamTutar		  decimal(18,2),
    @BankPayType			 nvarchar(10),
    @StokIndirim int,  
	@StokIskActive bit,
	@Status int =0,
	@ToplamPuan decimal(18,2),
	@CampainId int=0,
	@Ip varchar(16)='',
	@OrderCode varchar(10)='',
	@OrderPaymentCode nvarchar(50)='',
    @CurrencyRate		  decimal(10, 4),
    @CurrencyCode		  nvarchar(10)='',
    @CustomerCurrencyRate		  decimal(10, 4),
    @CustomerCurrencyCode		  nvarchar(10)='',
    @TaksitRate		  decimal(10, 2),
	@ShippingCountryName		  nvarchar(50)='',
    @ShippingDistrictName		  nvarchar(50)='',
    @BillingCountryName		  nvarchar(50)='',
    @BillingDistrictName		  nvarchar(50)='',
	@ShippingMail nvarchar(100),
    @OrderId				 int OUTPUT
)
AS 
BEGIN TRAN AddOrder

--Create the Order  -
INSERT INTO Orders
(
PortalId		,
CustomerId		,
OrderDate		,
PaymentType		,
IsPayed			,
Note			,	
ShippingName		,	
ShippingPhoneNo		,
ShippingMobilePhone,	
ShippingCityName	,	
ShippingAddress		,
ShippingCargoName	,	
BillingName		,
BillingPhoneNo	,
BillingMobilePhoneNo	,
BillingTaxOffice	,	
BillingTaxNo		,	
BillingCityName		,
BillingAddress		,	
ToplamTutar		,
KdvDahilToplam		,	
ToplamKdv		,	
ToplamKargo		,
KargoDahilToplamTutar	,	
ToplamIndirim		,	
ToplamAgirlik		,	
ToplamHacim		,
ToplamDesi,
BankName		,
BankId			,
CardName,
Taksit			, 
BankaToplamTutar,
BankPayType,
Status,
CekIndirimi,
ToplamPuan,
Ip,
OrderCode,
OrderPaymentCode,
CurrencyRate,
CurrencyCode,
CustomerCurrencyRate,
CustomerCurrencyCode,
TaksitRate,
ShippingCountryName,
ShippingDistrictName,
BillingCountryName,
BillingDistrictName,ShippingMail
 )
VALUES
(   
@PortalId		,
case when (isnumeric(@CartId)=1 and @CartId>0 ) then @CartId else -1 end, 
--@CartId			,
@OrderDate			,
@PaymenType			,
@IsPayed			,
@Note				,
@ShippingName			,
@ShippingPhoneNo		,
@ShippingMobilePhoneNo		,
@ShippingCityName		,
@ShippingAddress		,
@ShippingCargoName		,
@BillingName			,
@BillingPhoneNo		 ,
@BillingMobilePhoneNo	 ,
@BillingTaxOffice		,
@BillingTaxNo			,
@BillingCityName		,
@BillingAddress			,
@ToplamTutar			,
@KdvDahilToplam			,
@ToplamKdv			,
@ToplamKargo			,
@KargoDahilToplamTutar		,
@ToplamIndirim			,
@ToplamAgirlik			,
@ToplamHacim			,
@ToplamDesi,
@BankName			,
@BankId				,
@CardName,
@Taksit				,
@BankaToplamTutar  		,
@BankPayType	,
@Status,
@CekIndirimi,
@ToplamPuan,
@Ip,
@OrderCode,
@OrderPaymentCode,
@CurrencyRate,
@CurrencyCode,
@CustomerCurrencyRate,
@CustomerCurrencyCode,
@TaksitRate,
@ShippingCountryName,
@ShippingDistrictName,
@BillingCountryName,
@BillingDistrictName,@ShippingMail
)

SELECT
    @OrderId = @@Identity   

-- Add N11 Order - Proticaret Orders Table

COMMIT TRAN AddOrder

--ShoppingCartList 1 ,'N' 



GO

   
/****** Object:  StoredProcedure [dbo].[SqlBackUp]    Script Date: 13.09.2014 13:54:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SqlBackUp]
(
@name VARCHAR(50),   
@path VARCHAR(256), 
@fileName VARCHAR(256) ,
@fileDate VARCHAR(256) ,
@oldFileDate VARCHAR(256),
@dbname VARCHAR(256)

)
AS
BEGIN

SELECT @fileDate    = CONVERT(VARCHAR(20),GETDATE(),112) 
SELECT @oldFileDate = CONVERT(VARCHAR(20),dateadd(d,-5,GETDATE()),112) 
  

SELECT @fileDate    = CONVERT(VARCHAR(20),GETDATE(),112) 
SELECT @oldFileDate = CONVERT(VARCHAR(20),dateadd(d,-5,GETDATE()),112) 

DECLARE db_cursor CURSOR FOR  
SELECT name 
FROM master.dbo.sysdatabases 
WHERE name  IN (@name)  

OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @name   

WHILE @@FETCH_STATUS = 0   
BEGIN   

       SET @fileName = @path + @name + '_' + @fileDate + '.bak'  
       BACKUP DATABASE @name TO DISK = @fileName 



       FETCH NEXT FROM db_cursor INTO @name   
END   

CLOSE db_cursor   
DEALLOCATE db_cursor
 

END


GO

  
/****** Object:  StoredProcedure [dbo].[getAllReportOfCampaign]    Script Date: 22.09.2014 11:29:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[getAllReportOfCampaign]
AS
begin
select campaignName, sendDate,  
(select sum(sendCount) from CosCampaign) as sendCount,
(select sum(openedMail) from CosCampaign) as openedMail,
(select Sum(mailCount) from CosCampaign) as mailCount,
(select sum(clickedCount) from CosLinkClicked) as clickedLink,
(select count(*) from CosComplaintMail) as Complaint
from CosCampaign 
end


GO

 
/****** Object:  StoredProcedure [dbo].[ShoppingCartAddItem]    Script Date: 09.10.2014 16:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ShoppingCartAddItem]
(
    @CartId nvarchar(50),
    @ShoppingCartDefId as int,
    @ProdId int,
	@Qty int,
	@PriceId int=0, 
	@Description nvarchar(500)='',
	@Attributes nvarchar(255)='',
	@ValueAdd decimal(18,4)=0,
	@NewDesi decimal(18,2)=0,
	@ProductSizeId int=0,
	@StorageId int ,
	@CartTimeOut datetime,
	@Return int OUTPUT
)
As
-- do not allow to buy or add product is not in stock (ferit)
DECLARE @Stock int
Declare @SellNoneStock bit
declare @SellLimitToUser tinyint
declare @Price_Id int
DECLARE @CountItems int

if @PriceId=0
begin
select @Price_Id=UnitId from ProductUnits where IsDefault=1 and ProductId=@ProdId
end
else
Begin
select @Price_Id=@PriceId 
end

if @ProductSizeId=0
	Begin
	SELECT @Stock = StockQty,@SellNoneStock=SellNoneStock,@SellLimitToUser=isnull(SellLimitToUser,0) FROM Products	WHERE ProductId = @ProdId    
	SELECT @CountItems = isnull(sum(Qty),0) FROM ShoppingCart WHERE ProdId = @ProdId AND PriceId=@Price_Id and ShoppingCartDefId=@ShoppingCartDefId AND CartId = @CartId AND Description=@Description
	End
Else
	Begin
	SELECT @Stock = ProductSizes.StockQty,@SellNoneStock=SellNoneStock,@SellLimitToUser=isnull(SellLimitToUser,0) FROM Products inner join ProductSizes on Products.ProductId=ProductSizes.ProductId WHERE Products.ProductId = @ProdId and ProductSizeId=@ProductSizeId   
	SELECT @CountItems = isnull(sum(Qty),0) FROM ShoppingCart WHERE ProdId = @ProdId AND PriceId=@Price_Id and ShoppingCartDefId=@ShoppingCartDefId AND CartId = @CartId and ProductSizeId=@ProductSizeId  
	End

 -- do not allow to buy or add product is not alloved max qty (ferit)
if @SellLimitToUser>0	
	Begin
		Declare @SellCount int
		select @SellCount=SUM(Quantity * Carpan) from orderList
		where ProductId=@ProdId and CustomerId=@CartId group by CustomerId
		
		if isnull(@SellCount,0)+isnull(@CountItems,0)+ @Qty > @SellLimitToUser
			Begin	
			SELECT @Return=2
			UPDATE ShoppingCart SET Qty = @SellLimitToUser 
			WHERE ProdId = @ProdId AND PriceId=@Price_Id AND CartId = @CartId and ShoppingCartDefId=@ShoppingCartDefId and Attributes=@Attributes
			RETURN 			
			End
	end 
-- do not allow to buy or add product is not in stock (ferit)
IF @CountItems > 0  /* There are items - update the current quantity */
 BEGIN
	If ((@Stock >=(@CountItems + @Qty))or (@SellNoneStock=1))
    	BEGIN    	
		UPDATE ShoppingCart SET Qty = (@Qty + ShoppingCart.Qty)
   		WHERE ProdId = @ProdId AND PriceId=@Price_Id AND CartId = @CartId and ShoppingCartDefId=@ShoppingCartDefId and Attributes=@Attributes
		SELECT @Return=1
		END
	else
	begin
	SELECT @Return=0
	end
END
ELSE  /* New entry for this Cart.  Add a new record */
BEGIN
	If ((@Stock >=(@Qty+@CountItems)) or (@SellNoneStock=1))
		BEGIN   	
   		 INSERT INTO ShoppingCart (CartId,ShoppingCartDefId,Qty,ProdId,PriceId,Description,Attributes,ValueAdd,NewDesi,ProductSizeId,CartTimeOut,StorageId)
   		 VALUES (@CartId,@ShoppingCartDefId,@Qty,@ProdId,@Price_Id,@Description,@Attributes,@ValueAdd,@NewDesi,@ProductSizeId,@CartTimeOut,@StorageId)
		SELECT @Return=(select top 1 RecordId from ShoppingCart order by RecordId desc)
		END
	ELSE
		SELECT @Return=0
END

 
SET ANSI_NULLS ON

GO

UPDATE Portals Set Version='3.0'
 
GO