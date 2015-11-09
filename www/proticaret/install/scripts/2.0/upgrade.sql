SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attributes](
	[AttributesId] [int] IDENTITY(1,1) NOT NULL,
	[OptionsId] [int] NOT NULL,
	[OptionsValuesId] [int] NOT NULL,
	[OptionsValuesPrice] [decimal](15, 4) NULL,
	[OptionsValuespricePrefix] [char](1) NULL,
	[OptionsName] [nvarchar](50) NULL,
	[OptionsValuesName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attributes] PRIMARY KEY CLUSTERED 
(
	[AttributesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CosCampaign](
	[campaignID] [int] IDENTITY(1,1) NOT NULL,
	[campaignName] [nvarchar](30) NULL,
	[userMailListName] [nvarchar](30) NULL,
	[mailCount] [int] NULL,
	[sendCount] [int] NULL,
	[sendDate] [datetime] NULL,
	[openedMail] [int] NULL,
	[clickedLink] [int] NULL,
	[campaignState] [int] NULL,
	[mailSubject] [nvarchar](250) NULL,
	[mailHtml] [nvarchar](MAX) NULL,
	[fromName] [nvarchar](50) NULL,
	[fromMail] [nvarchar](100) NULL,
	[resMail] [nvarchar](100) NULL,
	[userID] [int] NULL,
	[userMailListID] [int] NULL,
	[mailTxt] [nvarchar](MAX) NULL,
 CONSTRAINT [PK_CosCampaign] PRIMARY KEY CLUSTERED 
(
	[campaignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CosListOfCampaign](
	[campaignID] [int] NULL,
	[userMailListID] [int] NULL,
	[userMailListName] [nvarchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CosMailList](
	[mailListID] [int] IDENTITY(1,1) NOT NULL,
	[userMailListID] [int] NULL,
	[mail] [nchar](50) NULL,
	[name] [nchar](50) NULL,
	[active] [smallint] NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_CosMailList] PRIMARY KEY CLUSTERED 
(
	[mailListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CosUser](
	[userID] [int] NULL,
	[fromName] [nvarchar](50) NULL,
	[fromMail] [nvarchar](50) NULL,
	[resMail] [nvarchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CosUserMailList](
	[userID] [int] NULL,
	[userMailListID] [int] IDENTITY(1,1) NOT NULL,
	[userMailListName] [nvarchar](50) NULL,
 CONSTRAINT [PK_CosUserMailList] PRIMARY KEY CLUSTERED 
(
	[userMailListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PosterFrameCodes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FrameCode] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_PosterFrameCodes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PosterSettings](
	[setId] [int] IDENTITY(1,1) NOT NULL,
	[glassPrice] [decimal](18, 4) NOT NULL,
	[workPrice] [decimal](18, 4) NOT NULL ,
 CONSTRAINT [PK_PosterSettings] PRIMARY KEY CLUSTERED 
(
	[setId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainFormule](
[CurtainFormuleID] int NOT NULL IDENTITY(1,1) ,
[CurtainID] int NOT NULL ,
[CurtainFormuleName] nvarchar(50) NOT NULL DEFAULT '' ,
[CurtainFormule] nvarchar(MAX) NOT NULL DEFAULT '' ,
[CutainFormuleValue] nvarchar(50) NOT NULL DEFAULT '' 
PRIMARY KEY CLUSTERED 
(
	[CurtainFormuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSizeOpt1](
	[CurtainSizeID] [int] IDENTITY(1,1) NOT NULL,
	[CurtainID] [int] NULL,
	[CurtainSize] [nvarchar](50) NULL,
	[CurtainRoundSize] [nvarchar](50) NULL,
			[CurtainSizeFactor] [float] NULL,

	
PRIMARY KEY CLUSTERED 
(
	[CurtainSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSizeOpt10](
	[CurtainSizeID] [int]  IDENTITY(1,1)  NOT NULL,
	[CurtainID] [int] NULL,
	[CurtainSize] [nvarchar](50) NULL,
	[CurtainRoundSize] [nvarchar](50) NULL,
		[CurtainSizeFactor] [float] NULL,
	
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSizeOpt2](
	[CurtainSizeID] [int] IDENTITY(1,1) NOT NULL,
	[CurtainID] [int] NULL,
	[CurtainSize] [nvarchar](50) NULL,
	[CurtainRoundSize] [nvarchar](50) NULL,
 [CurtainSizeFactor] [float]  null,
		
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSizeOpt3](
	[CurtainSizeID] [int]  IDENTITY(1,1) NOT NULL,
	[CurtainID] [int] NULL,
	[CurtainSize] [nvarchar](50) NULL,
	[CurtainRoundSize] [nvarchar](50) NULL,
		[CurtainSizeFactor] [float] NULL,
 
	
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSizeOpt4](
	[CurtainSizeID] [int]  IDENTITY(1,1) NOT NULL,
	[CurtainID] [int] NULL,
	[CurtainSize] [nvarchar](50) NULL,
	[CurtainRoundSize] [nvarchar](50) NULL,
		[CurtainSizeFactor] [float] NULL,
 
	
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSizeOpt5](
	[CurtainSizeID] [int]  IDENTITY(1,1) NOT NULL,
	[CurtainID] [int] NULL,
	[CurtainSize] [nvarchar](50) NULL,
	[CurtainRoundSize] [nvarchar](50) NULL,
		[CurtainSizeFactor] [float] NULL,
 
	
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSizeOpt6](
	[CurtainSizeID] [int]  IDENTITY(1,1) NOT NULL,
	[CurtainID] [int] NULL,
	[CurtainSize] [nvarchar](50) NULL,
	[CurtainRoundSize] [nvarchar](50) NULL,
		[CurtainSizeFactor] [float] NULL,

	
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSizeOpt7](
	[CurtainSizeID] [int]  IDENTITY(1,1) NOT NULL,
	[CurtainID] [int] NULL,
	[CurtainSize] [nvarchar](50) NULL,
	[CurtainRoundSize] [nvarchar](50) NULL,
		[CurtainSizeFactor] [float] NULL,
 
	
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSizeOpt8](
	[CurtainSizeID] [int]  IDENTITY(1,1) NOT NULL,
	[CurtainID] [int] NULL,
	[CurtainSize] [nvarchar](50) NULL,
	[CurtainRoundSize] [nvarchar](50) NULL,
		[CurtainSizeFactor] [float] NULL,
 
	
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSizeOpt9](
	[CurtainSizeID] [int]  IDENTITY(1,1) NOT NULL,
	[CurtainID] [int] NULL,
	[CurtainSize] [nvarchar](50) NULL,
	[CurtainRoundSize] [nvarchar](50) NULL,
		[CurtainSizeFactor] [float] NULL,
 
	
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainUnitOption](
	[CurtainID] [int] IDENTITY(1,1) NOT NULL,
	[CurtainName] [nvarchar](50) NOT NULL,
	[CurtainActive] [bit] NOT NULL,
	[CurtainUnit1] [nvarchar](50) NOT NULL,
	[CurtainUnit2] [nvarchar](50) NOT NULL,
	[CurtainUnit3] [nvarchar](50) NOT NULL,
	[CurtainUnit4] [nvarchar](50) NOT NULL,
	[CurtainUnit5] [nvarchar](50) NOT NULL,
	[CurtainUnit6] [nvarchar](50) NOT NULL,
	[CurtainUnit7] [nvarchar](50) NOT NULL,
	[CurtainUnit8] [nvarchar](50) NOT NULL,
	[CurtainUnit9] [nvarchar](50) NOT NULL,
	[CurtainUnit10] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CurtainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacebookPost](
	[postID] [nvarchar](50) NULL,
	[message] [nvarchar](MAX) NULL,
	[postCaption] [nvarchar](200) NULL,
	[postSubCaption] [nvarchar](200) NULL,
	[titleUrl] [nvarchar](200) NULL,
	[description] [nvarchar](MAX) NULL,
	[imageUrl] [nvarchar](200) NULL,
	[imagePath] [nvarchar](100) NULL,
	[postTime] [datetime] NULL,
	[authorID] [nvarchar](30) NULL,
	[authorName] [nvarchar](30) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacebookPostComments](
	[postID] [nvarchar](50) NULL,
	[commentTime] [datetime] NULL,
	[authorName] [nvarchar](30) NULL,
	[comment] [nvarchar](MAX) NULL,
	[authorID] [nvarchar](30) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacebookPostLikes](
	[postID] [nvarchar](50) NULL,
	[authorID] [nvarchar](50) NULL,
	[authorName] [nvarchar](30) NULL
) ON [PRIMARY]

GO
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacebookPostShare](
	[postID] [nchar](50) NULL,
	[shareCount] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowerCartDetail](
	[FlowerCartId] [int] IDENTITY(1,1) NOT NULL,
	[DetailId] [int] NOT NULL,
	[CartId] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowerCarts](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Path] [nvarchar](100) NOT NULL,
	[Price] [decimal](15, 2) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowerCause](
	[causeID] [int] IDENTITY(1,1) NOT NULL,
	[causeName] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowerDetails](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [nvarchar](50) NULL,
	[ProductId] [int] NULL,
	[CityId] [int] NULL,
	[DistrictId] [int] NULL,
	[Date] [nvarchar](20) NULL,
	[Hour] [nvarchar](50) NULL,
	[RecieverName] [nvarchar](20) NULL,
	[RecieverPlace] [int] NULL,
	[TelNo] [nvarchar](10) NULL,
	[CauseId] [int] NULL,
	[Adress] [nvarchar](50) NULL,
	[CartName] [nvarchar](20) NULL,
	[CartMessage] [nvarchar](50) NULL,
	[IsNameActive] [bit] NULL,
	[RecordId] [int] NOT NULL,
 CONSTRAINT [PK_FlowerDetails] PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowerOrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[DetailId] [int] NULL,
	[FlowerDetailId] [int] NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[CityId] [int] NULL,
	[DistrictId] [int] NULL,
	[Date] [nvarchar](20) NULL,
	[Hour] [nvarchar](50) NULL,
	[RecieverName] [nvarchar](20) NULL,
	[RecieverPlace] [int] NULL,
	[TelNo] [nvarchar](10) NULL,
	[CauseId] [int] NULL,
	[Adress] [nvarchar](50) NULL,
	[CartName] [nvarchar](20) NULL,
	[CartMessage] [nvarchar](50) NULL,
	[IsNameActive] [bit] NULL,
	[RecordId] [int] NOT NULL,
 CONSTRAINT [PK_FlowerOrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowerPlace](
	[placeID] [int] IDENTITY(1,1) NOT NULL,
	[placeName] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowerTimes](
	[TimeID] [int] IDENTITY(1,1) NOT NULL,
	[Time] [nvarchar](20) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodPlace](
	[placeID] [int] IDENTITY(1,1) NOT NULL,
	[placeName] [nvarchar](50) NOT NULL,
	[mincartlimit] [decimal](15, 2) NOT NULL,
 CONSTRAINT [PK_FoodPlace] PRIMARY KEY CLUSTERED 
(
	[placeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageProblems](
	[problemId] [int] IDENTITY(1,1) NOT NULL,
	[problem] [nvarchar](50) NULL,
 CONSTRAINT [PK_MessageProblems] PRIMARY KEY CLUSTERED 
(
	[problemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[messageid] [int] IDENTITY(1,1) NOT NULL,
	[problemId] [int] NULL,
	[sendersId] [int] NULL,
	[receiversId] [int] NULL,
	[messagesubject] [nvarchar](50) NULL,
	[messagecontent] [nvarchar](MAX) NULL,
	[unread] [bit] NOT NULL DEFAULT 0,
	[messagedate] [nchar](10) NULL,
 CONSTRAINT [PK_Messsages] PRIMARY KEY CLUSTERED 
(
	[messageid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MultiAdminSite](
	[MultiAdminID] [int] IDENTITY(1,1) NOT NULL,
	[SiteName] [nvarchar](200) NULL,
	[ServerName] [nvarchar](50) NULL,
	[DbName] [nvarchar](50) NULL,
	[DbUserName] [nvarchar](50) NULL,
	[DbPass] [nvarchar](50) NULL,
	[IsDefault] [bit] NOT NULL,
	[CanDelete] [bit] NOT NULL
) ON [PRIMARY]

GO
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MultiCoupon](
	[CouponId] [int] IDENTITY(1,1) NOT NULL,
	[PortalId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CouponCode] [varchar](15) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[StartTime] [varchar](5) NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[EndTime] [varchar](50) NOT NULL,
	[MinQty] [int] NOT NULL,
	[MinPrice] [decimal](18, 2) NOT NULL,
	[DiscountType] [bit] NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UsedDate] [datetime] NOT NULL,
	[OrderId] [int] NOT NULL,
	[MaxUsageCount] [int] NOT NULL,
	[PersonMaxUsageCount] [int] NOT NULL,
	[KargoStatus] [bit] NOT NULL,
	[TotalUsage] [int] NOT NULL,
	[IsUsed] [bit] NOT NULL,
	[CouponType] [bit] NOT NULL,
	[RoleName] [varchar](50) NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_MultiCoupon] PRIMARY KEY CLUSTERED 
(
	[CouponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetworkMarketCommisionDetail](
	[CommisionId] [int] IDENTITY(1,1) NOT NULL,
	[PortalId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[RefereeId] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderDetailsId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[OrderDetailTotal] [int] NOT NULL,
	[ProductPrim] [numeric](18, 0) NOT NULL,
	[CommisionRate] [numeric](18, 0) NOT NULL,
	[CommisionTotal] [numeric](18, 0) NOT NULL,
	[Claimed] [int] NOT NULL,
	[PeriodYear] [int] NULL,
	[PeriodBeginMonth] [int] NULL,
	[PeriodEndMonth] [int] NULL,
 CONSTRAINT [PK_NetworkMarketCommisionDetail] PRIMARY KEY CLUSTERED 
(
	[CommisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetworkPayments](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[PortalId] [int] NULL,
	[UserId] [int] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[Details] [nvarchar](500) NULL,
 CONSTRAINT [PK_NetworkPayments] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product3dPictures](
	[PortalId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Url] [varchar](250) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductNonAlternatives](
	[nonAlternativeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[NAProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductNonAlternatives] PRIMARY KEY CLUSTERED 
(
	[nonAlternativeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStokType](
	[StokTypeID] [int] IDENTITY(1,1) NOT NULL,
	[StokTypeName] [nchar](20) NOT NULL,
	[StokTypeUrl] [nvarchar](256) NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SupplierPreviliges](
	[PreID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PAddProduct] [bit] NULL,
	[PDeleteProduct] [bit] NULL,
	[PCategory] [varchar](5) NULL,
	[PBrand] [varchar](5) NULL,
	[PBarcode] [varchar](5) NULL,
	[PQuantity] [varchar](5) NULL,
	[PTextile] [varchar](5) NULL,
	[PPurchasePrice] [varchar](5) NULL,
	[PSalePrice] [varchar](5) NULL,
	[PProductNote] [varchar](5) NULL,
	[PImage] [varchar](5) NULL,
	[PVideo] [varchar](5) NULL,
	[PUnit] [varchar](5) NULL,
	[PColorAndSize] [varchar](5) NULL,
	[PVariant] [varchar](5) NULL,
	[PAlternative] [varchar](5) NULL,
	[PSupplies] [varchar](5) NULL,
 CONSTRAINT [PK_SupplierPreviliges] PRIMARY KEY CLUSTERED 
(
	[PreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

--UPDATE TABLE COLUMNS

ALTER TABLE [dbo].[Banks] ADD [ProBankId] [int]  NULL 
GO

ALTER TABLE [dbo].[Banks] ADD [TesanBankId] [int]  NULL 
GO

ALTER TABLE [dbo].[Banks] ADD [SecretCode1] [nvarchar] (50)  NULL
GO

ALTER TABLE [dbo].[Banks] ADD [GenpaId] [int] NULL 
GO

ALTER TABLE [dbo].[Banks] ADD [GenpaCompanyId] [nvarchar] (50)  NULL
GO

ALTER TABLE [dbo].[Banks] ADD [GenpaBankId] [nvarchar] (50)  NULL
GO

ALTER TABLE [dbo].[Banks] ADD DEFAULT 0 FOR PortalId
GO

ALTER TABLE [dbo].[Billings] ADD [Mail] [nvarchar] (100) NOT  NULL  DEFAULT ''
Go

ALTER TABLE [dbo].[Categories] ADD [CategoryCode] [nvarchar] (100) NOT  NULL  DEFAULT ''
Go

ALTER TABLE [dbo].[Orders] ADD [MultiAdminID] [nvarchar] (250)  NULL 
Go

ALTER TABLE [dbo].[Orders] ADD [ShippingMail] [nvarchar] (100) NOT  NULL  DEFAULT ''
Go

ALTER TABLE [dbo].[Portals] ADD [FacebookUserGroup] [nvarchar] (50)  NULL
Go

ALTER TABLE [dbo].[ProductAttributes] ALTER COLUMN [ProductImagePath] [nvarchar] (MAX)  NULL
Go

ALTER TABLE [dbo].[Products] ADD [NebimStokUpdateDate] [DATETIME] NOT NULL DEFAULT GETDATE()
Go

ALTER TABLE [dbo].[Products] ADD [StokType] [INT]  NOT NULL DEFAULT 0
Go

ALTER TABLE [dbo].[Products] ADD [StokSubType] [INT]  NOT NULL DEFAULT 0
Go

ALTER TABLE [dbo].[ProductSizeOptions] ALTER COLUMN ProductSize0Name nvarchar (500)
GO

ALTER TABLE [dbo].[ProductSizeOptions] ALTER COLUMN ProductSize1Name nvarchar (500)
GO

ALTER TABLE [dbo].[ProductSizeOptions] ALTER COLUMN ProductSize2Name nvarchar (500)
GO

ALTER TABLE [dbo].[ProductSizeOptionsValues] ALTER COLUMN ProductSizeOptionsValueName nvarchar (500)
GO

ALTER TABLE [dbo].[ProductSizeOptionsValues] ALTER COLUMN ProductSizeOptionsPath nvarchar (500)
GO

ALTER TABLE [dbo].[ProductSizeOptionsValues] ADD [NebimRenkKodu] [varchar] (3) NOT NULL DEFAULT -1
Go

ALTER TABLE [dbo].[Users] ADD [CountryID] [int] NOT NULL  DEFAULT -1
GO

ALTER TABLE [dbo].[Users] ADD [DistrictID] [int] NOT NULL  DEFAULT -1
GO

ALTER TABLE [dbo].[Users] ADD [CompanyId] [int]  NULL
GO

ALTER TABLE [dbo].[Users] ADD [QapelID] [nvarchar] (100) NULL
GO

ALTER TABLE [dbo].[Users] ADD [QapelToken] [nvarchar] (200) NULL
GO

ALTER TABLE [dbo].[Users] ADD [TwitterID] [varchar] (150) NULL
GO

ALTER TABLE [dbo].[Users] ADD [IsSupplier] [bit] NOT NULL DEFAULT 0
GO

ALTER TABLE [dbo].[Users] ADD [NetworkSponsorId] [int] NULL
GO

ALTER TABLE [dbo].[Users] ADD [NetworkPoint] [int] NULL
GO

ALTER TABLE [dbo].[Users] ADD [NetworkRank] [int] NULL
GO

ALTER TABLE [dbo].[Users] ADD [mailQuota] [int] NULL
GO

--ADD VIEWs

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[GetSupplierUsers]
AS
SELECT  UserId, PortalId, Name, FullName, Email, Password, Phone1, Phone2, FaxNumber, MobilePhone, FirmaId, Sehir, CityId, PersonelId, CreatedDate, DisAccount, 
        Description, IsActive, IsSupplier, CODE1, CODE2, CODE3, Addres, UserType, UserSex, CompanyCode, CompanyName, CompanyPhone1, CompanyPhone2, 
        CompanyEmail, CompanyCityId, CompanyAddres, CompanyWeb, IsReseller, TCKimlikNo, BirthDate, Profession, WhereToHear, ActivationCode, Education, Credit, 
        RemoteLogin, IsOperator, IsOnline, StokIsk, StokIskActive, Points, ISNULL(LastLogin, '') AS LastLogin, LoginCount, CompanyVd, CompanyVdNo, AffiliateId, 
        AffiliateStatus, CompanyBankName, CompanyBankSube, CompanyBankNumber, FacebookId
FROM    dbo.Users
WHERE   (IsSupplier IS NOT NULL) AND (IsSupplier = 1)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MultiAdminSiparis]
AS
SELECT  dbo.OrderStatus.StatusName, dbo.Users.FullName, dbo.Users.Email, dbo.Orders.OrderId, dbo.Orders.PortalId, dbo.Orders.CustomerId, 
        dbo.Orders.OrderDate, dbo.Orders.ShipDate, dbo.Orders.PaymentType, dbo.Orders.IsPayed, dbo.Orders.Note, dbo.Orders.ShippingName, 
        dbo.Orders.ShippingPhoneNo, dbo.Orders.ShippingMobilePhone, dbo.Orders.ShippingCityName, dbo.Orders.ShippingAddress, 
        dbo.Orders.ShippingCargoName, dbo.Orders.BillingName, dbo.Orders.BillingPhoneNo, dbo.Orders.BillingMobilePhoneNo, dbo.Orders.BillingTaxOffice, 
        dbo.Orders.BillingTaxNo, dbo.Orders.BillingCityName, dbo.Orders.BillingAddress, dbo.Orders.ToplamTutar, dbo.Orders.KdvDahilToplam, 
        dbo.Orders.ToplamKdv, dbo.Orders.ToplamKargo, dbo.Orders.KargoDahilToplamTutar, dbo.Orders.ToplamIndirim, dbo.Orders.CekIndirimi, 
        dbo.Orders.ToplamAgirlik, dbo.Orders.ToplamHacim, dbo.Orders.ToplamDesi, dbo.Orders.BankName, dbo.Orders.CardName, dbo.Orders.Taksit, 
        dbo.Orders.BankaToplamTutar, dbo.Orders.BankPayType, dbo.Orders.Status, dbo.Orders.Integreted, dbo.Orders.ToplamPuan, dbo.Orders.Ip, 
        dbo.Orders.LastChange, dbo.Users.TCKimlikNo, dbo.Users.MobilePhone, dbo.Orders.Aciklama, dbo.Orders.Aciklama2, dbo.Orders.OrderCode, 
        dbo.Orders.OrderPaymentCode, dbo.Orders.CurrencyRate, dbo.Orders.CurrencyCode, dbo.Orders.CustomerCurrencyRate, 
        dbo.Orders.CustomerCurrencyCode, dbo.Orders.TaksitRate, dbo.Orders.ShippingCountryName, dbo.Orders.ShippingDistrictName, 
        dbo.Orders.BillingCountryName, dbo.Orders.BillingDistrictName
FROM    dbo.Orders LEFT OUTER JOIN
        dbo.Users ON dbo.Orders.CustomerId = dbo.Users.UserId LEFT OUTER JOIN
        dbo.OrderStatus ON dbo.Orders.Status = dbo.OrderStatus.StatusId
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MultiCouponList]
AS
SELECT  dbo.users.Name, dbo.users.FullName, dbo.users.Email, dbo.MultiCoupon.CouponId, dbo.MultiCoupon.PortalId, dbo.MultiCoupon.UserId, 
        dbo.MultiCoupon.CouponCode, dbo.MultiCoupon.StartDate, dbo.MultiCoupon.StartTime, dbo.MultiCoupon.EndDate, dbo.MultiCoupon.EndTime, 
        dbo.MultiCoupon.MinQty, dbo.MultiCoupon.MinPrice, dbo.MultiCoupon.DiscountType, dbo.MultiCoupon.Discount, 
        CASE dbo.MultiCoupon.IsActive WHEN 'False' THEN 'Pasif' ELSE 'Aktif' END AS IsActive, dbo.MultiCoupon.IsActive AS IsActive2, 
        dbo.MultiCoupon.CreatedDate, dbo.MultiCoupon.UsedDate, dbo.MultiCoupon.OrderId, dbo.MultiCoupon.MaxUsageCount, 
        dbo.MultiCoupon.PersonMaxUsageCount, CASE dbo.MultiCoupon.KargoStatus WHEN 'False' THEN 'Ücretsiz' ELSE 'Ücretli' END AS KargoStatus, 
        dbo.MultiCoupon.KargoStatus AS KargoStatus2, dbo.MultiCoupon.TotalUsage, dbo.MultiCoupon.IsUsed, dbo.MultiCoupon.CouponType, 
        dbo.MultiCoupon.RoleName, dbo.MultiCoupon.CustomerId
FROM    dbo.MultiCoupon LEFT OUTER JOIN
        dbo.users ON dbo.MultiCoupon.UserId = dbo.users.UserId
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ProductList23]
AS
SELECT        dbo.Categories.CatId, dbo.Categories.CatName, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.Description, 
                         dbo.Products.StockQty, dbo.ProductKdvs.KdvRate, dbo.ProductImages.Path, dbo.ProductMarks.MarKName, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan, 
                         dbo.ProductUnits.SatisFiyati0, dbo.ProductUnits.SatisFiyati1, dbo.ProductUnits.SatisFiyati2, dbo.ProductUnits.SatisFiyati3, dbo.ProductUnits.Isk1, 
                         dbo.ProductUnits.Isk2, dbo.ProductUnits.Isk3, Currencys_0.CurrencyName AS Currency0, Currencys_1.CurrencyName AS Currency1, 
                         Currencys_2.CurrencyName AS Currency2, Currencys_3.CurrencyName AS Currency3, Currencys_0.Rate AS Rate0, Currencys_1.Rate AS Rate1, 
                         Currencys_2.Rate AS Rate2, Currencys_3.Rate AS Rate3, dbo.Products.SellNoneStock, dbo.Products.ShowInMainPage, dbo.Categories.PortalId, 
                         dbo.ProductMarks.MarkId, dbo.Products.ShowOrder, dbo.Products.Details, dbo.Categories.Url AS CatUrl, dbo.Products.Url AS ProductUrl, dbo.Categories.Lineage, 
                         dbo.Products.SearchKeywords, dbo.Products.Hit, dbo.Products.AuthorId, dbo.Products.PublisherId, Currencys_P.CurrencyName AS CurrencyP, 
                         dbo.ProductUnits.PiyasaFiyati, Currencys_4.CurrencyName AS Currency4, Currencys_5.CurrencyName AS Currency5, Currencys_4.Rate AS Rate4, 
                         Currencys_5.Rate AS Rate5, Currencys_P.Rate AS RateP, dbo.ProductUnits.SatisFiyati4, dbo.ProductUnits.SatisFiyati5, dbo.ProductUnits.Isk4, dbo.ProductUnits.Isk5,
                          dbo.Products.HizliKargo, dbo.Products.AyniGunTeslim, dbo.Products.IndirimliUrun, dbo.Products.FirsatUrunu, dbo.Products.SokFiyatliUrun, 
                         dbo.Products.EnUcuzUrun, dbo.Products.OzelUrun, dbo.Products.SinirliSayidaUrun, dbo.Products.YeniUrun, dbo.Products.HediyeliUrun, dbo.Products.StartDate, 
                         dbo.Products.EndDate, dbo.Categories.StartDate AS CStartDate, dbo.Categories.EndDate AS CEndDate, dbo.Products.ProductSizeOptionId, dbo.ProductUnits.Barcode,
                          dbo.Products.Code15, dbo.Products.Code14, dbo.Products.Code13, dbo.Products.Code12, dbo.Products.Code11, dbo.Products.Code10, dbo.Products.Code9, 
                         dbo.Products.Code8, dbo.Products.Code7, dbo.Products.Code6, dbo.Products.Code5, dbo.Products.Code4, dbo.Products.Code3, dbo.Products.Code2, 
                         dbo.Products.Code1
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
                         dbo.Currencys AS Currencys_3 ON dbo.ProductUnits.Pb3 = Currencys_3.CurrencyId
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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ProductList3]
AS
SELECT        dbo.Categories.CatId, dbo.Categories.CatName, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.Description, 
                         dbo.Products.StockQty, dbo.ProductKdvs.KdvRate, dbo.ProductImages.Path, dbo.ProductMarks.MarKName, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan, 
                         dbo.ProductUnits.SatisFiyati0, dbo.ProductUnits.SatisFiyati1, dbo.ProductUnits.SatisFiyati2, dbo.ProductUnits.SatisFiyati3, dbo.ProductUnits.Isk1, 
                         dbo.ProductUnits.Isk2, dbo.ProductUnits.Isk3, Currencys_0.CurrencyName AS Currency0, Currencys_1.CurrencyName AS Currency1, 
                         Currencys_2.CurrencyName AS Currency2, Currencys_3.CurrencyName AS Currency3, Currencys_0.Rate AS Rate0, Currencys_1.Rate AS Rate1, 
                         Currencys_2.Rate AS Rate2, Currencys_3.Rate AS Rate3, dbo.Products.SellNoneStock, dbo.Products.ShowInMainPage, dbo.Categories.PortalId, 
                         dbo.ProductMarks.MarkId, dbo.Products.ShowOrder, dbo.Products.Details, dbo.Categories.Url AS CatUrl, dbo.Products.Url AS ProductUrl, dbo.Categories.Lineage, 
                         dbo.Products.SearchKeywords, dbo.Products.Hit, dbo.Products.AuthorId, dbo.Products.PublisherId, Currencys_P.CurrencyName AS CurrencyP, 
                         dbo.ProductUnits.PiyasaFiyati, Currencys_4.CurrencyName AS Currency4, Currencys_5.CurrencyName AS Currency5, Currencys_4.Rate AS Rate4, 
                         Currencys_5.Rate AS Rate5, Currencys_P.Rate AS RateP, dbo.ProductUnits.SatisFiyati4, dbo.ProductUnits.SatisFiyati5, dbo.ProductUnits.Isk4, dbo.ProductUnits.Isk5,
                          dbo.Products.HizliKargo, dbo.Products.AyniGunTeslim, dbo.Products.IndirimliUrun, dbo.Products.FirsatUrunu, dbo.Products.SokFiyatliUrun, 
                         dbo.Products.EnUcuzUrun, dbo.Products.OzelUrun, dbo.Products.SinirliSayidaUrun, dbo.Products.YeniUrun, dbo.Products.HediyeliUrun, dbo.Products.StartDate, 
                         dbo.Products.EndDate, dbo.Categories.StartDate AS CStartDate, dbo.Categories.EndDate AS CEndDate, dbo.Products.ProductSizeOptionId, dbo.ProductUnits.Barcode,
                          dbo.Products.Code15, dbo.Products.Code14, dbo.Products.Code13, dbo.Products.Code12, dbo.Products.Code11, dbo.Products.Code10, dbo.Products.Code9, 
                         dbo.Products.Code8, dbo.Products.Code7, dbo.Products.Code6, dbo.Products.Code5, dbo.Products.Code4, dbo.Products.Code3, dbo.Products.Code2, 
                         dbo.Products.Code1
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
                         dbo.Currencys AS Currencys_3 ON dbo.ProductUnits.Pb3 = Currencys_3.CurrencyId
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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SupplierList]
AS
SELECT  sup.PDeleteProduct, sup.PCategory, sup.PBarcode, sup.PQuantity, sup.PTextile, sup.PPurchasePrice, sup.PSalePrice, sup.PSalePrice AS Expr1, sup.PProductNote, 
        sup.PImage, sup.PVideo, u.UserId, u.PortalId, u.Name, u.Email, u.FullName, u.Phone1, u.Phone2, u.FaxNumber, u.MobilePhone, u.CreatedDate, u.IsSupplier, 
        u.IsActive, u.CompanyName, u.CompanyPhone1, u.CompanyPhone2, u.CompanyEmail, u.CompanyAddres, sup.PreID, sup.PBrand, sup.PAddProduct, sup.PUnit, 
        sup.PColorAndSize, sup.PVariant, sup.PAlternative, sup.PSupplies
FROM    dbo.Users AS u INNER JOIN
        dbo.SupplierPreviliges AS sup ON u.UserId = sup.UserId
WHERE   (u.IsSupplier = 1)
GO

--UPDATE VIEWs

ALTER VIEW [dbo].[AdminProductList]
AS
SELECT        dbo.Categories.CatId, dbo.Categories.CatName, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.Description, 
                         dbo.Products.StockQty, dbo.ProductMarks.MarKName, dbo.Products.SellNoneStock, dbo.Products.ShowInMainPage, dbo.ProductMarks.MarkId, 
                         dbo.Products.ShowOrder, dbo.Products.Details, dbo.Products.Code11, dbo.Products.Code12, dbo.Products.Code13, dbo.Products.Code14, 
                         dbo.Products.Code15, dbo.Products.IsActive, dbo.Products.Code1, dbo.Products.PortalId, dbo.Products.CreatedDate, dbo.Categories.Lineage, 
                         dbo.Products.WizardId, dbo.Products.IsPenta, dbo.Products.CampainId, dbo.Products.UserId, dbo.Products.ProductSizeOptionId, dbo.Products.AuthorId, 
                         dbo.Products.ProviderId, dbo.Authors.AuthorId AS Expr1, dbo.Authors.AuthorName, dbo.Publishers.PublisherId, dbo.Publishers.PublisherName, 
                         dbo.Products.Code2, dbo.Products.Code3, dbo.Products.Code4, dbo.Products.Code5, dbo.Products.Code6, dbo.Products.Code7, dbo.Products.Code8, 
                         dbo.Products.Code9, dbo.Products.Code10, dbo.Products.StokType
FROM            dbo.Products LEFT OUTER JOIN
                         dbo.Publishers ON dbo.Products.PublisherId = dbo.Publishers.PublisherId LEFT OUTER JOIN
                         dbo.Authors ON dbo.Products.AuthorId = dbo.Authors.AuthorId LEFT OUTER JOIN
                         dbo.ProductCategories INNER JOIN
                         dbo.Categories ON dbo.ProductCategories.CategoryId = dbo.Categories.CatId ON dbo.Products.ProductId = dbo.ProductCategories.ProductId LEFT OUTER JOIN
                         dbo.ProductMarks ON dbo.Products.MarkId = dbo.ProductMarks.MarkId


GO

ALTER VIEW [dbo].[CouponList]
AS
SELECT        dbo.Coupons.CouponId, dbo.Users.UserId, dbo.Users.Name, dbo.Users.FullName, dbo.Users.Email, dbo.Coupons.CouponCode, dbo.Coupons.StartDate, 
                         dbo.Coupons.StartTime, dbo.Coupons.EndDate, dbo.Coupons.EndTime, dbo.Coupons.MinQty, dbo.Coupons.MinPrice, dbo.Coupons.Discount, 
                         dbo.Coupons.IsActive, dbo.Coupons.IsUsed, dbo.Coupons.CreatedDate, dbo.Coupons.UsedDate, dbo.Coupons.OrderId, dbo.Coupons.PortalId, 
                         dbo.Coupons.RoleName, dbo.Coupons.UserId AS Expr1
FROM            dbo.Coupons LEFT OUTER JOIN
                         dbo.Users ON dbo.Coupons.UserId = dbo.Users.UserId


GO

ALTER VIEW [dbo].[OrdersList]
AS
SELECT        dbo.OrderStatus.StatusName, dbo.Users.FullName, dbo.Users.Email, dbo.Orders.OrderId, dbo.Orders.PortalId, dbo.Orders.CustomerId, 
                         dbo.Orders.OrderDate, dbo.Orders.ShipDate, dbo.Orders.PaymentType, dbo.Orders.IsPayed, dbo.Orders.Note, dbo.Orders.ShippingName, 
                         dbo.Orders.ShippingPhoneNo, dbo.Orders.ShippingMobilePhone, dbo.Orders.ShippingCityName, dbo.Orders.ShippingAddress, 
                         dbo.Orders.ShippingCargoName, dbo.Orders.BillingName, dbo.Orders.BillingPhoneNo, dbo.Orders.BillingMobilePhoneNo, dbo.Orders.BillingTaxOffice, 
                         dbo.Orders.BillingTaxNo, dbo.Orders.BillingCityName, dbo.Orders.BillingAddress, dbo.Orders.ToplamTutar, dbo.Orders.KdvDahilToplam, 
                         dbo.Orders.ToplamKdv, dbo.Orders.ToplamKargo, dbo.Orders.KargoDahilToplamTutar, dbo.Orders.ToplamIndirim, dbo.Orders.CekIndirimi, 
                         dbo.Orders.ToplamAgirlik, dbo.Orders.ToplamHacim, dbo.Orders.ToplamDesi, dbo.Orders.BankName, dbo.Orders.CardName, dbo.Orders.Taksit, 
                         dbo.Orders.BankaToplamTutar, dbo.Orders.BankPayType, dbo.Orders.Status, dbo.Orders.Integreted, dbo.Orders.ToplamPuan, dbo.Orders.Ip, 
                         dbo.Orders.LastChange, dbo.Users.TCKimlikNo, dbo.Users.MobilePhone, dbo.Orders.Aciklama, dbo.Orders.Aciklama2, dbo.Orders.OrderCode, 
                         dbo.Orders.OrderPaymentCode, dbo.Orders.CurrencyRate, dbo.Orders.CurrencyCode, dbo.Orders.CustomerCurrencyRate, 
                         dbo.Orders.CustomerCurrencyCode, dbo.Orders.TaksitRate, dbo.Orders.ShippingCountryName, dbo.Orders.ShippingDistrictName, 
                         dbo.Orders.BillingCountryName, dbo.Orders.BillingDistrictName, dbo.Orders.MultiAdminID, dbo.Orders.ShippingMail
FROM            dbo.Orders LEFT OUTER JOIN
                         dbo.Users ON dbo.Orders.CustomerId = dbo.Users.UserId LEFT OUTER JOIN
                         dbo.OrderStatus ON dbo.Orders.Status = dbo.OrderStatus.StatusId


GO


ALTER VIEW [dbo].[AdminProductListAll]
AS
SELECT        dbo.Categories.CatId, dbo.Categories.CatName, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.StockQty, 
                         dbo.ProductMarks.MarKName, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.SatisFiyati0, dbo.ProductUnits.SatisFiyati1, dbo.ProductUnits.SatisFiyati2, 
                         dbo.ProductUnits.SatisFiyati3, dbo.Products.SellNoneStock, dbo.Categories.PortalId, dbo.ProductMarks.MarkId, dbo.Products.Code1, dbo.ProductUnits.Desi, 
                         dbo.Products.IsActive, Currencys_0.CurrencyName AS Pb0, Currencys_1.CurrencyName AS Pb1, Currencys_2.CurrencyName AS Pb2, 
                         Currencys_3.CurrencyName AS Pb3, dbo.ProductUnits.UnitId, dbo.Products.ShowInMainPage, dbo.ProductUnits.LastModified, dbo.ProductUnits.AlisFiyati, 
                         Currencys_A.CurrencyName AS APb, dbo.Categories.Lineage, dbo.Products.CampainId, dbo.Products.IsPenta, dbo.ProductImages.Path, 
                         dbo.ProductImages.IsDefault, dbo.Products.CreatedDate, dbo.ProductUsages.UsageId, dbo.ProductAlternatives.AlternativeId, dbo.Products.WizardId, 
                         dbo.ProductAttributes.ProductAttributesId, dbo.Products.ShowOrder, dbo.Products.ForceCargo, dbo.Products.HizliKargo, dbo.Products.AyniGunTeslim, 
                         dbo.Products.IndirimliUrun, dbo.Products.FirsatUrunu, dbo.Products.SokFiyatliUrun, dbo.Products.EnUcuzUrun, dbo.Products.OzelUrun, 
                         dbo.Products.SinirliSayidaUrun, dbo.Products.YeniUrun, dbo.Products.HediyeliUrun, Currencys_P.CurrencyName AS PPb, dbo.ProductUnits.PiyasaFiyati, 
                         Currencys_4.CurrencyName AS Pb4, dbo.ProductUnits.SatisFiyati4, Currencys_5.CurrencyName AS Pb5, dbo.ProductUnits.SatisFiyati5, dbo.Products.UserId, 
                         dbo.Products.ProductSizeOptionId, dbo.Products.ProviderId, dbo.Authors.AuthorName, dbo.Authors.AuthorId, dbo.Publishers.PublisherId, 
                         dbo.Publishers.PublisherName, dbo.Products.AuthorId AS Expr2, dbo.Products.Code2, dbo.Products.Code3, dbo.Products.Code4, dbo.Products.Code5, 
                         dbo.Products.Code6, dbo.Products.Code7, dbo.Products.Code8, dbo.Products.Code9, dbo.Products.Code10, dbo.Products.Code11, dbo.Products.Code12, 
                         dbo.Products.Code13, dbo.Products.Code14, dbo.Products.Code15, dbo.ProductUnits.Barcode, dbo.Products.StokType
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



go
ALTER VIEW [dbo].[ProductList]
AS
SELECT        dbo.Categories.CatId, dbo.Categories.CatName, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.Description, 
                         dbo.Products.StockQty, dbo.ProductKdvs.KdvRate, dbo.ProductImages.Path, dbo.ProductMarks.MarKName, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan, 
                         dbo.ProductUnits.SatisFiyati0, dbo.ProductUnits.SatisFiyati1, dbo.ProductUnits.SatisFiyati2, dbo.ProductUnits.SatisFiyati3, dbo.ProductUnits.Isk1, 
                         dbo.ProductUnits.Isk2, dbo.ProductUnits.Isk3, Currencys_0.CurrencyName AS Currency0, Currencys_1.CurrencyName AS Currency1, 
                         Currencys_2.CurrencyName AS Currency2, Currencys_3.CurrencyName AS Currency3, Currencys_0.Rate AS Rate0, Currencys_1.Rate AS Rate1, 
                         Currencys_2.Rate AS Rate2, Currencys_3.Rate AS Rate3, dbo.Products.SellNoneStock, dbo.Products.ShowInMainPage, dbo.Categories.PortalId, 
                         dbo.ProductMarks.MarkId, dbo.Products.ShowOrder, dbo.Products.Details, dbo.Categories.Url AS CatUrl, dbo.Products.Url AS ProductUrl, dbo.Categories.Lineage, 
                         dbo.Products.SearchKeywords, dbo.Products.Hit, dbo.Products.AuthorId, dbo.Products.PublisherId, Currencys_P.CurrencyName AS CurrencyP, 
                         dbo.ProductUnits.PiyasaFiyati, Currencys_4.CurrencyName AS Currency4, Currencys_5.CurrencyName AS Currency5, Currencys_4.Rate AS Rate4, 
                         Currencys_5.Rate AS Rate5, Currencys_P.Rate AS RateP, dbo.ProductUnits.SatisFiyati4, dbo.ProductUnits.SatisFiyati5, dbo.ProductUnits.Isk4, dbo.ProductUnits.Isk5,
                          dbo.Products.HizliKargo, dbo.Products.AyniGunTeslim, dbo.Products.IndirimliUrun, dbo.Products.FirsatUrunu, dbo.Products.SokFiyatliUrun, 
                         dbo.Products.EnUcuzUrun, dbo.Products.OzelUrun, dbo.Products.SinirliSayidaUrun, dbo.Products.YeniUrun, dbo.Products.HediyeliUrun, dbo.Products.StartDate, 
                         dbo.Products.EndDate, dbo.Categories.StartDate AS CStartDate, dbo.Categories.EndDate AS CEndDate, dbo.Products.ProductSizeOptionId, dbo.ProductUnits.Barcode,
                          dbo.Products.Code15, dbo.Products.Code14, dbo.Products.Code13, dbo.Products.Code12, dbo.Products.Code11, dbo.Products.Code10, dbo.Products.Code9, 
                         dbo.Products.Code8, dbo.Products.Code7, dbo.Products.Code6, dbo.Products.Code5, dbo.Products.Code4, dbo.Products.Code3, dbo.Products.Code2, 
                         dbo.Products.Code1
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
                         dbo.Currencys AS Currencys_3 ON dbo.ProductUnits.Pb3 = Currencys_3.CurrencyId
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
                         dbo.Products.ProductSizeOptionId
FROM            dbo.ProductCategories INNER JOIN
                         dbo.Categories ON dbo.ProductCategories.CategoryId = dbo.Categories.CatId INNER JOIN
                         dbo.ProductUnits INNER JOIN
                         dbo.Products ON dbo.ProductUnits.ProductId = dbo.Products.ProductId ON dbo.ProductCategories.ProductId = dbo.Products.ProductId INNER JOIN
                         dbo.ProductKdvs ON dbo.Products.KdvId = dbo.ProductKdvs.KdvId INNER JOIN
                         dbo.ProductImages ON dbo.Products.ProductId = dbo.ProductImages.ProductId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_P ON dbo.ProductUnits.PPb = Currencys_P.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_5 ON dbo.ProductUnits.Pb5 = Currencys_5.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_4 ON dbo.ProductUnits.Pb4 = Currencys_4.CurrencyId LEFT OUTER JOIN
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

ALTER VIEW [dbo].[ProductListDetails5a]
AS
SELECT        dbo.Categories.CatId, dbo.Categories.CatName, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.Products.Description, 
                         dbo.Products.StockQty, dbo.ProductKdvs.KdvRate, dbo.ProductImages.Path, dbo.ProductMarks.MarKName, dbo.ProductUnits.BirimAdi, 
                         dbo.ProductUnits.Carpan, dbo.ProductUnits.SatisFiyati0, dbo.ProductUnits.SatisFiyati1, dbo.ProductUnits.SatisFiyati2, dbo.ProductUnits.SatisFiyati3, 
                         dbo.ProductUnits.Isk1, dbo.ProductUnits.Isk2, dbo.ProductUnits.Isk3, Currencys_0.CurrencyName AS Currency0, Currencys_1.CurrencyName AS Currency1, 
                         Currencys_2.CurrencyName AS Currency2, Currencys_3.CurrencyName AS Currency3, Currencys_0.Rate AS Rate0, Currencys_1.Rate AS Rate1, 
                         Currencys_2.Rate AS Rate2, Currencys_3.Rate AS Rate3, dbo.Products.SellNoneStock, dbo.Products.ShowInMainPage, dbo.Categories.PortalId, 
                         dbo.ProductMarks.MarkId, dbo.Products.ShowOrder, dbo.Products.Details, dbo.Products.Code14, dbo.Products.Code15, dbo.Categories.Url AS CatUrl, 
                         dbo.Products.Url AS ProductUrl, dbo.Categories.Lineage, dbo.ProductUnits.UnitId, dbo.ProductUnits.IsDefault AS UnitsIsDefault, dbo.Products.WizardId, 
                         dbo.Products.CampainId, dbo.Products.ForceCargo, dbo.ProductUnits.Desi, dbo.Products.Code10, dbo.Products.Code11, dbo.Products.Code12, 
                         dbo.Products.Code13, dbo.Publishers.PublisherId, dbo.Publishers.PublisherName, dbo.Authors.AuthorId, dbo.Authors.AuthorName, 
                         Currencys_4.CurrencyName AS Currency4, Currencys_4.Rate AS Rate4, Currencys_5.CurrencyName AS Currency5, Currencys_5.Rate AS Rate5, 
                         dbo.ProductUnits.SatisFiyati4, dbo.ProductUnits.SatisFiyati5, dbo.ProductUnits.Isk4, dbo.ProductUnits.Isk5, Currencys_P.CurrencyName AS CurrencyP, 
                         Currencys_P.Rate AS RateP, dbo.ProductUnits.PiyasaFiyati, dbo.Products.EndDate, dbo.Products.StartDate, dbo.Categories.IsActive AS CatIsActive, 
                         dbo.ProductMarks.IsActive AS MarkIsActive, dbo.Products.IsActive AS ProductIsActive, dbo.Products.HediyeliUrun, dbo.Products.YeniUrun, 
                         dbo.Products.SinirliSayidaUrun, dbo.Products.OzelUrun, dbo.Products.EnUcuzUrun, dbo.Products.SokFiyatliUrun, dbo.Products.FirsatUrunu, 
                         dbo.Products.IndirimliUrun, dbo.Products.AyniGunTeslim, dbo.Products.HizliKargo, dbo.Products.PublisherId AS Expr1, dbo.Products.AuthorId AS Expr2
FROM            dbo.ProductCategories INNER JOIN
                         dbo.Categories ON dbo.ProductCategories.CategoryId = dbo.Categories.CatId INNER JOIN
                         dbo.ProductUnits INNER JOIN
                         dbo.Products ON dbo.ProductUnits.ProductId = dbo.Products.ProductId ON dbo.ProductCategories.ProductId = dbo.Products.ProductId INNER JOIN
                         dbo.ProductKdvs ON dbo.Products.KdvId = dbo.ProductKdvs.KdvId INNER JOIN
                         dbo.ProductImages ON dbo.Products.ProductId = dbo.ProductImages.ProductId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_P ON dbo.ProductUnits.PPb = Currencys_P.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_5 ON dbo.ProductUnits.Pb5 = Currencys_5.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_4 ON dbo.ProductUnits.Pb4 = Currencys_4.CurrencyId LEFT OUTER JOIN
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
P.ProviderStockCode AS UreticiKodu,dbo.Categories.CategoryCode,  dbo.Categories.Lineage, P.Url, dbo.Categories.Lineage2, P.SearchKeywords, dbo.ProductMarks.MarkId, 
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

ALTER VIEW [dbo].[ProductsExportAllOptions]
AS
SELECT        TOP (100) PERCENT P.IsActive AS UrunAktif, P.ProductCode AS StokKodu, P.ProductName AS StokAdi, P.Description AS StokAciklama, P.Details, 
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
P.Code3 AS Kod3, P.Code4 AS Kod4, P.Code5 AS Kod5, P.Code6 AS Kod6, P.Code7 AS Kod7, P.Code8 AS Kod8, P.Code9 AS Kod9, P.Code10 AS Kod10, P.Code11 AS Kod11, 
P.Code12 AS Kod12, P.Code13 AS Kod13, P.Code14 AS Kod14, P.Code15 AS Kod15, P.ProductId AS UrunId, P.CreatedDate, P.ProviderStockCode AS UreticiKodu, 
dbo.Categories.Lineage, P.Url, dbo.Categories.Lineage2, P.SearchKeywords, dbo.ProductMarks.MarkId, P.IsPenta AS XmlTedarikciId, REPLACE(dbo.ProductUnits.PiyasaFiyati, 
'.', ',') AS PiyasaFiyati, Currencys_P.CurrencyName AS PiyasaFiyatiParaBirimi, Currencys_4.CurrencyName AS SatisFiyati4ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati4, 
'.', ',') AS SatisFiyati4, dbo.ProductUnits.Isk4, Currencys_5.CurrencyName AS SatisFiyati5ParaBirimi, REPLACE(dbo.ProductUnits.SatisFiyati5, '.', ',') AS SatisFiyati5, 
dbo.ProductUnits.Isk5, P.HizliKargo, P.AyniGunTeslim, P.IndirimliUrun, P.FirsatUrunu, P.SokFiyatliUrun, P.EnUcuzUrun, P.OzelUrun, P.SinirliSayidaUrun, P.YeniUrun, 
P.HediyeliUrun, dbo.Providers.ProviderName AS TedarikciAdi, Providers_1.ProviderName AS XmlTedarikciAdi, dbo.Categories.CatId AS CatId1, dbo.Categories.Depth, 
P.ProductSizeOptionId, dbo.ProductUnits.Barcode
FROM            dbo.ProductKdvs RIGHT OUTER JOIN
                         dbo.Providers RIGHT OUTER JOIN
                         dbo.Providers AS Providers_1 RIGHT OUTER JOIN
                         dbo.Products AS P ON Providers_1.ProviderId = P.IsPenta ON dbo.Providers.ProviderId = P.ProviderId LEFT OUTER JOIN
                         dbo.Categories RIGHT OUTER JOIN
                         dbo.ProductCategories ON dbo.Categories.CatId = dbo.ProductCategories.CategoryId ON P.ProductId = dbo.ProductCategories.ProductId ON 
                         dbo.ProductKdvs.KdvId = P.KdvId LEFT OUTER JOIN
                         dbo.ProductMarks ON P.MarkId = dbo.ProductMarks.MarkId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_0 RIGHT OUTER JOIN
                         dbo.Currencys AS Currencys_4 INNER JOIN
                         dbo.ProductUnits ON Currencys_4.CurrencyId = dbo.ProductUnits.Pb4 INNER JOIN
                         dbo.Currencys AS Currencys_5 ON dbo.ProductUnits.Pb5 = Currencys_5.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_P ON dbo.ProductUnits.PPb = Currencys_P.CurrencyId ON Currencys_0.CurrencyId = dbo.ProductUnits.Pb0 LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_3 ON dbo.ProductUnits.Pb3 = Currencys_3.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_2 ON dbo.ProductUnits.Pb2 = Currencys_2.CurrencyId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_A ON dbo.ProductUnits.APb = Currencys_A.CurrencyId ON P.ProductId = dbo.ProductUnits.ProductId LEFT OUTER JOIN
                         dbo.Currencys AS Currencys_1 ON dbo.ProductUnits.Pb1 = Currencys_1.CurrencyId
WHERE        (NOT (P.Url IS NULL)) AND (NOT (dbo.ProductUnits.UnitId IS NULL))


GO

ALTER VIEW [dbo].[UserList]
AS
SELECT  dbo.Users.UserId, dbo.Users.FullName, dbo.Users.Name, dbo.Users.Email, dbo.Users.Password, dbo.Users.Phone1, dbo.Users.Phone2, 
        dbo.Users.FaxNumber, dbo.Users.MobilePhone, dbo.CRMCitys.CityName AS UserCity, dbo.Users.CreatedDate, dbo.Users.DisAccount, 
        dbo.Users.Description, dbo.Users.IsActive, dbo.Users.Addres, dbo.Users.StokIsk, dbo.Users.StokIskActive, dbo.Users.UserType, dbo.Users.UserSex, 
        dbo.Users.CompanyCode, dbo.Users.CompanyName, dbo.Users.CompanyPhone1, dbo.Users.CompanyPhone2, dbo.Users.CompanyEmail, 
        dbo.Users.CompanyAddres, dbo.Users.CompanyWeb, dbo.Users.IsReseller, dbo.Users.TCKimlikNo, dbo.Users.PortalId
FROM    dbo.Users LEFT OUTER JOIN
        dbo.CRMCitys ON dbo.Users.CityId = dbo.CRMCitys.CityId
GO

-- ADD SPROC

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddGenpaBank]
(
@PortalId int,
@BankGetWayAddress nvarchar(100),
@BankName   nvarchar(50),
@GenpaBankId	int,
@BankDesc varchar(100),
@Logo nvarchar(250),
@GenpaCompanyId	int,
@GetwayUserName nvarchar(50),
@GetwayPassword nvarchar(50),
@Use3DSecure bit=0,
@Bank3dGetWayAddress nvarchar(100),
@BankId      int OUTPUT
)
AS
IF NOT EXISTS ( select * from Banks where BankName=@BankName and PortalId=@PortalId )
BEGIN
INSERT INTO Banks
(
PortalId,
BankGetWayAddress,
BankName,
GenpaBankId,
BankDesc,
Logo,
GenpaCompanyId,
GetwayUserName,
GetwayPassword,
Use3DSecure,
Bank3dGetWayAddress
)

VALUES
(
@PortalId,
@BankGetWayAddress,
@BankName,
@GenpaBankId,
@BankDesc,
@Logo,
@GenpaCompanyId,
@GetwayUserName,
@GetwayPassword,
@Use3DSecure,
@Bank3dGetWayAddress

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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddProBank3da]
(
 
@PortalId int,
@ProBankId int,
@BankName   nvarchar(50),
@BankOffice   nvarchar(50),
@BankAccountNumber nvarchar(50),
@BankGetWayAddress nvarchar(100),
@Bank3dGetWayAddress nvarchar(100),
@GetwayUserName nvarchar(50),
@GetwayPassword nvarchar(50),
@Description nvarchar(100),
@IsCreditCard bit,
@Logo nvarchar(250),
@Color nvarchar(50),
@IsDefault bit,
@Use3DSecure bit=0,
@BankDesc varchar(100),
@UseTaksit bit,
@SecretCode1 nvarchar(50),
@BankId      int OUTPUT
)
AS
IF NOT EXISTS ( select * from Banks where ProBankId=@ProBankId and PortalId=@PortalId and SecretCode1=@SecretCode1)
BEGIN
INSERT INTO Banks
(
PortalId ,
ProBankId,
BankName ,
BankOffice ,
BankAccountNumber ,
BankGetWayAddress ,
Bank3dGetWayAddress,
GetwayUserName ,
GetwayPassword ,
Description ,
IsCreditCard ,
Logo,
Color,
IsDefault,
Use3DSecure,
BankDesc,
SecretCode1
)

VALUES
(
@PortalId ,
@ProBankId,
@BankName ,
@BankOffice ,
@BankAccountNumber ,
@BankGetWayAddress ,
@Bank3dGetWayAddress,
@GetwayUserName ,
@GetwayPassword ,
@Description ,
@IsCreditCard ,
@Logo,
@Color,
@IsDefault,
@Use3DSecure,
@BankDesc,
@SecretCode1
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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddSupplierPreviliges]
(
	@UserId INT,
	@padd BIT,
	@pdelete BIT,
	@pcat VARCHAR(5),
	@pbrand VARCHAR(5),
	--@pproduct VARCHAR(5),
	@pbarcode VARCHAR(5),
	@pquantity VARCHAR(5),
	@ptextile VARCHAR(5),
	@ppurchase VARCHAR(5),
	@psaleprice VARCHAR(5),
	@ppronote VARCHAR(5),
	@pimage VARCHAR(5),
	@pvideo VARCHAR(5),
	@punit VARCHAR(5),
	@pcolorandsize VARCHAR(5),
	@pvariant VARCHAR(5),
	@palternative VARCHAR(5),
	@psupplies VARCHAR(5),
	@result int output
)
AS
BEGIN
	IF NOT EXISTS (SELECT UserId FROM SupplierPreviliges WHERE UserId = @UserId)
	BEGIN
		INSERT INTO SupplierPreviliges
		VALUES (@UserId ,@padd, @pdelete, @pcat, @pbrand, @pbarcode, @pquantity, @ptextile, @ppurchase, @psaleprice, @ppronote, @pimage, @pvideo , @punit, @pcolorandsize, @pvariant, @palternative, @psupplies)
		
		SET @result = 1
	END
	ELSE
	BEGIN
		UPDATE SupplierPreviliges
		
		SET 
			PAddProduct			= @padd,
			PDeleteProduct		= @pdelete,
			PCategory			= @pcat,
			PBrand				= @pbrand,
			--PProductCode		= @pproduct,
			PBarcode			= @pbarcode,
			PQuantity			= @pquantity,
			PTextile			= @ptextile,
			PPurchasePrice		= @ppurchase,
			PSalePrice			= @psaleprice,
			PProductNote		= @ppronote,
			PImage				= @pimage,
			PVideo				= @pvideo,
			PUnit				= @punit,
			PColorAndSize		= @pcolorandsize,
			PVariant			= @pvariant,
			PAlternative		= @palternative,
			PSupplies			= @psupplies

		WHERE UserId = @UserId
		
		SET @result = 0
	END
END

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddTesanBank3da]
(
 
@PortalId int,
@TesanBankId int,
@BankName   nvarchar(50),
@BankOffice   nvarchar(50),
@BankAccountNumber nvarchar(50),
@BankGetWayAddress nvarchar(100),
@Bank3dGetWayAddress nvarchar(100),
@GetwayUserName nvarchar(50),
@GetwayPassword nvarchar(50),
@Description nvarchar(100),
@IsCreditCard bit,
@Logo nvarchar(250),
@Color nvarchar(50),
@IsDefault bit,
@Use3DSecure bit=0,
@BankDesc varchar(100),
@UseTaksit bit,
@SecretCode1 nvarchar(50),
@BankId      int OUTPUT
)
AS
IF NOT EXISTS ( select * from Banks where TesanBankId=@TesanBankId and PortalId=@PortalId and SecretCode1=@SecretCode1)
BEGIN
INSERT INTO Banks
(
PortalId ,
TesanBankId,
BankName ,
BankOffice ,
BankAccountNumber ,
BankGetWayAddress ,
Bank3dGetWayAddress,
GetwayUserName ,
GetwayPassword ,
Description ,
IsCreditCard ,
Logo,
Color,
IsDefault,
Use3DSecure,
BankDesc,
SecretCode1
)

VALUES
(
@PortalId ,
@TesanBankId,
@BankName ,
@BankOffice ,
@BankAccountNumber ,
@BankGetWayAddress ,
@Bank3dGetWayAddress,
@GetwayUserName ,
@GetwayPassword ,
@Description ,
@IsCreditCard ,
@Logo,
@Color,
@IsDefault,
@Use3DSecure,
@BankDesc,
@SecretCode1
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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddUser3]
(
@PortalId		int,
@UserType		int,
@FullName		nvarchar(100),
@UserSex		int=-2,
@Phone1			nvarchar(14)='',
@Phone2			nvarchar(14)='',
@FaxNumber		nvarchar(14),
@MobilePhone	nvarchar(14),
@CityId			int,
@Addres			nvarchar(400),
@CompanyName	nvarchar(100),
@CompanyPhone1	nvarchar(14),
@CompanyPhone2	nvarchar(14)='',
@CompanyEmail	nvarchar(100),
@CompanyCityId	int,
@CompanyId		int,
@CompanyAddres	nvarchar(400),
@CompanyWeb		nvarchar(100)='',
@Name			nvarchar(50),
@Email			nvarchar(100),
@Password		nvarchar(20),
@TCKimlikNo	    varchar(11)='',
@BirthDate		datetime=null,
@Profession	    varchar(25)='',
@WhereToHear	varchar(50)='',
@Education		varchar(25)='',
@IsActive		bit,
@IsSupplier		bit,
@UserId			int OUTPUT
)
AS
set @UserId=-1
if not EXISTS(Select UserId From Users Where Email=@Email and PortalId=@PortalId)
begin
INSERT INTO Users
(
PortalId,		
UserType,		
FullName,		
UserSex	,	
Phone1	,		
Phone2	,	
FaxNumber,	
MobilePhone	,
CityId		,	
Addres		,
CompanyId	,
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
IsSupplier
)

VALUES
(
@PortalId		,
@UserType		,
@FullName		,
@UserSex		,
@Phone1			,
@Phone2			,
@FaxNumber		,
@MobilePhone	,
@CityId			,
@Addres			,
@CompanyId		,
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
@IsSupplier
)

SELECT
    @UserId = @@Identity
    end
else
begin
select @UserId = 0
end

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteMultiAdminSite]
	@Id INT
	
AS
BEGIN
	DELETE  MultiAdminSite WHERE MultiAdminID = @Id
END

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteSuppliers]
	@UserId INT,
	@Result INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Users WHERE UserId = @UserId
	SET @Result = 1
END

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[GetNonAlternativeProducts]
(
	@ProductId int,
	@StokIndirim int,
	@StokIskActive bit
)

AS
	SELECT	dbo.Products.ProductId,dbo.Products.ProductCode, dbo.Products.ProductName, Products.Url, 
			'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1 when 1 then SatisFiyati1 when 2 then SatisFiyati2 when 3 then SatisFiyati3 when 4 then SatisFiyati4 when 5 then SatisFiyati5 end,  case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,  	 
			dbo.Currencys.CurrencyName,Currencys.Rate,Products.Code14,ProductImages.Path
	FROM    dbo.Products INNER JOIN
			dbo.ProductUnits ON dbo.Products.ProductId = dbo.ProductUnits.ProductId INNER JOIN
			dbo.ProductImages  ON dbo.Products.ProductId = dbo.ProductImages.ProductId INNER JOIN
			dbo.Currencys ON case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end
			= dbo.Currencys.CurrencyId
	WHERE   (NOT (dbo.Products.ProductId = @ProductId))
	and (dbo.Products.ProductId in(Select ProductId from ProductNonAlternatives where NAProductId=@ProductId)
	or dbo.Products.ProductId in(Select NAProductId from ProductNonAlternatives where ProductId=@ProductId))
	AND (dbo.ProductUnits.IsDefault = 1) and (dbo.ProductImages.IsDefault = 1) AND dbo.Products.IsActive=1

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GetSuppliers]
(
	@UserId INT
)
AS
BEGIN
	SELECT * FROM SupplierList WHERE UserId = @UserId
END

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[iPhoneUrunList]
(
	@DestinationCatId INT,
	@PortalId INT
)
AS
BEGIN
	IF(@DestinationCatId > 0 Or @DestinationCatId IS NOT NULL)
		BEGIN
			SELECT UrunId, StokAdi, StokAciklama, Details, StokEnvanter, StokResmi, isnull(MarkId,0) as MarkId, MarkaAdi, cat.CatImg, pxa.Lineage2, cat.Url As 'CatUrl', pxa.Url, PiyasaFiyati,PiyasaFiyatiParaBirimi, SatisFiyati0, SatisFiyati0ParaBirimi, SatisFiyati1, SatisFiyati1ParaBirimi, SatisFiyati2, SatisFiyati2ParaBirimi, SatisFiyati3, SatisFiyati3ParaBirimi, SatisFiyati4, SatisFiyati4ParaBirimi, SatisFiyati5, SatisFiyati5ParaBirimi, SellNoneStock, SinirliSayidaUrun, HizliKargo, AyniGunTeslim , IndirimliUrun, FirsatUrunu, SokFiyatliUrun, EnUcuzUrun, OzelUrun,YeniUrun,HediyeliUrun, CreatedDate 
			FROM ProductsExportAll pxa
			LEFT OUTER JOIN Categories cat ON pxa.CatId1 = cat.CatId 
			WHERE pxa.UrunAktif = 1 AND pxa.PortalId = @PortalId AND pxa.CatId1 = @DestinationCatId	
		END
	ELSE
		BEGIN
			Return Null
		END
END

GO

--UPDATE SPROC

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[AddBillingAdress]
(
    @CustomerId int,
    @CompanyName nvarchar(100),
	@PhoneNo nvarchar(14),
	@MobilePhone nvarchar(14),
    @TaxOffice   nvarchar(50),
    @TaxNo nvarchar(20),
    @CityId int,
	@CountryId int,
	@DistrictId int,
    @Address nvarchar(400),
	@IsActive bit,
	@IsDefault bit,
	@Mail nvarchar(100),
    @Identity int Output
)
AS

if @IsDefault=1 
begin 
Update Billings set IsDefault=0 Where   CustomerId=@CustomerId
end

INSERT INTO Billings
(
    CustomerId,
    CompanyName,
	PhoneNo,
	MobilePhone,
	TaxOffice,
	TaxNo,
    CityId,
	CountryId,
	DistrictId,
    Address,
	IsActive,
	IsDefault, Mail

)

VALUES
(
	@CustomerId,
    @CompanyName,
	@PhoneNo,
	@MobilePhone,
    @TaxOffice,
    @TaxNo,
    @CityId,
	@CountryId,
    @DistrictId,
    @Address,
    @IsActive,
    @IsDefault, @Mail
)

SELECT
    @Identity = @@Identity


GO

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
@BirthDate		datetime=null,
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
CompanyCode,NetworkSponsorId,NetworkRank
	
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
@StokIsk,@CountryID,@DistrictID,@CompanyCode,@NetworkSponsorId,@NetworkRank
)

SELECT
    @UserId = @@Identity
    end
else
begin
select @UserId = 0
end


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[GetModuleDefinitions]
(
    @PortalId  int
)
AS

SELECT  
  *

FROM
    ModuleDefinitions
    
WHERE   
    PortalId = @PortalId or PortalId=-1
    Order by FriendlyName asc


GO

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
ProductSizeBarcode
)
SELECT    @OrderId, dbo.Products.ProductId, dbo.Products.ProductCode, dbo.Products.ProductName, dbo.ProductUnits.BirimAdi, dbo.ProductUnits.Carpan,
'SatisFiyati'= case (@StokIndirim) when 0 then SatisFiyati1+ShoppingCart.ValueAdd when 1 then SatisFiyati1+ShoppingCart.ValueAdd when 2 then SatisFiyati2+ShoppingCart.ValueAdd when 3 then SatisFiyati3+ShoppingCart.ValueAdd when 4 then SatisFiyati4+ShoppingCart.ValueAdd when 5 then SatisFiyati5+ShoppingCart.ValueAdd end, 
 'Pb1'= case (@StokIndirim) when 0 then ProductUnits.Pb1 when 1 then ProductUnits.Pb1 when 2 then ProductUnits.Pb2 when 3 then ProductUnits.Pb3 when 4 then ProductUnits.Pb4 when 5 then ProductUnits.Pb5 end, 
                      Currencys_2.Rate,   
 case when (@StokIskActive >0 ) then case when (@StokIndirim=0) then 0 when (@StokIndirim=1) then Isk1 when (@StokIndirim=2) then Isk2 when (@StokIndirim=3) then Isk3 when (@StokIndirim=4) then Isk4 when (@StokIndirim=5) then Isk5 end else 0 end as Indirim ,  
 case when (isnumeric(@CartId)=1) then (select DisAccount from Users where UserId=@CartId) else 0 end, dbo.ProductUnits.AlisFiyati, dbo.ProductUnits.APb, Currencys_1.Rate AS Rate, 
dbo.ShoppingCart.Qty, dbo.Products.Provider, dbo.ProductKdvs.KdvRate,ProductMarks.MarKName,@Status,dbo.ShoppingCart.Description,Products.IsPenta,Products.ProviderId,Products.UserId,isnull(SatisFiyati5,0),ShoppingCart.ProductSizeId,
ProductUnits.Barcode,
Case When (ShoppingCart.ProductSizeId>0) Then (Select Barcode From ProductSizes where ProductSizeId=ShoppingCart.ProductSizeId) else '' end as ProductSizeBarcode


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

GO

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
   		 INSERT INTO ShoppingCart (CartId,ShoppingCartDefId,Qty,ProdId,PriceId,Description,Attributes,ValueAdd,NewDesi,ProductSizeId)
   		 VALUES (@CartId,@ShoppingCartDefId,@Qty,@ProdId,@Price_Id,@Description,@Attributes,@ValueAdd,@NewDesi,@ProductSizeId)
		SELECT @Return=(select top 1 RecordId from ShoppingCart order by RecordId desc)
		END
	ELSE
		SELECT @Return=0
END

GO

--UPDATE CATEGORIES
BEGIN
	UPDATE [dbo].[Categories] SET CategoryCode = CatId
END
GO

--------------------------------------------------------

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


GO

  
CREATE TABLE [dbo].[CurtainDetails](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [nvarchar](50) NULL,
	[ProductId] [int] NULL,
	[RecordId] [int] NOT NULL,
	[opt1] [nvarchar](50) NULL,
	[opt2] [nvarchar](50) NULL,
	[opt3] [nvarchar](50) NULL,
	[opt4] [nvarchar](50) NULL,
	[opt5] [nvarchar](50) NULL,
	[opt6] [nvarchar](50) NULL,
	[opt7] [nvarchar](50) NULL,
	[opt8] [nvarchar](50) NULL,
	[opt9] [nvarchar](50) NULL,
	[opt10] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
  

ALTER TABLE [dbo].[CurtainDetails] ADD  DEFAULT ((0)) FOR [RecordId]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ('') FOR [CurtainName]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ((0)) FOR [CurtainActive]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ('') FOR [CurtainUnit1]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ('') FOR [CurtainUnit2]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ('') FOR [CurtainUnit3]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ('') FOR [CurtainUnit4]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ('') FOR [CurtainUnit5]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ('') FOR [CurtainUnit6]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ('') FOR [CurtainUnit7]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ('') FOR [CurtainUnit8]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ('') FOR [CurtainUnit9]
GO
ALTER TABLE [dbo].[CurtainUnitOption] ADD  DEFAULT ('') FOR [CurtainUnit10]
GO
ALTER TABLE [dbo].[PosterSettings] ADD  CONSTRAINT [DF_PosterSettings_glassPrice]  DEFAULT ((0)) FOR [glassPrice]
GO
ALTER TABLE [dbo].[PosterSettings] ADD  CONSTRAINT [DF_PosterSettings_workPrice]  DEFAULT ((0)) FOR [workPrice]
GO

UPDATE Portals Set Version='2.0' 
GO

 
INSERT INTO [dbo].[ProductStokType] (StokTypeName, StokTypeUrl) VALUES (N'Cicek','')
INSERT INTO [dbo].[ProductStokType] (StokTypeName, StokTypeUrl) VALUES (N'Yemek','')
INSERT INTO [dbo].[ProductStokType] (StokTypeName, StokTypeUrl) VALUES (N'Perde','')
INSERT INTO [dbo].[ProductStokType] (StokTypeName, StokTypeUrl) VALUES (N'Poster','')