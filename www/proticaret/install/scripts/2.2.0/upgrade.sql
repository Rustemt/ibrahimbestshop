/****** Object:  Table [dbo].[OfferLog]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferLog](
	[OfferLogID] [int] IDENTITY(1,1) NOT NULL,
	[LogNo] [int] NULL,
	[PortalID] [int] NULL,
	[OfferTicket] [int] NOT NULL,
	[OfferStatus] [int] NULL,
	[RecordId] [int] NOT NULL,
	[ShoppingCartDefId] [int] NULL,
	[PriceId] [int] NULL,
	[Qty] [int] NOT NULL,
	[ProdId] [int] NOT NULL,
	[CampainId] [int] NULL,
	[ProductDiscountType] [int] NULL,
	[ProductSizeId] [int] NULL,
	[PersonID] [int] NULL,
	[Discount1] [int] NULL,
	[Discount2] [int] NULL,
	[Discount3] [int] NULL,
	[Discount4] [int] NULL,
	[Discount5] [int] NULL,
	[OfferTypeID] [int] NULL,
	[OfferPayTypeID] [int] NULL,
	[ProjectID] [int] NULL,
	[OfferSendID] [int] NULL,
	[UserID] [int] NULL,
	[StatuOrder] [int] NULL,
	[ProductDiscountAmount] [decimal](15, 2) NULL,
	[NewDesi] [decimal](15, 2) NULL,
	[ValueAdd] [decimal](15, 2) NULL,
	[ServicePrice] [decimal](15, 2) NULL,
	[TotalPrice] [decimal](15, 2) NULL,
	[DiscTotPrice] [decimal](15, 2) NULL,
	[NetTotPrice] [decimal](15, 2) NULL,
	[KdvRate] [decimal](15, 2) NULL,
	[KdvNetTotPrice] [decimal](15, 2) NULL,
	[OfferTotal] [decimal](15, 2) NULL,
	[DeepDisc1] [decimal](15, 2) NULL,
	[DeepDisc2] [decimal](15, 2) NULL,
	[DeepDisc3] [decimal](15, 2) NULL,
	[DeepDisc4] [decimal](15, 2) NULL,
	[DeepDiscTotal] [decimal](15, 2) NULL,
	[OfferPrice] [decimal](15, 2) NULL,
	[DateCreated] [date] NOT NULL,
	[ValidDate] [date] NULL,
	[SendDate] [date] NULL,
	[DeliveryDate] [date] NULL,
	[NowDate] [datetime] NULL,
	[CartId] [nvarchar](50) NOT NULL,
	[OfferNote] [nvarchar](300) NULL,
	[Attributes] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[Note] [nvarchar](200) NULL,
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
	[AdminApproval] [bit] NULL,
	[OfferStatu] [bit] NULL,
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
 CONSTRAINT [PK_OfferLog] PRIMARY KEY CLUSTERED 
(
	[OfferLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OfferOpt]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferOpt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferOpt](
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
 CONSTRAINT [PK_OfferOpt] PRIMARY KEY CLUSTERED 
(
	[ServicesFormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OfferOptDetail]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferOptDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferOptDetail](
	[OptDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ServicesSubOpt] [nvarchar](50) NOT NULL,
	[SubOptLevel] [tinyint] NULL,
 CONSTRAINT [PK_OfferOptDetail] PRIMARY KEY CLUSTERED 
(
	[OptDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OfferOrders]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferOrders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferOrders](
	[OfferOrderID] [int] IDENTITY(1,1) NOT NULL,
	[PortalID] [int] NULL,
	[OfferTicket] [int] NOT NULL,
	[OfferStatus] [int] NULL,
	[RecordId] [int] NOT NULL,
	[ShoppingCartDefId] [int] NULL,
	[PriceId] [int] NULL,
	[Qty] [int] NOT NULL,
	[ProdId] [int] NOT NULL,
	[CampainId] [int] NULL,
	[ProductDiscountType] [int] NULL,
	[ProductSizeId] [int] NULL,
	[PersonID] [int] NULL,
	[Discount1] [int] NULL,
	[Discount2] [int] NULL,
	[Discount3] [int] NULL,
	[Discount4] [int] NULL,
	[Discount5] [int] NULL,
	[OfferTypeID] [int] NULL,
	[OfferPayTypeID] [int] NULL,
	[ProjectID] [int] NULL,
	[OfferSendID] [int] NULL,
	[ProductDiscountAmount] [decimal](15, 2) NULL,
	[NewDesi] [decimal](15, 2) NULL,
	[ValueAdd] [decimal](15, 2) NULL,
	[ServicePrice] [decimal](15, 2) NULL,
	[TotalPrice] [decimal](15, 2) NULL,
	[DiscTotPrice] [decimal](15, 2) NULL,
	[NetTotPrice] [decimal](15, 2) NULL,
	[KdvRate] [decimal](15, 2) NULL,
	[KdvNetTotPrice] [decimal](15, 2) NULL,
	[OfferTotal] [decimal](15, 2) NULL,
	[GenTotal] [decimal](15, 2) NULL,
	[DeepDisc1] [decimal](15, 2) NULL,
	[DeepDisc2] [decimal](15, 2) NULL,
	[DeepDisc3] [decimal](15, 2) NULL,
	[DeepDisc4] [decimal](15, 2) NULL,
	[DeepDiscTotal] [decimal](15, 2) NULL,
	[DeepGenDiscTotal1] [decimal](15, 2) NULL,
	[DeepDiscTotal1] [decimal](15, 2) NULL,
	[DeepDiscKdv1] [decimal](15, 2) NULL,
	[DeepGenDiscTotal2] [decimal](15, 2) NULL,
	[DeepDiscTotal2] [decimal](15, 2) NULL,
	[DeepDiscKdv2] [decimal](15, 2) NULL,
	[DeepGenDiscTotal3] [decimal](15, 2) NULL,
	[DeepDiscTotal3] [decimal](15, 2) NULL,
	[DeepGenDiscTotal4] [decimal](15, 2) NULL,
	[DeepDiscTotal4] [decimal](15, 2) NULL,
	[OfferPrice] [decimal](15, 2) NULL,
	[DateCreated] [date] NULL,
	[ValidDate] [date] NULL,
	[SendDate] [date] NULL,
	[DeliveryDate] [date] NULL,
	[CartId] [nvarchar](50) NOT NULL,
	[OfferNote] [nvarchar](300) NULL,
	[Attributes] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[Note] [nvarchar](200) NULL,
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
	[AdminApproval] [bit] NULL,
	[OfferStatu] [bit] NULL,
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
 CONSTRAINT [PK__OfferOrd__6AB6C3BF8E91EB7E] PRIMARY KEY CLUSTERED 
(
	[OfferOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OfferPayType]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferPayType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferPayType](
	[OfferPayTypeID] [int] IDENTITY(1,1) NOT NULL,
	[OfferPayCode] [nvarchar](50) NULL,
	[OfferPayName] [nvarchar](50) NULL,
	[OfferPayDesc] [nvarchar](200) NULL,
 CONSTRAINT [PK_OfferPayType] PRIMARY KEY CLUSTERED 
(
	[OfferPayTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OfferPerson]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferPerson]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferPerson](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[PersonCode] [nvarchar](50) NULL,
	[PersonName] [nvarchar](50) NULL,
	[PersonTitle] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OfferProject]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferProject]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferProject](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectNo] [int] NULL,
	[ProjectCode] [nvarchar](50) NULL,
	[ProjectName] [nvarchar](100) NULL,
	[ProjectCompany] [nvarchar](100) NULL,
	[ProjectAdmin] [nvarchar](50) NULL,
	[ProjectStartDate] [date] NULL,
	[ProjectFinishDate] [date] NULL,
 CONSTRAINT [PK_OfferProject] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OfferSend]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferSend]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferSend](
	[OfferSendID] [int] IDENTITY(1,1) NOT NULL,
	[OfferSendCode] [nvarchar](50) NULL,
	[OfferSendName] [nvarchar](50) NULL,
	[OfferSendDesc] [nvarchar](200) NULL,
 CONSTRAINT [PK_OfferSend] PRIMARY KEY CLUSTERED 
(
	[OfferSendID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OfferStatune]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferStatune]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferStatune](
	[OfferStatusID] [int] IDENTITY(1,1) NOT NULL,
	[OfferStatusCode] [nvarchar](50) NULL,
	[OfferStatusName] [nvarchar](50) NULL,
	[OfferStatusDesc] [nvarchar](200) NULL,
	[OfferAccep] [bit] NULL,
 CONSTRAINT [PK__OfferSta__ECBDB38824E305A9] PRIMARY KEY CLUSTERED 
(
	[OfferStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OfferType]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferType](
	[OfferTypeID] [int] IDENTITY(1,1) NOT NULL,
	[OfferTypeCode] [nvarchar](50) NULL,
	[OfferTypeName] [nvarchar](50) NULL,
	[OfferTypeDesc] [nvarchar](200) NULL,
 CONSTRAINT [PK__OfferTyp__E029FA4E242E7BA1] PRIMARY KEY CLUSTERED 
(
	[OfferTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductWholeCart]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductWholeCart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductWholeCart](
	[WholeID] [int] IDENTITY(1,1) NOT NULL,
	[recordID] [int] NULL,
	[ColorID] [int] NULL,
	[SizeID] [int] NULL,
	[WholeQty] [int] NULL,
	[UserId] [nchar](50) NULL,
	[Product] [int] NULL,
 CONSTRAINT [PK_ProductWholeCart] PRIMARY KEY CLUSTERED 
(
	[WholeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductWholeOrder]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductWholeOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductWholeOrder](
	[WholeID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDetailsID] [int] NULL,
	[ColorID] [int] NULL,
	[SizeID] [int] NULL,
	[WholeQty] [int] NULL,
 CONSTRAINT [PK_ProductWholeOrder] PRIMARY KEY CLUSTERED 
(
	[WholeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SaleArea]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleArea]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SaleArea](
	[areaId] [int] IDENTITY(1,1) NOT NULL,
	[areaCode] [nvarchar](20) NULL,
	[areaName] [nvarchar](50) NULL,
 CONSTRAINT [PK_SaleArea] PRIMARY KEY CLUSTERED 
(
	[areaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SaleGroup]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SaleGroup](
	[groupId] [int] IDENTITY(1,1) NOT NULL,
	[groupCode] [nvarchar](20) NULL,
	[placeId] [int] NULL,
	[areaId] [int] NULL,
	[groupName] [nvarchar](50) NULL,
 CONSTRAINT [PK_SaleGroup] PRIMARY KEY CLUSTERED 
(
	[groupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SaleOrders]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleOrders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SaleOrders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PlasiyerId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
 CONSTRAINT [PK_SaleOrders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SalePlace]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalePlace]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SalePlace](
	[placeId] [int] IDENTITY(1,1) NOT NULL,
	[placeCode] [nvarchar](20) NULL,
	[areaId] [int] NULL,
	[placeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_SalePlace] PRIMARY KEY CLUSTERED 
(
	[placeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SalePlasiyerAuthority]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalePlasiyerAuthority]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SalePlasiyerAuthority](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlasiyerId] [int] NOT NULL,
	[AddMember] [bit] NOT NULL,
	[DeleteMember] [bit] NOT NULL,
	[ViewMemberDeatails] [bit] NOT NULL,
	[UpdateOrderState] [bit] NOT NULL,
	[Prim] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_SalePlasiyerAuthority] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SalePlasiyerUser]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalePlasiyerUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SalePlasiyerUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[PlasiyerId] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SaleUserGroup]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleUserGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SaleUserGroup](
	[IND] [int] IDENTITY(1,1) NOT NULL,
	[groupId] [int] NULL,
	[userId] [int] NULL,
 CONSTRAINT [PK_SaleUserGroup] PRIMARY KEY CLUSTERED 
(
	[IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesBrand]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesCart]    Script Date: 24.02.2014 12:16:24 ******/
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
	[Unit] [nvarchar](20) NULL,
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
 CONSTRAINT [PK__Services__F0077BFFE7FD9B31] PRIMARY KEY CLUSTERED 
(
	[ServicesCartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesCategory]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesCenter]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesDepartment]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesDevice]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesFault]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesFormOpt]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesJob]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesJobGroup]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesModel]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesOptDetail]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesOrder]    Script Date: 24.02.2014 12:16:24 ******/
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
	[ServicesStatus] [tinyint] NULL,
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
PRIMARY KEY CLUSTERED 
(
	[ServicesOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ServicesPlaint]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesProject]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesResault]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesSection]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesSubCategory]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[ServicesType]    Script Date: 24.02.2014 12:16:24 ******/
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
/****** Object:  Table [dbo].[SupportCategory]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupportCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SupportCategory](
	[SupportCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SupportCategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_SupportCategory] PRIMARY KEY CLUSTERED 
(
	[SupportCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SupportComments]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupportComments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SupportComments](
	[SupportCommentId] [int] IDENTITY(1,1) NOT NULL,
	[SupportRequestId] [int] NULL,
	[Title] [nvarchar](255) NULL,
	[Message] [ntext] NULL,
	[AnswerUserId] [int] NULL,
	[IsAnswer] [bit] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_SupportComments] PRIMARY KEY CLUSTERED 
(
	[SupportCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SupportCommentsOtherMails]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupportCommentsOtherMails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SupportCommentsOtherMails](
	[SupportCommentId] [int] IDENTITY(1,1) NOT NULL,
	[SupportRequestId] [int] NULL,
	[Title] [nvarchar](255) NULL,
	[Message] [ntext] NULL,
	[AnswerUserId] [int] NULL,
	[IsAnswer] [bit] NULL,
	[Date] [datetime] NULL,
	[ozel1] [nvarchar](50) NULL,
	[ozel2] [nvarchar](50) NULL,
	[ozel3] [nvarchar](50) NULL,
 CONSTRAINT [PK_SupportCommentsOtherMails] PRIMARY KEY CLUSTERED 
(
	[SupportCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SupportOtherMails]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupportOtherMails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SupportOtherMails](
	[MailId] [int] IDENTITY(1,1) NOT NULL,
	[MailPopServer] [nvarchar](50) NOT NULL,
	[MailSmtpServer] [nvarchar](50) NOT NULL,
	[MailSmtpPort] [int] NOT NULL,
	[MailPop3Port] [int] NOT NULL,
	[MailSsl] [bit] NOT NULL,
	[MailUserName] [nvarchar](50) NOT NULL,
	[MailPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SupportOrderMails] PRIMARY KEY CLUSTERED 
(
	[MailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SupportRequests]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupportRequests]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SupportRequests](
	[SupportId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserMail] [nvarchar](50) NULL,
	[Title] [nvarchar](max) NULL,
	[IsPayed] [bit] NULL,
	[SupportStatusId] [int] NULL,
	[SupportCategoryId] [int] NULL,
	[AssignedUserId] [int] NULL,
	[Priority] [int] NULL,
	[IsSupport] [bit] NULL,
	[StartDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Alan1] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SupportRequests] PRIMARY KEY CLUSTERED 
(
	[SupportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SupportRequestsOtherMail]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupportRequestsOtherMail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SupportRequestsOtherMail](
	[SupportId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserMail] [nvarchar](50) NULL,
	[Title] [nvarchar](max) NULL,
	[IsPayed] [bit] NULL,
	[SupportStatusId] [int] NULL,
	[SupportCategoryId] [int] NULL,
	[AssignedUserId] [int] NULL,
	[Priority] [int] NULL,
	[IsSupport] [bit] NULL,
	[StartDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[MailId] [int] NULL,
 CONSTRAINT [PK_SupportRequestsOtherMail] PRIMARY KEY CLUSTERED 
(
	[SupportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SupportStatus]    Script Date: 24.02.2014 12:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupportStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SupportStatus](
	[SupportStatusId] [int] IDENTITY(1,1) NOT NULL,
	[SupportStatusName] [nvarchar](100) NULL,
 CONSTRAINT [PK_SupportStatus] PRIMARY KEY CLUSTERED 
(
	[SupportStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_LogNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_LogNo]  DEFAULT ((0)) FOR [LogNo]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_PortalID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_PortalID]  DEFAULT ((0)) FOR [PortalID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_OfferStatus]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_OfferStatus]  DEFAULT ((1)) FOR [OfferStatus]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_Qty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_Qty]  DEFAULT ((1)) FOR [Qty]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ProductDiscountType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ProductDiscountType]  DEFAULT ((-1)) FOR [ProductDiscountType]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ProductSizeId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ProductSizeId]  DEFAULT ((0)) FOR [ProductSizeId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_Discount1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_Discount1]  DEFAULT ((0)) FOR [Discount1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_Discount2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_Discount2]  DEFAULT ((0)) FOR [Discount2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_Discount3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_Discount3]  DEFAULT ((0)) FOR [Discount3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_Discount4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_Discount4]  DEFAULT ((0)) FOR [Discount4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_Discount5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_Discount5]  DEFAULT ((0)) FOR [Discount5]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_OfferTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_OfferTypeID]  DEFAULT ((0)) FOR [OfferTypeID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_OfferPayTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_OfferPayTypeID]  DEFAULT ((0)) FOR [OfferPayTypeID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ProjectID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ProjectID]  DEFAULT ((0)) FOR [ProjectID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_OfferSendID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_OfferSendID]  DEFAULT ((0)) FOR [OfferSendID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ProductDiscountAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ProductDiscountAmount]  DEFAULT ((0)) FOR [ProductDiscountAmount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_NewDesi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_NewDesi]  DEFAULT ((0)) FOR [NewDesi]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ValueAdd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ValueAdd]  DEFAULT ((0)) FOR [ValueAdd]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicePrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicePrice]  DEFAULT ((0)) FOR [ServicePrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_TotalPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_TotalPrice]  DEFAULT ((0)) FOR [TotalPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_DiscTotPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_DiscTotPrice]  DEFAULT ((0)) FOR [DiscTotPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_NetTotPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_NetTotPrice]  DEFAULT ((0)) FOR [NetTotPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_KdvRate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_KdvRate]  DEFAULT ((0)) FOR [KdvRate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_KdvNetTotPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_KdvNetTotPrice]  DEFAULT ((0)) FOR [KdvNetTotPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_OfferTotal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_OfferTotal]  DEFAULT ((0)) FOR [OfferTotal]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_OfferPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_OfferPrice]  DEFAULT ((0)) FOR [OfferPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt1]  DEFAULT ('') FOR [ServicesOpt1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt2]  DEFAULT ('') FOR [ServicesOpt2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt3]  DEFAULT ('') FOR [ServicesOpt3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt4]  DEFAULT ('') FOR [ServicesOpt4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt5]  DEFAULT ('') FOR [ServicesOpt5]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt6]  DEFAULT ('') FOR [ServicesOpt6]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt7]  DEFAULT ('') FOR [ServicesOpt7]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt8]  DEFAULT ('') FOR [ServicesOpt8]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt9]  DEFAULT ('') FOR [ServicesOpt9]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt10]  DEFAULT ('') FOR [ServicesOpt10]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_AdminApproval]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_AdminApproval]  DEFAULT ((0)) FOR [AdminApproval]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_OfferStatu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_OfferStatu]  DEFAULT ((0)) FOR [OfferStatu]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt11]  DEFAULT ('') FOR [ServicesOpt11]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt12]  DEFAULT ('') FOR [ServicesOpt12]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt13]  DEFAULT ('') FOR [ServicesOpt13]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt14]  DEFAULT ('') FOR [ServicesOpt14]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt15]  DEFAULT ('') FOR [ServicesOpt15]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt16]  DEFAULT ('') FOR [ServicesOpt16]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt17]  DEFAULT ('') FOR [ServicesOpt17]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt18]  DEFAULT ('') FOR [ServicesOpt18]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt19]  DEFAULT ('') FOR [ServicesOpt19]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferLog_ServicesOpt20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferLog] ADD  CONSTRAINT [DF_OfferLog_ServicesOpt20]  DEFAULT ('') FOR [ServicesOpt20]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesFormName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesFormName]  DEFAULT ('') FOR [ServicesFormName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt1]  DEFAULT ('') FOR [ServicesOpt1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt2]  DEFAULT ('') FOR [ServicesOpt2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt3]  DEFAULT ('') FOR [ServicesOpt3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt4]  DEFAULT ('') FOR [ServicesOpt4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt5]  DEFAULT ('') FOR [ServicesOpt5]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt6]  DEFAULT ('') FOR [ServicesOpt6]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt7]  DEFAULT ('') FOR [ServicesOpt7]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt8]  DEFAULT ('') FOR [ServicesOpt8]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt9]  DEFAULT ('') FOR [ServicesOpt9]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt10]  DEFAULT ('') FOR [ServicesOpt10]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt11]  DEFAULT ('') FOR [ServicesOpt11]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt12]  DEFAULT ('') FOR [ServicesOpt12]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt13]  DEFAULT ('') FOR [ServicesOpt13]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt14]  DEFAULT ('') FOR [ServicesOpt14]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt15]  DEFAULT ('') FOR [ServicesOpt15]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt16]  DEFAULT ('') FOR [ServicesOpt16]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt17]  DEFAULT ('') FOR [ServicesOpt17]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt18]  DEFAULT ('') FOR [ServicesOpt18]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt19]  DEFAULT ('') FOR [ServicesOpt19]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOpt_ServicesOpt20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOpt] ADD  CONSTRAINT [DF_OfferOpt_ServicesOpt20]  DEFAULT ('') FOR [ServicesOpt20]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOptDetail_ServicesSubOpt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOptDetail] ADD  CONSTRAINT [DF_OfferOptDetail_ServicesSubOpt]  DEFAULT ('') FOR [ServicesSubOpt]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_PortalID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_PortalID]  DEFAULT ((0)) FOR [PortalID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__Offer__147C05D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__Offer__147C05D0]  DEFAULT ((1)) FOR [OfferStatus]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_PriceId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_PriceId]  DEFAULT ((0)) FOR [PriceId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrders__Qty__15702A09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrders__Qty__15702A09]  DEFAULT ((1)) FOR [Qty]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__Produ__1758727B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__Produ__1758727B]  DEFAULT ((-1)) FOR [ProductDiscountType]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__Produ__1B29035F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__Produ__1B29035F]  DEFAULT ((0)) FOR [ProductSizeId]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_PersonID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_PersonID]  DEFAULT ((0)) FOR [PersonID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__Disco__1E05700A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__Disco__1E05700A]  DEFAULT ((0)) FOR [Discount1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__Disco__1EF99443]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__Disco__1EF99443]  DEFAULT ((0)) FOR [Discount2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__Disco__1FEDB87C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__Disco__1FEDB87C]  DEFAULT ((0)) FOR [Discount3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__Disco__20E1DCB5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__Disco__20E1DCB5]  DEFAULT ((0)) FOR [Discount4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__Disco__21D600EE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__Disco__21D600EE]  DEFAULT ((0)) FOR [Discount5]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_OfferTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_OfferTypeID]  DEFAULT ((0)) FOR [OfferTypeID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_OfferPayTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_OfferPayTypeID]  DEFAULT ((0)) FOR [OfferPayTypeID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ProjectID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ProjectID]  DEFAULT ((0)) FOR [ProjectID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_OfferSendID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_OfferSendID]  DEFAULT ((0)) FOR [OfferSendID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__Produ__184C96B4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__Produ__184C96B4]  DEFAULT ((0)) FOR [ProductDiscountAmount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__NewDe__1A34DF26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__NewDe__1A34DF26]  DEFAULT ((0)) FOR [NewDesi]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__Value__1940BAED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__Value__1940BAED]  DEFAULT ((0)) FOR [ValueAdd]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__Servi__1D114BD1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__Servi__1D114BD1]  DEFAULT ((0)) FOR [ServicePrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_TotalPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_TotalPrice]  DEFAULT ((0)) FOR [TotalPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__DiscT__22CA2527]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__DiscT__22CA2527]  DEFAULT ((0)) FOR [DiscTotPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__NetTo__23BE4960]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__NetTo__23BE4960]  DEFAULT ((0)) FOR [NetTotPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_KdvRate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_KdvRate]  DEFAULT ((0)) FOR [KdvRate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_KdvNetTotPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_KdvNetTotPrice]  DEFAULT ((0)) FOR [KdvNetTotPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_GenTotal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_GenTotal]  DEFAULT ((0)) FOR [GenTotal]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepDisc1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepDisc1]  DEFAULT ((0)) FOR [DeepDisc1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepDisc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepDisc2]  DEFAULT ((0)) FOR [DeepDisc2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepDisc3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepDisc3]  DEFAULT ((0)) FOR [DeepDisc3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepDisc4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepDisc4]  DEFAULT ((0)) FOR [DeepDisc4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepDiscTotal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepDiscTotal]  DEFAULT ((0)) FOR [DeepDiscTotal]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepGenDiscTotal1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepGenDiscTotal1]  DEFAULT ((0)) FOR [DeepGenDiscTotal1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepDiscTotal1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepDiscTotal1]  DEFAULT ((0)) FOR [DeepDiscTotal1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepDiscKdv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepDiscKdv1]  DEFAULT ((0)) FOR [DeepDiscKdv1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepGenDiscTotal2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepGenDiscTotal2]  DEFAULT ((0)) FOR [DeepGenDiscTotal2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepDiscTotal2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepDiscTotal2]  DEFAULT ((0)) FOR [DeepDiscTotal2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepDiscKdv2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepDiscKdv2]  DEFAULT ((0)) FOR [DeepDiscKdv2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepGenDiscTotal11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepGenDiscTotal11]  DEFAULT ((0)) FOR [DeepGenDiscTotal3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepDiscTotal11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepDiscTotal11]  DEFAULT ((0)) FOR [DeepDiscTotal3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepGenDiscTotal21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepGenDiscTotal21]  DEFAULT ((0)) FOR [DeepGenDiscTotal4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_DeepDiscTotal21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_DeepDiscTotal21]  DEFAULT ((0)) FOR [DeepDiscTotal4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_OfferPay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_OfferPay]  DEFAULT ((0)) FOR [OfferPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferOrde__DateC__16644E42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF__OfferOrde__DateC__16644E42]  DEFAULT (getdate()) FOR [DateCreated]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt1]  DEFAULT ('') FOR [ServicesOpt1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt2]  DEFAULT ('') FOR [ServicesOpt2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt3]  DEFAULT ('') FOR [ServicesOpt3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt4]  DEFAULT ('') FOR [ServicesOpt4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt5]  DEFAULT ('') FOR [ServicesOpt5]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt6]  DEFAULT ('') FOR [ServicesOpt6]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt7]  DEFAULT ('') FOR [ServicesOpt7]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt8]  DEFAULT ('') FOR [ServicesOpt8]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt9]  DEFAULT ('') FOR [ServicesOpt9]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt10]  DEFAULT ('') FOR [ServicesOpt10]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_AdminApproval]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_AdminApproval]  DEFAULT ((0)) FOR [AdminApproval]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_Statu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_Statu]  DEFAULT ((0)) FOR [OfferStatu]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt11]  DEFAULT ('') FOR [ServicesOpt11]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt12]  DEFAULT ('') FOR [ServicesOpt12]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt13]  DEFAULT ('') FOR [ServicesOpt13]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt14]  DEFAULT ('') FOR [ServicesOpt14]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt15]  DEFAULT ('') FOR [ServicesOpt15]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt16]  DEFAULT ('') FOR [ServicesOpt16]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt17]  DEFAULT ('') FOR [ServicesOpt17]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt18]  DEFAULT ('') FOR [ServicesOpt18]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt19]  DEFAULT ('') FOR [ServicesOpt19]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OfferOrders_ServicesOpt20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferOrders] ADD  CONSTRAINT [DF_OfferOrders_ServicesOpt20]  DEFAULT ('') FOR [ServicesOpt20]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__OfferStat__Offer__269AB60B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OfferStatune] ADD  CONSTRAINT [DF__OfferStat__Offer__269AB60B]  DEFAULT ((0)) FOR [OfferAccep]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SalePlasiyerAuthority_AddMember]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalePlasiyerAuthority] ADD  CONSTRAINT [DF_SalePlasiyerAuthority_AddMember]  DEFAULT ((0)) FOR [AddMember]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SalePlasiyerAuthority_DeleteMember]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalePlasiyerAuthority] ADD  CONSTRAINT [DF_SalePlasiyerAuthority_DeleteMember]  DEFAULT ((0)) FOR [DeleteMember]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SalePlasiyerAuthority_ViewMemberDeatails]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalePlasiyerAuthority] ADD  CONSTRAINT [DF_SalePlasiyerAuthority_ViewMemberDeatails]  DEFAULT ((0)) FOR [ViewMemberDeatails]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SalePlasiyerAuthority_UpdateOrderState]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalePlasiyerAuthority] ADD  CONSTRAINT [DF_SalePlasiyerAuthority_UpdateOrderState]  DEFAULT ((0)) FOR [UpdateOrderState]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SalePlasiyerAuthority_Prim]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalePlasiyerAuthority] ADD  CONSTRAINT [DF_SalePlasiyerAuthority_Prim]  DEFAULT ((0)) FOR [Prim]
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
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__652CE561]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesFormName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__6621099A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__67152DD3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__6809520C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__68FD7645]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__69F19A7E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt5]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__6AE5BEB7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt6]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__6BD9E2F0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt7]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__6CCE0729]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt8]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__6DC22B62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt9]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__6EB64F9B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt10]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__6FAA73D4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt11]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__709E980D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt12]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__7192BC46]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt13]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__7286E07F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt14]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__737B04B8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt15]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__746F28F1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt16]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__75634D2A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt17]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__76577163]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt18]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__774B959C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt19]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesF__Servi__783FB9D5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesFormOpt] ADD  DEFAULT ('') FOR [ServicesOpt20]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__7933DE0E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOptDetail] ADD  DEFAULT ('') FOR [ServicesSubOpt]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__porta__7A280247]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ((0)) FOR [portalID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__SaveD__7B1C2680]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [SaveDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Accep__7C104AB9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [AcceptDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Total__7D046EF2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ((0)) FOR [TotalPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__7DF8932B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__7EECB764]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__7FE0DB9D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__00D4FFD6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt4]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__01C9240F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt5]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__02BD4848]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt6]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__03B16C81]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt7]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__04A590BA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt8]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0599B4F3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt9]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__068DD92C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt10]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0781FD65]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt11]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0876219E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt12]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__096A45D7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt13]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0A5E6A10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt14]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0B528E49]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt15]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0C46B282]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt16]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0D3AD6BB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt17]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0E2EFAF4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt18]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__0F231F2D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt19]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ServicesO__Servi__10174366]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServicesOrder] ADD  DEFAULT ('') FOR [ServicesOpt20]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SupportCommentsOtherMails_ozel1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SupportCommentsOtherMails] ADD  CONSTRAINT [DF_SupportCommentsOtherMails_ozel1]  DEFAULT ('') FOR [ozel1]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SupportCommentsOtherMails_ozel2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SupportCommentsOtherMails] ADD  CONSTRAINT [DF_SupportCommentsOtherMails_ozel2]  DEFAULT ('') FOR [ozel2]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SupportCommentsOtherMails_ozel3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SupportCommentsOtherMails] ADD  CONSTRAINT [DF_SupportCommentsOtherMails_ozel3]  DEFAULT ('') FOR [ozel3]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_SupportRequests_Alan1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SupportRequests] ADD  CONSTRAINT [DF_SupportRequests_Alan1]  DEFAULT ('') FOR [Alan1]
END

GO

/****** Object:  Table [dbo].[Person]    Script Date: 24.02.2014 15:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Person]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[PersonCode] [nvarchar](50) NULL,
	[PersonName] [nvarchar](50) NULL,
	[PersonTitle] [nvarchar](50) NULL,
	[ServicesID] [int] NULL,
	[DepartmentID] [int] NULL,
	[PersonStatus] [tinyint] NULL,
	[JobGroupID] [int] NULL,
	[Services] [bit] NULL,
	[Offer] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesPerson_Services]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [DF_ServicesPerson_Services]  DEFAULT ((0)) FOR [Services]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServicesPerson_Offer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [DF_ServicesPerson_Offer]  DEFAULT ((0)) FOR [Offer]
END

GO


--UPDATE TABLE COLUMNS


INSERT INTO [dbo].[ProductStokType] (StokTypeName, StokTypeUrl) VALUES (N'Toptan','')

ALTER TABLE [dbo].[Orders] ADD [BankId] [int]  NOT  NULL  DEFAULT 0
GO

ALTER TABLE [dbo].[Banks] ADD [Section] [int]  NOT  NULL  DEFAULT 1
GO

ALTER TABLE [dbo].[Campains] ADD [IsForProduct] [bit]  NOT  NULL  DEFAULT 0
GO

ALTER TABLE [dbo].[Campains] ADD [MaxGift] [int]  NOT  NULL  DEFAULT 0
GO


ALTER TABLE [dbo].[ProductSizes] ADD [StockQty2] [int]  NOT  NULL  DEFAULT 1
GO

ALTER TABLE [dbo].[ProductSizes] ADD [StockCheck] [bit]  NOT  NULL  DEFAULT 0
GO

ALTER TABLE [dbo].[ProductSizes] ADD [StockChange] [bit]  NOT  NULL  DEFAULT 0
GO

DROP VIEW [dbo].[ProductSizeList]

GO

/****** Object:  View [dbo].[ProductSizeList]    Script Date: 14.02.2014 11:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[ProductSizeList]
AS
SELECT        dbo.ProductSizes.ProductSizeId, dbo.ProductSizes.ProductId, dbo.ProductSizes.ProductSizeOptionId, dbo.ProductSizeOptions.ProductSizeOptionName, 
                         dbo.ProductSizeOptionsValues.ProductSizeOptionsValueName AS Size0Name, dbo.ProductSizeOptionsValues.ProductSizeOptionsPath AS Size0Path, ISNULL(dbo.ProductImages.ImageId, 0) AS ProductImageId, 
                         ProductSizeOptionsValues_1.ProductSizeOptionsValueName AS Size1Name, ProductSizeOptionsValues_2.ProductSizeOptionsValueName AS Size2Name, dbo.ProductSizes.StockQty, dbo.ProductSizes.Barcode, 
                         dbo.ProductImages.Path AS ProductImagePath, dbo.ProductSizeOptions.ProductSize0Active, dbo.ProductSizeOptions.ProductSize1Active, dbo.ProductSizeOptions.ProductSize2Active, dbo.Products.ProductCode, 
                         dbo.ProductSizeOptions.ProductSize0Name, dbo.ProductSizeOptions.ProductSize1Name, dbo.ProductSizeOptions.ProductSize2Name, dbo.ProductSizes.ProductSize0ValueId, 
                         dbo.ProductSizes.ProductSize1ValueId, dbo.ProductSizes.ProductSize2ValueId, dbo.ProductSizes.StockQty2, dbo.ProductSizes.StockChange, dbo.ProductSizes.StockCheck
FROM            dbo.ProductSizes INNER JOIN
                         dbo.ProductSizeOptions ON dbo.ProductSizes.ProductSizeOptionId = dbo.ProductSizeOptions.ProductSizeOptionId INNER JOIN
                         dbo.ProductSizeOptionsValues ON dbo.ProductSizes.ProductSize0ValueId = dbo.ProductSizeOptionsValues.ProductSizeOptionsValueId INNER JOIN
                         dbo.Products ON dbo.ProductSizes.ProductId = dbo.Products.ProductId LEFT OUTER JOIN
                         dbo.ProductSizeOptionsValues AS ProductSizeOptionsValues_1 ON dbo.ProductSizes.ProductSize1ValueId = ProductSizeOptionsValues_1.ProductSizeOptionsValueId LEFT OUTER JOIN
                         dbo.ProductSizeOptionsValues AS ProductSizeOptionsValues_2 ON dbo.ProductSizes.ProductSize2ValueId = ProductSizeOptionsValues_2.ProductSizeOptionsValueId LEFT OUTER JOIN
                         dbo.ProductImages ON dbo.ProductSizes.ProductImageId = dbo.ProductImages.ImageId

GO

ALTER PROCEDURE [dbo].[AddBank3da]
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
IF NOT EXISTS ( select * from Banks where BankName=@BankName and PortalId=@PortalId )
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

/****** Object:  Trigger [dbo].[trg_updateCompanyCode]    Script Date: 24.02.2014 12:53:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[trg_updateCompanyCode]
   ON  [dbo].[users]
   AFTER INSERT
AS 
BEGIN

declare @UserID bigint
	select @UserID  = max(UserId) from users
update users set CompanyCode =convert(nvarchar(100),@UserID) + Name where UserId = @UserID and CompanyCode = ''
END

GO

SET IDENTITY_INSERT [dbo].[SupportStatus] ON
INSERT [dbo].[SupportStatus] ([SupportStatusId], [SupportStatusName]) VALUES (-4, N'İptal')
INSERT [dbo].[SupportStatus] ([SupportStatusId], [SupportStatusName]) VALUES (-3, N'Kapandı')
INSERT [dbo].[SupportStatus] ([SupportStatusId], [SupportStatusName]) VALUES (-2, N'Destek Bekliyor')
INSERT [dbo].[SupportStatus] ([SupportStatusId], [SupportStatusName]) VALUES (-1, N'Beklemede')
INSERT [dbo].[SupportStatus] ([SupportStatusId], [SupportStatusName]) VALUES (1, N'Üzerine Çalışılıyor')
SET IDENTITY_INSERT [dbo].[SupportStatus] OFF

SET IDENTITY_INSERT [dbo].[SupportCategory] ON
INSERT [dbo].[SupportCategory] ([SupportCategoryId], [SupportCategoryName]) VALUES (-4, N'Diğer')
SET IDENTITY_INSERT [dbo].[SupportCategory] OFF

DROP PROCEDURE [dbo].[ImportUser1]


/****** Object:  StoredProcedure [dbo].[ImportUser1]    Script Date: 26.02.2014 14:46:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ImportUser1]
(
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
)
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
 
/****** Object:  StoredProcedure [dbo].[OrdersAdd6]    Script Date: 27.02.2014 14:35:10 ******/
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

--ShoppingCartList 1 ,'N' 




UPDATE Portals Set Version='2.2.0' 