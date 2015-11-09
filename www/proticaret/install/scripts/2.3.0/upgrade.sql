IF not exists (select column_name from INFORMATION_SCHEMA.columns  where table_name = 'Orders' and column_name = 'BankId') ALTER TABLE [dbo].[Orders] ADD [BankId] [int]  NOT  NULL  DEFAULT 0
GO

alter table CurtainSizeOpt1 alter column CurtainSizeFactor int;
go

alter table CurtainSizeOpt1 add  default ((0)) for CurtainSizeFactor;
go

alter table CurtainSizeOpt10 alter column CurtainSizeFactor int;
go

alter table CurtainSizeOpt10 add  default ((0)) for CurtainSizeFactor;
go

alter table CurtainSizeOpt2 alter column CurtainSizeFactor int;
go

alter table CurtainSizeOpt2 add  default ((0)) for CurtainSizeFactor;
go

alter table CurtainSizeOpt3 alter column CurtainSizeFactor int;
go

alter table CurtainSizeOpt3 add default ((0)) for CurtainSizeFactor;
go

alter table CurtainSizeOpt4 alter column CurtainSizeFactor int;
go

alter table CurtainSizeOpt4 add  default ((0)) for CurtainSizeFactor;
go

alter table CurtainSizeOpt5 alter column  CurtainSizeFactor int;
go

alter table CurtainSizeOpt5 add  default ((0)) for CurtainSizeFactor;
go

alter table CurtainSizeOpt6 alter column CurtainSizeFactor int;
go

alter table CurtainSizeOpt6 add default ((0)) for CurtainSizeFactor;
go

alter table CurtainSizeOpt7 alter column CurtainSizeFactor int;
go

alter table CurtainSizeOpt7 add  default ((0)) for CurtainSizeFactor;
go

alter table CurtainSizeOpt8 alter column  CurtainSizeFactor int;
go

alter table CurtainSizeOpt8 add default ((0)) for CurtainSizeFactor;
go

alter table CurtainSizeOpt9 alter column  CurtainSizeFactor int;
go

alter table CurtainSizeOpt9 add default ((0)) for CurtainSizeFactor;
go


DROP TABLE [dbo].[ServicesBrand],[dbo].[ServicesCart],[dbo].[ServicesCategory],[dbo].[ServicesCenter],[dbo].[ServicesDepartment],[dbo].[ServicesDevice],[dbo].[ServicesFault]
DROP TABLE [dbo].[ServicesFormOpt],[dbo].[ServicesJob],[dbo].[ServicesJobGroup],[dbo].[ServicesModel],[dbo].[ServicesOptDetail],[dbo].[ServicesOrder],[dbo].[ServicesPlaint],[dbo].[ServicesProject]
DROP TABLE [dbo].[ServicesResault],[dbo].[ServicesSection],[dbo].[ServicesSubCategory],[dbo].[ServicesType]
DROP TABLE CosCampaign

GO

 
ALTER TABLE [dbo].[OfferOrders] ADD [SaveUserID] [int]  
ALTER TABLE [dbo].[OfferOrders] ADD [UnitID] [int]   DEFAULT 0
ALTER TABLE [dbo].[OfferOrders] ADD [CurrencysID] [int]  DEFAULT 1
ALTER TABLE [dbo].[OfferOrders] ADD [DeepRateSelect] [int] DEFAULT 0
ALTER TABLE [dbo].[OfferOrders] ADD [Price] decimal(15, 2) DEFAULT 0
ALTER TABLE [dbo].[OfferOrders] ADD [DiscPrice] decimal(15, 2) DEFAULT 0
ALTER TABLE [dbo].[OfferOrders] ADD [BuyPrice] decimal(15, 2) DEFAULT 0
ALTER TABLE [dbo].[OfferOrders] ADD [DiscQtyPrice] decimal(15, 2) DEFAULT 0
ALTER TABLE [dbo].[OfferOrders] ADD [NetTotTLPrice] decimal(15, 2) DEFAULT 0
ALTER TABLE [dbo].[OfferOrders] ADD [Rate] decimal(15, 4) DEFAULT 0
ALTER TABLE [dbo].[OfferOrders] ADD [DeepRate] decimal(15, 4) DEFAULT 1
ALTER TABLE [dbo].[OfferOrders] ADD [BuyQtyTotal] decimal(15, 2) DEFAULT 0
ALTER TABLE [dbo].[OfferOrders] ADD [Total] decimal(15, 2) DEFAULT 0
ALTER TABLE [dbo].[OfferOrders] ADD [DiscTotal] decimal(15, 2) DEFAULT 0
ALTER TABLE [dbo].[OfferOrders] ADD [KdvTotal] decimal(15, 2) DEFAULT 0 

GO
 
 
ALTER TABLE [dbo].[OrderDetails] ADD [StorageId] [int]  NOT NULL   DEFAULT 1
GO

ALTER TABLE [dbo].[Person] ADD [UserId] [int]
GO

ALTER TABLE ProductCode1 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode10 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode11 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode12 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode13 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode2 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode3 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode4 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode5 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode6 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode7 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode8 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE ProductCode9 ALTER COLUMN CodeName nvarchar(50)
GO

ALTER TABLE [dbo].[ShoppingCart] ADD [CartTimeOut] [datetime]

ALTER TABLE [dbo].[ShoppingCart] ADD [StorageId] [int]  NOT NULL   DEFAULT 1

ALTER TABLE [dbo].[Users] ADD [IsSendMail] [int]  NOT NULL   DEFAULT 1
GO

 
/****** Object:  Table [dbo].[AlternativeAttribute]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlternativeAttribute]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlternativeAttribute](
	[AtrbID] [int] IDENTITY(1,1) NOT NULL,
	[EntegreCatID] [int] NULL,
	[AttrbuteID] [int] NULL,
	[Mandatory] [bit] NULL,
	[MultipleSelect] [bit] NULL,
	[Name] [nvarchar](150) NULL,
	[AttributeID] [int] NULL,
	[AttributeListID] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlternativeAttributeDetail]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlternativeAttributeDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlternativeAttributeDetail](
	[AtrbDetID] [int] IDENTITY(1,1) NOT NULL,
	[EntegreCatID] [int] NULL,
	[DetailID] [int] NULL,
	[Name] [nvarchar](150) NULL,
	[AttributeID] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlternativeMarkets]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlternativeMarkets]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlternativeMarkets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApiKey] [nvarchar](50) NULL,
	[ApiSecretPass] [nvarchar](50) NULL,
	[SecretCode] [nvarchar](50) NULL,
	[SalesStartDay] [datetime] NULL,
	[SalesStopDay] [datetime] NULL,
	[ProductionDate] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
	[ProductStatus] [int] NULL,
	[PreparingDay] [datetime] NULL,
	[ShipmentTemplate] [datetime] NULL,
	[ProductPrice] [nvarchar](50) NULL,
	[ApiUrl] [nvarchar](300) NULL,
	[RoleName] [nvarchar](50) NULL,
	[RolePass] [nvarchar](50) NULL,
	[DeveloperID] [nvarchar](50) NULL,
	[StartPriceType] [tinyint] NULL,
	[PriceType] [tinyint] NULL,
	[WithKdv] [bit] NULL,
	[CargoName] [nvarchar](20) NULL,
	[CargoPay] [nvarchar](1) NULL,
	[CargoDetail] [nvarchar](50) NULL,
	[CargoSend] [nvarchar](20) NULL,
 CONSTRAINT [PK_AlternativeMarkets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlternativeMarketsCargo]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlternativeMarketsCargo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlternativeMarketsCargo](
	[CargoID] [int] NULL,
	[UserType] [nvarchar](50) NULL,
	[SaleCode] [bigint] NULL,
	[CargoPostCode] [nvarchar](50) NULL,
	[CargoCompany] [nvarchar](50) NULL,
	[CargoBranchCode] [nvarchar](50) NULL,
	[FollowUpUrl] [nvarchar](150) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlternativeMarketsCategories]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlternativeMarketsCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlternativeMarketsCategories](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[n11CatId] [int] NULL,
	[proCatId] [int] NULL,
	[CatCode] [nvarchar](50) NULL,
	[CatName] [nvarchar](150) NULL,
	[Parent] [int] NULL,
	[Linage] [nvarchar](250) NULL,
	[Linage2] [nvarchar](250) NULL,
	[IsActive] [int] NULL,
	[SecretCode1] [nvarchar](50) NULL,
	[SecretCode2] [nvarchar](50) NULL,
	[SecretCode3] [nvarchar](50) NULL,
	[GGCatID] [nvarchar](50) NULL,
	[ProCatName] [nvarchar](150) NULL,
 CONSTRAINT [PK_AlternativeMarketsCategories] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlternativeMarketsCatRelations]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlternativeMarketsCatRelations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlternativeMarketsCatRelations](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[n11CatId] [int] NULL,
	[n11CatName] [nvarchar](150) NULL,
	[proCatId] [int] NULL,
	[proCatName] [nvarchar](150) NULL,
	[ShippingTemplate] [nvarchar](50) NULL,
	[SecretCode1] [nvarchar](50) NULL,
	[SecretCode2] [nvarchar](50) NULL,
	[SecretCode3] [nvarchar](50) NULL,
	[CatMatchID] [int] NULL,
	[GGCatName] [nvarchar](50) NULL,
	[GGCatID] [nvarchar](150) NULL,
 CONSTRAINT [PK_AlternativeMarketsCatRelations] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AlternativeMarketsTemplate]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlternativeMarketsTemplate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlternativeMarketsTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [nvarchar](50) NULL,
	[SalesStartDay] [datetime] NULL,
	[SalesStopDay] [datetime] NULL,
	[ProductionDate] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
	[PreparingDay] [int] NULL,
	[CargoTemplateID] [int] NULL,
	[ShipmentTemplate] [nvarchar](50) NULL,
	[ProductStatus] [int] NULL,
	[ProductPrice] [nvarchar](50) NULL,
	[SecretCode] [nvarchar](50) NULL,
	[DiscountType] [int] NULL,
	[DiscRate] [decimal](18, 2) NULL,
 CONSTRAINT [PK_AlternativeMarketsTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Company]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[CompanyCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CompanyShop]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyShop]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CompanyShop](
	[ShopId] [int] IDENTITY(1,1) NOT NULL,
	[ShopName] [nvarchar](50) NULL,
	[ShopCode] [nvarchar](50) NULL,
	[CompanyId] [nvarchar](50) NULL,
 CONSTRAINT [PK_CompanyShop] PRIMARY KEY CLUSTERED 
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CompanyStorages]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyStorages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CompanyStorages](
	[StorageId] [int] IDENTITY(1,1) NOT NULL,
	[StorageName] [nvarchar](50) NULL,
	[StorageCode] [nvarchar](50) NULL,
	[ShopId] [int] NULL,
	[ApplyOrder] [int] NULL,
 CONSTRAINT [PK_CompanyStorages] PRIMARY KEY CLUSTERED 
(
	[StorageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CosCampaign]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CosCampaign]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CosCampaign](
	[campaignID] [int] IDENTITY(1,1) NOT NULL,
	[campaignName] [nvarchar](30) NULL,
	[mailCount] [int] NULL,
	[sendCount] [int] NULL,
	[sendDate] [datetime] NULL,
	[openedMail] [int] NULL,
	[clickedLink] [int] NULL,
	[campaignState] [int] NULL,
	[mailSubject] [nvarchar](250) NULL,
	[fromName] [nvarchar](50) NULL,
	[fromMail] [nvarchar](100) NULL,
	[resMail] [nvarchar](100) NULL,
	[userID] [int] NULL,
	[mailTxt] [nvarchar](max) NULL,
	[bounceCount] [int] NULL,
	[complaintCount] [int] NULL,
	[hashID] [nvarchar](50) NULL,
 CONSTRAINT [PK_CosCampaign] PRIMARY KEY CLUSTERED 
(
	[campaignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CosComplaintMail]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CosComplaintMail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CosComplaintMail](
	[complaintID] [int] IDENTITY(1,1) NOT NULL,
	[mail] [varchar](100) NULL,
	[campaignID] [int] NULL,
	[complaintType] [tinyint] NOT NULL,
	[userID] [int] NULL,
 CONSTRAINT [PK_CosComplaintMail] PRIMARY KEY CLUSTERED 
(
	[complaintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CosLinkClicked]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CosLinkClicked]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CosLinkClicked](
	[campaignID] [int] NULL,
	[clickedCount] [int] NULL,
	[clickedID] [int] IDENTITY(1,1) NOT NULL,
	[link] [nvarchar](max) NULL,
 CONSTRAINT [PK_CosLinkClicked] PRIMARY KEY CLUSTERED 
(
	[clickedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OfferDeepNote]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferDeepNote]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferDeepNote](
	[DeepNoteID] [int] IDENTITY(1,1) NOT NULL,
	[DeepNote] [nvarchar](max) NULL,
	[DeepNoteTitle] [nvarchar](200) NULL,
 CONSTRAINT [PK_OfferDeepNote] PRIMARY KEY CLUSTERED 
(
	[DeepNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OfferField]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferField]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferField](
	[OfferGridId] [int] IDENTITY(1,1) NOT NULL,
	[Field11] [bit] NOT NULL,
	[Field12] [bit] NOT NULL,
	[Field13] [bit] NOT NULL,
	[Field14] [bit] NOT NULL,
	[Field15] [bit] NOT NULL,
	[Field20] [bit] NOT NULL,
	[Field21] [bit] NOT NULL,
	[Field22] [bit] NOT NULL,
	[Field23] [bit] NOT NULL,
	[Field24] [bit] NOT NULL,
	[Field25] [bit] NOT NULL,
	[Field26] [bit] NOT NULL,
	[Field27] [bit] NOT NULL,
	[Field28] [bit] NULL,
	[Field29] [bit] NULL,
	[Field30] [bit] NULL,
	[Field31] [bit] NULL,
	[Field32] [bit] NULL,
 CONSTRAINT [PK_OfferField] PRIMARY KEY CLUSTERED 
(
	[OfferGridId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PriceBankInfo]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PriceBankInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PriceBankInfo](
	[Ind] [int] IDENTITY(1,1) NOT NULL,
	[PBankId] [int] NULL,
	[Taksit] [int] NULL,
	[Rate] [decimal](18, 2) NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceBankInfo] PRIMARY KEY CLUSTERED 
(
	[Ind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PriceBanks]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PriceBanks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PriceBanks](
	[PBankId] [int] IDENTITY(1,1) NOT NULL,
	[BankId] [int] NULL,
	[PricePaymentId] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_PriceBanks] PRIMARY KEY CLUSTERED 
(
	[PBankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PriceList]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PriceList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PriceList](
	[PriceId] [int] IDENTITY(1,1) NOT NULL,
	[PriceName] [nvarchar](50) NULL,
	[PriceCode] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[ApplyOrder] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[UserFilter] [nvarchar](150) NULL,
	[UserFilterDesc] [nvarchar](150) NULL,
	[StokFilter] [nvarchar](150) NULL,
	[StokFilterDesc] [nvarchar](150) NULL,
	[Price] [nvarchar](20) NULL,
	[DiscountType] [int] NULL,
	[Discount] [decimal](18, 2) NULL,
	[Details] [nvarchar](250) NULL,
	[Storages] [nvarchar](250) NULL,
	[SpecialCode1] [nvarchar](20) NULL,
	[SpecialCode2] [nvarchar](20) NULL,
	[SpecialCode3] [nvarchar](20) NULL,
 CONSTRAINT [PK_PriceList] PRIMARY KEY CLUSTERED 
(
	[PriceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PricePaymentList]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PricePaymentList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PricePaymentList](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](50) NULL,
	[PaymentCode] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[UserFilter] [nvarchar](250) NULL,
	[UserFilterDesc] [nvarchar](250) NULL,
	[BankTransfer] [bit] NULL,
	[Ipara] [bit] NULL,
	[Paypal] [bit] NULL,
	[Payu] [bit] NULL,
	[Qapel] [bit] NULL,
	[OtherPayments] [bit] NULL,
 CONSTRAINT [PK_PricePaymentList] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductStorages]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStorages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductStorages](
	[ProductStorageId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[ProductSizeOptionId] [int] NULL,
	[StorageId] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_ProductStorages] PRIMARY KEY CLUSTERED 
(
	[ProductStorageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesBrand]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesBrand]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesBrand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesCart]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesCart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesCart](
	[ServicesCartID] [int] IDENTITY(1,1) NOT NULL,
	[Barcode] [nvarchar](100) NULL,
	[ProductCode] [nvarchar](100) NULL,
	[ProductName] [nvarchar](100) NULL,
	[PersonDesc] [nvarchar](400) NULL,
	[PartQty] [int] NULL,
	[UnitID] [int] NULL,
	[Price] [decimal](15, 2) NULL,
	[ServicePrice] [decimal](15, 2) NULL,
	[Currency] [int] NULL,
	[Discount1] [int] NULL,
	[Discount2] [int] NULL,
	[Discount3] [int] NULL,
	[Discount4] [int] NULL,
	[Discount5] [int] NULL,
	[TotalPrice] [decimal](15, 2) NULL,
	[DiscTotPrice] [decimal](15, 2) NULL,
	[NetTotPrice] [decimal](15, 2) NULL,
	[KdvRate] [decimal](15, 2) NULL,
	[KdvNetTotPrice] [decimal](15, 2) NULL,
	[PersonID] [int] NULL,
	[ServicesOrderID] [int] NULL,
	[JobID] [int] NULL,
	[ProductID] [int] NULL,
	[DiscQtyPrice] [decimal](15, 2) NULL,
	[DeepGenDiscTotal1] [decimal](15, 2) NULL,
	[DeepDiscTotal1] [decimal](15, 2) NULL,
	[DeepGenDiscTotal2] [decimal](15, 2) NULL,
	[DeepDiscTotal2] [decimal](15, 2) NULL,
	[GenTotal] [decimal](15, 2) NULL,
	[DeepDisc1] [decimal](15, 2) NULL,
	[DeepDisc2] [decimal](15, 2) NULL,
	[DeepDisc3] [decimal](15, 2) NULL,
	[DeepDisc4] [decimal](15, 2) NULL,
	[DeepDiscKdv1] [decimal](15, 2) NULL,
	[DeepDiscKdv2] [decimal](15, 2) NULL,
	[NetTotTLPrice] [decimal](15, 2) NULL,
	[Rate] [decimal](15, 4) NULL,
	[BuyPrice] [decimal](15, 2) NULL,
 CONSTRAINT [PK__Services__F0077BFFE7FD9B31] PRIMARY KEY CLUSTERED 
(
	[ServicesCartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesCartLog]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesCartLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesCartLog](
	[ServicesCartID] [int] IDENTITY(1,1) NOT NULL,
	[ServicesNo] [int] NULL,
	[LogUserID] [int] NULL,
	[LogNo] [int] NULL,
	[LogDate] [datetime] NULL,
	[Barcode] [nvarchar](100) NULL,
	[ProductCode] [nvarchar](100) NULL,
	[ProductName] [nvarchar](100) NULL,
	[PersonDesc] [nvarchar](400) NULL,
	[PartQty] [int] NULL,
	[UnitID] [int] NULL,
	[Price] [decimal](15, 2) NULL,
	[ServicePrice] [decimal](15, 2) NULL,
	[Currency] [int] NULL,
	[Discount1] [int] NULL,
	[Discount2] [int] NULL,
	[Discount3] [int] NULL,
	[Discount4] [int] NULL,
	[Discount5] [int] NULL,
	[TotalPrice] [decimal](15, 2) NULL,
	[DiscTotPrice] [decimal](15, 2) NULL,
	[NetTotPrice] [decimal](15, 2) NULL,
	[KdvRate] [decimal](15, 2) NULL,
	[KdvNetTotPrice] [decimal](15, 2) NULL,
	[PersonID] [int] NULL,
	[ServicesOrderID] [int] NULL,
	[JobID] [int] NULL,
	[ProductID] [int] NULL,
	[DeepGenDiscTotal1] [decimal](15, 2) NULL,
	[DeepDiscTotal1] [decimal](15, 2) NULL,
	[DeepGenDiscTotal2] [decimal](15, 2) NULL,
	[DeepDiscTotal2] [decimal](15, 2) NULL,
	[GenTotal] [decimal](15, 2) NULL,
	[DeepDisc1] [decimal](15, 2) NULL,
	[DeepDisc2] [decimal](15, 2) NULL,
	[DeepDisc3] [decimal](15, 2) NULL,
	[DeepDisc4] [decimal](15, 2) NULL,
	[DeepDiscKdv1] [decimal](15, 2) NULL,
	[DeepDiscKdv2] [decimal](15, 2) NULL,
 CONSTRAINT [PK__Services__F0077BFF310F6F91] PRIMARY KEY CLUSTERED 
(
	[ServicesCartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesCategory]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesCategory](
	[ServicesCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ServicesCategoryCode] [nvarchar](50) NULL,
	[ServicesCategoryName] [nvarchar](50) NULL,
	[ServicesCategoryInfo] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[ServicesCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesCenter]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesCenter]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesCenter](
	[ServicesID] [int] IDENTITY(1,1) NOT NULL,
	[ServicesCode] [nvarchar](50) NULL,
	[ServicesName] [nvarchar](50) NULL,
	[ServicesAuthority] [nvarchar](100) NULL,
	[CountryID] [int] NULL,
	[CityID] [int] NULL,
	[ServicesAdress] [nvarchar](200) NULL,
	[ServicesMobile] [nvarchar](12) NULL,
	[ServicesPhone] [nvarchar](12) NULL,
	[ServicesFax] [nvarchar](12) NULL,
	[ServicesStatus] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServicesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesDepartment]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesDepartment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesDepartment](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[DepartmentName] [nvarchar](100) NULL,
	[DepartmentMobile] [nvarchar](12) NULL,
	[DepartmentPhone] [nvarchar](12) NULL,
	[DepartmentFax] [nvarchar](12) NULL,
	[DepartmentStatus] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesDevice]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesDevice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesDevice](
	[DeviceID] [int] IDENTITY(1,1) NOT NULL,
	[DeviceCode] [nvarchar](50) NULL,
	[DeviceName] [nvarchar](50) NULL,
	[MarkID] [int] NULL,
	[ModelID] [int] NULL,
	[SerialNo] [nvarchar](200) NULL,
	[ProductID] [int] NULL,
	[DeviceProperty1] [nvarchar](50) NULL,
	[DeviceProperty2] [nvarchar](50) NULL,
	[DeviceProperty3] [nvarchar](50) NULL,
	[DeviceProperty4] [nvarchar](50) NULL,
	[DeviceProperty5] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesFault]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesFault]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesFault](
	[FaultID] [int] IDENTITY(1,1) NOT NULL,
	[FaultJobType] [nvarchar](50) NULL,
	[FaultCode] [nvarchar](50) NULL,
	[FaultName] [nvarchar](50) NULL,
	[FaultDesc] [nvarchar](400) NULL,
	[FaultAnswer] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[FaultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesFormOpt]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesFormOpt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesFormOpt](
	[ServicesFormID] [int] IDENTITY(1,1) NOT NULL,
	[ServicesFormName] [nvarchar](50) NOT NULL,
	[ServicesOpt1] [nvarchar](50) NOT NULL,
	[ServicesOpt2] [nvarchar](50) NOT NULL,
	[ServicesOpt3] [nvarchar](50) NOT NULL,
	[ServicesOpt4] [nvarchar](50) NOT NULL,
	[ServicesOpt5] [nvarchar](50) NOT NULL,
	[ServicesOpt6] [nvarchar](50) NOT NULL,
	[ServicesOpt7] [nvarchar](50) NOT NULL,
	[ServicesOpt8] [nvarchar](50) NOT NULL,
	[ServicesOpt9] [nvarchar](50) NOT NULL,
	[ServicesOpt10] [nvarchar](50) NOT NULL,
	[ServicesOpt11] [nvarchar](50) NOT NULL,
	[ServicesOpt12] [nvarchar](50) NOT NULL,
	[ServicesOpt13] [nvarchar](50) NOT NULL,
	[ServicesOpt14] [nvarchar](50) NOT NULL,
	[ServicesOpt15] [nvarchar](50) NOT NULL,
	[ServicesOpt16] [nvarchar](50) NOT NULL,
	[ServicesOpt17] [nvarchar](50) NOT NULL,
	[ServicesOpt18] [nvarchar](50) NOT NULL,
	[ServicesOpt19] [nvarchar](50) NOT NULL,
	[ServicesOpt20] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ServicesFormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesJob]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesJob]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesJob](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[JobGroupID] [int] NULL,
	[JobCode] [nvarchar](50) NULL,
	[JobName] [nvarchar](50) NULL,
	[JobDesc] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesJobGroup]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesJobGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesJobGroup](
	[JobGroupID] [int] IDENTITY(1,1) NOT NULL,
	[JobGroupCode] [nvarchar](50) NULL,
	[JobGroupName] [nvarchar](50) NULL,
	[ServicesID] [int] NULL,
	[DepartmentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[JobGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesModel]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesModel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesModel](
	[ModelID] [int] IDENTITY(1,1) NOT NULL,
	[ModelCode] [nvarchar](50) NULL,
	[ModelName] [nvarchar](100) NULL,
	[ModelDesc] [nvarchar](400) NULL,
	[MarkId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesOptDetail]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesOptDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesOptDetail](
	[OptDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ServicesSubOpt] [nvarchar](50) NOT NULL,
	[SubOptLevel] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[OptDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesOrder]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesOrder](
	[ServicesOrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[portalID] [int] NULL,
	[ServicesType] [tinyint] NULL,
	[MarkID] [int] NULL,
	[ModelID] [int] NULL,
	[ProductID] [int] NULL,
	[GuarantyType] [int] NULL,
	[StockCode] [nvarchar](100) NULL,
	[SerialNo] [nvarchar](200) NULL,
	[PlaintID] [int] NULL,
	[Plaint] [nvarchar](500) NULL,
	[ServicesStatus] [int] NULL,
	[SaveDate] [datetime] NULL,
	[AcceptDate] [datetime] NULL,
	[DocNo] [nvarchar](50) NULL,
	[DeliveryDate] [datetime] NULL,
	[CenterID] [int] NULL,
	[DepartmentID] [int] NULL,
	[PersonID] [int] NULL,
	[JobType] [int] NULL,
	[OrderDate] [datetime] NULL,
	[BillDate] [datetime] NULL,
	[BillNo] [nvarchar](50) NULL,
	[FaultID] [int] NULL,
	[ResaultID] [int] NULL,
	[TotalPrice] [decimal](15, 2) NULL,
	[ServicesOpt1] [nvarchar](50) NOT NULL,
	[ServicesOpt2] [nvarchar](50) NOT NULL,
	[ServicesOpt3] [nvarchar](50) NOT NULL,
	[ServicesOpt4] [nvarchar](50) NOT NULL,
	[ServicesOpt5] [nvarchar](50) NOT NULL,
	[ServicesOpt6] [nvarchar](50) NOT NULL,
	[ServicesOpt7] [nvarchar](50) NOT NULL,
	[ServicesOpt8] [nvarchar](50) NOT NULL,
	[ServicesOpt9] [nvarchar](50) NOT NULL,
	[ServicesOpt10] [nvarchar](50) NOT NULL,
	[ServicesOpt11] [bit] NOT NULL,
	[ServicesOpt12] [bit] NOT NULL,
	[ServicesOpt13] [bit] NOT NULL,
	[ServicesOpt14] [bit] NOT NULL,
	[ServicesOpt15] [bit] NOT NULL,
	[ServicesOpt16] [bit] NOT NULL,
	[ServicesOpt17] [bit] NOT NULL,
	[ServicesOpt18] [bit] NOT NULL,
	[ServicesOpt19] [bit] NOT NULL,
	[ServicesOpt20] [bit] NOT NULL,
 CONSTRAINT [PK__Services__F2CC2A79D1E5B12E] PRIMARY KEY CLUSTERED 
(
	[ServicesOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesOrderLog]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesOrderLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesOrderLog](
	[ServicesOrderID] [int] IDENTITY(1,1) NOT NULL,
	[ServicesNo] [int] NULL,
	[LogUserID] [int] NULL,
	[LogNo] [int] NULL,
	[LogDate] [datetime] NULL,
	[UserID] [int] NULL,
	[portalID] [int] NULL,
	[ServicesType] [tinyint] NULL,
	[MarkID] [int] NULL,
	[ModelID] [int] NULL,
	[ProductID] [int] NULL,
	[GuarantyType] [int] NULL,
	[StockCode] [nvarchar](100) NULL,
	[SerialNo] [nvarchar](200) NULL,
	[PlaintID] [int] NULL,
	[Plaint] [nvarchar](500) NULL,
	[ServicesStatus] [int] NULL,
	[SaveDate] [datetime] NULL,
	[AcceptDate] [datetime] NULL,
	[DocNo] [nvarchar](50) NULL,
	[DeliveryDate] [datetime] NULL,
	[CenterID] [int] NULL,
	[DepartmentID] [int] NULL,
	[PersonID] [int] NULL,
	[JobType] [int] NULL,
	[OrderDate] [datetime] NULL,
	[BillDate] [datetime] NULL,
	[BillNo] [nvarchar](50) NULL,
	[FaultID] [int] NULL,
	[ResaultID] [int] NULL,
	[TotalPrice] [decimal](15, 2) NULL,
	[ServicesOpt1] [nvarchar](50) NOT NULL,
	[ServicesOpt2] [nvarchar](50) NOT NULL,
	[ServicesOpt3] [nvarchar](50) NOT NULL,
	[ServicesOpt4] [nvarchar](50) NOT NULL,
	[ServicesOpt5] [nvarchar](50) NOT NULL,
	[ServicesOpt6] [nvarchar](50) NOT NULL,
	[ServicesOpt7] [nvarchar](50) NOT NULL,
	[ServicesOpt8] [nvarchar](50) NOT NULL,
	[ServicesOpt9] [nvarchar](50) NOT NULL,
	[ServicesOpt10] [nvarchar](50) NOT NULL,
	[ServicesOpt11] [bit] NOT NULL,
	[ServicesOpt12] [bit] NOT NULL,
	[ServicesOpt13] [bit] NOT NULL,
	[ServicesOpt14] [bit] NOT NULL,
	[ServicesOpt15] [bit] NOT NULL,
	[ServicesOpt16] [bit] NOT NULL,
	[ServicesOpt17] [bit] NOT NULL,
	[ServicesOpt18] [bit] NOT NULL,
	[ServicesOpt19] [bit] NOT NULL,
	[ServicesOpt20] [bit] NOT NULL,
 CONSTRAINT [PK__Services__F2CC2A7919DE5F80] PRIMARY KEY CLUSTERED 
(
	[ServicesOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesPlaint]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesPlaint]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesPlaint](
	[PlaintID] [int] IDENTITY(1,1) NOT NULL,
	[PlaintCode] [nvarchar](50) NULL,
	[Plaint] [nvarchar](100) NULL,
	[PlaintDesc] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlaintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesProject]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesProject]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesProject](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectNo] [int] NULL,
	[ProjectCode] [nvarchar](50) NULL,
	[ProjectName] [nvarchar](100) NULL,
	[ProjectCompany] [nvarchar](100) NULL,
	[ProjectAdmin] [nvarchar](50) NULL,
	[ProjectStartDate] [date] NULL,
	[ProjectFinishDate] [date] NULL,
	[ProjectStatus] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesResault]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesResault]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesResault](
	[ResaultID] [int] IDENTITY(1,1) NOT NULL,
	[ResaultCode] [nvarchar](50) NULL,
	[Resault] [nvarchar](200) NULL,
	[ResaultDesc] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ResaultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesSection]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesSection]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesSection](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NULL,
	[SectionCode] [nvarchar](10) NULL,
	[SectionName] [nvarchar](100) NULL,
	[SectionMobile] [nvarchar](12) NULL,
	[SectionPhone] [nvarchar](12) NULL,
	[SectionFax] [nvarchar](12) NULL,
	[SectionStatus] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesSubCategory]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesSubCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesSubCategory](
	[ServicesSubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ServicesSubCategoryCode] [nchar](50) NULL,
	[ServicesSubCategoryName] [nchar](50) NULL,
	[ServicesSubCategoryInfo] [nvarchar](400) NULL,
	[ServicesCategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServicesSubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServiceStatus]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiceStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServiceStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusCode] [nvarchar](50) NULL,
	[StatusName] [nvarchar](50) NULL,
	[StatusDesc] [nvarchar](200) NULL,
 CONSTRAINT [PK_ServiceStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesType]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicesType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServicesType](
	[ServicesTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ServicesTypeCode] [nvarchar](50) NULL,
	[ServicesTypeName] [nvarchar](100) NULL,
	[ServicesID] [int] NULL,
	[SectionID] [int] NULL,
	[DepartmentID] [int] NULL,
	[ProjectID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServicesTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeAttribute_ProCatID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeAttribute] ADD  CONSTRAINT [DF_AlternativeAttribute_ProCatID]  DEFAULT ((0)) FOR [EntegreCatID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeAttribute_AttrbuteID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeAttribute] ADD  CONSTRAINT [DF_AlternativeAttribute_AttrbuteID]  DEFAULT ((0)) FOR [AttrbuteID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeAttribute_Mandatory]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeAttribute] ADD  CONSTRAINT [DF_AlternativeAttribute_Mandatory]  DEFAULT ((1)) FOR [Mandatory]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeAttribute_MultipleSelect]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeAttribute] ADD  CONSTRAINT [DF_AlternativeAttribute_MultipleSelect]  DEFAULT ((0)) FOR [MultipleSelect]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeAttribute_AttributeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeAttribute] ADD  CONSTRAINT [DF_AlternativeAttribute_AttributeID]  DEFAULT ((0)) FOR [AttributeID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeAttribute_AttributeListID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeAttribute] ADD  CONSTRAINT [DF_AlternativeAttribute_AttributeListID]  DEFAULT ((0)) FOR [AttributeListID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeAttributeDetail_ProCatID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeAttributeDetail] ADD  CONSTRAINT [DF_AlternativeAttributeDetail_ProCatID]  DEFAULT ((0)) FOR [EntegreCatID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeMarkets_StartPriceType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeMarkets] ADD  CONSTRAINT [DF_AlternativeMarkets_StartPriceType]  DEFAULT ((0)) FOR [StartPriceType]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeMarkets_PriceType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeMarkets] ADD  CONSTRAINT [DF_AlternativeMarkets_PriceType]  DEFAULT ((0)) FOR [PriceType]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeMarkets_WithKdv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeMarkets] ADD  CONSTRAINT [DF_AlternativeMarkets_WithKdv]  DEFAULT ((1)) FOR [WithKdv]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeMarketsCategories_proCatId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeMarketsCategories] ADD  CONSTRAINT [DF_AlternativeMarketsCategories_proCatId]  DEFAULT ((0)) FOR [proCatId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeMarketsCategories_Parent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeMarketsCategories] ADD  CONSTRAINT [DF_AlternativeMarketsCategories_Parent]  DEFAULT ((-1)) FOR [Parent]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlternativeMarketsCategories_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlternativeMarketsCategories] ADD  CONSTRAINT [DF_AlternativeMarketsCategories_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CosCampaign_mailCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CosCampaign] ADD  CONSTRAINT [DF_CosCampaign_mailCount]  DEFAULT ((0)) FOR [mailCount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CosCampaign_sendCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CosCampaign] ADD  CONSTRAINT [DF_CosCampaign_sendCount]  DEFAULT ((0)) FOR [sendCount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CosCampaign_openedMail]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CosCampaign] ADD  CONSTRAINT [DF_CosCampaign_openedMail]  DEFAULT ((0)) FOR [openedMail]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CosCampaign_clickedLink]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CosCampaign] ADD  CONSTRAINT [DF_CosCampaign_clickedLink]  DEFAULT ((0)) FOR [clickedLink]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CosComplaintMail_complaintType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CosComplaintMail] ADD  CONSTRAINT [DF_CosComplaintMail_complaintType]  DEFAULT ((0)) FOR [complaintType]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CosLinkClicked_clickedCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CosLinkClicked] ADD  CONSTRAINT [DF_CosLinkClicked_clickedCount]  DEFAULT ((0)) FOR [clickedCount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field11]  DEFAULT ((0)) FOR [Field11]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field12]  DEFAULT ((0)) FOR [Field12]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field13]  DEFAULT ((0)) FOR [Field13]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field14]  DEFAULT ((0)) FOR [Field14]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field15]  DEFAULT ((0)) FOR [Field15]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field20]  DEFAULT ((0)) FOR [Field20]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field21]  DEFAULT ((0)) FOR [Field21]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field22]  DEFAULT ((0)) FOR [Field22]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field23]  DEFAULT ((0)) FOR [Field23]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field24]  DEFAULT ((0)) FOR [Field24]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field25]  DEFAULT ((0)) FOR [Field25]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field26]  DEFAULT ((0)) FOR [Field26]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field27]  DEFAULT ((0)) FOR [Field27]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field28]  DEFAULT ((0)) FOR [Field28]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field29]  DEFAULT ((0)) FOR [Field29]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field30]  DEFAULT ((0)) FOR [Field30]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field31]  DEFAULT ((0)) FOR [Field31]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferField_Field32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferField] ADD  CONSTRAINT [DF_OfferField_Field32]  DEFAULT ((0)) FOR [Field32]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Barco__56DEC60A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__Barco__56DEC60A]  DEFAULT ('') FOR [Barcode]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Produ__57D2EA43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__Produ__57D2EA43]  DEFAULT ('') FOR [ProductCode]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Produ__58C70E7C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__Produ__58C70E7C]  DEFAULT ('') FOR [ProductName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Perso__59BB32B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__Perso__59BB32B5]  DEFAULT ('') FOR [PersonDesc]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__PartQ__5AAF56EE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__PartQ__5AAF56EE]  DEFAULT ((1)) FOR [PartQty]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Price__5BA37B27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__Price__5BA37B27]  DEFAULT ((0)) FOR [Price]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Servi__5C979F60]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__Servi__5C979F60]  DEFAULT ((0)) FOR [ServicePrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Curre__5D8BC399]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__Curre__5D8BC399]  DEFAULT ('') FOR [Currency]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Disco__5E7FE7D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__Disco__5E7FE7D2]  DEFAULT ((0)) FOR [Discount1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DiscT__5F740C0B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__DiscT__5F740C0B]  DEFAULT ((0)) FOR [DiscTotPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__NetTo__60683044]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__NetTo__60683044]  DEFAULT ((0)) FOR [NetTotPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Perso__615C547D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__Perso__615C547D]  DEFAULT ((0)) FOR [PersonID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Servi__625078B6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__Servi__625078B6]  DEFAULT ((0)) FOR [ServicesOrderID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__JobID__63449CEF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__JobID__63449CEF]  DEFAULT ((0)) FOR [JobID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Produ__6438C128]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__Produ__6438C128]  DEFAULT ((0)) FOR [ProductID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_DiscQtyPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_DiscQtyPrice]  DEFAULT ((0)) FOR [DiscQtyPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_DeepGenDiscTotal1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_DeepGenDiscTotal1]  DEFAULT ((0)) FOR [DeepGenDiscTotal1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_DeepDiscTotal1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_DeepDiscTotal1]  DEFAULT ((0)) FOR [DeepDiscTotal1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_DeepGenDiscTotal2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_DeepGenDiscTotal2]  DEFAULT ((0)) FOR [DeepGenDiscTotal2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_DeepDiscTotal2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_DeepDiscTotal2]  DEFAULT ((0)) FOR [DeepDiscTotal2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_GenTotal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_GenTotal]  DEFAULT ((0)) FOR [GenTotal]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_DeepDisc1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_DeepDisc1]  DEFAULT ((0)) FOR [DeepDisc1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_DeepDisc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_DeepDisc2]  DEFAULT ((0)) FOR [DeepDisc2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_DeepDisc3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_DeepDisc3]  DEFAULT ((0)) FOR [DeepDisc3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_DeepDisc4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_DeepDisc4]  DEFAULT ((0)) FOR [DeepDisc4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_DeepDiscKdv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_DeepDiscKdv1]  DEFAULT ((0)) FOR [DeepDiscKdv1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCart_DeepDiscKdv2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF_ServicesCart_DeepDiscKdv2]  DEFAULT ((0)) FOR [DeepDiscKdv2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__NetTo__0BA85F5B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__NetTo__0BA85F5B]  DEFAULT ((0)) FOR [NetTotTLPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesCa__Rate__0C9C8394]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesCa__Rate__0C9C8394]  DEFAULT ((1)) FOR [Rate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__BuyPr__0D90A7CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCart] ADD  CONSTRAINT [DF__ServicesC__BuyPr__0D90A7CD]  DEFAULT ((0)) FOR [BuyPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesCartLog_ServicesNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF_ServicesCartLog_ServicesNo]  DEFAULT ((1)) FOR [ServicesNo]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Barco__7579271A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__Barco__7579271A]  DEFAULT ('') FOR [Barcode]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Produ__766D4B53]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__Produ__766D4B53]  DEFAULT ('') FOR [ProductCode]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Produ__77616F8C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__Produ__77616F8C]  DEFAULT ('') FOR [ProductName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Perso__785593C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__Perso__785593C5]  DEFAULT ('') FOR [PersonDesc]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__PartQ__7949B7FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__PartQ__7949B7FE]  DEFAULT ((1)) FOR [PartQty]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Price__7A3DDC37]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__Price__7A3DDC37]  DEFAULT ((0)) FOR [Price]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Servi__7B320070]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__Servi__7B320070]  DEFAULT ((0)) FOR [ServicePrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Curre__7C2624A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__Curre__7C2624A9]  DEFAULT ('') FOR [Currency]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Disco__7D1A48E2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__Disco__7D1A48E2]  DEFAULT ((0)) FOR [Discount1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DiscT__7E0E6D1B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__DiscT__7E0E6D1B]  DEFAULT ((0)) FOR [DiscTotPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__NetTo__7F029154]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__NetTo__7F029154]  DEFAULT ((0)) FOR [NetTotPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Perso__7FF6B58D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__Perso__7FF6B58D]  DEFAULT ((0)) FOR [PersonID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Servi__00EAD9C6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__Servi__00EAD9C6]  DEFAULT ((0)) FOR [ServicesOrderID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__JobID__01DEFDFF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__JobID__01DEFDFF]  DEFAULT ((0)) FOR [JobID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__Produ__02D32238]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__Produ__02D32238]  DEFAULT ((0)) FOR [ProductID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DeepG__03C74671]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__DeepG__03C74671]  DEFAULT ((0)) FOR [DeepGenDiscTotal1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DeepD__04BB6AAA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__DeepD__04BB6AAA]  DEFAULT ((0)) FOR [DeepDiscTotal1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DeepG__05AF8EE3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__DeepG__05AF8EE3]  DEFAULT ((0)) FOR [DeepGenDiscTotal2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DeepD__06A3B31C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__DeepD__06A3B31C]  DEFAULT ((0)) FOR [DeepDiscTotal2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__GenTo__0797D755]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__GenTo__0797D755]  DEFAULT ((0)) FOR [GenTotal]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DeepD__088BFB8E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__DeepD__088BFB8E]  DEFAULT ((0)) FOR [DeepDisc1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DeepD__09801FC7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__DeepD__09801FC7]  DEFAULT ((0)) FOR [DeepDisc2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DeepD__0A744400]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__DeepD__0A744400]  DEFAULT ((0)) FOR [DeepDisc3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DeepD__0B686839]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__DeepD__0B686839]  DEFAULT ((0)) FOR [DeepDisc4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DeepD__0C5C8C72]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__DeepD__0C5C8C72]  DEFAULT ((0)) FOR [DeepDiscKdv1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesC__DeepD__0D50B0AB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesCartLog] ADD  CONSTRAINT [DF__ServicesC__DeepD__0D50B0AB]  DEFAULT ((0)) FOR [DeepDiscKdv2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__5B2E79DB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesFormName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__5C229E14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__5D16C24D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__5E0AE686]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__5EFF0ABF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__5FF32EF8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt5]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__60E75331]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt6]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__61DB776A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt7]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__62CF9BA3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt8]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__63C3BFDC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt9]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__64B7E415]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt10]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__65AC084E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt11]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__66A02C87]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt12]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__679450C0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOptDetail] ADD  DEFAULT ('') FOR [ServicesSubOpt]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__porta__7A280247]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__porta__7A280247]  DEFAULT ((0)) FOR [portalID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__SaveD__7B1C2680]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__SaveD__7B1C2680]  DEFAULT ('') FOR [SaveDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Accep__7C104AB9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Accep__7C104AB9]  DEFAULT ('') FOR [AcceptDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Total__7D046EF2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Total__7D046EF2]  DEFAULT ((0)) FOR [TotalPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__7DF8932B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__7DF8932B]  DEFAULT ('') FOR [ServicesOpt1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__7EECB764]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__7EECB764]  DEFAULT ('') FOR [ServicesOpt2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__7FE0DB9D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__7FE0DB9D]  DEFAULT ('') FOR [ServicesOpt3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__00D4FFD6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__00D4FFD6]  DEFAULT ('') FOR [ServicesOpt4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__01C9240F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__01C9240F]  DEFAULT ('') FOR [ServicesOpt5]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__02BD4848]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__02BD4848]  DEFAULT ('') FOR [ServicesOpt6]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__03B16C81]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__03B16C81]  DEFAULT ('') FOR [ServicesOpt7]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__04A590BA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__04A590BA]  DEFAULT ('') FOR [ServicesOpt8]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0599B4F3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__0599B4F3]  DEFAULT ('') FOR [ServicesOpt9]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__068DD92C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__068DD92C]  DEFAULT ('') FOR [ServicesOpt10]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0781FD65]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__0781FD65]  DEFAULT ('') FOR [ServicesOpt11]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0876219E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__0876219E]  DEFAULT ('') FOR [ServicesOpt12]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__096A45D7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__096A45D7]  DEFAULT ('') FOR [ServicesOpt13]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0A5E6A10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__0A5E6A10]  DEFAULT ('') FOR [ServicesOpt14]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0B528E49]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__0B528E49]  DEFAULT ('') FOR [ServicesOpt15]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0C46B282]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__0C46B282]  DEFAULT ('') FOR [ServicesOpt16]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0D3AD6BB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__0D3AD6BB]  DEFAULT ('') FOR [ServicesOpt17]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0E2EFAF4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__0E2EFAF4]  DEFAULT ('') FOR [ServicesOpt18]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0F231F2D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__0F231F2D]  DEFAULT ('') FOR [ServicesOpt19]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__10174366]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  CONSTRAINT [DF__ServicesO__Servi__10174366]  DEFAULT ('') FOR [ServicesOpt20]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesOrderLog_ServicesNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF_ServicesOrderLog_ServicesNo]  DEFAULT ((1)) FOR [ServicesNo]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__porta__5CAD7950]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__porta__5CAD7950]  DEFAULT ((0)) FOR [portalID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__SaveD__5DA19D89]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__SaveD__5DA19D89]  DEFAULT ('') FOR [SaveDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Accep__5E95C1C2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Accep__5E95C1C2]  DEFAULT ('') FOR [AcceptDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Total__5F89E5FB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Total__5F89E5FB]  DEFAULT ((0)) FOR [TotalPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__607E0A34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__607E0A34]  DEFAULT ('') FOR [ServicesOpt1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__61722E6D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__61722E6D]  DEFAULT ('') FOR [ServicesOpt2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__626652A6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__626652A6]  DEFAULT ('') FOR [ServicesOpt3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__635A76DF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__635A76DF]  DEFAULT ('') FOR [ServicesOpt4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__644E9B18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__644E9B18]  DEFAULT ('') FOR [ServicesOpt5]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__6542BF51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__6542BF51]  DEFAULT ('') FOR [ServicesOpt6]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__6636E38A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__6636E38A]  DEFAULT ('') FOR [ServicesOpt7]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__672B07C3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__672B07C3]  DEFAULT ('') FOR [ServicesOpt8]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__681F2BFC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__681F2BFC]  DEFAULT ('') FOR [ServicesOpt9]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__69135035]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__69135035]  DEFAULT ('') FOR [ServicesOpt10]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__6A07746E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__6A07746E]  DEFAULT ('') FOR [ServicesOpt11]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__6AFB98A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__6AFB98A7]  DEFAULT ('') FOR [ServicesOpt12]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__6BEFBCE0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__6BEFBCE0]  DEFAULT ('') FOR [ServicesOpt13]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__6CE3E119]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__6CE3E119]  DEFAULT ('') FOR [ServicesOpt14]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__6DD80552]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__6DD80552]  DEFAULT ('') FOR [ServicesOpt15]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__6ECC298B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__6ECC298B]  DEFAULT ('') FOR [ServicesOpt16]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__6FC04DC4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__6FC04DC4]  DEFAULT ('') FOR [ServicesOpt17]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__70B471FD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__70B471FD]  DEFAULT ('') FOR [ServicesOpt18]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__71A89636]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__71A89636]  DEFAULT ('') FOR [ServicesOpt19]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__729CBA6F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrderLog] ADD  CONSTRAINT [DF__ServicesO__Servi__729CBA6F]  DEFAULT ('') FOR [ServicesOpt20]
END

GO
/****** Object:  Trigger [dbo].[campaignHashID]    Script Date: 02.06.2014 11:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[campaignHashID]'))
EXEC dbo.sp_executesql @statement = N'
CREATE trigger [dbo].[campaignHashID]
on [dbo].[CosCampaign] after insert as
declare @hashID nvarchar(50)
declare @campaignID int
set @hashID=(SELECT CONVERT(NVARCHAR(32),HashBytes(''MD5'', convert(NVARCHAR(32),campaignID)),2) from inserted)
set @campaignID=(Select campaignID from inserted)
begin
update CosCampaign set hashID=@hashID where campaignID=@campaignID
end


/****** Object:  StoredProcedure [dbo].[addToCampaignClicked]    Script Date: 06.05.2014 16:35:00 ******/
SET ANSI_NULLS ON
' 
GO

 
/****** Object:  StoredProcedure [dbo].[AddDistrict]    Script Date: 02.06.2014 11:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddDistrict]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[AddDistrict]
 
 	@DistrictName   nvarchar(100),
	@CountryID  int,
	@CityId     int ,
	@DistrictId int output
 
AS
	IF NOT EXISTS ( select * from CRMDistrict where DistrictName=@DistrictName and CountryID=@CountryID and CityId = @CityId)
	BEGIN
		INSERT INTO CRMDistrict
		(DistrictName,CountryId,CityId)VALUES(@DistrictName,@CountryId,@CityId)

	SELECT
		@DistrictId = @@Identity
	END

	ELSE
		BEGIN	
			SELECT  @DistrictId = DistrictId from CRMDistrict where  DistrictName=@DistrictName and CountryID=@CountryID and CityId = @CityId
		END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[addToCampaignClicked]    Script Date: 02.06.2014 11:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addToCampaignClicked]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[addToCampaignClicked]
(
@hashID varchar(50),
@link varchar(MAX)
)
AS
declare @campaignID int

if Exists (select campaignID from CosCampaign where hashID=@hashID) /* campaign control */
begin
select @campaignID=campaignID from CosCampaign where hashID=@hashID

if EXISTS(Select clickedID From CosLinkClicked Where campaignID=@campaignID and link=@link ) /*link aldready has been created with this campaign */
begin
update CosLinkClicked set clickedCount=ClickedCount + 1 where campaignID=@campaignID and link=@link
end
else  /*link insert with this campaign */
begin
insert into CosLinkClicked (campaignID,link,clickedCount) values(@campaignID,@link,1)
end
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[addToComplaintUnSubScribe]    Script Date: 02.06.2014 11:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addToComplaintUnSubScribe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[addToComplaintUnSubScribe]
@mail varchar(100),
@hashID varchar(50),
@complaintType Tinyint,
@UsersID int
AS
declare @userID int
declare @campaignID int
select @userID=userID,@campaignID=campaignID  from CosCampaign where hashID=@hashID

if not EXISTS(Select complaintID  From CosComplaintMail Where mail=@mail and userID=@userID )
begin
update Users set IsSendMail=0  where Email=@mail and UserId=@UsersID
INSERT INTO CosComplaintMail
(
mail,
campaignID,
complaintType,
userID
)

VALUES
(
@mail,
@campaignID,
@complaintType,
@userID
)
select fromMail from cosUser where userID=@userID
end

else
begin
select ''1''
end


' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddUserFromVega]    Script Date: 02.06.2014 11:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddUserFromVega]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROC [dbo].[AddUserFromVega]
 
	
	@IsReseller	bit	,
	@CompanyCode NVARCHAR(50),
	@IsActive	bit	,
	@DisAccount	decimal(8, 2)	,
	@StokIsk	tinyint ,
	@StokIskActive BIT ,
	@Name	nvarchar(50)	,
	@Password	nvarchar(20)	,
	@TCKimlikNo	varchar(11)	,
	@FullName	nvarchar(50)	,
	@Email	nvarchar(100)	,
	@Phone1	nvarchar(14)	,
	@Phone2	nvarchar(14)	,
	@FaxNumber	nvarchar(14)	,
	@MobilePhone	nvarchar(14)	,
	@Addres	nvarchar(400)	,
	@CityId	int	,
	@UserSex	int	,
	@Profession	varchar(25)	,
	@WhereToHear	varchar(50)	,
	@Education	varchar(25)	,
	@UserType	int	,
	@CompanyName	nvarchar(100)	,
	@CompanyPhone1	nvarchar(14)	,
	@CompanyPhone2	nvarchar(14)	,
	@CompanyEmail	nvarchar(100)	,
	@CompanyCityId	int	,
	@DistrictID	int	,
	@CompanyAddres	nvarchar(400)	,
	@CompanyWeb	nvarchar(100)	,
	@CODE1	int	,
	@CODE2	int	,
	@CODE3	int	 ,
	@VergiNo nvarchar(15),
	@Vergidairesi nvarchar(100),
	@SevkAdres nvarchar(400)
	AS

	DECLARE @USERID BIGINT
	DECLARE @Identity INT
	SET @USERID = 0

		Select @USERID =  UserId From Users WHERE CompanyCode = @CompanyCode
		IF @USERID = 0
			BEGIN			
				INSERT users 
					(CompanyVd, CompanyVdNo, PortalId, IsReseller, CompanyCode,IsActive,DisAccount,StokIsk,StokIskActive,Name,Password,TCKimlikNo,FullName,Email,Phone1,Phone2,FaxNumber,MobilePhone,Addres,CityId,UserSex,Profession,WhereToHear,Education,UserType,CompanyName,CompanyPhone1,CompanyPhone2,CompanyEmail,CompanyCityId,DistrictID,CompanyAddres,CompanyWeb,CODE1,CODE2,CODE3)
				VALUES 			
					(@Vergidairesi, @VergiNo, 0, @IsReseller, @CompanyCode,@IsActive,@DisAccount,@StokIsk,@StokIskActive,@Name,@Password,@TCKimlikNo,@FullName,@Email,@Phone1,@Phone2,@FaxNumber,@MobilePhone,@Addres,@CityId,@UserSex,@Profession,@WhereToHear,@Education,@UserType,@CompanyName,@CompanyPhone1,@CompanyPhone2,@CompanyEmail,@CompanyCityId,@DistrictID,@CompanyAddres,@CompanyWeb,@CODE1,@CODE2,@CODE3)
		
					SET @USERID = @@IDENTITY
					EXEC AddBillingAdress @USERID, @CompanyName, @CompanyPhone1, @CompanyPhone2, @Vergidairesi, @VergiNo, @CityId, 1, @DistrictId, @CompanyAddres, @IsActive, ''True'', @CompanyEmail, @Identity				
					EXEC AddShippingAdress  @USERID, @CompanyName, @CompanyPhone1, @CompanyPhone2, @CityId, 1, @DistrictId, @SevkAdres, '''', @IsActive, ''True'', @Identity
					select CompanyCode from users WHERE userId = @USERID 
								
			END
						
	   ELSE
			
			BEGIN
				UPDATE users SET 
					CompanyVd = @Vergidairesi, 
					CompanyVdNo = @VergiNo,
					IsReseller = @IsReseller, 
					CompanyCode = @CompanyCode,
					IsActive = @IsActive,
					DisAccount = @DisAccount,
					StokIsk = @StokIsk,
					StokIskActive = @StokIskActive,
					Name = @Name,
					Password = @Password,
					TCKimlikNo = @TCKimlikNo,
					FullName = @FullName,
					Email = @Email,
					Phone1 = @Phone1,
					Phone2 = @Phone2,
					FaxNumber = @FaxNumber,
					MobilePhone = @MobilePhone,
					Addres = @Addres,
					CityId = @CityId,
					UserSex = @UserSex,
					UserType = @UserType,
					CompanyName = @CompanyName,
					CompanyPhone1 = @CompanyPhone1,
					CompanyPhone2 = @CompanyPhone2,
					CompanyEmail = @CompanyEmail,
					CompanyCityId = @CompanyCityId,
					DistrictID = @DistrictID,
					CompanyAddres = @CompanyAddres,
					CompanyWeb = @CompanyWeb,
					CODE1 = @CODE1,
					CODE2 = @CODE2,
					CODE3 = @code3
					WHERE userId = @USERID

					EXEC AddBillingAdress @USERID, @CompanyName, @CompanyPhone1, @CompanyPhone2, @Vergidairesi, @VergiNo, @CityId, 1, @DistrictId, @CompanyAddres, @IsActive, ''True'', @CompanyEmail, @Identity				
					EXEC AddShippingAdress  @USERID, @CompanyName, @CompanyPhone1, @CompanyPhone2, @CityId, 1, @DistrictId, @SevkAdres, '''', @IsActive, ''True'', @Identity			
				
			END

			begin
					select CompanyCode from users WHERE userId = @USERID 
			end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[getReportOfCampaign]    Script Date: 02.06.2014 11:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getReportOfCampaign]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[getReportOfCampaign]
@campaignID int
AS
begin
select campaignName, mailCount, sendCount, sendDate, openedMail,
(select sum(clickedCount) from CosLinkClicked where campaignID=@campaignID) as clickedLink,
(select count(*) from CosComplaintMail where campaignID=@campaignID) as Complaint
from CosCampaign where campaignID=@campaignID
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[OrdersAddN11]    Script Date: 02.06.2014 11:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrdersAddN11]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[OrdersAddN11]
(
    @PortalId					int,
    @CartId					nvarchar(50),
    @OrderDate				 datetime='''',
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
    @CardName	nvarchar(50)='''',
    @Taksit					 int,
    @BankaToplamTutar		  decimal(18,2),
    @BankPayType			 nvarchar(10),
    @StokIndirim int,  
	@StokIskActive bit,
	@Status int =0,
	@ToplamPuan decimal(18,2),
	@CampainId int=0,
	@Ip varchar(16)='''',
	@OrderCode varchar(10)='''',
	@OrderPaymentCode nvarchar(50)='''',
    @CurrencyRate		  decimal(10, 4),
    @CurrencyCode		  nvarchar(10)='''',
    @CustomerCurrencyRate		  decimal(10, 4),
    @CustomerCurrencyCode		  nvarchar(10)='''',
    @TaksitRate		  decimal(10, 2),
	@ShippingCountryName		  nvarchar(50)='''',
    @ShippingDistrictName		  nvarchar(50)='''',
    @BillingCountryName		  nvarchar(50)='''',
    @BillingDistrictName		  nvarchar(50)='''',
	@ShippingMail nvarchar(100),
    @OrderId				 int OUTPUT
)
AS
set @OrderDate=getdate()
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

--ShoppingCartList 1 ,''N'' 


' 
END
GO
/****** Object:  StoredProcedure [dbo].[OrdersDetailAddN11]    Script Date: 02.06.2014 11:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrdersDetailAddN11]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[OrdersDetailAddN11]
(
    @PortalId					int,
    @CartId					nvarchar(50),
    @OrderDate				 datetime='''',
    @Note					nvarchar(400),   
    @ToplamTutar			decimal(18,2),    
    @StokIndirim int,  
	@StokIskActive bit,
	@Status int =0,
	@ProductId int,
	@ProductUnitId int,
	@ProductSizeId int,
	@ProductSizeDescription nvarchar(400),
	@Qty int,	
    @OrderId  int
)
   AS
--Copy items from given shopping cart to OrdersDetail table 
INSERT INTO OrderDetails
(
OrderId, 
ProductId,
ProductCode,
ProductName,
BirimAdi,
Carpan,
SatisFiyati,
Pb1,
Rate,
BirimIndirimOrani,
CariIndirimOrani,
AlisFiyati,
APb,
AlisRate,
Quantity,
Provider,
KdvRate,
MarkName,
Status,
Description,
ProviderId,
XmlProviderId,
UserId,
AltinGram,
ProductSizeId,
ProductBarcode,
ProductSizeBarcode
)
SELECT    @OrderId, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan,
''SatisFiyati''= @ToplamTutar, 
 ''Pb1''= case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end, 
                      Currencys_2.Rate,   
  0  as Indirim ,  
 case when (isnumeric(@CartId)=1) then (select DisAccount from Users where UserId=@CartId) else 0 end, dbo.ProductUnits.AlisFiyati, dbo.ProductUnits.APb, Currencys_1.Rate AS Rate, 
@Qty, dbo.Products.Provider, dbo.ProductKdvs.KdvRate,ProductMarks.MarKName,@Status,@ProductSizeDescription,Products.IsPenta,Products.ProviderId,Products.UserId,isnull(ProductUnits.SatisFiyati5,0),
@ProductSizeId,
ProductUnits.Barcode,
Case When (@ProductSizeId>0) Then (Select Barcode From ProductSizes where ProductSizeId=@ProductSizeId) else '''' end as ProductSizeBarcode


from Products INNER JOIN  dbo.ProductUnits on Products.ProductId=ProductUnits.ProductId INNER JOIN
                      dbo.ProductKdvs ON dbo.Products.KdvId = dbo.ProductKdvs.KdvId
					  INNER JOIN
                      dbo.Currencys Currencys_1 ON dbo.ProductUnits.APb = Currencys_1.CurrencyId
                      LEFT OUTER JOIN
                      FCampains ON Products.CampainId = FCampains.FCampainId LEFT OUTER JOIN
                      dbo.ProductMarks ON dbo.Products.MarkId = dbo.ProductMarks.MarkId
					  INNER JOIN  dbo.Currencys Currencys_2 
					  ON Currencys_2.CurrencyId = case (0) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 
					  when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end



					  where Products.ProductId=@ProductId and ProductUnits.UnitId=@ProductUnitId  and 
					  (dbo.Products.IsActive = 1) AND 
(dbo.Products.IsDeleted = 0) AND 
(dbo.Products.StockQty > 0 or Products.SellNoneStock=1) AND 
(dbo.ProductUnits.IsActive = 1)

' 
END
GO




/****** Object:  View [dbo].[OrdersListDetails]    Script Date: 20.05.2014 17:54:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[OrdersListDetails]
AS
SELECT     dbo.Users.FullName, dbo.Users.Email, dbo.OrderDetails.OrderDetailsId, dbo.OrderDetails.ProductId, dbo.OrderDetails.ProductCode, dbo.OrderDetails.ProductName,
dbo.OrderDetails.BirimAdi, dbo.OrderDetails.Carpan, dbo.OrderDetails.KdvRate, dbo.OrderDetails.SatisFiyati, dbo.OrderDetails.Pb1, dbo.OrderDetails.Rate,
dbo.OrderDetails.BirimIndirimOrani, dbo.OrderDetails.CariIndirimOrani, dbo.OrderDetails.AlisFiyati, dbo.OrderDetails.APb, dbo.OrderDetails.AlisRate,
dbo.OrderDetails.Quantity, dbo.Orders.Status, dbo.OrderDetails.Status AS Status2, OrderStatus.StatusName, OrderStatus2.StatusName AS StatusName2,
dbo.OrderDetails.WillSendMessage, dbo.OrderDetails.Provider, dbo.OrderDetails.MarkName, dbo.OrderDetails.Description, Providers_1.ProviderId,
Providers_1.ProviderName, dbo.Providers.ProviderId AS XmlProviderId, dbo.Providers.ProviderName AS XmlProviderName, dbo.Currencys.CurrencyName,
dbo.Orders.OrderId, dbo.Orders.PortalId, dbo.Orders.CustomerId, dbo.Orders.OrderDate, dbo.Orders.ShipDate, dbo.Orders.IsPayed, dbo.Orders.PaymentType,
dbo.Orders.Note, dbo.Orders.ShippingName, dbo.Orders.ShippingPhoneNo, dbo.Orders.ShippingMobilePhone, dbo.Orders.ShippingCityName,
dbo.Orders.ShippingAddress, dbo.Orders.ShippingCargoName, dbo.Orders.BillingName, dbo.Orders.BillingTaxOffice, dbo.Orders.BillingTaxNo,
dbo.Orders.BillingCityName, dbo.Orders.BillingAddress, dbo.Orders.ToplamTutar, dbo.Orders.KdvDahilToplam, dbo.Orders.ToplamKdv, dbo.Orders.ToplamKargo,
dbo.Orders.KargoDahilToplamTutar, dbo.Orders.ToplamIndirim, dbo.Orders.CekIndirimi, dbo.Orders.ToplamAgirlik, dbo.Orders.ToplamHacim, dbo.Orders.ToplamDesi,
dbo.Orders.BankName, dbo.Orders.CardName, dbo.Orders.Taksit, dbo.Orders.BankaToplamTutar, dbo.Orders.BankPayType, dbo.Orders.Integreted,
dbo.Orders.Aciklama, dbo.OrderDetails.UserId, dbo.OrderDetails.ProductSizeBarcode, dbo.OrderDetails.ProductBarcode, dbo.Orders.OrderCode,
dbo.Orders.CurrencyRate, dbo.Orders.CurrencyCode, dbo.Orders.CustomerCurrencyRate, dbo.Orders.CustomerCurrencyCode,dbo.Orders.TaksitRate
FROM         dbo.Orders INNER JOIN
dbo.OrderDetails ON dbo.Orders.OrderId = dbo.OrderDetails.OrderId INNER JOIN
dbo.Currencys ON dbo.OrderDetails.Pb1 = dbo.Currencys.CurrencyId LEFT OUTER JOIN
dbo.Providers ON dbo.OrderDetails.XmlProviderId = dbo.Providers.ProviderId LEFT OUTER JOIN
dbo.Providers AS Providers_1 ON dbo.OrderDetails.ProviderId = Providers_1.ProviderId LEFT OUTER JOIN
dbo.OrderStatus AS OrderStatus2 ON dbo.OrderDetails.Status = OrderStatus2.StatusId LEFT OUTER JOIN
dbo.Users ON dbo.Orders.CustomerId = dbo.Users.UserId LEFT OUTER JOIN
dbo.OrderStatus AS OrderStatus ON dbo.Orders.Status = OrderStatus.StatusId



GO



/****** Object:  View [dbo].[ProductList]    Script Date: 20.05.2014 17:55:37 ******/
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
dbo.Products.SearchKeywords, dbo.Products.Hit, dbo.Products.AuthorId AS Expr2, dbo.Products.PublisherId, Currencys_P.CurrencyName AS CurrencyP,
dbo.ProductUnits.PiyasaFiyati, Currencys_4.CurrencyName AS Currency4, Currencys_5.CurrencyName AS Currency5, Currencys_4.Rate AS Rate4,
Currencys_5.Rate AS Rate5, Currencys_P.Rate AS RateP, Currencys_A.Rate AS RateA, dbo.ProductUnits.SatisFiyati4, dbo.ProductUnits.SatisFiyati5,
dbo.ProductUnits.Isk4, dbo.ProductUnits.Isk5, dbo.Products.HizliKargo, dbo.Products.AyniGunTeslim, dbo.Products.IndirimliUrun, dbo.Products.FirsatUrunu,
dbo.Products.SokFiyatliUrun, dbo.Products.EnUcuzUrun, dbo.Products.OzelUrun, dbo.Products.SinirliSayidaUrun, dbo.Products.YeniUrun,
dbo.Products.HediyeliUrun, dbo.Products.StartDate, dbo.Products.EndDate, dbo.Categories.StartDate AS CStartDate, dbo.Categories.EndDate AS CEndDate,
dbo.Products.ProductSizeOptionId, dbo.ProductUnits.Barcode, dbo.Products.Code15, dbo.Products.Code14, dbo.Products.Code13, dbo.Products.Code12,
dbo.Products.Code11, dbo.Products.Code10, dbo.Products.Code9, dbo.Products.Code8, dbo.Products.Code7, dbo.Products.Code6, dbo.Products.Code5,
dbo.Products.Code4, dbo.Products.Code3, dbo.Products.Code2, dbo.Products.Code1, dbo.Products.StokType, dbo.ProductUnits.AlisFiyati
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



/****** Object:  View [dbo].[ProductListDetails5]    Script Date: 20.05.2014 17:56:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[ProductListDetails5]
AS
SELECT        dbo.Categories.CatId, dbo.Categories.CatName, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.Description, 
                         dbo.Products.StockQty, dbo.ProductKdvs.KdvRate, dbo.ProductImages.Path, dbo.ProductMarks.MarKName, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan, 
                         dbo.ProductUnits.SatisFiyati0, dbo.ProductUnits.SatisFiyati1, dbo.ProductUnits.SatisFiyati2, dbo.ProductUnits.SatisFiyati3, dbo.ProductUnits.Isk1, 
                         dbo.ProductUnits.Isk2, dbo.ProductUnits.Isk3, Currencys_0.CurrencyName AS Currency0, Currencys_1.CurrencyName AS Currency1, 
                         Currencys_2.CurrencyName AS Currency2, Currencys_3.CurrencyName AS Currency3, Currencys_0.Rate AS Rate0, Currencys_1.Rate AS Rate1, 
                         Currencys_2.Rate AS Rate2, Currencys_3.Rate AS Rate3, dbo.Products.SellNoneStock, dbo.Products.ShowInMainPage, dbo.Categories.PortalId, 
                         dbo.ProductMarks.MarkId, dbo.Products.ShowOrder, dbo.Products.Details, dbo.Products.Code14, dbo.Products.Code15, dbo.Categories.Url AS CatUrl, 
                         dbo.Products.Url AS ProductUrl, dbo.Categories.Lineage, dbo.ProductUnits.UnitId, dbo.ProductUnits.IsDefault AS UnitsIsDefault, dbo.Products.WizardId, 
                         dbo.Products.CampainId, dbo.Products.ForceCargo, dbo.ProductUnits.Desi, dbo.Products.StartDate, dbo.Products.EndDate, dbo.Products.Code10, 
                         dbo.Products.Code11, dbo.Products.Code12, dbo.Products.Code13, dbo.Publishers.PublisherId, dbo.Publishers.PublisherName, dbo.Authors.AuthorId, 
                         dbo.Authors.AuthorName, Currencys_4.CurrencyName AS Currency4, Currencys_4.Rate AS Rate4, Currencys_5.CurrencyName AS Currency5, 
                         Currencys_5.Rate AS Rate5, dbo.ProductUnits.SatisFiyati4, dbo.ProductUnits.SatisFiyati5, dbo.ProductUnits.Isk4, dbo.ProductUnits.Isk5, 
                         Currencys_P.CurrencyName AS CurrencyP, Currencys_P.Rate AS RateP, dbo.ProductUnits.PiyasaFiyati, dbo.Products.HizliKargo, dbo.Products.AyniGunTeslim, 
                         dbo.Products.IndirimliUrun, dbo.Products.FirsatUrunu, dbo.Products.SokFiyatliUrun, dbo.Products.EnUcuzUrun, dbo.Products.OzelUrun, 
                         dbo.Products.SinirliSayidaUrun, dbo.Products.YeniUrun, dbo.Products.HediyeliUrun, dbo.Categories.StartDate AS CStartDate, dbo.Categories.EndDate AS CEndDate, 
                         dbo.Products.ProductSizeOptionId, dbo.ProductUnits.AlisFiyati, Currencys_A.AlisRate
FROM            dbo.ProductCategories INNER JOIN
                         dbo.Categories ON dbo.ProductCategories.CategoryId = dbo.Categories.CatId INNER JOIN
                         dbo.ProductUnits INNER JOIN
                         dbo.Products ON dbo.ProductUnits.ProductId = dbo.Products.ProductId ON dbo.ProductCategories.ProductId = dbo.Products.ProductId INNER JOIN
                         dbo.ProductKdvs ON dbo.Products.KdvId = dbo.ProductKdvs.KdvId INNER JOIN
                         dbo.ProductImages ON dbo.Products.ProductId = dbo.ProductImages.ProductId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_P ON dbo.ProductUnits.PPb = Currencys_P.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_5 ON dbo.ProductUnits.Pb5 = Currencys_5.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_4 ON dbo.ProductUnits.Pb4 = Currencys_4.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_A ON dbo.ProductUnits.APb = Currencys_A.CurrencyId LEFT OUTER JOIN
                         dbo.Publishers ON dbo.Products.PublisherId = dbo.Publishers.PublisherId LEFT OUTER JOIN
                         dbo.Authors ON dbo.Products.AuthorId = dbo.Authors.AuthorId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_0 ON dbo.ProductUnits.Pb0 = Currencys_0.CurrencyId LEFT OUTER JOIN
                         dbo.ProductMarks ON dbo.Products.MarkId = dbo.ProductMarks.MarkId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_2 ON dbo.ProductUnits.Pb2 = Currencys_2.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_1 ON dbo.ProductUnits.Pb1 = Currencys_1.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_3 ON dbo.ProductUnits.Pb3 = Currencys_3.CurrencyId
WHERE        (dbo.Categories.IsActive = 1) AND (dbo.ProductMarks.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND 
                         (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, 
                         - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, 
                         DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND 
                         (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND 
                         (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) 
                         AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (dbo.ProductMarks.MarkId IS NULL) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductMarks.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND 
                         (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, 
                         - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, 
                         DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND 
                         (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND 
                         (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) 
                         AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (dbo.ProductMarks.MarkId IS NULL) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductMarks.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND 
                         (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, 
                         - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, 
                         DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND 
                         (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND 
                         (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) 
                         AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (dbo.ProductMarks.MarkId IS NULL) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductMarks.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND 
                         (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, 
                         - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, 
                         DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) OR
                         (dbo.Categories.IsActive = 1) AND (dbo.ProductImages.IsDefault = 1) AND (dbo.Products.IsActive = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND 
                         (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND (ISNULL(dbo.Categories.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) AND 
                         (ISNULL(dbo.Categories.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (ISNULL(dbo.Products.StartDate, DATEADD(day, - 1, GETDATE())) <= GETDATE()) 
                         AND (ISNULL(dbo.Products.EndDate, DATEADD(day, 1, GETDATE())) >= GETDATE()) AND (dbo.ProductMarks.MarkId IS NULL)

GO



/****** Object:  View [dbo].[ProductListDetails5a]    Script Date: 20.05.2014 17:56:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[ProductListDetails5a]
AS
SELECT        dbo.Categories.CatId, dbo.Categories.CatName, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.Description, 
                         dbo.Products.StockQty, dbo.ProductKdvs.KdvRate, dbo.ProductImages.Path, dbo.ProductMarks.MarKName, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan, 
                         dbo.ProductUnits.SatisFiyati0, dbo.ProductUnits.SatisFiyati1, dbo.ProductUnits.SatisFiyati2, dbo.ProductUnits.SatisFiyati3, dbo.ProductUnits.Isk1, 
                         dbo.ProductUnits.Isk2, dbo.ProductUnits.Isk3, Currencys_0.CurrencyName AS Currency0, Currencys_1.CurrencyName AS Currency1, 
                         Currencys_2.CurrencyName AS Currency2, Currencys_3.CurrencyName AS Currency3, Currencys_0.Rate AS Rate0, Currencys_1.Rate AS Rate1, 
                         Currencys_2.Rate AS Rate2, Currencys_3.Rate AS Rate3, dbo.Products.SellNoneStock, dbo.Products.ShowInMainPage, dbo.Categories.PortalId, 
                         dbo.ProductMarks.MarkId, dbo.Products.ShowOrder, dbo.Products.Details, dbo.Products.Code14, dbo.Products.Code15, dbo.Categories.Url AS CatUrl, 
                         dbo.Products.Url AS ProductUrl, dbo.Categories.Lineage, dbo.ProductUnits.UnitId, dbo.ProductUnits.IsDefault AS UnitsIsDefault, dbo.Products.WizardId, 
                         dbo.Products.CampainId, dbo.Products.ForceCargo, dbo.ProductUnits.Desi, dbo.Products.Code10, dbo.Products.Code11, dbo.Products.Code12, dbo.Products.Code13, 
                         dbo.Publishers.PublisherId, dbo.Publishers.PublisherName, dbo.Authors.AuthorId, dbo.Authors.AuthorName, Currencys_4.CurrencyName AS Currency4, 
                         Currencys_4.Rate AS Rate4, Currencys_5.CurrencyName AS Currency5, Currencys_5.Rate AS Rate5, dbo.ProductUnits.SatisFiyati4, dbo.ProductUnits.SatisFiyati5, 
                         dbo.ProductUnits.Isk4, dbo.ProductUnits.Isk5, Currencys_P.CurrencyName AS CurrencyP, Currencys_P.Rate AS RateP, dbo.ProductUnits.PiyasaFiyati, 
                         dbo.Products.EndDate, dbo.Products.StartDate, dbo.Categories.IsActive AS CatIsActive, dbo.ProductMarks.IsActive AS MarkIsActive, 
                         dbo.Products.IsActive AS ProductIsActive, dbo.Products.HediyeliUrun, dbo.Products.YeniUrun, dbo.Products.SinirliSayidaUrun, dbo.Products.OzelUrun, 
                         dbo.Products.EnUcuzUrun, dbo.Products.SokFiyatliUrun, dbo.Products.FirsatUrunu, dbo.Products.IndirimliUrun, dbo.Products.AyniGunTeslim, 
                         dbo.Products.HizliKargo, dbo.Products.PublisherId AS Expr1, dbo.Products.AuthorId AS Expr2, dbo.ProductUnits.AlisFiyati, Currencys_A.AlisRate
FROM            dbo.ProductCategories INNER JOIN
                         dbo.Categories ON dbo.ProductCategories.CategoryId = dbo.Categories.CatId INNER JOIN
                         dbo.ProductUnits INNER JOIN
                         dbo.Products ON dbo.ProductUnits.ProductId = dbo.Products.ProductId ON dbo.ProductCategories.ProductId = dbo.Products.ProductId INNER JOIN
                         dbo.ProductKdvs ON dbo.Products.KdvId = dbo.ProductKdvs.KdvId INNER JOIN
                         dbo.ProductImages ON dbo.Products.ProductId = dbo.ProductImages.ProductId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_P ON dbo.ProductUnits.PPb = Currencys_P.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_5 ON dbo.ProductUnits.Pb5 = Currencys_5.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_4 ON dbo.ProductUnits.Pb4 = Currencys_4.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_A ON dbo.ProductUnits.APb = Currencys_A.CurrencyId LEFT OUTER JOIN
                         dbo.Publishers ON dbo.Products.PublisherId = dbo.Publishers.PublisherId LEFT OUTER JOIN
                         dbo.Authors ON dbo.Products.AuthorId = dbo.Authors.AuthorId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_0 ON dbo.ProductUnits.Pb0 = Currencys_0.CurrencyId LEFT OUTER JOIN
                         dbo.ProductMarks ON dbo.Products.MarkId = dbo.ProductMarks.MarkId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_2 ON dbo.ProductUnits.Pb2 = Currencys_2.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_1 ON dbo.ProductUnits.Pb1 = Currencys_1.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_3 ON dbo.ProductUnits.Pb3 = Currencys_3.CurrencyId
WHERE        (dbo.ProductImages.IsDefault = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) OR
                         (dbo.ProductImages.IsDefault = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND 
                         (dbo.ProductMarks.MarkId IS NULL) OR
                         (dbo.ProductImages.IsDefault = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) OR
                         (dbo.ProductImages.IsDefault = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND 
                         (dbo.ProductMarks.MarkId IS NULL) OR
                         (dbo.ProductImages.IsDefault = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) OR
                         (dbo.ProductImages.IsDefault = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND 
                         (dbo.ProductMarks.MarkId IS NULL) OR
                         (dbo.ProductImages.IsDefault = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) OR
                         (dbo.ProductImages.IsDefault = 1) AND (NOT (dbo.ProductImages.Path = N'')) AND (Currencys_1.CurrencyId > 0) AND (dbo.ProductUnits.IsActive = 1) AND 
                         (dbo.ProductMarks.MarkId IS NULL)

GO



/****** Object:  View [dbo].[ProductsExportAll]    Script Date: 20.05.2014 17:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[ProductsExportAll]
AS
SELECT        TOP (100) PERCENT P.IsActive AS UrunAktif, P.ProductCode AS StokKodu, P.ProductName AS StokAdi, P.Description AS StokAciklama, P.Details,  P.StokType,P.StokSubType,
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
 
ALTER PROCEDURE AddBank3da
(
 
@PortalId int,
@BankName   nvarchar(50),
@BankOffice   nvarchar(50),
@BankAccountNumber nvarchar(50),
@BankGetWayAddress nvarchar(100),
@Bank3dGetWayAddress nvarchar(100),
@GetwayId nvarchar(50),
@GetwayUserName nvarchar(50),
@GetwayPassword nvarchar(50),
@Key3D nvarchar(50)='',
@Description nvarchar(100),
@PosNo nvarchar(50),
@Xcip nvarchar(50),
@IsCreditCard bit,
@Logo nvarchar(250),
@Color nvarchar(50),
@IsDefault bit,
@Use3DSecure bit=0,
@BonusName varchar(50)='',
@PaynetType int=0,
@PaynetCode varchar(50)='',
@PaynetUserName varchar(50)='',
@PaynetPassword varchar(50)='',
@PayType varchar(10)='',
@BankDesc varchar(100),
@UseTaksit bit,
@IsTest bit,
@TestOrderId varchar(50),
@Section int,
@BankId      int OUTPUT
)
AS
IF NOT EXISTS ( select * from Banks where BankName=@BankName and PortalId=@PortalId and SecretCode1 is null )
BEGIN
INSERT INTO Banks
(
PortalId ,
BankName ,
BankOffice ,
BankAccountNumber ,
BankGetWayAddress ,
Bank3dGetWayAddress,
GetwayId ,
GetwayUserName ,
GetwayPassword ,
Key3D,
Description ,
PosNo ,
Xcip ,
IsCreditCard ,
Logo,
Color,
IsDefault,
Use3DSecure,
BonusName ,
PaynetType,
PaynetCode,
PaynetUserName,
PaynetPassword,
PayType,
BankDesc,
IsTest,
TestOrderId,
Section

)

VALUES
(
@PortalId ,
@BankName ,
@BankOffice ,
@BankAccountNumber ,
@BankGetWayAddress ,
@Bank3dGetWayAddress,
@GetwayId ,
@GetwayUserName ,
@GetwayPassword ,
@Key3D,
@Description ,
@PosNo ,
@Xcip ,
@IsCreditCard ,
@Logo,
@Color,
@IsDefault,
@Use3DSecure,
@BonusName,
@PaynetType,
@PaynetCode,
@PaynetUserName,
@PaynetPassword,
@PayType,
@BankDesc,
@IsTest,
@TestOrderId,
@Section
)
SELECT
    @BankId = @@Identity
END
ELSE
BEGIN
SELECT
    @BankId = 0
END

GO



/****** Object:  StoredProcedure [dbo].[GetProductDetails5]    Script Date: 20.05.2014 18:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[GetProductDetails5]

	(
		@PortalId int,
		@ProductId int,
		@StokIndirim int,
		@StokIskActive bit,
		@UnitId int=0
	)

AS
if @UnitId=0
begin
	SELECT
	Details,ProductId, ProductCode, ProductName,Description, StockQty,KdvRate, Path,MarkId, MarkName,BirimAdi,AlisFiyati,AlisRate, Carpan,PiyasaFiyati,SatisFiyati0,Rate0,Currency0,
    'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,  
    'CurrencyName'= case (@StokIndirim) when 0 then Currency1 when 1 then Currency1 when 2 then Currency2 when 3 then Currency3 when 4 then Currency4 when 5 then Currency5 end,
    'Rate'= case (@StokIndirim) when 0 then Rate1 when 1 then Rate1 when 2 then Rate2 when 3 then Rate3 when 4 then Rate4 when 5 then Rate5 end,
    SellNoneStock,Code10,Code11,Code12,Code13,Code14,Code15,WizardId,CampainId,ForceCargo,Desi,CStartDate,CEndDate,StartDate,EndDate,PiyasaFiyati,SatisFiyati1,SatisFiyati2,SatisFiyati3,SatisFiyati4,SatisFiyati5,Isk1,Isk2,Isk3,Isk4,Isk5,CurrencyP,Currency1,Currency2,Currency3,Currency4,Currency5,RateP,Rate1,Rate2,Rate3,Rate4,Rate5,AuthorId,AuthorName,PublisherId,PublisherName,HizliKargo,EnUcuzUrun,AyniGunTeslim,OzelUrun,IndirimliUrun,SinirliSayidaUrun,FirsatUrunu,YeniUrun,SokFiyatliUrun,HediyeliUrun,ProductSizeOptionId
FROM       ProductListDetails5 
WHERE   (UnitsIsDefault = 1) AND  (ProductId = @ProductId) and (PortalId = @PortalId) 
end
else
begin
SELECT     
	Details,ProductId, ProductCode, ProductName,Description, StockQty,KdvRate, Path,MarkId,MarKName,BirimAdi,AlisFiyati,AlisRate, Carpan,PiyasaFiyati,SatisFiyati0,Rate0,Currency0,
    'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,  
    'CurrencyName'= case (@StokIndirim) when 0 then Currency1 when 1 then Currency1 when 2 then Currency2 when 3 then Currency3 when 4 then Currency4 when 5 then Currency5 end,
    'Rate'= case (@StokIndirim) when 0 then Rate1 when 1 then Rate1 when 2 then Rate2 when 3 then Rate3 when 4 then Rate4 when 5 then Rate5 end,
    SellNoneStock,Code10,Code11,Code12,Code13,Code14,Code15,WizardId,CampainId,ForceCargo,Desi,CStartDate,CEndDate,StartDate,EndDate,PiyasaFiyati,SatisFiyati1,SatisFiyati2,SatisFiyati3,SatisFiyati4,SatisFiyati5,Isk1,Isk2,Isk3,Isk4,Isk5,CurrencyP,Currency1,Currency2,Currency3,Currency4,Currency5,RateP,Rate1,Rate2,Rate3,Rate4,Rate5,AuthorId,AuthorName,PublisherId,PublisherName,HizliKargo,EnUcuzUrun,AyniGunTeslim,OzelUrun,IndirimliUrun,SinirliSayidaUrun,FirsatUrunu,YeniUrun,SokFiyatliUrun,HediyeliUrun,ProductSizeOptionId
FROM       ProductListDetails5 
WHERE    (UnitId = @UnitId) AND  (ProductId = @ProductId) and (PortalId = @PortalId) 
end


/****** Object:  StoredProcedure [dbo].[GetProductDetails5a]    Script Date: 20.05.2014 18:02:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[GetProductDetails5a]

	(
		@PortalId int,
		@ProductId int,
		@StokIndirim int,
		@StokIskActive bit, 
		@UnitId int=0
	)

AS
if @UnitId=0
begin
	SELECT
	Details,ProductId, ProductCode, ProductName,Description, StockQty,KdvRate, Path,MarkId, MarkName,BirimAdi, Carpan,AlisFiyati,AlisRate,PiyasaFiyati,SatisFiyati0,Rate0,Currency0,
    'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,  
    'CurrencyName'= case (@StokIndirim) when 0 then Currency1 when 1 then Currency1 when 2 then Currency2 when 3 then Currency3 when 4 then Currency4 when 5 then Currency5 end,
    'Rate'= case (@StokIndirim) when 0 then Rate1 when 1 then Rate1 when 2 then Rate2 when 3 then Rate3 when 4 then Rate4 when 5 then Rate5 end,
    SellNoneStock,Code10,Code11,Code12,Code13,Code14,Code15,WizardId,CampainId,ForceCargo,Desi,StartDate,EndDate,PiyasaFiyati,SatisFiyati1,SatisFiyati2,SatisFiyati3,SatisFiyati4,SatisFiyati5,Isk1,Isk2,Isk3,Isk4,Isk5,CurrencyP,Currency1,Currency2,Currency3,Currency4,Currency5,RateP,Rate1,Rate2,Rate3,Rate4,Rate5,AuthorId,AuthorName,PublisherId,PublisherName,CatIsActive,MarkIsActive,ProductIsActive,HizliKargo,EnUcuzUrun,AyniGunTeslim,OzelUrun,IndirimliUrun,SinirliSayidaUrun,FirsatUrunu,YeniUrun,SokFiyatliUrun,HediyeliUrun
FROM       ProductListDetails5a 
WHERE   (UnitsIsDefault = 1) AND  (ProductId = @ProductId) and (PortalId = @PortalId)  
end
else
begin
SELECT     
	Details,ProductId, ProductCode, ProductName,Description, StockQty,KdvRate, Path,MarkId, MarKName,BirimAdi, Carpan,AlisFiyati,AlisRate,PiyasaFiyati,SatisFiyati0,Rate0,Currency0,
    'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,  
    'CurrencyName'= case (@StokIndirim) when 0 then Currency1 when 1 then Currency1 when 2 then Currency2 when 3 then Currency3 when 4 then Currency4 when 5 then Currency5 end,
    'Rate'= case (@StokIndirim) when 0 then Rate1 when 1 then Rate1 when 2 then Rate2 when 3 then Rate3 when 4 then Rate4 when 5 then Rate5 end,
    SellNoneStock,Code10,Code11,Code12,Code13,Code14,Code15,WizardId,CampainId,ForceCargo,Desi,StartDate,EndDate,PiyasaFiyati,SatisFiyati1,SatisFiyati2,SatisFiyati3,SatisFiyati4,SatisFiyati5,Isk1,Isk2,Isk3,Isk4,Isk5,CurrencyP,Currency1,Currency2,Currency3,Currency4,Currency5,RateP,Rate1,Rate2,Rate3,Rate4,Rate5,AuthorId,AuthorName,PublisherId,PublisherName,CatIsActive,MarkIsActive,ProductIsActive,HizliKargo,EnUcuzUrun,AyniGunTeslim,OzelUrun,IndirimliUrun,SinirliSayidaUrun,FirsatUrunu,YeniUrun,SokFiyatliUrun,HediyeliUrun
FROM       ProductListDetails5a 
WHERE    (UnitId = @UnitId) AND  (ProductId = @ProductId) and (PortalId = @PortalId) 
end



 /****** Object:  StoredProcedure [dbo].[ImportUser1]    Script Date: 20.05.2014 18:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[ImportUser1]

	@PortalId int,
	@IsReseller bit,
	@CompanyCode nvarchar(50),
	@IsActive bit,
	@DisAccount Decimal(8,2),
	@StokIsk int,
	@StokIskActive bit,
	@Name nvarchar(50),
	@Password nvarchar(20),
	@TCKimlikNo varchar(11),
	@FullName nvarchar(50),
	@Email nvarchar(100),
	@Phone1 nvarchar(14),
	@Phone2 nvarchar(14),
	@FaxNumber  nvarchar(14),
	@MobilePhone  nvarchar(14),
	@Addres  nvarchar(400),
	@CityId int,
	@UserSex int,
	--@BirthDate smalldatetime,
	@Profession  varchar(25),
	@WhereToHear  varchar(50),
	@Education  varchar(25),
	@UserType int,
	@CompanyName nvarchar(100),
	@CompanyPhone1  nvarchar(14),
	@CompanyPhone2  nvarchar(14),
	@CompanyEmail  nvarchar(100),
	@CompanyCityId int,
	@CompanyAddres  nvarchar(400),
	@CompanyWeb  nvarchar(100),
	@Code1 INT,
	@Code2 INT,
	@Code3 INT

AS
Declare @UserId int
IF NOT EXISTS ( select * from Users where Name=@Name and PortalId=@PortalId )
	BEGIN
		INSERT INTO Users
		(
		PortalId,
		IsReseller,
		CompanyCode,
		IsActive,
		DisAccount,
		StokIsk,
		StokIskActive,
		Name,
		Password ,
		TCKimlikNo,
		FullName,
		Email,
		Phone1,
		Phone2,
		FaxNumber,
		MobilePhone,
		Addres,
		CityId,
		UserSex,
		--BirthDate,
		Profession,
		WhereToHear,
		Education,
		UserType,
		CompanyName,
		CompanyPhone1,
		CompanyPhone2,
		CompanyEmail,
		CompanyCityId ,
		CompanyAddres ,
		CompanyWeb,
		CODE1,
		CODE2,
		CODE3
		)

		VALUES
		(
		@PortalId,
		@IsReseller,
		@CompanyCode,
		@IsActive,
		@DisAccount,
		@StokIsk,
		@StokIskActive,
		@Name,
		@Password ,
		@TCKimlikNo,
		@FullName,
		@Email,
		@Phone1,
		@Phone2,
		@FaxNumber,
		@MobilePhone,
		@Addres,
		@CityId,
		@UserSex,
		--@BirthDate,
		@Profession,
		@WhereToHear,
		@Education,
		@UserType,
		@CompanyName,
		@CompanyPhone1,
		@CompanyPhone2,
		@CompanyEmail,
		@CompanyCityId ,
		@CompanyAddres ,
		@CompanyWeb,
		@Code1,
		@Code2,
		@Code3
		)
		select @@Identity
	END
ELSE
	BEGIN

		select @UserId=UserId from Users where Name=@Name and PortalId=@PortalId 
		Update Users set 
		IsReseller=@IsReseller,
		CompanyCode=@CompanyCode,
		IsActive=@IsActive,
		DisAccount=@DisAccount,
		StokIsk=@StokIsk,
		StokIskActive=@StokIskActive,
		Name=@Name,
		Password =@Password,
		TCKimlikNo=@TCKimlikNo,
		FullName=@FullName,
		Email=@Email,
		Phone1=@Phone1,
		Phone2=@Phone2,
		FaxNumber=@FaxNumber,
		MobilePhone=@MobilePhone,
		Addres=@Addres,
		CityId=@CityId,
		UserSex=@UserSex,
		--BirthDate=@BirthDate,
		Profession=@Profession,
		WhereToHear=@WhereToHear,
		Education=@Education,
		UserType=@UserType,
		CompanyName=@CompanyName,
		CompanyPhone1=@CompanyPhone1,
		CompanyPhone2=@CompanyPhone2,
		CompanyEmail=@CompanyEmail,
		CompanyCityId =@CompanyCityId,
		CompanyAddres =@CompanyAddres,
		CompanyWeb =@CompanyWeb,
		CODE1 = @Code1,
		CODE2 = @Code2,
		CODE3 = @Code3
		where UserId=@UserId and PortalId=@PortalId
		select @UserId
END





/****** Object:  StoredProcedure [dbo].[ShoppingCartAddItem]    Script Date: 20.05.2014 18:20:55 ******/
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
	SELECT @CountItems = isnull(sum(Qty),0) FROM ShoppingCart WHERE ProdId = @ProdId AND PriceId=@Price_Id and ShoppingCartDefId=@ShoppingCartDefId AND CartId = @CartId 
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



/****** Object:  StoredProcedure [dbo].[ShoppingCartList5]    Script Date: 21.05.2014 09:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[ShoppingCartList5]
(
    @CartId nvarchar(50),
    @ShoppingCartDefId int,
    @StokIndirim int,
    @StokIskActive bit,
    @CampainId int
)
AS
if @CampainId>0
Begin
SELECT   DISTINCT   dbo.ShoppingCart.RecordId,dbo.ShoppingCart.CartTimeOut,dbo.ShoppingCart.CartId, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.StockQty, 
                      dbo.ProductKdvs.KdvRate,ProductUnits.UnitId, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan, 
                     'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,  
                      dbo.ShoppingCart.Qty, dbo.ProductUnits.Agirlik, dbo.ProductUnits.Hacim, dbo.Products.Provider, Currencys_2.CurrencyName, Currencys_2.Rate,dbo.ProductUnits.Desi,ProductMarks.MarKName,Products.StockQty -(dbo.ProductUnits.Carpan*dbo.ShoppingCart.Qty) as Kalan,Products.Url,Path,dbo.ShoppingCart.Description,dbo.ShoppingCart.Attributes,dbo.ShoppingCart.ValueAdd,dbo.ShoppingCart.NewDesi
                      , Currencys.Rate AS Rate0, ProductUnits.SatisFiyati0,Products.ForceCargo,ProductUnits.AlisFiyati,ProductUnits.Barcode,ProductSizes.Barcode as ProductSizeBarcode
FROM         dbo.Currencys Currencys_2 INNER JOIN
                      dbo.ProductUnits ON Currencys_2.CurrencyId =  case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end
                      --dbo.ProductUnits.Pb1 
                      INNER JOIN
                      dbo.Products INNER JOIN
                      dbo.ProductKdvs ON dbo.Products.KdvId = dbo.ProductKdvs.KdvId INNER JOIN
                      dbo.ShoppingCart ON dbo.Products.ProductId = dbo.ShoppingCart.ProdId 
                        ON dbo.ProductUnits.UnitId = dbo.ShoppingCart.PriceId
                        inner join ProductImages on Products.ProductId=ProductImages.ProductId  LEFT OUTER JOIN
                      Currencys ON ProductUnits.Pb0 = Currencys.CurrencyId
					  LEFT OUTER JOIN dbo.ProductMarks ON dbo.Products.MarkId = dbo.ProductMarks.MarkId
                      LEFT OUTER JOIN ProductSizes on ShoppingCart.ProductSizeId=ProductSizes.ProductSizeId
WHERE    (ProductImages.IsDefault=1) and
 (dbo.Products.IsActive = 1) AND 
(dbo.Products.IsDeleted = 0) AND 
(dbo.Products.StockQty > 0 or dbo.Products.SellNoneStock =1 ) AND 
(dbo.ProductUnits.IsActive = 1) AND
(dbo.ShoppingCart.ShoppingCartDefId =@ShoppingCartDefId) AND
(dbo.ShoppingCart.CartId = @CartId) AND (Products.CampainId=@CampainId )
end
else if @CampainId=0
Begin
SELECT   DISTINCT   dbo.ShoppingCart.RecordId,dbo.ShoppingCart.CartTimeOut,dbo.ShoppingCart.CartId, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.StockQty, 
                      dbo.ProductKdvs.KdvRate,ProductUnits.UnitId, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan, 
                     'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,  
                      dbo.ShoppingCart.Qty, dbo.ProductUnits.Agirlik, dbo.ProductUnits.Hacim, dbo.Products.Provider, Currencys_2.CurrencyName, Currencys_2.Rate,dbo.ProductUnits.Desi,ProductMarks.MarKName,Products.StockQty -(dbo.ProductUnits.Carpan*dbo.ShoppingCart.Qty) as Kalan,Products.Url,Path,dbo.ShoppingCart.Description,dbo.ShoppingCart.Attributes,dbo.ShoppingCart.ValueAdd,dbo.ShoppingCart.NewDesi
                      , Currencys.Rate AS Rate0, ProductUnits.SatisFiyati0,Products.ForceCargo,ProductUnits.AlisFiyati,ProductUnits.Barcode,ProductSizes.Barcode as ProductSizeBarcode
FROM         dbo.Currencys Currencys_2 INNER JOIN
                      dbo.ProductUnits ON Currencys_2.CurrencyId =  case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end
                      --dbo.ProductUnits.Pb1 
                      INNER JOIN
                      dbo.Products INNER JOIN
                      dbo.ProductKdvs ON dbo.Products.KdvId = dbo.ProductKdvs.KdvId INNER JOIN
                      dbo.ShoppingCart ON dbo.Products.ProductId = dbo.ShoppingCart.ProdId ON dbo.ProductUnits.UnitId = dbo.ShoppingCart.PriceId inner join 
                      ProductImages on Products.ProductId=ProductImages.ProductId  LEFT OUTER JOIN
                       FCampains ON Products.CampainId = FCampains.FCampainId LEFT OUTER JOIN
                      Currencys ON ProductUnits.Pb0 = Currencys.CurrencyId  LEFT OUTER JOIN
                      dbo.ProductMarks ON dbo.Products.MarkId = dbo.ProductMarks.MarkId
                      LEFT OUTER JOIN ProductSizes on ShoppingCart.ProductSizeId=ProductSizes.ProductSizeId
WHERE    (ProductImages.IsDefault=1) and
 (dbo.Products.IsActive = 1) AND 
(dbo.Products.IsDeleted = 0) AND 
(dbo.Products.StockQty > 0 or dbo.Products.SellNoneStock =1 ) AND 
(dbo.ProductUnits.IsActive = 1) AND
(dbo.ShoppingCart.ShoppingCartDefId =@ShoppingCartDefId) AND
(dbo.ShoppingCart.CartId = @CartId ) AND 
((ISNULL(FCampains.FCampainId, 0) = 0) or (FCampains.IsActive=0) or (FCampains.StartDate > getdate()) or (FCampains.EndDate < Getdate()) )
end
else
Begin
SELECT   DISTINCT   dbo.ShoppingCart.RecordId,dbo.ShoppingCart.CartId, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.StockQty, 
                      dbo.ProductKdvs.KdvRate,ProductUnits.UnitId, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan, 
                     'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,  
                      dbo.ShoppingCart.Qty, dbo.ProductUnits.Agirlik, dbo.ProductUnits.Hacim, dbo.Products.Provider, Currencys_2.CurrencyName, Currencys_2.Rate,dbo.ProductUnits.Desi,ProductMarks.MarKName,Products.StockQty -(dbo.ProductUnits.Carpan*dbo.ShoppingCart.Qty) as Kalan,Products.Url,Path,dbo.ShoppingCart.Description,dbo.ShoppingCart.Attributes,dbo.ShoppingCart.ValueAdd,dbo.ShoppingCart.NewDesi
                      , Currencys.Rate AS Rate0, ProductUnits.SatisFiyati0,Products.ForceCargo,ProductUnits.AlisFiyati,ProductUnits.Barcode,ProductSizes.Barcode as ProductSizeBarcode
FROM         dbo.Currencys Currencys_2 INNER JOIN
                      dbo.ProductUnits ON Currencys_2.CurrencyId =  case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end
                      --dbo.ProductUnits.Pb1 
                      INNER JOIN
                      dbo.Products INNER JOIN
                      dbo.ProductKdvs ON dbo.Products.KdvId = dbo.ProductKdvs.KdvId INNER JOIN
                      dbo.ShoppingCart ON dbo.Products.ProductId = dbo.ShoppingCart.ProdId ON dbo.ProductUnits.UnitId = dbo.ShoppingCart.PriceId  inner join 
                      ProductImages on Products.ProductId=ProductImages.ProductId  LEFT OUTER JOIN
                      FCampains ON Products.CampainId = FCampains.FCampainId LEFT OUTER JOIN
                      Currencys ON ProductUnits.Pb0 = Currencys.CurrencyId
					  LEFT OUTER JOIN dbo.ProductMarks ON dbo.Products.MarkId = dbo.ProductMarks.MarkId
					  LEFT OUTER JOIN ProductSizes on ShoppingCart.ProductSizeId=ProductSizes.ProductSizeId
WHERE    (ProductImages.IsDefault=1) and
 (dbo.Products.IsActive = 1) AND 
(dbo.Products.IsDeleted = 0) AND 
(dbo.Products.StockQty > 0 or dbo.Products.SellNoneStock =1 ) AND 
(dbo.ProductUnits.IsActive = 1) AND
(dbo.ShoppingCart.ShoppingCartDefId =@ShoppingCartDefId) AND
(dbo.ShoppingCart.CartId = @CartId ) 
--and((ISNULL(FCampains.FCampainId, 0) = 0) or (FCampains.IsActive=0) or (FCampains.StartDate > getdate()) or (FCampains.Enddate < Getdate()) )
end


/****** Object:  StoredProcedure [dbo].[ShoppingCartMigrate]    Script Date: 21.05.2014 09:18:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[ShoppingCartMigrate]
(
    @OriginalCartId nvarchar(50),
    @NewCartId      nvarchar(50)
)
AS

declare @ProdId int
declare @PriceId int
declare @Qty int
declare @Description varchar(500)
declare @Attributes varchar(255)
declare @ValueAdd decimal(18,4)
declare @NewDesi decimal(18,2)
declare @ProductSizeId int
declare @CartTimeOut datetime
declare @StorageId int

DECLARE c_cursor CURSOR FOR 
   SELECT ProdId,PriceId,Qty,Description,Attributes,ValueAdd,NewDesi,ProductSizeId,CartTimeOut,StorageId FROM ShoppingCart  WHERE CartId=@OriginalCartId

   OPEN c_cursor
   FETCH NEXT FROM c_cursor INTO @ProdId,@PriceId,@Qty,@Description,@Attributes,@ValueAdd,@NewDesi,@ProductSizeId,@CartTimeOut,@StorageId
--Print @ProdId 
--Print @PriceId 
--Print @Qty
--Print 'ürün'
   WHILE @@FETCH_STATUS = 0
   BEGIN
   declare @RecordId int
   declare @Return bit
	exec ShoppingCartAddItem @NewCartId,0,@ProdId,@Qty,@PriceId,@Description,@Attributes,@ValueAdd,@NewDesi,@ProductSizeId,@StorageId,@CartTimeOut,@Return
	
      FETCH NEXT FROM c_cursor INTO @ProdId,@PriceId,@Qty,@Description,@Attributes,@ValueAdd,@NewDesi,@ProductSizeId,@CartTimeOut,@StorageId
   END
   
   CLOSE c_cursor
   DEALLOCATE c_cursor
   
DELETE FROM ShoppingCart
WHERE CartId = @OriginalCartId and ShoppingCartDefId=0 and CartId<> @NewCartId   
--exec ShoppingCartEmpty @OriginalCartId,0





/****** Object:  StoredProcedure [dbo].[OrdersAdd6]    Script Date: 20.05.2014 18:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[OrdersAdd6]
(
    @PortalId					int,
    @CartId					nvarchar(50),
    @OrderDate				 datetime='',
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
    @ShoppingCartDefId  int,
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
set @OrderDate=getdate()
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

--Copy items from given shopping cart to OrdersDetail table 
INSERT INTO OrderDetails
(
OrderId,
ProductId,
ProductCode,
ProductName,
BirimAdi,
Carpan,
SatisFiyati,
Pb1,
Rate,
BirimIndirimOrani,
CariIndirimOrani,
AlisFiyati,
APb,
AlisRate,
Quantity,
Provider,
KdvRate,
MarkName,
Status,
Description,
ProviderId,
XmlProviderId,
UserId,
AltinGram,
ProductSizeId,
ProductBarcode,
ProductSizeBarcode,
StorageId
)
SELECT    @OrderId, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan,
'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1+ShoppingCart.ValueAdd when 1 then SatisFiyati1+ShoppingCart.ValueAdd when 2 then SatisFiyati2+ShoppingCart.ValueAdd when 3 then SatisFiyati3+ShoppingCart.ValueAdd when 4 then SatisFiyati4+ShoppingCart.ValueAdd when 5 then SatisFiyati5+ShoppingCart.ValueAdd end, 
 'Pb1'= case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end, 
                      Currencys_2.Rate,   
 case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,  
 case when (isnumeric(@CartId)=1) then (select DisAccount from Users where UserId=@CartId) else 0 end, dbo.ProductUnits.AlisFiyati, dbo.ProductUnits.APb, Currencys_1.Rate AS Rate, 
dbo.ShoppingCart.Qty, dbo.Products.Provider, dbo.ProductKdvs.KdvRate,ProductMarks.MarKName,@Status,dbo.ShoppingCart.Description,Products.IsPenta,Products.ProviderId,Products.UserId,isnull(SatisFiyati5,0),ShoppingCart.ProductSizeId,
ProductUnits.Barcode,
Case When (ShoppingCart.ProductSizeId>0) Then (Select Barcode From ProductSizes where ProductSizeId=ShoppingCart.ProductSizeId) else '' end as ProductSizeBarcode,StorageId 


FROM         dbo.Currencys Currencys_2 INNER JOIN
                      dbo.ProductUnits ON Currencys_2.CurrencyId = case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end INNER JOIN
                      dbo.Products INNER JOIN
     dbo.ProductKdvs ON dbo.Products.KdvId = dbo.ProductKdvs.KdvId INNER JOIN
                      dbo.ShoppingCart ON dbo.Products.ProductId = dbo.ShoppingCart.ProdId ON dbo.ProductUnits.UnitId = dbo.ShoppingCart.PriceId INNER JOIN
                      dbo.Currencys Currencys_1 ON dbo.ProductUnits.APb = Currencys_1.CurrencyId
                      LEFT OUTER JOIN
                      FCampains ON Products.CampainId = FCampains.FCampainId LEFT OUTER JOIN
                      dbo.ProductMarks ON dbo.Products.MarkId = dbo.ProductMarks.MarkId
where ShoppingCart.CartId = @CartId and  (dbo.Products.IsActive = 1) AND 
(dbo.Products.IsDeleted = 0) AND 
(dbo.Products.StockQty > 0 or Products.SellNoneStock=1) AND 
(dbo.ProductUnits.IsActive = 1) AND (ShoppingCartDefId =@ShoppingCartDefId) --and isnull(Products.CampainId,0)=@CampainId
AND ((ISNULL(FCampains.FCampainId, 0) = @CampainId) or (FCampains.IsActive=0) or (FCampains.StartDate > getdate()) or (FCampains.EndDate < Getdate()) )

--Removeof  items from user's shopping cart 
EXEC ShoppingCartEmpty5 @CartId,@ShoppingCartDefId,@CampainId

COMMIT TRAN AddOrder

--ShoppingCartList 1 ,'N' 

GO


SET IDENTITY_INSERT [dbo].[Company] ON 
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [CompanyCode]) VALUES (1, N'Merkez Firma', N'01')
SET IDENTITY_INSERT [dbo].[Company] OFF

SET IDENTITY_INSERT [dbo].[CompanyShop] ON 
INSERT [dbo].[CompanyShop] ([ShopId], [ShopName], [ShopCode], [CompanyId]) VALUES (1, N'Merkez Satis Yeri', N'02', N'1')
SET IDENTITY_INSERT [dbo].[CompanyShop] OFF

SET IDENTITY_INSERT [dbo].[CompanyStorages] ON 
INSERT [dbo].[CompanyStorages] ([StorageId], [StorageName], [StorageCode], [ShopId], [ApplyOrder]) VALUES (1, N'Merkezi Depo', N'03', 1, 1)
SET IDENTITY_INSERT [dbo].[CompanyStorages] OFF

SET IDENTITY_INSERT [dbo].[PriceList] ON 
INSERT [dbo].[PriceList] ([PriceId], [PriceName], [PriceCode], [Status], [ApplyOrder], [StartDate], [EndDate], [UserFilter], [UserFilterDesc], [StokFilter], [StokFilterDesc], [Price], [DiscountType], [Discount], [Details], [Storages], [SpecialCode1], [SpecialCode2], [SpecialCode3]) VALUES (1, N'Merkezi Fiyat Listesi', N'01', 1, 100, CAST(0x0000A31B00000000 AS DateTime), CAST(0x0000A71100000000 AS DateTime), N'', N'', N'PortalId = 0', N'', N'SatisFiyati1', 0, CAST(0.00 AS Decimal(18, 2)), N'', N'1,', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PriceList] OFF

UPDATE Portals Set Version='2.3.0'
 
GO


 /****** Object:  StoredProcedure [dbo].[GetUsageProducts]    Script Date: 17.04.2014 11:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[GetUsageProducts]
(
@ProductId int,
@StokIndirim int,
@StokIskActive bit
)

AS

SELECT     dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, Products.Url,Products.StockQty,Products.SellNoneStock,
'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,
dbo.Currencys.CurrencyName,Currencys.Rate,ProductImages.Path
FROM         dbo.Products INNER JOIN
dbo.ProductUnits ON dbo.Products.ProductId = dbo.ProductUnits.ProductId INNER JOIN
dbo.ProductImages  ON dbo.Products.ProductId = dbo.ProductImages.ProductId INNER JOIN
dbo.Currencys ON case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end
--dbo.ProductUnits.Pb1
= dbo.Currencys.CurrencyId
WHERE     (NOT (dbo.Products.ProductId = @ProductId)) AND (dbo.Products.ProductId IN
(SELECT     UProductId
FROM          ProductUsages
WHERE      ProductId = @ProductId)) AND (dbo.ProductUnits.IsDefault = 1)  and (dbo.ProductImages.IsDefault = 1)


/****** Object:  StoredProcedure [dbo].[GetNonAlternativeProducts]    Script Date: 17.04.2014 11:03:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER  PROCEDURE [dbo].[GetNonAlternativeProducts]
(
@ProductId int,
@StokIndirim int,
@StokIskActive bit
)

AS
SELECT     dbo.Products.ProductId,dbo.Products.ProductCode, dbo.Products.ProductName, Products.Url, Products.StockQty,Products.SellNoneStock,
'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,
dbo.Currencys.CurrencyName,Currencys.Rate,Products.Code14,ProductImages.Path
FROM         dbo.Products INNER JOIN
dbo.ProductUnits ON dbo.Products.ProductId = dbo.ProductUnits.ProductId INNER JOIN
dbo.ProductImages  ON dbo.Products.ProductId = dbo.ProductImages.ProductId INNER JOIN
dbo.Currencys ON case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end
--dbo.ProductUnits.Pb1
= dbo.Currencys.CurrencyId
WHERE     (NOT (dbo.Products.ProductId = @ProductId))
and (dbo.Products.ProductId in(Select ProductId from ProductNonAlternatives where NAProductId=@ProductId)
or dbo.Products.ProductId in(Select NAProductId from ProductNonAlternatives where ProductId=@ProductId))
AND (dbo.ProductUnits.IsDefault = 1) and (dbo.ProductImages.IsDefault = 1) AND dbo.Products.IsActive=1


GO
/****** Object:  StoredProcedure [dbo].[GetAlternativeProducts]    Script Date: 17.04.2014 11:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[GetAlternativeProducts]
(
@ProductId int,
@StokIndirim int,
@StokIskActive bit
)

AS
SELECT     dbo.Products.ProductId,dbo.Products.ProductCode, dbo.Products.ProductName, Products.Url, Products.StockQty,Products.SellNoneStock,
'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,
dbo.Currencys.CurrencyName,Currencys.Rate,Products.Code14,ProductImages.Path
FROM         dbo.Products INNER JOIN
dbo.ProductUnits ON dbo.Products.ProductId = dbo.ProductUnits.ProductId INNER JOIN
dbo.ProductImages  ON dbo.Products.ProductId = dbo.ProductImages.ProductId INNER JOIN
dbo.Currencys ON case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end
--dbo.ProductUnits.Pb1
= dbo.Currencys.CurrencyId
WHERE     (NOT (dbo.Products.ProductId = @ProductId))
and (dbo.Products.ProductId in(Select ProductId from ProductAlternatives where AProductId=@ProductId)
or dbo.Products.ProductId in(Select AProductId from ProductAlternatives where ProductId=@ProductId))
AND (dbo.ProductUnits.IsDefault = 1) and (dbo.ProductImages.IsDefault = 1) AND dbo.Products.IsActive=1

GO


/****** Object:  Trigger [dbo].[UpdateOnDeleteOrder]    Script Date: 20.05.2014 16:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  TRIGGER [dbo].[UpdateOnDeleteOrder]
ON [dbo].[OrderDetails]
FOR Delete
AS 
BEGIN



declare @ProductId int,@ProductSizeId int,@StorageId int
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

END
GO
/****** Object:  Trigger [dbo].[UpdateOnUpdateOrder]    Script Date: 20.05.2014 16:13:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  TRIGGER [dbo].[UpdateOnUpdateOrder]
ON [dbo].[OrderDetails]
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
END

/****** Object:  Trigger [dbo].[UpdateStok]    Script Date: 20.05.2014 16:16:11 ******/
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
--textil tamamlanýnca açýlacak elvan
--update ProductStorages set Quantity=isnull(Quantity-@iQuantity,0) where ProductSizeOptionId =@ProductSizeId and ProductId=@ProductId and StorageId=@StorageId
--extra control
declare @StockQty int
select @StockQty = isnull(sum(StockQty),0) from ProductSizes where StockQty >=0 and ProductSizeId=@ProductSizeId
	if (@StockQty <= 0)
    Begin
    delete dbo.ShoppingCart Where ProductSizeId=@ProductSizeId
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

    End

    FETCH NEXT FROM UpdateStok_Cursor INTO @ProductId,@ProductSizeId,@iQuantity ,@StorageId
    END
    CLOSE UpdateStok_Cursor
    DEALLOCATE UpdateStok_Cursor

    END

GO   

 
/****** Object:  View [dbo].[ProductList]    Script Date: 05.06.2014 09:14:29 ******/
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
                         dbo.Products.Code1, dbo.Products.StokType, dbo.ProductUnits.AlisFiyati, dbo.Products.AuthorId
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



ALTER TABLE [dbo].[AlternativeMarkets] ADD [CargoSendCity] int DEFAULT 0
ALTER TABLE [dbo].[AlternativeMarkets] ADD [ProductSendType] nvarchar(50) 
ALTER TABLE [dbo].[AlternativeMarkets] ADD [CommissionRate] decimal(18, 2) DEFAULT 0 

GO