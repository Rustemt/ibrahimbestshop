 
/****** Object:  Table [dbo].[BookedProducts]    Script Date: 27.12.2014 13:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookedProducts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BookedProducts](
	[BookedId] [int] IDENTITY(1,1) NOT NULL,
	[BookedCode] [nvarchar](50) NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
	[OrderDate] [datetime] NULL,
	[UserId] [int] NULL,
	[Carpan] [decimal](18, 2) NULL,
	[ProductSizeId] [int] NULL,
	[StorageId] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[OrderId] [int] NULL,
	[OrderCode] [nvarchar](50) NULL,
	[PriceId] [int] NULL,
 CONSTRAINT [PK_BookedProducts] PRIMARY KEY CLUSTERED 
(
	[BookedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BookedStatus]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookedStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BookedStatus](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_BookedStatus] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BookmarkList]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookmarkList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BookmarkList](
	[BookmarkId] [int] IDENTITY(1,1) NOT NULL,
	[PortalId] [int] NOT NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
	[BookmarkTypeId] [tinyint] NULL,
	[CreatedDate] [smalldatetime] NULL,
 CONSTRAINT [PK_BookmarkList] PRIMARY KEY CLUSTERED 
(
	[BookmarkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[C2C_Cargos]    Script Date: 05.01.2015 11:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[C2C_Cargos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[C2C_Cargos](
	[CargoId] [int] IDENTITY(1,1) NOT NULL,
	[CargoName] [nvarchar](50) NULL,
	[CargoCode] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_C2C_Cargos] PRIMARY KEY CLUSTERED 
(
	[CargoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Table [dbo].[C2C_CategoryComissionRate]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[C2C_CategoryComissionRate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[C2C_CategoryComissionRate](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[CatId] [int] NULL,
	[CommissionRate] [decimal](18, 2) NULL,
 CONSTRAINT [PK_C2C_CategoryComissionRate] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[C2C_DeliveryList]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[C2C_DeliveryList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[C2C_DeliveryList](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [nvarchar](50) NULL,
	[CargoPriceType] [int] NULL,
	[IsActive] [bit] NULL,
	[CargoId] [nvarchar](150) NULL,
	[Note] [nvarchar](250) NULL,
	[SecretCode1] [nvarchar](50) NULL,
	[ShopId] [int] NULL,
 CONSTRAINT [PK_C2C_DeliveryList] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[C2C_Previliges]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[C2C_Previliges]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[C2C_Previliges](
	[PreID] [int] IDENTITY(1,1) NOT NULL,
	[ShopId] [int] NOT NULL,
	[AddDifferentProduct] [bit] NULL,
	[AddTekstilProduct] [bit] NULL,
	[AddImage] [bit] NULL,
	[AddVideo] [bit] NULL,
	[AddUnit] [bit] NULL,
	[AddColorAndSize] [bit] NULL,
	[AddVariant] [bit] NULL,
	[AddAlternative] [bit] NULL,
	[AddSupplies] [bit] NULL,
 CONSTRAINT [PK_C2C_Previliges] PRIMARY KEY CLUSTERED 
(
	[PreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[C2C_ProductDelivery]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[C2C_ProductDelivery]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[C2C_ProductDelivery](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[DeliveryId] [int] NULL,
 CONSTRAINT [PK_C2C_ProductDelivery] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[C2CShopSettings]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[C2CShopSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[C2CShopSettings](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[ShopId] [int] NULL,
	[ShopName] [nvarchar](250) NULL,
	[ShopNickName] [nvarchar](20) NULL,
	[ShopType] [nvarchar](10) NULL,
	[HanseName] [nvarchar](250) NULL,
	[RegistrationNo] [nvarchar](20) NULL,
	[TaxOfficeCountry] [int] NULL,
	[TaxOfficeCity] [int] NULL,
	[TaxOfficeDistrict] [int] NULL,
	[TaxOfficeNo] [nvarchar](50) NULL,
	[ShopPhone] [nvarchar](20) NULL,
	[ShopMobile] [nvarchar](20) NULL,
	[ShopAddress] [nvarchar](250) NULL,
	[SignaturedName] [nvarchar](20) NULL,
	[SignaturedDegree] [nvarchar](50) NULL,
	[SignaturePhone] [nvarchar](20) NULL,
	[SignatureMobile] [nvarchar](20) NULL,
	[CommunicationName] [nvarchar](20) NULL,
	[CommunicationDegree] [nvarchar](50) NULL,
	[CommunicationPhone] [nvarchar](20) NULL,
	[CommunicationMobile] [nvarchar](20) NULL,
	[AccountName] [nvarchar](50) NULL,
	[AccountBankId] [int] NULL,
	[AccountBankOffice] [nvarchar](150) NULL,
	[IbanNo] [nvarchar](50) NULL,
	[Note] [nvarchar](250) NULL,
 CONSTRAINT [PK_C2CShopSettings] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CancelOrder]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CancelOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CancelOrder](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[UserId] [int] NULL,
	[Status] [int] NULL,
	[Integreted] [bit] NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[TotalTaxAmount] [decimal](18, 2) NULL,
	[TotalTax] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[AcceptUserId] [int] NULL,
 CONSTRAINT [PK_CancelOrder] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CancelOrderDetails]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CancelOrderDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CancelOrderDetails](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[CancelOrderId] [int] NULL,
	[UserId] [int] NULL,
	[OrderId] [int] NULL,
	[OrderDetailsId] [int] NULL,
	[Quantity] [int] NULL,
	[Status] [int] NULL,
	[ReasonReturn] [nvarchar](500) NULL,
	[ReasonId] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[AcceptDate] [datetime] NULL,
	[RequestId] [int] NULL,
	[CancelOrderType] [int] NULL,
	[AcceptUserId] [int] NULL,
	[LastChange] [datetime] NULL,
	[ProductId] [int] NULL,
	[ProductSizeId] [int] NULL,
	[StorageId] [int] NULL,
	[Carpan] [decimal](18, 2) NULL,
	[IsCoupon] [bit] NULL,
	[AdminNote] [nvarchar](500) NULL,
	[IbanNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_CancelOrderDetails] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CancelOrderReason]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CancelOrderReason]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CancelOrderReason](
	[ReasonId] [int] IDENTITY(1,1) NOT NULL,
	[ReasonName] [nvarchar](150) NULL,
	[SecretCode1] [nvarchar](50) NULL,
 CONSTRAINT [PK_CancelOrderReason] PRIMARY KEY CLUSTERED 
(
	[ReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CancelOrderRequest]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CancelOrderRequest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CancelOrderRequest](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[RequestName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_CancelOrderRequest] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MultiDiscountList]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MultiDiscountList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MultiDiscountList](
	[DiscountId] [int] IDENTITY(1,1) NOT NULL,
	[StartQty] [int] NULL,
	[EndQty] [int] NULL,
	[DiscountType] [int] NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[ProductId] [int] NULL,
	[UnitId] [int] NULL,
	[UnitName] [nvarchar](50) NULL,
 CONSTRAINT [PK_MultiDiscountList] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductGroups]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductGroups]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductGroups](
	[ProductGroupId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[GProductId] [int] NULL,
	[StockQty] [int] NULL,
	[UnitId] [int] NULL,
	[UnitName] [nvarchar](50) NULL,
	[Carpan] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ProductGroups] PRIMARY KEY CLUSTERED 
(
	[ProductGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BookedProducts_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BookedProducts] ADD  CONSTRAINT [DF_BookedProducts_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BookmarkList_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookmarkList]'))
ALTER TABLE [dbo].[BookmarkList]  WITH CHECK ADD  CONSTRAINT [FK_BookmarkList_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BookmarkList_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookmarkList]'))
ALTER TABLE [dbo].[BookmarkList] CHECK CONSTRAINT [FK_BookmarkList_Users]
GO
/****** Object:  Trigger [dbo].[BookedDelete]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[BookedDelete]'))
EXEC dbo.sp_executesql @statement = N'CREATE  TRIGGER [dbo].[BookedDelete]
ON [dbo].[BookedProducts]
FOR Delete
AS 
BEGIN

declare @ProductId int,@ProductSizeId int,@StorageId int
SELECT @ProductId=ProductId,@ProductSizeId=ProductSizeId,@StorageId=StorageId from deleted

if (@ProductSizeId > 0)
Begin
Update ProductSizes set StockQty=isnull(StockQty,0)+(d.Quantity*d.Carpan) from deleted d where d.ProductSizeId=ProductSizes.ProductSizeId and d.Status<>-1
Update Products set StockQty = (Select isnull(sum(StockQty),0) from ProductSizes where StockQty>0 and ProductId=@ProductId) where ProductId=@ProductId
End
Else
Begin
Update Products set StockQty=isnull(StockQty,0)+(d.Quantity*d.Carpan) from deleted d where d.ProductId=Products.ProductId and d.Status<>-1
Update ProductStorages set Quantity=isnull(ProductStorages.Quantity,0)+(d.Quantity*d.Carpan) from deleted d where d.ProductId=ProductStorages.ProductId and d.Status<>-1 
and ProductStorages.StorageId=@StorageId
End

END
' 
GO
/****** Object:  Trigger [dbo].[BookedUpdate]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[BookedUpdate]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[BookedUpdate]
ON [dbo].[BookedProducts]
FOR UPDATE
AS 
BEGIN

declare @ProductId int,@ProductSizeId int,@StorageId int
SELECT @ProductId=ProductId,@ProductSizeId=ProductSizeId,@StorageId=StorageId  from Inserted

if (@ProductSizeId > 0)

Begin
--iptal secilen
Update ProductSizes set StockQty=isnull(StockQty,0) + (i.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductSizeId=ProductSizes.ProductSizeId and i.ProductSizeId=ProductSizes.ProductSizeId
and i.Status=-1 and d.Status<>-1


--iptal degisen
Update ProductSizes set StockQty=isnull(StockQty,0) - (d.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductSizeId=ProductSizes.ProductSizeId and i.ProductSizeId=ProductSizes.ProductSizeId
and d.Status=-1 and i.Status<>-1

Update Products set StockQty = (Select isnull(sum(StockQty),0) from ProductSizes where StockQty>0 and ProductId=@ProductId) where ProductId=@ProductId

--Update ProductStorages set Quantity=isnull(ProductStorages.Quantity ,0) - (d.Quantity*d.Carpan)
--from deleted d,inserted i where d.ProductSizeId=ProductStorages.ProductSizeOptionId  and i.ProductSizeId=ProductStorages.ProductSizeOptionId 
--and d.Status=-1 and i.Status<>-1 and ProductStorages.StorageId=@StorageId 


--iptal secilen
Update ProductSizes set StockQty=isnull(StockQty,0) + (i.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductSizeId=ProductSizes.ProductSizeId and i.ProductSizeId=ProductSizes.ProductSizeId
and i.Status=-2 and d.Status<>-2


--iptal degisen
Update ProductSizes set StockQty=isnull(StockQty,0) - (d.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductSizeId=ProductSizes.ProductSizeId and i.ProductSizeId=ProductSizes.ProductSizeId
and d.Status=-2 and i.Status<>-2

Update Products set StockQty = (Select isnull(sum(StockQty),0) from ProductSizes where StockQty>0 and ProductId=@ProductId) where ProductId=@ProductId

--Update ProductStorages set Quantity=isnull(ProductStorages.Quantity ,0) - (d.Quantity*d.Carpan)
--from deleted d,inserted i where d.ProductSizeId=ProductStorages.ProductSizeOptionId  and i.ProductSizeId=ProductStorages.ProductSizeOptionId 
--and d.Status=-1 and i.Status<>-1 and ProductStorages.StorageId=@StorageId 

End

Else

Begin
--iptal secilen
Update Products set StockQty=isnull(StockQty,0) + (i.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductId=Products.ProductId and i.ProductId=Products.ProductId
and i.Status=-1 and d.Status<>-1 

--iptal degisen
Update Products set StockQty=isnull(StockQty,0) - (d.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductId=Products.ProductId and i.ProductId=Products.ProductId
and d.Status=-1 and i.Status<>-1

Update ProductStorages set Quantity=isnull(ProductStorages.Quantity ,0) - (d.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductSizeId=ProductStorages.ProductSizeOptionId  and i.ProductSizeId=ProductStorages.ProductSizeOptionId 
and d.Status=-1 and i.Status<>-1 and ProductStorages.StorageId=@StorageId 

Update ProductStorages set Quantity=isnull(ProductStorages.Quantity,0) + (i.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductId=ProductStorages.ProductId and i.ProductId=ProductStorages.ProductId
and i.Status=-1 and d.Status<>-1 and ProductStorages.StorageId=@StorageId 

--iptal secilen
Update Products set StockQty=isnull(StockQty,0) + (i.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductId=Products.ProductId and i.ProductId=Products.ProductId
and i.Status=-2 and d.Status<>-2 

--iptal degisen
Update Products set StockQty=isnull(StockQty,0) - (d.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductId=Products.ProductId and i.ProductId=Products.ProductId
and d.Status=-2 and i.Status<>-2

Update ProductStorages set Quantity=isnull(ProductStorages.Quantity ,0) - (d.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductSizeId=ProductStorages.ProductSizeOptionId  and i.ProductSizeId=ProductStorages.ProductSizeOptionId 
and d.Status=-2 and i.Status<>-2 and ProductStorages.StorageId=@StorageId 

Update ProductStorages set Quantity=isnull(ProductStorages.Quantity,0) + (i.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductId=ProductStorages.ProductId and i.ProductId=ProductStorages.ProductId
and i.Status=-2 and d.Status<>-2 and ProductStorages.StorageId=@StorageId 

End

END

/****** Object:  Trigger [dbo].[UpdateStok]    Script Date: 20.05.2014 16:16:11 ******/
SET ANSI_NULLS ON
' 
GO
/****** Object:  Trigger [dbo].[BookedUpdateStok]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[BookedUpdateStok]'))
EXEC dbo.sp_executesql @statement = N'CREATE   TRIGGER [dbo].[BookedUpdateStok]
ON [dbo].[BookedProducts]
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

' 
GO
/****** Object:  Trigger [dbo].[UpdateCancelStatus]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[UpdateCancelStatus]'))
EXEC dbo.sp_executesql @statement = N'CREATE   TRIGGER [dbo].[UpdateCancelStatus]
ON [dbo].[CancelOrder]
FOR UPDATE
AS 
BEGIN

if UPDATE (Status)
BEGIN
declare @OStatus int,@NStatus int,@CancelOrderId int,@UserId int
SELECT	@NStatus=Status,@CancelOrderId= IND,@UserId=AcceptUserId  from Inserted
SELECT	@OStatus=Status from Deleted
Update CancelOrderDetails set Status=@NStatus,AcceptUserId=@UserId,LastChange=GETDATE() where CancelOrderId=@CancelOrderId and Status=@OStatus

Update CancelOrderDetails set AcceptDate=GETDATE() where CancelOrderId=@CancelOrderId and Status=@OStatus and (@NStatus=-8 or @NStatus=-11)
END
END
' 
GO
/****** Object:  Trigger [dbo].[UpdateOnDeleteCancelOrder]    Script Date: 27.12.2014 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[UpdateOnDeleteCancelOrder]'))
EXEC dbo.sp_executesql @statement = N'
CREATE  TRIGGER [dbo].[UpdateOnDeleteCancelOrder]
ON [dbo].[CancelOrderDetails]
FOR Update
AS 
BEGIN

declare @ProductId int,@ProductSizeId int,@StorageId int
SELECT @ProductId=ProductId,@ProductSizeId=ProductSizeId,@StorageId=StorageId from deleted 

if (@ProductSizeId > 0)
Begin
Update ProductSizes set StockQty=isnull(StockQty,0)+(d.Quantity*d.Carpan) from deleted d,inserted i where d.ProductSizeId=ProductSizes.ProductSizeId and d.Status<>-8  and i.Status=-8
Update ProductSizes set StockQty=isnull(StockQty,0)-(d.Quantity*d.Carpan) from deleted d,inserted i where d.ProductSizeId=ProductSizes.ProductSizeId and d.Status=-8  and i.Status<>-8

Update Products set StockQty = (Select isnull(sum(StockQty),0) from ProductSizes where StockQty>0 and ProductId=@ProductId) where ProductId=@ProductId

End
Else
Begin


Update Products set StockQty=isnull(StockQty,0)+(d.Quantity*d.Carpan) from deleted d,inserted i where d.ProductId=Products.ProductId and d.Status<>-8  and i.Status=-8
Update Products set StockQty=isnull(StockQty,0)-(d.Quantity*d.Carpan) from deleted d,inserted i where d.ProductId=Products.ProductId and d.Status=-8  and i.Status<>-8




Update ProductStorages set Quantity=isnull(ProductStorages.Quantity,0)+(d.Quantity*d.Carpan) from deleted d,inserted i where d.ProductId=ProductStorages.ProductId and d.Status<>-8  and i.Status=-8
and ProductStorages.StorageId=@StorageId


Update ProductStorages set Quantity=isnull(ProductStorages.Quantity,0)+(d.Quantity*d.Carpan) from deleted d,inserted i where d.ProductId=ProductStorages.ProductId and d.Status=-8  and i.Status<>-8
and ProductStorages.StorageId=@StorageId

End

END
' 
GO
IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'Campains' and column_name = 'IsKdvDahil') ALTER TABLE [dbo].Campains ADD [IsKdvDahil] bit 
GO

IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'Campains' and column_name = 'MinPriceCart') ALTER TABLE [dbo].Campains ADD [MinPriceCart] decimal(18, 4) 
GO

IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'Categories' and column_name = 'ComissionRate') ALTER TABLE [dbo].Categories ADD [ComissionRate]  decimal(18, 2)  
GO

IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'OfferOpt' and column_name = 'IsOnlineKur') ALTER TABLE [dbo].OfferOpt ADD [IsOnlineKur] bit 
GO

IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'OrderDetails' and column_name = 'IsTransfered') ALTER TABLE [dbo].OrderDetails ADD [IsTransfered] bit NOT NULL DEFAULT 0
GO



IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'Products' and column_name = 'CompanyId') ALTER TABLE [dbo].Products ADD [CompanyId] int 
GO


IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'Users' and column_name = 'IsC2C') ALTER TABLE [dbo].Users ADD [IsC2C] int  NULL DEFAULT 0
GO

IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'Users' and column_name = 'ticketCount') ALTER TABLE [dbo].Users ADD [ticketCount] int  NULL DEFAULT 0
GO

/****** Object:  View [dbo].[AdminProductList]    Script Date: 27.12.2014 13:41:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[AdminProductList]
AS
SELECT        dbo.Categories.CatId, dbo.Categories.CatName, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.Description, 
                         dbo.Products.StockQty, dbo.ProductMarks.MarKName, dbo.Products.SellNoneStock, dbo.Products.ShowInMainPage, dbo.ProductMarks.MarkId, 
                         dbo.Products.ShowOrder, dbo.Products.Details, dbo.Products.Code11, dbo.Products.Code12, dbo.Products.Code13, dbo.Products.Code14, dbo.Products.Code15, 
                         dbo.Products.IsActive, dbo.Products.Code1, dbo.Products.PortalId, dbo.Products.CreatedDate, dbo.Categories.Lineage, dbo.Products.WizardId, dbo.Products.IsPenta, 
                         dbo.Products.CampainId, dbo.Products.UserId, dbo.Products.ProductSizeOptionId, dbo.Products.AuthorId, dbo.Products.ProviderId, dbo.Authors.AuthorId AS Expr1, 
                         dbo.Authors.AuthorName, dbo.Publishers.PublisherId, dbo.Publishers.PublisherName, dbo.Products.Code2, dbo.Products.Code3, dbo.Products.Code4, 
                         dbo.Products.Code5, dbo.Products.Code6, dbo.Products.Code7, dbo.Products.Code8, dbo.Products.Code9, dbo.Products.Code10, dbo.Products.StokType, 
                         dbo.Products.CompanyId
FROM            dbo.Products LEFT OUTER JOIN
                         dbo.Publishers ON dbo.Products.PublisherId = dbo.Publishers.PublisherId LEFT OUTER JOIN
                         dbo.Authors ON dbo.Products.AuthorId = dbo.Authors.AuthorId LEFT OUTER JOIN
                         dbo.ProductCategories INNER JOIN
                         dbo.Categories ON dbo.ProductCategories.CategoryId = dbo.Categories.CatId ON dbo.Products.ProductId = dbo.ProductCategories.ProductId LEFT OUTER JOIN
                         dbo.ProductMarks ON dbo.Products.MarkId = dbo.ProductMarks.MarkId

GO



/****** Object:  View [dbo].[AdminProductListAll]    Script Date: 27.12.2014 13:42:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[AdminProductListAll]
AS
SELECT        dbo.Categories.CatId, dbo.Categories.CatName, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.StockQty, 
                         dbo.ProductMarks.MarKName, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.SatisFiyati0, dbo.ProductUnits.SatisFiyati1, dbo.ProductUnits.SatisFiyati2, 
                         dbo.ProductUnits.SatisFiyati3, dbo.Products.SellNoneStock, dbo.Categories.PortalId, dbo.ProductMarks.MarkId, dbo.Products.Code1, dbo.ProductUnits.Desi, 
                         dbo.Products.IsActive, Currencys_0.CurrencyName AS Pb0, Currencys_1.CurrencyName AS Pb1, Currencys_2.CurrencyName AS Pb2, 
                         Currencys_3.CurrencyName AS Pb3, dbo.ProductUnits.UnitId, dbo.Products.ShowInMainPage, dbo.ProductUnits.LastModified, dbo.ProductUnits.AlisFiyati, 
                         Currencys_A.CurrencyName AS APb, dbo.Categories.Lineage, dbo.Products.CampainId, dbo.Products.IsPenta, dbo.ProductImages.Path, dbo.ProductImages.IsDefault, 
                         dbo.Products.CreatedDate, dbo.ProductUsages.UsageId, dbo.ProductAlternatives.AlternativeId, dbo.Products.WizardId, dbo.ProductAttributes.ProductAttributesId, 
                         dbo.Products.ShowOrder, dbo.Products.ForceCargo, dbo.Products.HizliKargo, dbo.Products.AyniGunTeslim, dbo.Products.IndirimliUrun, dbo.Products.FirsatUrunu, 
                         dbo.Products.SokFiyatliUrun, dbo.Products.EnUcuzUrun, dbo.Products.OzelUrun, dbo.Products.SinirliSayidaUrun, dbo.Products.YeniUrun, 
                         dbo.Products.HediyeliUrun, Currencys_P.CurrencyName AS PPb, dbo.ProductUnits.PiyasaFiyati, Currencys_4.CurrencyName AS Pb4, dbo.ProductUnits.SatisFiyati4, 
                         Currencys_5.CurrencyName AS Pb5, dbo.ProductUnits.SatisFiyati5, dbo.Products.UserId, dbo.Products.ProductSizeOptionId, dbo.Products.ProviderId, 
                         dbo.Authors.AuthorName, dbo.Authors.AuthorId, dbo.Publishers.PublisherId, dbo.Publishers.PublisherName, dbo.Products.AuthorId AS Expr2, dbo.Products.Code2, 
                         dbo.Products.Code3, dbo.Products.Code4, dbo.Products.Code5, dbo.Products.Code6, dbo.Products.Code7, dbo.Products.Code8, dbo.Products.Code9, 
                         dbo.Products.Code10, dbo.Products.Code11, dbo.Products.Code12, dbo.Products.Code13, dbo.Products.Code14, dbo.Products.Code15, dbo.ProductUnits.Barcode, 
                         dbo.Products.StokType, dbo.ProductUnits.KdvDahil, dbo.Products.CompanyId, dbo.Products.KdvId

FROM            dbo.Products INNER JOIN
                         dbo.Currencys AS Currencys_A INNER JOIN
                         dbo.Currencys AS Currencys_2 INNER JOIN
                         dbo.ProductUnits INNER JOIN
                         dbo.Currencys AS Currencys_1 ON dbo.ProductUnits.Pb1 = Currencys_1.CurrencyId ON Currencys_2.CurrencyId = dbo.ProductUnits.Pb2 INNER JOIN
                         dbo.Currencys AS Currencys_3 ON dbo.ProductUnits.Pb3 = Currencys_3.CurrencyId ON Currencys_A.CurrencyId = dbo.ProductUnits.APb INNER JOIN
                         dbo.Currencys AS Currencys_0 ON dbo.ProductUnits.Pb0 = Currencys_0.CurrencyId ON dbo.Products.ProductId = dbo.ProductUnits.ProductId INNER JOIN
                         dbo.Currencys AS Currencys_P ON dbo.ProductUnits.PPb = Currencys_P.CurrencyId INNER JOIN
                         dbo.Currencys AS Currencys_4 ON dbo.ProductUnits.Pb4 = Currencys_4.CurrencyId INNER JOIN
                         dbo.Currencys AS Currencys_5 ON dbo.ProductUnits.Pb5 = Currencys_5.CurrencyId LEFT OUTER JOIN
                         dbo.Authors ON dbo.Products.AuthorId = dbo.Authors.AuthorId LEFT OUTER JOIN
                         dbo.Publishers ON dbo.Products.PublisherId = dbo.Publishers.PublisherId LEFT OUTER JOIN
                         dbo.ProductAttributes ON dbo.Products.ProductId = dbo.ProductAttributes.ProductId LEFT OUTER JOIN
                         dbo.ProductAlternatives ON dbo.Products.ProductId = dbo.ProductAlternatives.ProductId LEFT OUTER JOIN
                         dbo.ProductUsages ON dbo.Products.ProductId = dbo.ProductUsages.ProductId LEFT OUTER JOIN
                         dbo.ProductImages ON dbo.Products.ProductId = dbo.ProductImages.ProductId LEFT OUTER JOIN
                         dbo.ProductMarks ON dbo.Products.MarkId = dbo.ProductMarks.MarkId LEFT OUTER JOIN
                         dbo.ProductCategories INNER JOIN
                         dbo.Categories ON dbo.ProductCategories.CategoryId = dbo.Categories.CatId ON dbo.Products.ProductId = dbo.ProductCategories.ProductId

GO



/****** Object:  View [dbo].[ProductList]    Script Date: 27.12.2014 13:42:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[ProductList]
AS
SELECT        dbo.Categories.CatId, dbo.Categories.CatName, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.Description, 
                         dbo.Products.StockQty, dbo.ProductKdvs.KdvRate, dbo.ProductImages.Path, dbo.ProductMarks.MarKName, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan, 
                         dbo.ProductUnits.SatisFiyati0, dbo.ProductUnits.SatisFiyati1, dbo.ProductUnits.SatisFiyati2, dbo.ProductUnits.SatisFiyati3, dbo.ProductUnits.Isk1, 
                         dbo.ProductUnits.Isk2, dbo.ProductUnits.Isk3, Currencys_0.CurrencyName AS Currency0, Currencys_1.CurrencyName AS Currency1, 
                         Currencys_2.CurrencyName AS Currency2, Currencys_3.CurrencyName AS Currency3, Currencys_0.Rate AS Rate0, Currencys_1.Rate AS Rate1, 
                         Currencys_2.Rate AS Rate2, Currencys_3.Rate AS Rate3, dbo.Products.SellNoneStock, dbo.Products.ShowInMainPage, dbo.Categories.PortalId, 
                         dbo.ProductMarks.MarkId, dbo.Products.ShowOrder, dbo.Products.Details, dbo.Categories.Url AS CatUrl, dbo.Products.Url AS ProductUrl, dbo.Categories.Lineage, 
                         dbo.Products.SearchKeywords, dbo.Products.Hit, dbo.Products.PublisherId, Currencys_P.CurrencyName AS CurrencyP, dbo.ProductUnits.PiyasaFiyati, 
                         Currencys_4.CurrencyName AS Currency4, Currencys_5.CurrencyName AS Currency5, Currencys_4.Rate AS Rate4, Currencys_5.Rate AS Rate5, 
                         Currencys_P.Rate AS RateP, Currencys_A.Rate AS RateA, dbo.ProductUnits.SatisFiyati4, dbo.ProductUnits.SatisFiyati5, dbo.ProductUnits.Isk4, dbo.ProductUnits.Isk5,
                          dbo.Products.HizliKargo, dbo.Products.AyniGunTeslim, dbo.Products.IndirimliUrun, dbo.Products.FirsatUrunu, dbo.Products.SokFiyatliUrun, 
                         dbo.Products.EnUcuzUrun, dbo.Products.OzelUrun, dbo.Products.SinirliSayidaUrun, dbo.Products.YeniUrun, dbo.Products.HediyeliUrun, dbo.Products.StartDate, 
                         dbo.Products.EndDate, dbo.Categories.StartDate AS CStartDate, dbo.Categories.EndDate AS CEndDate, dbo.Products.ProductSizeOptionId, dbo.ProductUnits.Barcode,
                          dbo.Products.Code15, dbo.Products.Code14, dbo.Products.Code13, dbo.Products.Code12, dbo.Products.Code11, dbo.Products.Code10, dbo.Products.Code9, 
                         dbo.Products.Code8, dbo.Products.Code7, dbo.Products.Code6, dbo.Products.Code5, dbo.Products.Code4, dbo.Products.Code3, dbo.Products.Code2, 
                         dbo.Products.Code1, dbo.Products.StokType, dbo.ProductUnits.AlisFiyati, dbo.Products.AuthorId, dbo.Products.CompanyId
FROM            dbo.ProductCategories INNER JOIN
                         dbo.Categories ON dbo.ProductCategories.CategoryId = dbo.Categories.CatId INNER JOIN
                         dbo.ProductUnits INNER JOIN
                         dbo.Products ON dbo.ProductUnits.ProductId = dbo.Products.ProductId ON dbo.ProductCategories.ProductId = dbo.Products.ProductId INNER JOIN
                         dbo.ProductKdvs ON dbo.Products.KdvId = dbo.ProductKdvs.KdvId INNER JOIN
                         dbo.ProductImages ON dbo.Products.ProductId = dbo.ProductImages.ProductId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_5 ON dbo.ProductUnits.Pb5 = Currencys_5.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_4 ON dbo.ProductUnits.Pb4 = Currencys_4.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_P ON dbo.ProductUnits.PPb = Currencys_P.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_0 ON dbo.ProductUnits.Pb0 = Currencys_0.CurrencyId LEFT OUTER JOIN
                         dbo.ProductMarks ON dbo.Products.MarkId = dbo.ProductMarks.MarkId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_2 ON dbo.ProductUnits.Pb2 = Currencys_2.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_1 ON dbo.ProductUnits.Pb1 = Currencys_1.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_3 ON dbo.ProductUnits.Pb3 = Currencys_3.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_A ON dbo.ProductUnits.APb = Currencys_A.CurrencyId
WHERE        (dbo.Categories.IsActive = 1) AND (dbo.ProductMarks.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.ProductUnits.IsDefault = 1) AND 
                         (dbo.Products.IsActive = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, 
                         GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, 
                         - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.ProductUnits.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND 
                         (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND 
                         (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) 
                         AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (dbo.ProductMarks.MarkId IS NULL) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductMarks.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.ProductUnits.IsDefault = 1) AND 
                         (dbo.Products.IsActive = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, 
                         GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, 
                         - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.ProductUnits.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND 
                         (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND 
                         (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) 
                         AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (dbo.ProductMarks.MarkId IS NULL) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductMarks.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.ProductUnits.IsDefault = 1) AND 
                         (dbo.Products.IsActive = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, 
                         GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, 
                         - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.ProductUnits.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND 
                         (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND 
                         (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) 
                         AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (dbo.ProductMarks.MarkId IS NULL) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductMarks.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.ProductUnits.IsDefault = 1) AND 
                         (dbo.Products.IsActive = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, 
                         GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, 
                         - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.ProductUnits.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND 
                         (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND 
                         (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) 
                         AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (dbo.ProductMarks.MarkId IS NULL)

GO



/****** Object:  View [dbo].[ProductsExportAll]    Script Date: 27.12.2014 13:43:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER VIEW [dbo].[ProductsExportAll]
AS
SELECT        TOP (100) PERCENT P.IsActive AS UrunAktif, P.ProductCode AS StokKodu, P.ProductName AS StokAdi, P.Description AS StokAciklama, P.Details,  P.StokType,P.StokSubType,P.CompanyId,
                         REPLACE(P.StockQty, '.', ',') AS StokEnvanter, ISNULL
                             ((SELECT        TOP 1 Path
                                 FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
                                 FROM            ProductImages
                                 WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 1), '') AS StokResmi, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 2), '') AS StokResmi2, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 3), '') AS StokResmi3, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 4), '') AS StokResmi4, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 5), '') AS StokResmi5, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 6), '') AS StokResmi6, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 7), '') AS StokResmi7, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 8), '') AS StokResmi8, ISNULL(dbo.ProductMarks.MarKName, N'') AS MarkaAdi, REPLACE(dbo.ProductKdvs.KdvRate, '.', ',') AS KdvOrani, 
dbo.ProductUnits.BirimAdi, REPLACE(dbo.ProductUnits.Carpan, '.', ',') AS BirimCarpan, REPLACE(dbo.ProductUnits.SatisFiyati0, '.', ',') AS SatisFiyati0, 
Currencys_0.CurrencyName AS SatisFiyati0ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati1, '.', ',') AS SatisFiyati1, dbo.ProductUnits.Isk1, 
Currencys_1.CurrencyName AS SatisFiyati1ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati2, '.', ',') AS SatisFiyati2, dbo.ProductUnits.Isk2, 
Currencys_2.CurrencyName AS SatisFiyati2ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati3, '.', ',') AS SatisFiyati3, dbo.ProductUnits.Isk3, 
Currencys_3.CurrencyName AS SatisFiyati3ParaBirimi, REPLACE(dbo.ProductUnits.AlisFiyati, '.', ',') AS AlisFiyati, Currencys_A.CurrencyName AS AlisFiyatiParaBirimi, 
REPLACE(dbo.ProductUnits.En, '.', ',') AS En, REPLACE(dbo.ProductUnits.Boy, '.', ',') AS Boy, REPLACE(dbo.ProductUnits.Yukseklik, '.', ',') AS Yukseklik, 
REPLACE(dbo.ProductUnits.Agirlik, '.', ',') AS Agirlik, REPLACE(dbo.ProductUnits.Desi, '.', ',') AS Desi, P.PortalId, P.SellNoneStock, P.Code1 AS Kod1, P.Code2 AS Kod2, 
P.Code3 AS Kod3, P.Code4 AS Kod4, P.Code5 AS Kod5, P.Code6 AS Kod6, P.Code7 AS Kod7, P.Code8 AS Kod8, P.Code9 AS Kod9, P.Code10 AS Kod10, 
P.Code11 AS Kod11, P.Code12 AS Kod12, P.Code13 AS Kod13, P.Code14 AS Kod14, P.Code15 AS Kod15, P.ProductId AS UrunId, P.CreatedDate, 
P.ProviderStockCode AS UreticiKodu, dbo.Categories.Lineage, dbo.Categories.CategoryCode,P.Url, dbo.Categories.Lineage2, P.SearchKeywords, dbo.ProductMarks.MarkId, 
P.IsPenta AS XmlTedarikciId, REPLACE(dbo.ProductUnits.PiyasaFiyati, '.', ',') AS PiyasaFiyati, Currencys_P.CurrencyName AS PiyasaFiyatiParaBirimi, 
Currencys_4.CurrencyName AS SatisFiyati4ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati4, '.', ',') AS SatisFiyati4, dbo.ProductUnits.Isk4, 
Currencys_5.CurrencyName AS SatisFiyati5ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati5, '.', ',') AS SatisFiyati5, dbo.ProductUnits.Isk5, P.HizliKargo, 
P.AyniGunTeslim, P.IndirimliUrun, P.FirsatUrunu, P.SokFiyatliUrun, P.EnUcuzUrun, P.OzelUrun, P.SinirliSayidaUrun, P.YeniUrun, P.HediyeliUrun, 
dbo.Providers.ProviderName AS TedarikciAdi, Providers_1.ProviderName AS XmlTedarikciAdi, dbo.Categories.CatId AS CatId1, dbo.Categories.Depth, 
dbo.ProductUnits.Barcode, P.ProviderId, P.AuthorId, dbo.Authors.AuthorName, dbo.Publishers.PublisherName
FROM            Authors RIGHT OUTER JOIN
                         Products AS P LEFT OUTER JOIN
                         Publishers ON P.PublisherId = Publishers.PublisherId ON Authors.AuthorId = P.AuthorId LEFT OUTER JOIN
                         Providers AS Providers_1 ON P.IsPenta = Providers_1.ProviderId LEFT OUTER JOIN
                         Providers ON P.ProviderId = Providers.ProviderId LEFT OUTER JOIN
                         Categories RIGHT OUTER JOIN
                         ProductCategories ON Categories.CatId = ProductCategories.CategoryId ON P.ProductId = ProductCategories.ProductId LEFT OUTER JOIN
                         ProductKdvs ON P.KdvId = ProductKdvs.KdvId LEFT OUTER JOIN
                         ProductMarks ON P.MarkId = ProductMarks.MarkId LEFT OUTER JOIN
                         Currencys AS Currencys_0 RIGHT OUTER JOIN
                         Currencys AS Currencys_4 INNER JOIN
                         ProductUnits ON Currencys_4.CurrencyId = ProductUnits.Pb4 INNER JOIN
                         Currencys AS Currencys_5 ON ProductUnits.Pb5 = Currencys_5.CurrencyId LEFT OUTER JOIN
                         Currencys AS Currencys_P ON ProductUnits.PPb = Currencys_P.CurrencyId ON Currencys_0.CurrencyId = ProductUnits.Pb0 LEFT OUTER JOIN
                         Currencys AS Currencys_3 ON ProductUnits.Pb3 = Currencys_3.CurrencyId LEFT OUTER JOIN
                         Currencys AS Currencys_2 ON ProductUnits.Pb2 = Currencys_2.CurrencyId LEFT OUTER JOIN
                         Currencys AS Currencys_A ON ProductUnits.APb = Currencys_A.CurrencyId ON P.ProductId = ProductUnits.ProductId LEFT OUTER JOIN
                         Currencys AS Currencys_1 ON ProductUnits.Pb1 = Currencys_1.CurrencyId
WHERE        (NOT (P.Url IS NULL)) AND (NOT (dbo.ProductUnits.UnitId IS NULL))




GO



/****** Object:  StoredProcedure [dbo].[AddUser2]    Script Date: 27.12.2014 13:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[AddUser2]
(
@PortalId		int,
@UserType		int,
@FullName		nvarchar(100),
@UserSex		int,
@Phone1			nvarchar(14),
@Phone2			nvarchar(14),
@MobilePhone	nvarchar(14),
@CityId			int,
@Addres			nvarchar(400),
@CompanyName	nvarchar(100),
@CompanyPhone1	nvarchar(14),
@CompanyPhone2	nvarchar(14),
@CompanyEmail	nvarchar(100),
@CompanyCityId	int,
@CompanyAddres	nvarchar(400),
@CompanyWeb		nvarchar(100),
@Name			nvarchar(50),
@Email			nvarchar(100),
@Password		nvarchar(20),
@TCKimlikNo	    varchar(11)='',
@BirthDate		smalldatetime=null,
@Profession	    varchar(25)='',
@WhereToHear	varchar(50)='',
@Education varchar(25)='',
@IsActive bit=0,
@CompanyVd varchar(100)='',
@CompanyVdNo varchar(15)='',
@AffiliateId int=0,
@AffiliateStatus tinyint=0,
@StokIsk tinyint=1,
@CountryID int,
@DistrictID int,
@CompanyCode NVARCHAR(50),
@NetworkSponsorId int,
@NetworkRank int,
@IsC2C int=0,
@UserId   int OUTPUT
)
AS
set @UserId=-1
if not EXISTS(Select UserId From Users Where Email=@Email and PortalId=@PortalId )
begin
INSERT INTO Users
(
PortalId,		
UserType,		
FullName,		
UserSex	,	
Phone1	,		
Phone2	,		
MobilePhone	,
CityId		,	
Addres		,	
CompanyName	,
CompanyPhone1,	
CompanyPhone2,	
CompanyEmail,	
CompanyCityId,	
CompanyAddres,	
CompanyWeb,
Name	,		
Email	,		
Password,
TCKimlikNo,
BirthDate,
Profession,
WhereToHear,
Education,
ActivationCode,
IsActive,
CompanyVd,
CompanyVdNo,
AffiliateId,
AffiliateStatus,
StokIsk,CountryID,DistrictID,
CompanyCode,NetworkSponsorId,NetworkRank,IsC2C
	
)

VALUES
(
@PortalId		,
@UserType		,
@FullName		,
@UserSex		,
@Phone1			,
@Phone2			,
@MobilePhone	,
@CityId			,
@Addres			,
@CompanyName	,
@CompanyPhone1	,
@CompanyPhone2	,
@CompanyEmail	,
@CompanyCityId	,
@CompanyAddres	,
@CompanyWeb		,
@Name			,
@Email			,
@Password,		
@TCKimlikNo,
@BirthDate,
@Profession,
@WhereToHear,
@Education,
NEWID(),
@IsActive,
@CompanyVd,
@CompanyVdNo,
@AffiliateId,
@AffiliateStatus,
@StokIsk,@CountryID,@DistrictID,@CompanyCode,@NetworkSponsorId,@NetworkRank,@IsC2C
)

SELECT
    @UserId = @@Identity
    end
else
begin
select @UserId = 0
end

GO

/****** Object:  StoredProcedure [dbo].[GetGroupProducts]    Script Date: 27.12.2014 13:44:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[GetGroupProducts]
(
@ProductId int,
@StokIndirim int,
@StokIskActive bit
)

AS
SELECT    ProductGroups.StockQty AS 'GroupStockQty',ProductGroups.UnitName,dbo.Products.ProductId,dbo.Products.ProductCode, dbo.Products.ProductName, Products.Url, Products.StockQty,Products.SellNoneStock,
'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,
dbo.Currencys.CurrencyName,Currencys.Rate,Products.Code14,ProductImages.Path
FROM         dbo.Products INNER JOIN
dbo.ProductUnits ON dbo.Products.ProductId = dbo.ProductUnits.ProductId INNER JOIN
dbo.ProductImages  ON dbo.Products.ProductId = dbo.ProductImages.ProductId INNER JOIN
dbo.Currencys ON case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end = dbo.Currencys.CurrencyId 
INNER JOIN ProductGroups ON dbo.Products.ProductId = ProductGroups.GProductId
WHERE     (NOT (dbo.Products.ProductId = @ProductId))
and (dbo.Products.ProductId in(Select ProductId from ProductGroups where GProductId=@ProductId)
or dbo.Products.ProductId in(Select GProductId from ProductGroups where ProductId=@ProductId))
AND (dbo.ProductUnits.IsDefault = 1) and (dbo.ProductImages.IsDefault = 1) AND dbo.Products.IsActive=1


GO


 
/****** Object:  Trigger [dbo].[UpdateOnDeleteOrder]    Script Date: 27.12.2014 13:37:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER  TRIGGER [dbo].[UpdateOnDeleteOrder]
ON [dbo].[OrderDetails]
FOR Delete
AS 
BEGIN



declare @ProductId int,@ProductSizeId int,@StorageId int,@StockType int
SELECT @ProductId=ProductId,@ProductSizeId=ProductSizeId,@StorageId=StorageId from deleted

if (@ProductSizeId > 0)
Begin
Update ProductSizes set StockQty=isnull(StockQty,0)+(d.Quantity*d.Carpan) from deleted d where d.ProductSizeId=ProductSizes.ProductSizeId and d.Status<>-1
Update Products set StockQty = (Select isnull(sum(StockQty),0) from ProductSizes where StockQty>0 and ProductId=@ProductId) where ProductId=@ProductId
--Update ProductStorages set Quantity=isnull(ProductStorages.Quantity,0)+(d.Quantity*d.Carpan) from deleted d where d.ProductSizeId=ProductStorages.ProductSizeOptionId and d.Status<>-1 
--and ProductStorages.StorageId=@StorageId

End
Else
Begin
Update Products set StockQty=isnull(StockQty,0)+(d.Quantity*d.Carpan) from deleted d where d.ProductId=Products.ProductId and d.Status<>-1
Update ProductStorages set Quantity=isnull(ProductStorages.Quantity,0)+(d.Quantity*d.Carpan) from deleted d where d.ProductId=ProductStorages.ProductId and d.Status<>-1 
and ProductStorages.StorageId=@StorageId
End



----------------------------------------------------------------------------------------------------------------------------------
DECLARE UpdateStok_Cursor CURSOR FOR SELECT ProductId,Quantity*Carpan from deleted

declare @iProductId int,@iQuantity int 

OPEN UpdateStok_Cursor
FETCH NEXT FROM UpdateStok_Cursor INTO  @iProductId,@iQuantity 

WHILE @@FETCH_STATUS = 0
BEGIN

 
------------------------------------------------
SELECT @StockType=StokType FROM Products WHERE ProductId=@iProductId


if(@StockType=6)
BEGIN
   DECLARE groups CURSOR FOR SELECT GProductId, StockQty , Carpan FROM ProductGroups WHERE ProductId=@iProductId
   declare @GProductId int,@StockQty3 int,@CarpanGroup decimal
   
   OPEN groups
   FETCH NEXT FROM groups into @GProductId,@StockQty3,@CarpanGroup

   WHILE @@FETCH_STATUS=0
   BEGIN
    
	Update Products set Products.StockQty=isnull(Products.StockQty,0) + (@iQuantity * @StockQty3 * @CarpanGroup)
	from  deleted d where d.Status<>-1 and  Products.ProductId=@GProductId 
 

	FETCH NEXT FROM groups  into @GProductId,@StockQty3,@CarpanGroup
    END

	CLOSE groups
	DEALLOCATE groups
	
END
 ----------------------------------------------

 
    FETCH NEXT FROM UpdateStok_Cursor INTO @iProductId,@iQuantity 
    END
    CLOSE UpdateStok_Cursor
    DEALLOCATE UpdateStok_Cursor





-----------------------------------------------------------------------------------------------------------------------------------------


END



GO


 
/****** Object:  Trigger [dbo].[UpdateStok]    Script Date: 27.12.2014 13:37:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER   TRIGGER [dbo].[UpdateStok]
ON [dbo].[OrderDetails]
FOR INSERT
AS 
BEGIN

-- Start Set

declare @prodId int,@newStockQty int,@StockType int

DECLARE UpdateStok_Cursor CURSOR FOR SELECT ProductId,ProductSizeId,Quantity*Carpan,StorageId from Inserted

declare @ProductId int,@ProductSizeId int,@iQuantity int,@StorageId int

OPEN UpdateStok_Cursor
FETCH NEXT FROM UpdateStok_Cursor INTO  @ProductId,@ProductSizeId,@iQuantity,@StorageId

WHILE @@FETCH_STATUS = 0
BEGIN

 

SELECT @StockType=StokType FROM Products WHERE ProductId=@ProductId

if(@StockType = 6)

BEGIN
DECLARE groups CURSOR FOR
SELECT GProductId, StockQty , Carpan
FROM ProductGroups WHERE ProductId=@ProductId
declare @GProductId int,@StockQty3 int,@CarpanGroup decimal

OPEN groups
FETCH NEXT FROM groups into @GProductId,@StockQty3,@CarpanGroup

WHILE @@FETCH_STATUS=0
BEGIN

	
	 update Products set StockQty= StockQty - (@iQuantity * @StockQty3 * @CarpanGroup)
	WHERE ProductId=@GProductId  
	

FETCH NEXT FROM groups  into @GProductId,@StockQty3,@CarpanGroup
END
CLOSE groups
DEALLOCATE groups

	END
-- End Set
	

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


 

/****** Object:  Trigger [dbo].[UpdateOnUpdateOrder]    Script Date: 27.12.2014 13:37:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER  TRIGGER [dbo].[UpdateOnUpdateOrder]
ON [dbo].[OrderDetails]
FOR UPDATE
AS 
BEGIN

declare @ProductId int,@ProductSizeId int,@StorageId int,@StockType int
SELECT @ProductId=ProductId,@ProductSizeId=ProductSizeId,@StorageId=StorageId  from Inserted
 
  
if (@ProductSizeId > 0)
Begin
--iptal secilen
Update ProductSizes set StockQty=isnull(StockQty,0) + (i.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductSizeId=ProductSizes.ProductSizeId and i.ProductSizeId=ProductSizes.ProductSizeId
and i.Status=-1 and d.Status<>-1


--iptal degisen
Update ProductSizes set StockQty=isnull(StockQty,0) - (d.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductSizeId=ProductSizes.ProductSizeId and i.ProductSizeId=ProductSizes.ProductSizeId
and d.Status=-1 and i.Status<>-1

Update Products set StockQty = (Select isnull(sum(StockQty),0) from ProductSizes where StockQty>0 and ProductId=@ProductId) where ProductId=@ProductId

--Update ProductStorages set Quantity=isnull(ProductStorages.Quantity ,0) - (d.Quantity*d.Carpan)
--from deleted d,inserted i where d.ProductSizeId=ProductStorages.ProductSizeOptionId  and i.ProductSizeId=ProductStorages.ProductSizeOptionId 
--and d.Status=-1 and i.Status<>-1 and ProductStorages.StorageId=@StorageId 

End
Else
Begin
--iptal secilen
Update Products set StockQty=isnull(StockQty,0) + (i.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductId=Products.ProductId and i.ProductId=Products.ProductId
and i.Status=-1 and d.Status<>-1

--iptal degisen
Update Products set StockQty=isnull(StockQty,0) - (d.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductId=Products.ProductId and i.ProductId=Products.ProductId
and d.Status=-1 and i.Status<>-1

Update ProductStorages set Quantity=isnull(ProductStorages.Quantity ,0) - (d.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductSizeId=ProductStorages.ProductSizeOptionId  and i.ProductSizeId=ProductStorages.ProductSizeOptionId 
and d.Status=-1 and i.Status<>-1 and ProductStorages.StorageId=@StorageId 

Update ProductStorages set Quantity=isnull(ProductStorages.Quantity,0) + (i.Quantity*d.Carpan)
from deleted d,inserted i where d.ProductId=ProductStorages.ProductId and i.ProductId=ProductStorages.ProductId
and i.Status=-1 and d.Status<>-1 and ProductStorages.StorageId=@StorageId 

End
----------------------------------------------------------------------------------------------------------------------------------
DECLARE UpdateStok_Cursor CURSOR FOR SELECT ProductId,Quantity*Carpan from Inserted

declare @iProductId int,@iQuantity int 

OPEN UpdateStok_Cursor
FETCH NEXT FROM UpdateStok_Cursor INTO  @iProductId,@iQuantity 

WHILE @@FETCH_STATUS = 0
BEGIN

 
------------------------------------------------
SELECT @StockType=StokType FROM Products WHERE ProductId=@iProductId


if(@StockType=6)
BEGIN
   DECLARE groups CURSOR FOR SELECT GProductId, StockQty , Carpan FROM ProductGroups WHERE ProductId=@iProductId
   declare @GProductId int,@StockQty3 int,@CarpanGroup decimal
   
   OPEN groups
   FETCH NEXT FROM groups into @GProductId,@StockQty3,@CarpanGroup

   WHILE @@FETCH_STATUS=0
   BEGIN

	--iptal secilen
	Update Products set Products.StockQty=isnull(Products.StockQty,0) + (@iQuantity * @StockQty3 * @CarpanGroup)
	from deleted d,inserted i where  i.Status=-1 and d.Status<>-1 and  Products.ProductId=@GProductId 
	
	--iptal degisen
	Update Products set Products.StockQty=isnull(Products.StockQty,0) - (@iQuantity  * @StockQty3 * @CarpanGroup)
	from deleted d,inserted i where  d.Status=-1 and i.Status<>-1 and Products.ProductId=@GProductId 
		

	FETCH NEXT FROM groups  into @GProductId,@StockQty3,@CarpanGroup
    END

	CLOSE groups
	DEALLOCATE groups
	
END
 ----------------------------------------------

 
    FETCH NEXT FROM UpdateStok_Cursor INTO @iProductId,@iQuantity 
    END
    CLOSE UpdateStok_Cursor
    DEALLOCATE UpdateStok_Cursor





-----------------------------------------------------------------------------------------------------------------------------------------


END

/****** Object:  Trigger [dbo].[UpdateStok]    Script Date: 20.05.2014 16:16:11 ******/
SET ANSI_NULLS ON



GO


SET IDENTITY_INSERT [dbo].[OrderStatus] ON 
 
INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-7, 0, N'İade Talebi İnceleniyor')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-8, 0, N'İade Onaylandı')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-9, 0, N'İade Onaylanmadı')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-10, 0, N'Değişim Talebi İnceleniyor')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-11, 0, N'Değişim Talebi Onaylandı')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-12, 0, N'Değişim Talebi Onaylanmadı') 

SET IDENTITY_INSERT [dbo].[OrderStatus] OFF

GO

SET IDENTITY_INSERT [dbo].[ProductStokType] ON 
 
INSERT [dbo].[ProductStokType] (StokTypeID, StokTypeName, StokTypeUrl) VALUES ( 6 ,N'Set','')
 
SET IDENTITY_INSERT [dbo].[ProductStokType] OFF

GO

SET IDENTITY_INSERT [dbo].[BookedStatus] ON 

INSERT [dbo].[BookedStatus] ([StatusId], [StatusName], [IsActive]) VALUES (-2, N'Siparişe Dönüştürüldü', 1)

INSERT [dbo].[BookedStatus] ([StatusId], [StatusName], [IsActive]) VALUES (-1, N'Rezervasyon Tarihi Geçti', 1)

INSERT [dbo].[BookedStatus] ([StatusId], [StatusName], [IsActive]) VALUES (0, N'Beklemede', 1)

SET IDENTITY_INSERT [dbo].[BookedStatus] OFF

GO

SET IDENTITY_INSERT [dbo].[CancelOrderRequest] ON 

INSERT [dbo].[CancelOrderRequest] ([RequestId], [RequestName], [IsActive]) VALUES (-2, N'Para İadesi', 1)

INSERT [dbo].[CancelOrderRequest] ([RequestId], [RequestName], [IsActive]) VALUES (-1, N'Hediye Çeki', 1)

SET IDENTITY_INSERT [dbo].[CancelOrderRequest] OFF

GO



/****** Object:  View [dbo].[ProductsExportAll]    Script Date: 07.01.2015 10:29:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





ALTER VIEW [dbo].[ProductsExportAll]
AS
SELECT        TOP (100) PERCENT P.IsActive AS UrunAktif, P.ProductCode AS StokKodu, P.ProductName AS StokAdi, P.Description AS StokAciklama, P.Details,  P.StokType,P.StokSubType,P.CompanyId,
                         REPLACE(P.StockQty, '.', ',') AS StokEnvanter, ISNULL
                             ((SELECT        TOP 1 Path
                                 FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
                                 FROM            ProductImages
                                 WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 1), '') AS StokResmi, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 2), '') AS StokResmi2, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 3), '') AS StokResmi3, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 4), '') AS StokResmi4, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 5), '') AS StokResmi5, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 6), '') AS StokResmi6, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 7), '') AS StokResmi7, ISNULL
    ((SELECT        TOP 1 Path
        FROM            (SELECT        ROW_NUMBER() OVER (ORDER BY ProductId ASC) AS rownumber, Path, ProductId
        FROM            ProductImages
        WHERE        (ProductId = P.ProductId)) AS Images
WHERE        rownumber = 8), '') AS StokResmi8, ISNULL(dbo.ProductMarks.MarKName, N'') AS MarkaAdi, REPLACE(dbo.ProductKdvs.KdvRate, '.', ',') AS KdvOrani, 
dbo.ProductUnits.BirimAdi, REPLACE(dbo.ProductUnits.Carpan, '.', ',') AS BirimCarpan, REPLACE(dbo.ProductUnits.SatisFiyati0, '.', ',') AS SatisFiyati0, 
Currencys_0.CurrencyName AS SatisFiyati0ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati1, '.', ',') AS SatisFiyati1, dbo.ProductUnits.Isk1, 
Currencys_1.CurrencyName AS SatisFiyati1ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati2, '.', ',') AS SatisFiyati2, dbo.ProductUnits.Isk2, 
Currencys_2.CurrencyName AS SatisFiyati2ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati3, '.', ',') AS SatisFiyati3, dbo.ProductUnits.Isk3, 
Currencys_3.CurrencyName AS SatisFiyati3ParaBirimi, REPLACE(dbo.ProductUnits.AlisFiyati, '.', ',') AS AlisFiyati, Currencys_A.CurrencyName AS AlisFiyatiParaBirimi, 
REPLACE(dbo.ProductUnits.En, '.', ',') AS En, REPLACE(dbo.ProductUnits.Boy, '.', ',') AS Boy, REPLACE(dbo.ProductUnits.Yukseklik, '.', ',') AS Yukseklik, 
REPLACE(dbo.ProductUnits.Agirlik, '.', ',') AS Agirlik, REPLACE(dbo.ProductUnits.Desi, '.', ',') AS Desi, P.PortalId, P.SellNoneStock, P.Code1 AS Kod1, P.Code2 AS Kod2, 
P.Code3 AS Kod3, P.Code4 AS Kod4, P.Code5 AS Kod5, P.Code6 AS Kod6, P.Code7 AS Kod7, P.Code8 AS Kod8, P.Code9 AS Kod9, P.Code10 AS Kod10, 
P.Code11 AS Kod11, P.Code12 AS Kod12, P.Code13 AS Kod13, P.Code14 AS Kod14, P.Code15 AS Kod15, P.ProductId AS UrunId, P.CreatedDate, 
P.ProviderStockCode AS UreticiKodu, dbo.Categories.Lineage, dbo.Categories.CategoryCode,P.Url, dbo.Categories.Lineage2, P.SearchKeywords, dbo.ProductMarks.MarkId, 
P.IsPenta AS XmlTedarikciId, REPLACE(dbo.ProductUnits.PiyasaFiyati, '.', ',') AS PiyasaFiyati, Currencys_P.CurrencyName AS PiyasaFiyatiParaBirimi, 
Currencys_4.CurrencyName AS SatisFiyati4ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati4, '.', ',') AS SatisFiyati4, dbo.ProductUnits.Isk4, 
Currencys_5.CurrencyName AS SatisFiyati5ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati5, '.', ',') AS SatisFiyati5, dbo.ProductUnits.Isk5, P.HizliKargo, 
P.AyniGunTeslim, P.IndirimliUrun, P.FirsatUrunu, P.SokFiyatliUrun, P.EnUcuzUrun, P.OzelUrun, P.SinirliSayidaUrun, P.YeniUrun, P.HediyeliUrun, 
dbo.Providers.ProviderName AS TedarikciAdi, Providers_1.ProviderName AS XmlTedarikciAdi, dbo.Categories.CatId AS CatId1, dbo.Categories.Depth, 
dbo.ProductUnits.Barcode, P.ProviderId, P.AuthorId, dbo.Authors.AuthorName, dbo.Publishers.PublisherName,dbo.Publishers.PublisherId,P.ProductSizeOptionId,P.UserId,P.CampainId  


FROM            Authors RIGHT OUTER JOIN
                         Products AS P LEFT OUTER JOIN
                         Publishers ON P.PublisherId = Publishers.PublisherId ON Authors.AuthorId = P.AuthorId LEFT OUTER JOIN
                         Providers AS Providers_1 ON P.IsPenta = Providers_1.ProviderId LEFT OUTER JOIN
                         Providers ON P.ProviderId = Providers.ProviderId LEFT OUTER JOIN
                         Categories RIGHT OUTER JOIN
                         ProductCategories ON Categories.CatId = ProductCategories.CategoryId ON P.ProductId = ProductCategories.ProductId LEFT OUTER JOIN
                         ProductKdvs ON P.KdvId = ProductKdvs.KdvId LEFT OUTER JOIN
                         ProductMarks ON P.MarkId = ProductMarks.MarkId LEFT OUTER JOIN
                         Currencys AS Currencys_0 RIGHT OUTER JOIN
                         Currencys AS Currencys_4 INNER JOIN
                         ProductUnits ON Currencys_4.CurrencyId = ProductUnits.Pb4 INNER JOIN
                         Currencys AS Currencys_5 ON ProductUnits.Pb5 = Currencys_5.CurrencyId LEFT OUTER JOIN
                         Currencys AS Currencys_P ON ProductUnits.PPb = Currencys_P.CurrencyId ON Currencys_0.CurrencyId = ProductUnits.Pb0 LEFT OUTER JOIN
                         Currencys AS Currencys_3 ON ProductUnits.Pb3 = Currencys_3.CurrencyId LEFT OUTER JOIN
                         Currencys AS Currencys_2 ON ProductUnits.Pb2 = Currencys_2.CurrencyId LEFT OUTER JOIN
                         Currencys AS Currencys_A ON ProductUnits.APb = Currencys_A.CurrencyId ON P.ProductId = ProductUnits.ProductId LEFT OUTER JOIN
                         Currencys AS Currencys_1 ON ProductUnits.Pb1 = Currencys_1.CurrencyId
WHERE        (NOT (P.Url IS NULL)) AND (NOT (dbo.ProductUnits.UnitId IS NULL))






GO


 
/****** Object:  StoredProcedure [dbo].[GetPortalSettings5b]    Script Date: 16.01.2015 16:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[GetPortalSettings5b]
(
    @PortalId      int,
    @TabId         int,    
	@IsEmarket bit OUTPUT,
    @PortalName    nvarchar(128) OUTPUT,
	@Email  nvarchar(100) OUTPUT,
    @AlwaysShowEditButton bit OUTPUT,
    @TabName       nvarchar (50)  OUTPUT,
    @TabOrder      int OUTPUT,
    @ParentId      int OUTPUT,	--JH return parentId for menu
    @IconURL      nvarchar(50) OUTPUT,	--JH return IconURL for menu
    @MobileTabName nvarchar (50)  OUTPUT,
    @AuthRoles     nvarchar (256) OUTPUT,
    @ShowMobile    bit OUTPUT,
    @ShowMenu    bit OUTPUT,
    @ShowFotterMenu    bit OUTPUT,
    @HeadMenu    bit OUTPUT,
	@Title nvarchar (256) OUTPUT,
	@Description nvarchar (256) OUTPUT,
	@Keywords nvarchar (256) OUTPUT,
	@HasAction bit=0 OUTPUT,
	@Redirect bit OUTPUT,
	@RedirectUrl nvarchar (256) OUTPUT,
	@Url nvarchar (256) OUTPUT,
	@CargoLimit decimal(18,2) OUTPUT,
	@Template  nvarchar(50)='default' OUTPUT ,
@BannerPath		nvarchar(50)='' OUTPUT, 
@BannerWidth	 nvarchar(10)='0' OUTPUT ,
@BannerHeight	  nvarchar(10)='0' OUTPUT ,
@LogoPath		 nvarchar(50)='' OUTPUT ,
@LogoWidth		nvarchar(10)='0' OUTPUT,  
@LogoHeight		 nvarchar(10)='0' OUTPUT ,
@LocalIp		nvarchar(50)='' OUTPUT,
@UserName		 nvarchar(20)='sa' OUTPUT,
@Password		 nvarchar(20)='' OUTPUT,
@LocalDatabase nvarchar(20)='VEGADB' OUTPUT,
@ItegrationType nvarchar(20)='VEGA' OUTPUT,
@Firma nvarchar(20)='100' OUTPUT,
@Donem nvarchar(20)='1' OUTPUT,
@CouponIsActive bit=0 OUTPUT,
@CouponDiscount decimal(18,2)=0 OUTPUT,
@CouponLimit decimal(18,2)=0 OUTPUT,
@CouponStartDate smalldatetime output,
@CouponEndDate smalldatetime output,

@PointsIsActive		bit OUTPUT,
@PointsValue		decimal(18,2) OUTPUT,
@PointsMoneyValue  decimal(18,6) OUTPUT,
@PointsMoneyLimit  decimal(18,2) OUTPUT,
@PointsReviewValue decimal(18,2) OUTPUT,
@PointsAdviceValue decimal(18,2) OUTPUT,
@SmsUserName varchar(20) OUTPUT,
@SmsPwd  varchar(20) OUTPUT,
@SmsCompany varchar(10) OUTPUT,
@SmsAdmin varchar(11) OUTPUT,
@SmsSendToAdmin bit=0 OUTPUT,
@SmsSendToUser bit=0 OUTPUT,
@SmsSendForPassword bit=0 OUTPUT,
@SmsSendNewUser bit=0 OUTPUT,
@CloseDate smalldatetime OUTPUT
)
AS

/* First, get Out Params */
IF @TabId = 0 
    SELECT TOP 1
       
        @PortalName    = Portals.PortalName,
        @Template =Portals.Template,
@BannerPath	=Portals.BannerPath	,		
@BannerWidth=Portals.BannerWidth,		
@BannerHeight=Portals.BannerHeight,
@LogoPath=Portals.LogoPath		,
@LogoWidth=Portals.LogoWidth	,	
@LogoHeight	=Portals.LogoHeight	,	
@LocalIp=Portals.LocalIp		,
@UserName=Portals.UserName		,
@Password=Portals.Password		,
@LocalDatabase=Portals.LocalDatabase,        
@Email=Portals.Email,
@IsEmarket=Portals.IsEmarket,
    @ShowMenu=    Portals.ShowMenu,
    @ShowFotterMenu=Portals.ShowFotterMenu,
    @HeadMenu=    Portals.HeadMenu,
        @AlwaysShowEditButton = Portals.AlwaysShowEditButton,
        @TabId         = Tabs.TabId,
        @TabOrder      = Tabs.TabOrder,
        @ParentId      = isnull(Tabs.ParentId,-1), --JH
        @IconURL      = isnull(Tabs.IconURL,''), --JH
        @TabName       = Tabs.TabName,
        @MobileTabName = Tabs.MobileTabName,
        @AuthRoles     = Tabs.AuthorizedRoles,
        @ShowMobile    = Tabs.ShowMobile,
        @Title	= Tabs.Title,
        @Description = Tabs.Description,
        @Keywords = Tabs.Keywords,
@HasAction=HasAction,
@Redirect=Redirect,
@RedirectUrl=RedirectUrl,
@Url=Url,
@CargoLimit=Portals.CargoLimit,
@ItegrationType =Portals.ItegrationType,
@Firma = Portals.Firma,
@Donem =Portals.Donem,
@CouponIsActive=isnull(Portals.CouponIsActive,0),
@CouponDiscount=isnull(Portals.CouponDiscount,0),
@CouponLimit=isnull(Portals.CouponLimit,0),
@CouponStartDate= CouponStartDate,
@CouponEndDate =CouponEndDate,
@PointsIsActive	=isnull(PointsIsActive,0),
@PointsValue=isnull(PointsValue,0),		
@PointsMoneyValue =isnull(PointsMoneyValue,0),
@PointsMoneyLimit =isnull(PointsMoneyLimit,0),
@PointsReviewValue=isnull(PointsReviewValue,0),
@PointsAdviceValue=isnull(PointsAdviceValue,0),
@SmsUserName=Portals.SmsUserName,
@SmsPwd=Portals.SmsPwd,
@SmsCompany =Portals.SmsCompany,
@SmsAdmin =Portals.SmsAdmin,
@SmsSendToAdmin = Portals.SmsSendToAdmin ,
@SmsSendToUser = Portals.SmsSendToUser,
@SmsSendForPassword = Portals.SmsSendForPassword,
@SmsSendNewUser=Portals.SmsSendNewUser,
@CloseDate=Portals.CloseDate
--,@FotterHtml=Portals.FotterHtml,
--@BannerHtml=Portals.BannerHtml

    FROM
        Tabs
    INNER JOIN
        Portals ON Tabs.PortalId = Portals.PortalId
        
    WHERE
        Portals.PortalId=@PortalId
        
    ORDER BY
        TabOrder

ELSE 
    SELECT
       
        @PortalName    = Portals.PortalName,
           @Template =Portals.Template,
           @BannerPath	=Portals.BannerPath	,		
@BannerWidth=Portals.BannerWidth,		
@BannerHeight=Portals.BannerHeight,
@LogoPath=Portals.LogoPath		,
@LogoWidth=Portals.LogoWidth	,	
@LogoHeight	=Portals.LogoHeight	,	
@LocalIp=Portals.LocalIp		,
@UserName=Portals.UserName		,
@Password=Portals.Password		,
@LocalDatabase=Portals.LocalDatabase,      
@Email=Portals.Email,
        @IsEmarket=Portals.IsEmarket,
    @ShowMenu=    Portals.ShowMenu,
    @ShowFotterMenu=Portals.ShowFotterMenu,
    @HeadMenu=    Portals.HeadMenu,
    @AlwaysShowEditButton = Portals.AlwaysShowEditButton,
        @TabName       = Tabs.TabName,
        @TabOrder      = Tabs.TabOrder,
        @ParentId      = isnull(Tabs.ParentId,-1), --JH
        @IconURL      = isnull(Tabs.IconURL,''), --JH
        @MobileTabName = Tabs.MobileTabName,
        @AuthRoles     = Tabs.AuthorizedRoles,
        @ShowMobile    = Tabs.ShowMobile,
        @Title	= Tabs.Title,
        @Description = Tabs.Description,
        @Keywords = Tabs.Keywords,
@HasAction=HasAction,
@Redirect=Redirect,
@RedirectUrl=RedirectUrl,
@Url=Url,
@CargoLimit=Portals.CargoLimit,
@ItegrationType =Portals.ItegrationType,
@Firma = Portals.Firma,
@Donem =Portals.Donem,
@CouponIsActive=isnull(Portals.CouponIsActive,0),
@CouponDiscount=isnull(Portals.CouponDiscount,0),
@CouponLimit=isnull(Portals.CouponLimit,0),
@CouponStartDate= CouponStartDate,
@CouponEndDate =CouponEndDate,
@PointsIsActive	=isnull(PointsIsActive,0),
@PointsValue=isnull(PointsValue,0),		
@PointsMoneyValue =isnull(PointsMoneyValue,0),
@PointsMoneyLimit =isnull(PointsMoneyLimit,0),
@PointsReviewValue=isnull(PointsReviewValue,0),
@PointsAdviceValue=isnull(PointsAdviceValue,0),
@SmsUserName=Portals.SmsUserName,
@SmsPwd=Portals.SmsPwd,
@SmsCompany =Portals.SmsCompany,
@SmsAdmin =Portals.SmsAdmin,
@SmsSendToAdmin = Portals.SmsSendToAdmin ,
@SmsSendToUser = Portals.SmsSendToUser,
@SmsSendForPassword = Portals.SmsSendForPassword,
@SmsSendNewUser=Portals.SmsSendNewUser,
@CloseDate=Portals.CloseDate
--,@FotterHtml=Portals.FotterHtml,
--@BannerHtml=Portals.BannerHtml
    FROM
        Tabs
    INNER JOIN
        Portals ON Tabs.PortalId = Portals.PortalId
        
    WHERE
        TabId=@TabId

/* Get Tabs list */
SELECT  
    TabName,
    AuthorizedRoles,
    TabId,
    isnull(ParentId, -1) ParentId, --JH
    isnull(IconURL, '') IconURL, --JH
    TabOrder,
HasAction,
Redirect,
RedirectUrl,
Url,
ChildCount
    
FROM    
    Tabs
    
WHERE   
    PortalId = @PortalId
    
ORDER BY
    TabOrder

/* html */
/* First, get Out Params */

    SELECT TOP 1
        FotterHtml,BannerHtml

    FROM
        Portals 
        
    WHERE
        PortalId=@PortalId
         

/* Get Mobile Tabs list */
SELECT  
    MobileTabName,
    AuthorizedRoles,
    TabId,
    isnull(ParentId, -1) ParentId, --JH
    isnull(IconURL, '') IconURL, --JH
    ShowMobile,
    HasAction
FROM    
    Tabs
    
WHERE   
    PortalId = @PortalId
  AND
    ShowMobile = 1
    
ORDER BY
    TabOrder

/* Then, get the DataTable of module info */
SELECT  
    *
    
FROM
    Modules
  INNER JOIN
    ModuleDefinitions ON Modules.ModuleDefId = ModuleDefinitions.ModuleDefId
    
WHERE   
    TabId = @TabId
    
ORDER BY
    ModuleOrder


GO

 
/****** Object:  StoredProcedure [dbo].[UpdatePortalInfo5b]    Script Date: 16.01.2015 16:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[UpdatePortalInfo5b]
(
    @PortalId           int,
    @PortalName         nvarchar(100),
    @AlwaysShowEditButton bit ,
    @ShowMenu bit,
    @ShowFotterMenu bit,
    @HeadMenu bit,
	@IsEmarket bit,
	@Template		nvarchar(50)='default',
	@LocalIp		nvarchar(50),
	@UserName		 nvarchar(20),
	@Password		 nvarchar(20),
	@LocalDatabase nvarchar(20),
	@ItegrationType nvarchar(20),
	@Firma			nvarchar(20),
	@Donem			nvarchar(20),
	@Email nvarchar(100),
	@SmsUserName varchar(20) ,
@SmsPwd  varchar(20) ,
@SmsCompany varchar(10) ,
@SmsAdmin varchar(11) ,
@SmsSendToAdmin bit=0 ,
@SmsSendToUser bit=0 ,
@SmsSendForPassword bit=0,
@SmsSendNewUser bit=0
)
AS

UPDATE
    Portals

SET
    PortalName = @PortalName,
    ShowFotterMenu=@ShowFotterMenu, 
    Template =@Template,
    AlwaysShowEditButton = @AlwaysShowEditButton,
    ShowMenu=@ShowMenu,
    IsEmarket=@IsEmarket,
    Email=@Email,
    HeadMenu=@HeadMenu,
	LocalIp	=@LocalIp	,	
	UserName=@UserName	,	
	Password=@Password	,	
	LocalDatabase=@LocalDatabase,
	ItegrationType =@ItegrationType ,
	Firma=@Firma,
	Donem=@Donem,
	SmsUserName=@SmsUserName,
SmsPwd=@SmsPwd,
SmsCompany=@SmsCompany,
SmsAdmin=@SmsAdmin,
SmsSendToAdmin=@SmsSendToAdmin ,
SmsSendToUser=@SmsSendToUser,
SmsSendForPassword=@SmsSendForPassword,			
	SmsSendNewUser=@SmsSendNewUser
    

WHERE
    PortalId = @PortalId

GO


/****** Object:  StoredProcedure [dbo].[CopyProduct]    Script Date: 19.01.2015 17:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[CopyProduct]
(
    @ProductId int,
    @NewProductId int OUTPUT
)
AS
insert into Products(PortalId, CategoryId, Parent, ProductCode, ProductName, Description, Details, ProviderStockCode, ProviderName, MarkId, IsDeleted, IsActive, SellNoneStock, StockQty, ShowInMainPage, ShowInCategoryPage, ShowOrder, Code1, Code2, Code3, Code4, Code5, Code6, Code7, Code8, Code9, Code10, Code11, Code12, Code13, Code14, Code15, Provider, KdvId, Hit, IsPenta, CreatedDate,HizliKargo, AyniGunTeslim, IndirimliUrun, FirsatUrunu, SokFiyatliUrun, EnUcuzUrun, OzelUrun, SinirliSayidaUrun, YeniUrun, HediyeliUrun,ProviderId,UserId,StokType,StokSubType)
select PortalId, CategoryId, Parent, NEWID() , ProductName, Description, Details, ProviderStockCode, ProviderName, MarkId, IsDeleted, IsActive, SellNoneStock, StockQty, ShowInMainPage, ShowInCategoryPage, ShowOrder, Code1, Code2, Code3, Code4, Code5, Code6, Code7, Code8, Code9, Code10, Code11, Code12, Code13, Code14, Code15, Provider, KdvId, Hit, IsPenta, CreatedDate,HizliKargo, AyniGunTeslim, IndirimliUrun, FirsatUrunu, SokFiyatliUrun, EnUcuzUrun, OzelUrun, SinirliSayidaUrun, YeniUrun, HediyeliUrun,ProviderId,UserId,StokType,StokSubType
FROM Products where ProductId=@ProductId
select @NewProductId=@@Identity

insert into ProductCategories(ProductId,CategoryId)
select @NewProductId,CategoryId FROM ProductCategories where ProductId=@ProductId

insert into ProductUnits(ProductId, Aciklama, BirimAdi, Carpan, AlisFiyati, APb,PiyasaFiyati,PPb,SatisFiyati0,Pb0, SatisFiyati1, Pb1, Isk1, SatisFiyati2, Pb2, Isk2, SatisFiyati3, Pb3, Isk3, SatisFiyati4, Pb4, Isk4, SatisFiyati5, Pb5, Isk5, Barcode, En, Boy, Yukseklik, Agirlik, Hacim, Desi, Indirim1, IsDefault, IsActive, LastModified)
select @NewProductId, Aciklama, BirimAdi, Carpan, AlisFiyati, APb,PiyasaFiyati,PPb,SatisFiyati0,Pb0, SatisFiyati1, Pb1, Isk1, SatisFiyati2, Pb2, Isk2, SatisFiyati3, Pb3, Isk3,SatisFiyati4, Pb4, Isk4, SatisFiyati5, Pb5, Isk5, Barcode, En, Boy, Yukseklik, Agirlik, Hacim, Desi, Indirim1, IsDefault, IsActive, LastModified
from ProductUnits where ProductId=@ProductId

insert into ProductUsages(ProductId,UProductId)
select @NewProductId, UProductId
FROM ProductUsages where ProductId=@ProductId

insert into ProductImages(ProductId, Description, Path, IsDefault)
select @NewProductId, Description, Path, IsDefault
FROM ProductImages where ProductId=@ProductId

insert into ProductFiles(ProductId, Description, Path, IsDefault)
 select @NewProductId, Description, Path, IsDefault
FROM ProductFiles where ProductId=@ProductId

insert into ProductAlternatives(ProductId, AProductId)
select @NewProductId,AProductId
FROM ProductAlternatives where ProductId=@ProductId

insert into ProductNonAlternatives(ProductId, NAProductId)
select @NewProductId,NAProductId
FROM ProductNonAlternatives where ProductId=@ProductId


INSERT INTO MultiDiscountList (StartQty,EndQty,DiscountType,DiscountAmount,UnitPrice,IsActive,ProductId,UnitId,UnitName)
                      (SELECT StartQty,EndQty,DiscountType,DiscountAmount,UnitPrice,IsActive,@NewProductId,UnitId,UnitName FROM MultiDiscountList Where ProductId=@ProductId)

GO


UPDATE Portals Set Version='3.1.0'
 
GO