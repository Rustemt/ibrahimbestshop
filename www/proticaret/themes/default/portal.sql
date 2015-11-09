--Declare @PortalId int
--Set @PortalId=0
Update Portals set BannerHtml=N'',FotterHtml=N'',Template='default' where PortalId=@PortalId
go
Delete Tabs where PortalId=@PortalId
go
SET IDENTITY_INSERT Tabs ON
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (100,1,@PortalId,N'Anasayfa',N'',N'Tüm Kullanıcılar;',0,NULL,N'',1,N'',N'',N'',1,N'~/default.aspx',N'/icerik/anasayfa/',N'/100/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (101,9,@PortalId,N'Facebook',N'',N'Yöneticiler;',0,NULL,N'',1,N'',N'',N'',1,N'~/facebook/default.aspx',N'/icerik/facebook/',N'/101/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (103,3,@PortalId,N'Hesabım',N'',N'Tüm Kullanıcılar;',0,NULL,N'',1,N'',N'',N'',1,N'~/account.aspx',N'/icerik/hesabim/',N'/103/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (104,5,@PortalId,N'İletişim',N'',N'Tüm Kullanıcılar;',0,NULL,N'',1,N'',N'',N'',1,N'~/contact.aspx',N'/icerik/iletisim/',N'/104/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (105,7,@PortalId,N'Yardım',N'',N'Tüm Kullanıcılar;',0,NULL,N'',1,N'',N'',N'',0,N'',N'/icerik/yardim/',N'/105/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (106,11,@PortalId,N'Raporlar',N'',N'Yöneticiler;',0,NULL,N'',0,N'',N'',N'',0,N'',N'/icerik/raporlar/',N'/106/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (107,13,@PortalId,N'Kullanıcı Raporları',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/kullanici-raporlari/',N'/106/107/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (108,15,@PortalId,N'Ürün Raporları',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/urun-raporlari/',N'/106/108/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (109,17,@PortalId,N'Sipariş Raporları',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/siparis-raporlari/',N'/106/109/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (110,19,@PortalId,N'Sepet Raporları (Adet)',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/sepet-raporlari--adet-/',N'/106/110/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (111,21,@PortalId,N'Sepet Raporları (Fiyat)',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/sepet-raporlari--fiyat-/',N'/106/111/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (112,23,@PortalId,N'Banka Taksit Raporları',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/banka-taksit-raporlari/',N'/106/112/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (113,25,@PortalId,N'Satış Raporları',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/satis-raporlari/',N'/106/113/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (114,27,@PortalId,N'Arama',N'',N'Tüm Kullanıcılar;',0,NULL,N'',1,N'',N'',N'',0,N'',N'/icerik/arama/',N'/114/',0)
SET IDENTITY_INSERT Tabs OFF
GO

SET IDENTITY_INSERT Modules ON
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (283,100,5,3,N'left',N'Banner',N'Yöneticiler;',0,0,0,0,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (310,100,172,1,N'middle_center',N'Vitrin',N'Yöneticiler',0,0,0,0,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (305,100,5,5,N'left',N'Banner1',N'Yöneticiler;',0,0,0,0,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (306,100,5,7,N'left',N'Banner2',N'Yöneticiler;',0,0,0,0,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (309,100,5,11,N'left',N'Banner4',N'Yöneticiler',0,0,0,0,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (301,100,169,1,N'top_center',N'Slider',N'Yöneticiler;',0,0,0,0,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (308,100,5,9,N'left',N'Banner3',N'Yöneticiler',0,0,0,0,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (312,100,173,1,N'left',N'Kategoriler',N'Yöneticiler',0,0,0,0,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (313,100,174,1,N'top_right',N'Günün Ürünü',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (210,101,111,1,N'middle_left',N'Kategoriler',N'Yöneticiler;',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (211,101,113,1,N'middle_center',N'Navigasyon',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (212,101,112,3,N'middle_center',N'Ürünler',N'Yöneticiler;',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (217,103,5,1,N'middle_center',N'Hesabım',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (219,104,159,1,N'middle_left',N'İletişim Formu',N'Yöneticiler;',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (220,105,136,1,N'middle_center',N'Sıkça Sorulan Sorular',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (271,105,159,1,N'middle_left',N'Bize Sorun',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (272,107,114,1,N'middle_center',N'Kullanıcı Raporları',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (273,108,117,1,N'middle_center',N'Ürün Raporları',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (274,109,115,1,N'middle_center',N'Sipariş Raporları',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (275,110,118,1,N'middle_center',N'Sepet Raporları (Adet)',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (276,111,119,1,N'middle_center',N'Sepet Raporları (Fiyat)',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (277,112,120,1,N'middle_center',N'Banka Taksit Raporları',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (278,113,116,1,N'middle_center',N'Satış Raporları',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (279,114,121,1,N'middle_center',N'Arama',N'Yöneticiler',0,0,1,1,1)
SET IDENTITY_INSERT Modules OFF
GO




SET IDENTITY_INSERT Marquee ON
SET IDENTITY_INSERT Marquee OFF
GO

SET IDENTITY_INSERT Events ON
SET IDENTITY_INSERT Events OFF
GO


SET IDENTITY_INSERT QuestionMaster ON
SET IDENTITY_INSERT QuestionMaster OFF
GO

SET IDENTITY_INSERT QuestionLookup ON
SET IDENTITY_INSERT QuestionLookup OFF
GO

SET IDENTITY_INSERT News ON
SET IDENTITY_INSERT News OFF
GO

SET IDENTITY_INSERT Contacts ON
SET IDENTITY_INSERT Contacts OFF
GO

SET IDENTITY_INSERT Links ON
SET IDENTITY_INSERT Links OFF
GO

SET IDENTITY_INSERT Documents ON
SET IDENTITY_INSERT Documents OFF
GO

SET IDENTITY_INSERT Announcements ON
SET IDENTITY_INSERT Announcements OFF
GO

SET IDENTITY_INSERT Discussion ON
SET IDENTITY_INSERT Discussion OFF
GO

go
Delete Slider where PortalId=@PortalId
go
SET IDENTITY_INSERT Slider ON
SET IDENTITY_INSERT Slider OFF
GO

