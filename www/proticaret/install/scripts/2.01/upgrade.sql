UPDATE Portals Set Version='2.1' 


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

GO
/****** Object:  Table [dbo].[SalePlasiyerAuthority]    Script Date: 29.11.2013 12:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[SalePlasiyerUser]    Script Date: 29.11.2013 12:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalePlasiyerUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[PlasiyerId] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SalePlasiyerAuthority] ADD  CONSTRAINT [DF_SalePlasiyerAuthority_AddMember]  DEFAULT ((0)) FOR [AddMember]
GO
ALTER TABLE [dbo].[SalePlasiyerAuthority] ADD  CONSTRAINT [DF_SalePlasiyerAuthority_DeleteMember]  DEFAULT ((0)) FOR [DeleteMember]
GO
ALTER TABLE [dbo].[SalePlasiyerAuthority] ADD  CONSTRAINT [DF_SalePlasiyerAuthority_ViewMemberDeatails]  DEFAULT ((0)) FOR [ViewMemberDeatails]
GO
ALTER TABLE [dbo].[SalePlasiyerAuthority] ADD  CONSTRAINT [DF_SalePlasiyerAuthority_UpdateOrderState]  DEFAULT ((0)) FOR [UpdateOrderState]
GO
ALTER TABLE [dbo].[SalePlasiyerAuthority] ADD  CONSTRAINT [DF_SalePlasiyerAuthority_Prim]  DEFAULT ((0)) FOR [Prim]
GO
