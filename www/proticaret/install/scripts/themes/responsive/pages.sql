
--ALTER TABLE AlarmList NOCHECK CONSTRAINT FK_AlarmList_Users
ALTER TABLE Announcements NOCHECK CONSTRAINT FK_Announcements_Modules
ALTER TABLE BankInfo NOCHECK CONSTRAINT FK_BankInfo_Banks
ALTER TABLE Banks NOCHECK CONSTRAINT FK_Banks_Portals
ALTER TABLE Banner NOCHECK CONSTRAINT FK_Banner_Portals
ALTER TABLE Billings NOCHECK CONSTRAINT FK_Billings_Users
ALTER TABLE Cargo NOCHECK CONSTRAINT FK_Cargo_Portals
ALTER TABLE CargoInfo NOCHECK CONSTRAINT FK_CargoInfo_Cargo
ALTER TABLE Categories NOCHECK CONSTRAINT FK_Categories_Portals
ALTER TABLE CategoryTopProducts NOCHECK CONSTRAINT FK_CategoryTopProducts_Modules
ALTER TABLE Contacts NOCHECK CONSTRAINT FK_Contacts_Modules
ALTER TABLE Counter NOCHECK CONSTRAINT FK_Counter_Portals
ALTER TABLE Coupons NOCHECK CONSTRAINT FK_Coupons_Portals
ALTER TABLE CRMActivitys NOCHECK CONSTRAINT FK_CRMActivitys_Portals
ALTER TABLE CRMActivityTypes NOCHECK CONSTRAINT FK_CRMActivityTypes_Portals
ALTER TABLE CRMActivityUsers NOCHECK CONSTRAINT FK_CRMActivityUsers_Portals
ALTER TABLE CRMCitys NOCHECK CONSTRAINT FK_CRMCitys_Portals
ALTER TABLE CRMCode1 NOCHECK CONSTRAINT FK_CRMCode1_Portals
ALTER TABLE CRMCode10 NOCHECK CONSTRAINT FK_CRMCode10_Portals
ALTER TABLE CRMCode2 NOCHECK CONSTRAINT FK_CRMCode2_Portals
ALTER TABLE CRMCode3 NOCHECK CONSTRAINT FK_CRMCode3_Portals
ALTER TABLE CRMCode4 NOCHECK CONSTRAINT FK_CRMCode4_Portals
ALTER TABLE CRMCode5 NOCHECK CONSTRAINT FK_CRMCode5_Portals
ALTER TABLE CRMCode6 NOCHECK CONSTRAINT FK_CRMCode6_Portals
ALTER TABLE CRMCode7 NOCHECK CONSTRAINT FK_CRMCode7_Portals
ALTER TABLE CRMCode8 NOCHECK CONSTRAINT FK_CRMCode8_Portals
ALTER TABLE CRMCode9 NOCHECK CONSTRAINT FK_CRMCode9_Portals
ALTER TABLE CRMCodeDef NOCHECK CONSTRAINT FK_CRMCodeDef_Portals
ALTER TABLE CRMCustomers NOCHECK CONSTRAINT FK_CRMCustomers_Portals
ALTER TABLE CRMProfessions NOCHECK CONSTRAINT FK_CRMProfessions_Portals
ALTER TABLE CRMProjects NOCHECK CONSTRAINT FK_CRMProjects_Portals
ALTER TABLE CRMProjectStates NOCHECK CONSTRAINT FK_CRMProjectStates_Portals
ALTER TABLE CRMProjectTypes NOCHECK CONSTRAINT FK_CRMProjectTypes_Portals
ALTER TABLE CRMResults NOCHECK CONSTRAINT FK_CRMResults_Portals
ALTER TABLE CRMSectors NOCHECK CONSTRAINT FK_CRMSectors_Portals
ALTER TABLE CRMStates NOCHECK CONSTRAINT FK_CRMStates_CRMCitys
ALTER TABLE CRMStatus NOCHECK CONSTRAINT FK_CRMStatus_Portals
ALTER TABLE CRMTasks NOCHECK CONSTRAINT FK_CRMTasks_Portals
ALTER TABLE Currencys NOCHECK CONSTRAINT FK_Currencys_Portals
ALTER TABLE Discussion NOCHECK CONSTRAINT FK_Discussion_Modules
ALTER TABLE Documents NOCHECK CONSTRAINT FK_Documents_Modules
ALTER TABLE ErrorLog NOCHECK CONSTRAINT FK_ErrorLog_Portals
ALTER TABLE Events NOCHECK CONSTRAINT FK_Events_Modules
ALTER TABLE EventsLog NOCHECK CONSTRAINT FK_EventsLog_Portals
ALTER TABLE FBankInfo NOCHECK CONSTRAINT FK_FBankInfo_FBanks
ALTER TABLE FBanks NOCHECK CONSTRAINT FK_FBanks_FCampains
ALTER TABLE FBanks NOCHECK CONSTRAINT FK_FBanks_Banks
ALTER TABLE Flash NOCHECK CONSTRAINT FK_Flash_Modules
ALTER TABLE ForumThreads NOCHECK CONSTRAINT FK_ForumThreads_Portals
ALTER TABLE ForumTopics NOCHECK CONSTRAINT FK_ForumTopics_Portals
ALTER TABLE HtmlText NOCHECK CONSTRAINT FK_HtmlText_Modules
ALTER TABLE Links NOCHECK CONSTRAINT FK_Links_Modules
ALTER TABLE Marquee NOCHECK CONSTRAINT FK_Marquee_Modules
ALTER TABLE Modules NOCHECK CONSTRAINT FK_Modules_Tabs
ALTER TABLE ModuleSettings NOCHECK CONSTRAINT FK_ModuleSettings_Modules
ALTER TABLE News NOCHECK CONSTRAINT FK_News_Modules
ALTER TABLE OrderDetails NOCHECK CONSTRAINT FK_OrderDetails_Orders
ALTER TABLE Orders NOCHECK CONSTRAINT FK_Orders_Portals
ALTER TABLE OrderStatus NOCHECK CONSTRAINT FK_OrderStatus_Portals
ALTER TABLE Payments NOCHECK CONSTRAINT FK_Payments_Portals
ALTER TABLE PayTypes NOCHECK CONSTRAINT FK_PayTypes_Portals
ALTER TABLE PopUpText NOCHECK CONSTRAINT FK_PopUpText_Modules
ALTER TABLE ProductAlternatives NOCHECK CONSTRAINT FK_ProductAlternatives_Products
ALTER TABLE ProductAttributes NOCHECK CONSTRAINT FK_ProductAttributes_Products
ALTER TABLE ProductAttributes NOCHECK CONSTRAINT FK_ProductAttributes_ProductOptionsValues
ALTER TABLE ProductCategories NOCHECK CONSTRAINT FK_ProductCategories_Categories
ALTER TABLE ProductCode1 NOCHECK CONSTRAINT FK_ProductCode1_Portals
ALTER TABLE ProductCode10 NOCHECK CONSTRAINT FK_ProductCode10_Portals
ALTER TABLE ProductCode11 NOCHECK CONSTRAINT FK_ProductCode11_Portals
ALTER TABLE ProductCode12 NOCHECK CONSTRAINT FK_ProductCode12_Portals
ALTER TABLE ProductCode13 NOCHECK CONSTRAINT FK_ProductCode13_Portals
ALTER TABLE ProductCode14 NOCHECK CONSTRAINT FK_ProductCode14_Portals
ALTER TABLE ProductCode15 NOCHECK CONSTRAINT FK_ProductCode15_Portals
ALTER TABLE ProductCode2 NOCHECK CONSTRAINT FK_ProductCode2_Portals
ALTER TABLE ProductCode3 NOCHECK CONSTRAINT FK_ProductCode3_Portals
ALTER TABLE ProductCode4 NOCHECK CONSTRAINT FK_ProductCode4_Portals
ALTER TABLE ProductCode5 NOCHECK CONSTRAINT FK_ProductCode5_Portals
ALTER TABLE ProductCode6 NOCHECK CONSTRAINT FK_ProductCode6_Portals
ALTER TABLE ProductCode7 NOCHECK CONSTRAINT FK_ProductCode7_Portals
ALTER TABLE ProductCode8 NOCHECK CONSTRAINT FK_ProductCode8_Portals
ALTER TABLE ProductCode9 NOCHECK CONSTRAINT FK_ProductCode9_Portals
ALTER TABLE ProductCompare NOCHECK CONSTRAINT FK_ProductCompare_Portals
ALTER TABLE ProductFiles NOCHECK CONSTRAINT FK_ProductFiles_Products
ALTER TABLE ProductImages NOCHECK CONSTRAINT FK_ProductImages_Products
ALTER TABLE ProductKdvs NOCHECK CONSTRAINT FK_ProductKdvs_Portals
ALTER TABLE ProductKeywords NOCHECK CONSTRAINT FK_ProductKeywords_Products
ALTER TABLE ProductMarks NOCHECK CONSTRAINT FK_ProductMarks_Portals
ALTER TABLE ProductOptionsValues NOCHECK CONSTRAINT FK_ProductOptionsValues_ProductOptions
ALTER TABLE ProductPropertys NOCHECK CONSTRAINT FK_ProductPropertys_Products
ALTER TABLE ProductUnits NOCHECK CONSTRAINT FK_ProductUnits_Products
ALTER TABLE ProductUsages NOCHECK CONSTRAINT FK_ProductUsages_Products
ALTER TABLE ProductWizardGroups NOCHECK CONSTRAINT FK_ProductWizardGroups_ProductWizards
ALTER TABLE ProductWizardItems NOCHECK CONSTRAINT FK_ProductWizardItems_ProductWizardGroups
ALTER TABLE ProductWizardLookups NOCHECK CONSTRAINT FK_ProductWizardLookups_ProductWizardItems
ALTER TABLE ProductWizards NOCHECK CONSTRAINT FK_ProductWizards_Portals
ALTER TABLE ProductWizardValues NOCHECK CONSTRAINT FK_ProductWizardValues_ProductWizardLookups
ALTER TABLE ProductWizardValues NOCHECK CONSTRAINT FK_ProductWizardValues_Products
ALTER TABLE QuestionLookup NOCHECK CONSTRAINT FK_QuestionLookup_QuestionMaster
ALTER TABLE QuestionMaster NOCHECK CONSTRAINT FK_QuestionMaster_Modules
ALTER TABLE Reviews NOCHECK CONSTRAINT FK_Reviews_Products
ALTER TABLE Roles NOCHECK CONSTRAINT FK_Roles_Portals
ALTER TABLE Shippings NOCHECK CONSTRAINT FK_Shippings_Users
ALTER TABLE ShoppingCart NOCHECK CONSTRAINT FK_ShoppingCart_Products
ALTER TABLE ShoppingCartAttributes NOCHECK CONSTRAINT FK_ShoppingCartAttributes_ShoppingCart
ALTER TABLE SmsHistory NOCHECK CONSTRAINT FK_SmsHistory_Portals
ALTER TABLE SurveyAnswers NOCHECK CONSTRAINT FK_SurveyAnswers_Surveys
ALTER TABLE SurveyOptions NOCHECK CONSTRAINT FK_SurveyOptions_SurveyQuestions
ALTER TABLE SurveyQuestions NOCHECK CONSTRAINT FK_SurveyQuestions_Surveys
ALTER TABLE Surveys NOCHECK CONSTRAINT FK_Surveys_Modules
ALTER TABLE Tabs NOCHECK CONSTRAINT FK_Tabs_Portals
ALTER TABLE UserCode1 NOCHECK CONSTRAINT FK_UserCode1_Portals
ALTER TABLE UserCode2 NOCHECK CONSTRAINT FK_UserCode2_Portals
ALTER TABLE UserCode3 NOCHECK CONSTRAINT FK_UserCode3_Portals
ALTER TABLE UserCode4 NOCHECK CONSTRAINT FK_UserCode4_Portals
ALTER TABLE UserRoles NOCHECK CONSTRAINT FK_UserRoles_Roles
--ALTER TABLE Users NOCHECK CONSTRAINT FK_Users_Portals
ALTER TABLE UsersLog NOCHECK CONSTRAINT FK_UsersLog_Portals
ALTER TABLE Visits NOCHECK CONSTRAINT FK_Visits_Portals
ALTER TABLE WizardMainFilter NOCHECK CONSTRAINT FK_WizardMainFilter_WizardPropertys
ALTER TABLE WizardPropertys NOCHECK CONSTRAINT FK_WizardPropertys_Wizards
ALTER TABLE Wizards NOCHECK CONSTRAINT FK_Wizards_Portals
ALTER TABLE WizardSubFilter NOCHECK CONSTRAINT FK_WizardSubFilter_WizardPropertys
ALTER TABLE WizardTemplateProducts NOCHECK CONSTRAINT FK_TemplateProducts_WizardTemplates
ALTER TABLE WizardTemplates NOCHECK CONSTRAINT FK_WizardTemplates_Wizards

GO
 
 
/****** Object:  Table [dbo].[Tabs]    Script Date: 03/12/2011 13:47:10 ******/
SET IDENTITY_INSERT Tabs ON
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (100,1,0,N'Anasayfa',N'',N'Tüm Kullanıcılar;',0,NULL,N'',1,N'',N'',N'',1,N'~/default.aspx',N'/icerik/anasayfa/',N'/100/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (101,9,0,N'Facebook',N'',N'Yöneticiler;',0,NULL,N'',1,N'',N'',N'',1,N'~/facebook/default.aspx',N'/icerik/facebook/',N'/101/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (103,3,0,N'Hesabım',N'',N'Tüm Kullanıcılar;',0,NULL,N'',1,N'',N'',N'',1,N'~/account.aspx',N'/icerik/hesabim/',N'/103/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (104,5,0,N'İletişim',N'',N'Tüm Kullanıcılar;',0,NULL,N'',1,N'',N'',N'',1,N'~/contact.aspx',N'/icerik/iletisim/',N'/104/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (105,7,0,N'Yardım',N'',N'Tüm Kullanıcılar;',0,NULL,N'',1,N'',N'',N'',0,N'',N'/icerik/yardim/',N'/105/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (106,11,0,N'Raporlar',N'',N'Yöneticiler;',0,NULL,N'',0,N'',N'',N'',0,N'',N'/icerik/raporlar/',N'/106/',7)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (107,13,0,N'Kullanıcı Raporları',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/kullanici-raporlari/',N'/106/107/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (108,15,0,N'Ürün Raporları',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/urun-raporlari/',N'/106/108/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (109,17,0,N'Sipariş Raporları',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/siparis-raporlari/',N'/106/109/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (110,19,0,N'Sepet Raporları (Adet)',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/sepet-raporlari--adet-/',N'/106/110/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (111,21,0,N'Sepet Raporları (Fiyat)',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/sepet-raporlari--fiyat-/',N'/106/111/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (112,23,0,N'Banka Taksit Raporları',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/banka-taksit-raporlari/',N'/106/112/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (113,25,0,N'Satış Raporları',N'',N'Tüm Kullanıcılar;',0,106,N'',1,N'',N'',N'',0,N'',N'/icerik/raporlar/satis-raporlari/',N'/106/113/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (114,27,0,N'Arama',N'',N'Tüm Kullanıcılar;',0,NULL,N'',1,N'',N'',N'',0,N'',N'/icerik/arama/',N'/114/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (163,31,0,N'Diğer',N'',N'Tüm Kullanıcılar;',0,NULL,N'',1,N'',N'',N'',1,N'',N'/icerik/diger/',N'/163/',4)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (164,33,0,N'Mesafeli Satış Sözleşmesi',N'',N'Tüm Kullanıcılar;',0,163,N'',1,N'',N'',N'',0,N'',N'/icerik/diger/mesafeli-satis-sozlesmesi/',N'/163/164/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (165,35,0,N'Ödeme ve Teslimat',N'',N'Tüm Kullanıcılar;',0,163,N'',1,N'',N'',N'',0,N'',N'/icerik/diger/odeme-ve-teslimat/',N'/163/165/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (166,37,0,N'İade ve Garanti Şartları',N'',N'Tüm Kullanıcılar;',0,163,N'',1,N'',N'',N'',0,N'',N'/icerik/diger/iade-ve-garanti-sartlari/',N'/163/166/',0)
INSERT INTO [Tabs] ([TabId],[TabOrder],[PortalId],[TabName],[MobileTabName],[AuthorizedRoles],[ShowMobile],[ParentId],[IconURL],[HasAction],[Title],[Description],[Keywords],[Redirect],[RedirectUrl],[Url],[Lineage],[ChildCount]) VALUES (167,39,0,N'Havale Bildirim Formu',N'',N'Tüm Kullanıcılar;',0,163,N'',1,N'',N'',N'',0,N'',N'/icerik/diger/havale-bildirim-formu/',N'/163/167/',0)

SET IDENTITY_INSERT [dbo].[Tabs] OFF

SET IDENTITY_INSERT [dbo].[Modules] ON
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (282,100,167,1,N'left',N'Kategoriler',N'Yöneticiler;',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (283,100,5,3,N'left',N'Banner',N'Yöneticiler;',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (298,100,171,1,N'middle_center',N'Slider',N'Yöneticiler',0,0,0,0,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (285,100,5,3,N'middle_center',N'Banner',N'Yöneticiler;',0,0,0,0,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (286,100,168,1,N'middle_right',N'Günün Teklifi',N'Yöneticiler;',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (287,100,65,1,N'bottom_center',N'Navigasyon',N'Yöneticiler;',0,0,0,0,1) 
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (297,100,170,3,N'bottom_center',N'Vitrin',N'Yöneticiler;',0,0,0,0,1)
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
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (327,164,5,1,N'middle_center',N'Mesafeli Satış Sözleşmesi',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (328,165,5,1,N'middle_center',N'Ödeme ve Teslimat',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (329,166,5,1,N'middle_center',N'İade ve Garanti Şartları',N'Yöneticiler',0,0,1,1,1)
INSERT INTO [Modules] ([ModuleId],[TabId],[ModuleDefId],[ModuleOrder],[PaneName],[ModuleTitle],[AuthorizedEditRoles],[CacheTime],[ShowMobile],[ShowHeader],[ShowFootter],[IsActive]) VALUES (331,167,5,1,N'middle_center',N'Havale Bildirim Formu',N'Yöneticiler',0,0,1,1,1)

SET IDENTITY_INSERT [dbo].[Modules] OFF

INSERT INTO [dbo].[ModuleSettings]([ModuleId], [PortalId], [SettingName], [SettingValue]) VALUES (298, 0, N'OnlyMainPage', N'True')
GO

INSERT INTO [CategoryTopProducts] ([ModuleId],[CatId],[FlashPath],[XsltPath],[ShowOnlyMainPage]) VALUES (286,129,NULL,NULL,0)
GO


SET IDENTITY_INSERT [dbo].[Faqs] ON
INSERT INTO [dbo].[Faqs]([FaqId], [PortalId], [ModuleId], [FaqTitle], [FaqAuthor], [FaqDetails], [FaqAnswer], [FaqDate]) VALUES (1, 0, 220, 'Üye olmadan alışveriş yapabilir miyim ?', '', N'&amp;Uuml;ye olmadan alışveriş yapabilir miyim ?', N'Evet &amp;uuml;ye olmadan alışveriş yapabilirsiniz.', '20111003')
INSERT INTO [dbo].[Faqs]([FaqId], [PortalId], [ModuleId], [FaqTitle], [FaqAuthor], [FaqDetails], [FaqAnswer], [FaqDate]) VALUES (2, 0, 220, 'Üye olmak ücretli midir?', '', N'&#220;ye olmak &#252;cretli midir?', N'Sitemize &#220;yelik &#252;cretsizdir.', '20111003')
INSERT INTO [dbo].[Faqs]([FaqId], [PortalId], [ModuleId], [FaqTitle], [FaqAuthor], [FaqDetails], [FaqAnswer], [FaqDate]) VALUES (3, 0, 220, 'Şifremi unutum, ne yapmalıyım?', '', N'Şifremi unutum, ne yapmalıyım?', N'Şifrenizi mail adresinize g&amp;ouml;ndermek i&amp;ccedil;in &lt;a href=&quot;/password.aspx&quot;&gt;şifremi unuttum&lt;/a&gt; sayfamızı kullanabilirsiniz.', '20111003')
INSERT INTO [dbo].[Faqs]([FaqId], [PortalId], [ModuleId], [FaqTitle], [FaqAuthor], [FaqDetails], [FaqAnswer], [FaqDate]) VALUES (4, 0, 220, 'Siparişim kaç gün içersinde elime ulaşır?', '', N'Siparişim ka&#231; g&#252;n i&#231;ersinde elime ulaşır?', N'Siparişleriniz ortalama 7 iş g&#252;n&#252; i&#231;erisinde elinize ulamış olur.', '20111003')
INSERT INTO [dbo].[Faqs]([FaqId], [PortalId], [ModuleId], [FaqTitle], [FaqAuthor], [FaqDetails], [FaqAnswer], [FaqDate]) VALUES (5, 0, 256, 'Üyelik Ücretlimidir ?', 'Ferit Demiryürek', N'&#220;yelik &#220;cretlimidir ?', N'Hayır &#220;yelik &#220;cretli değildir.', '20111007')
INSERT INTO [dbo].[Faqs]([FaqId], [PortalId], [ModuleId], [FaqTitle], [FaqAuthor], [FaqDetails], [FaqAnswer], [FaqDate]) VALUES (6, 0, 256, 'Siparişim kaç günde elime geçer ?', '', N'Siparişim ka&#231; g&#252;nde elime ge&#231;er ?', N'&amp;nbsp;Ortalama 4-5 g&amp;uuml;n i&amp;ccedil;eriisinde siparişiniz elinizde olur. L&amp;uuml;tfen sabırlı olun.', '20111007')
SET IDENTITY_INSERT [dbo].[Faqs] OFF

INSERT INTO [dbo].[HtmlText]([ModuleId], [DesktopHtml], [MobileSummary], [MobileDetails], [OnlyMainPage], [ShadowPage], [ShadowModule]) VALUES (217, N'&lt;p&gt;Hesabınız ile ilgili t&amp;uuml;m işlemleri sol tarafta bulunan panlden ger&amp;ccedil;ekleştirebilirsiniz.&lt;/p&gt;
&lt;p&gt;Yardım almak ve sık&amp;ccedil;a sorulan sorular i&amp;ccedil;in &lt;a href=&quot;/icerik/yardim.aspx&quot;&gt;tıklayınız&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;T&amp;uuml;m soru ve sorunlarınız i&amp;ccedil;in bizimle iletişime ge&amp;ccedil;mek i&amp;ccedil;in &lt;a href=&quot;/contact.aspx&quot;&gt;tıklayınız&lt;/a&gt;&lt;/p&gt;', N' ', N' ', 0, 0, 0)
INSERT INTO [HtmlText] ([ModuleId],[DesktopHtml],[MobileSummary],[MobileDetails],[OnlyMainPage],[ShadowPage],[ShadowModule]) VALUES (285,N'&lt;img src=&quot;/themes/responsive/images/website/banner2.png&quot; width=&quot;100%&quot; alt=&quot;&quot; /&gt;',N' ',N' ',1,0,0)
INSERT INTO [HtmlText] ([ModuleId],[DesktopHtml],[MobileSummary],[MobileDetails],[OnlyMainPage],[ShadowPage],[ShadowModule]) VALUES (283,N'&lt;img src=&quot;/themes/responsive/images/website/banner.png&quot; width=&quot;100%&quot; alt=&quot;&quot; /&gt;',N' ',N' ',1,0,0)
INSERT INTO [HtmlText] ([ModuleId],[DesktopHtml],[MobileSummary],[MobileDetails],[OnlyMainPage],[ShadowPage],[ShadowModule]) VALUES (327,N'&lt;table id=&quot;Table1&quot; width=&quot;100%&quot; border=&quot;0&quot;&gt;
    &lt;tbody&gt;
        &lt;tr&gt;
            &lt;td&gt;
            &lt;h3&gt;MESAFELİ SATIŞ S&amp;Ouml;ZLEŞMESİ&lt;/h3&gt;
            &lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;strong&gt;MADDE 1 - TARAFLAR&lt;/strong&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;1.1.SATICI:&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Adı/Unvanı : Firma Adınız&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Adresi : Firma Adresiniz&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Telefon : 0212 444 44 44&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Fax : 0212 444 44 45&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;strong&gt;MADDE 2 - KONU&lt;/strong&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;İşbu s&amp;ouml;zleşmenin konusu, ALICI&#39;nın SATICI&#39;ya ait&amp;nbsp; &amp;quot;Sitenizinadi.com&amp;quot; internet alişveriş sitesinden elektronik ortamda siparişini yaptığı aşağıda nitelikleri ve satış fiyatı belirtilen &amp;uuml;r&amp;uuml;n&amp;uuml;n satışı ve teslimi ile ilgili olarak &amp;quot;4077 Sayılı T&amp;uuml;keticilerin Korunması Hakkındaki Kanun&amp;quot; ve &amp;quot;Mesafeli S&amp;ouml;zleşmeler Uygulama Usul ve Esasları Hakkında Y&amp;ouml;netmelik&amp;quot; h&amp;uuml;k&amp;uuml;mleri gereğince tarafların hak ve y&amp;uuml;k&amp;uuml;ml&amp;uuml;l&amp;uuml;klerinin saptanmasıdır.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;3.2. &amp;Ouml;deme Şekli : Havale / EFT ile &amp;Ouml;deme&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;3.3. Diğer yandan vadeli satışların sadece Bankalara ait kredi kartları ile yapılması nedeniyle, alıcı, ilgili faiz oranlarını ve temerr&amp;uuml;t faizi ile ilgili bilgileri bankasından ayrıca teyit edeceğini, y&amp;uuml;r&amp;uuml;rl&amp;uuml;kte bulunan mevzuat h&amp;uuml;k&amp;uuml;mleri gereğince faiz ve temerr&amp;uuml;t faizi ile ilgili h&amp;uuml;k&amp;uuml;mlerin Banka ve alıcı arasındaki kredi kartı s&amp;ouml;zleşmesi kapsamında uygulanacağını kabul, beyan ve taahh&amp;uuml;t eder.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Kredi kartına İade Prosed&amp;uuml;r&amp;uuml;:&lt;br /&gt;
            Alıcının cayma hakkını kullandığı durumlarda ya da siparişe konu olan &amp;uuml;r&amp;uuml;n&amp;uuml;n &amp;ccedil;eşitli sebeplerle tedarik edilememesi veya Hakem heyeti kararları ile T&amp;uuml;keticiye bedel iadesine karar verilen durumlarda ,alışveriş kredi kartı ile ve taksitli olarak yapılmışsa, kredi kartına iade prosed&amp;uuml;r&amp;uuml; aşağıda belirtilmiştir:&lt;br /&gt;
            &lt;br /&gt;
            M&amp;uuml;şterimiz &amp;uuml;r&amp;uuml;n&amp;uuml; ka&amp;ccedil; taksit ile aldıysa Banka m&amp;uuml;şteriye geri &amp;ouml;demesini taksitle yapmaktadır.Sitenizinadi.com bankaya &amp;uuml;r&amp;uuml;n bedelinin tamamını tek seferde &amp;ouml;dedikten sonra ,Banka poslarından yapılan taksitli harcamaların M&amp;uuml;şterimizin kredi kartına iadesi durumunda,konuya m&amp;uuml;dahil tarafların mağdur duruma d&amp;uuml;şmemesi i&amp;ccedil;in talep edilen iade tutarları,yine taksitli olarak hamil taraf hesaplarına Banka tarafından aktarılır.M&amp;uuml;şterinin satış iptaline kadar &amp;ouml;demiş olduğu taksit tutarları ,eğer iade tarihi ile kartın hesap kesim tarihleri &amp;ccedil;akışmazsa her ay karta 1 iade yansıyacak ve m&amp;uuml;şteri iade &amp;ouml;ncesinde &amp;ouml;demiş olduğu taksitleri satışın taksitleri bittikten sonra , iade &amp;ouml;ncesinde &amp;ouml;demiş olduğu taksitleri sayısı kadar ay daha alacak ve mevcut bor&amp;ccedil;larından d&amp;uuml;şm&amp;uuml;ş olacaktır.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Kart ile alınmış mal ve hizmetin iadesi durumunda Sitenizinadi.com,Banka ile yapmış olduğu s&amp;ouml;zleşme gereği M&amp;uuml;şteriye nakit para ile &amp;ouml;deme yapamaz.&amp;Uuml;ye işyeri yani Sitenizinadi.com,bir iade işlemi s&amp;ouml;zkonusu olduğunda ilgili yazılım aracılığı ile iadesini yapacak olup,&amp;Uuml;ye işyeri yani Sitenizinadi.com ilgili tutarı Bankaya nakden veya mahsuben &amp;ouml;demekle y&amp;uuml;k&amp;uuml;ml&amp;uuml; olduğundan yukarıda anlatmış olduğumuz prosed&amp;uuml;r gereğince M&amp;uuml;şteriye nakit olarak &amp;ouml;deme yapılamamaktadır. Kredi kartına iade , Sitenizinadi.com in Bankaya bedeli tek seferde &amp;ouml;demesinden sonra ,Banka tarafından yukarıdaki prosed&amp;uuml;r gereğince yapılacaktır.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Alıcı, bu prosed&amp;uuml;r&amp;uuml; okuduğunu ve kabul ettiğini kabul ve taahh&amp;uuml;d eder.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;3.4- Teslimat Şekli ve Adresi :&lt;br /&gt;
            Teslimat Adresi : a/T&amp;uuml;rkiye-Adıyaman-&lt;br /&gt;
            Teslim Edilecek Kişi: &amp;nbsp;&lt;br /&gt;
            Fatura Adresi : a/T&amp;uuml;rkiye-Adıyaman-&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Teslimat kargo şirketi aracılığı ile Alıcının yukarıda belirtilen adresinde elden teslim edilecektir. Teslim anında alıcının adresinde bulunmaması durumunda dahi SATICI edimini tam ve eksiksiz olarak yerine getirmiş olarak kabul edilecektir. Bu nedenle, alıcının &amp;uuml;r&amp;uuml;n&amp;uuml; ge&amp;ccedil; teslim almasından kaynaklanan her t&amp;uuml;rl&amp;uuml; zarar ile &amp;uuml;r&amp;uuml;n&amp;uuml;n kargo şirketinde beklemiş olması ve/veya kargonun SATICI&#39;ya geri iade edilmesinden dolayı da oluşan giderler de ALICI&#39;ya aittir.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;strong&gt;Kargo &amp;Uuml;creti :&lt;/strong&gt;&amp;nbsp;10,00 TL olup, kargo fiyatı sipariş toplam tutarına eklenmekte ve m&amp;uuml;şteri tarafından &amp;ouml;denmektedir. &amp;Uuml;r&amp;uuml;n bedeline dahil değildir.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;strong&gt;MADDE 4 - GENEL H&amp;Uuml;K&amp;Uuml;MLER&lt;/strong&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;4.1.ALICI, &amp;quot;Sitenizinadi.com&amp;quot; internet sitesinde &amp;quot;4077 Sayılı Kanun&amp;quot; ve &amp;quot;Kapıdan Satışlara İlişkin Uygulama Usul ve Esasları Hakkında Y&amp;ouml;netmelik&amp;quot; h&amp;uuml;k&amp;uuml;mlerine g&amp;ouml;re d&amp;uuml;zenlenen &amp;quot; bilgilendirme formunu&amp;quot; ve yine s&amp;ouml;zleşmenin 3.maddesinde belirtilen, s&amp;ouml;zleşmeye konu &amp;uuml;r&amp;uuml;n&amp;uuml;n/&amp;uuml;r&amp;uuml;nlerin/hizmetlerin temel nitelikleri satış fiyatı ve &amp;ouml;deme şekli ile teslimata ilişkin t&amp;uuml;m &amp;ouml;n bilgileri okuyup bilgi sahibi olduğunu ve elektronik ortamda gerekli teyidi verdiğini beyan eder.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;4.2. S&amp;ouml;zleşme konusu &amp;uuml;r&amp;uuml;n, yasal 30 g&amp;uuml;nl&amp;uuml;k s&amp;uuml;reyi aşmamak koşulu ile her bir &amp;uuml;r&amp;uuml;n i&amp;ccedil;in ALICI&#39;nın yerleşim yerinin uzaklığına bağlı olarak internet sitesinde &amp;ouml;n bilgiler i&amp;ccedil;inde a&amp;ccedil;ıklanan s&amp;uuml;re i&amp;ccedil;inde ALICI veya g&amp;ouml;sterdiği adresteki kişi/kuruluşa teslim edilir.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;4.3.S&amp;ouml;zleşme konusu &amp;uuml;r&amp;uuml;n, ALICI&#39;dan başka bir kişi/kuruluşa teslim edilecek ise, teslim edilecek kişi/kuruluşun teslimatı kabul etmemesinden SATICI sorumlu tutulamaz.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;4.4.SATICI, s&amp;ouml;zleşme konusu &amp;uuml;r&amp;uuml;n&amp;uuml;n sağlam, eksiksiz, siparişte belirtilen niteliklere uygun ve varsa garanti belgeleri ve kullanım kılavuzları ile teslim edilmesinden sorumludur.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;4.5- S&amp;ouml;zleşme konusu &amp;uuml;r&amp;uuml;n&amp;uuml;n teslimatı i&amp;ccedil;in işbu s&amp;ouml;zleşmenin imzalı n&amp;uuml;shasının SATICI&#39;ya ulaştırılmış olması ve bedelinin ALICI&#39;nın tercih ettiği &amp;ouml;deme şekli ile &amp;ouml;denmiş olması şarttır. Herhangi bir nedenle &amp;uuml;r&amp;uuml;n bedeli &amp;ouml;denmez veya banka kayıtlarında iptal edilir ise, SATICI &amp;uuml;r&amp;uuml;n&amp;uuml;n teslimi y&amp;uuml;k&amp;uuml;ml&amp;uuml;l&amp;uuml;ğ&amp;uuml;nden kurtulmuş kabul edilir.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;4.6- &amp;Uuml;r&amp;uuml;n&amp;uuml;n tesliminden sonra ALICI&#39;ya ait kredi kartının ALICI&#39;nın kusurundan kaynaklanmayan bir şekilde yetkisiz kişilerce haksız veya hukuka aykırı olarak kullanılması nedeni ile ilgili banka veya finans kuruluşun &amp;uuml;r&amp;uuml;n bedelini SATICI&#39;ya &amp;ouml;dememesi halinde, ALICI&#39;nın kendisine teslim edilmiş olması kaydıyla &amp;uuml;r&amp;uuml;n&amp;uuml;n 3 g&amp;uuml;n i&amp;ccedil;inde SATICI&#39;ya g&amp;ouml;nderilmesi zorunludur. Bu takdirde nakliye giderleri ALICI&#39;ya aittir.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;4.7- Garanti belgesi ile satılan &amp;uuml;r&amp;uuml;nlerden olan veya olmayan &amp;uuml;r&amp;uuml;nlerin arızalı veya bozuk olanlar, (ayıplı) garanti şartları i&amp;ccedil;inde gerekli onarımın yetkili servise yaptırılması i&amp;ccedil;in SATICI&#39;ya g&amp;ouml;nderilebilir, bu takdirde kargo giderleri SATICI tarafından karşılanacaktır.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;strong&gt;MADDE 5 - CAYMA HAKKI&lt;/strong&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;ALICI, s&amp;ouml;zleşme konusu &amp;uuml;r&amp;uuml;r&amp;uuml;n&amp;uuml;n kendisine veya g&amp;ouml;sterdiği adresteki kişi/kuruluşa tesliminden itibaren 7 g&amp;uuml;n i&amp;ccedil;inde cayma hakkına sahiptir. Cayma hakkının kullanılması i&amp;ccedil;in bu s&amp;uuml;re i&amp;ccedil;inde SATICI&#39;ya faks, email veya telefon ile bildirimde bulunulması ve &amp;uuml;r&amp;uuml;n&amp;uuml;n 6. madde h&amp;uuml;k&amp;uuml;mleri &amp;ccedil;er&amp;ccedil;evesinde kullanılmamış olması şarttır. Bu hakkın kullanılması halinde, 3. kişiye veya ALICI&#39;ya teslim edilen &amp;uuml;r&amp;uuml;n&amp;uuml;n SATICI&#39;ya g&amp;ouml;nderildiğine ilişkin kargo teslim tutanağı &amp;ouml;rneği ile fatura aslının iadesi zorunludur. Bu belgelerin ulaşmasını takip eden 7 g&amp;uuml;n i&amp;ccedil;inde &amp;uuml;r&amp;uuml;n bedeli ALICI&#39;ya iade edilir. Fatura aslı g&amp;ouml;nderilmez ise KDV ve varsa sair yasal y&amp;uuml;k&amp;uuml;ml&amp;uuml;l&amp;uuml;kler iade edilemez. Cayma hakkı nedeni ile iade edilen &amp;uuml;r&amp;uuml;n&amp;uuml;n kargo bedeli SATICI tarafından karşılanır.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;strong&gt;T&amp;uuml;keticinin hi&amp;ccedil;bir hukuki ve cezai sorumluluk &amp;uuml;stlenmeksizin ve hi&amp;ccedil;bir gerek&amp;ccedil;e g&amp;ouml;stermeksizin malı teslim aldığı veya s&amp;ouml;zleşmenin imzalandığı tarihten itibaren yedi g&amp;uuml;n i&amp;ccedil;erisinde malı veya hizmeti reddederek s&amp;ouml;zleşmeden cayma hakkının var olduğunu ve cayma bildiriminin satıcı veya sağlayıcıya ulaşması tarihinden itibaren malı geri almayı taahh&amp;uuml;t ederiz.&lt;/strong&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;strong&gt;385 sayılı vergi usul kanunu genel tebliği uyarınca iade işlemlerinin yapılabilmesi i&amp;ccedil;in tarafınıza g&amp;ouml;ndermiş olduğumuz iade b&amp;ouml;l&amp;uuml;m&amp;uuml; bulunan faturada ilgili b&amp;ouml;l&amp;uuml;mlerin eksiksiz olarak doldurulması ve imzalandıktan sonra tarafımıza &amp;uuml;r&amp;uuml;n ile birlikte geri g&amp;ouml;nderilmesi gerekmektedir.&lt;/strong&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Ancak,&amp;nbsp;&lt;strong&gt;KKTC ve yurtdışı g&amp;ouml;nderilerinde&lt;/strong&gt;&amp;nbsp;M&amp;uuml;şterilerimiz siparişlerinde KDV &amp;ouml;demediği i&amp;ccedil;in, g&amp;uuml;mr&amp;uuml;kte almış olduğu &amp;uuml;r&amp;uuml;nlerin vergilerini &amp;ouml;demekle y&amp;uuml;k&amp;uuml;ml&amp;uuml;d&amp;uuml;r.G&amp;uuml;mr&amp;uuml;kten her ne şekilde olursa olsun teslim alınmayan &amp;uuml;r&amp;uuml;nler i&amp;ccedil;in M&amp;uuml;şterilerin cayma hakkı bulunmamaktadır. &amp;Ccedil;&amp;uuml;nk&amp;uuml; MESAFELİ S&amp;Ouml;ZLEŞMELER UYGULAMA USUL VE ESASLARI HAKKINDA Y&amp;Ouml;NETMELİĞİN 8.maddesi uyarınca T&amp;uuml;ketici mal satışına ilişkin mesafeli s&amp;ouml;zleşmelerde, teslim aldığı tarihten itibaren yedi g&amp;uuml;n i&amp;ccedil;erisinde hi&amp;ccedil;bir hukuki ve cezai sorumluluk &amp;uuml;stlenmeksizin ve hi&amp;ccedil;bir gerek&amp;ccedil;e g&amp;ouml;stermeksizin malı reddederek s&amp;ouml;zleşmeden cayma hakkına sahiptir.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;strong&gt;MADDE 6 - CAYMA HAKKI KULLANILAMAYACAK &amp;Uuml;R&amp;Uuml;NLER&lt;/strong&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Niteliği itibarıyla iade edilemeyecek &amp;uuml;r&amp;uuml;nler, tek kullanımlık &amp;uuml;r&amp;uuml;nler, son kullanım tarihi ge&amp;ccedil;en &amp;uuml;r&amp;uuml;nler i&amp;ccedil;in cayma hakkı kullanılamaz. Aşağıdaki &amp;uuml;r&amp;uuml;nlerde cayma hakkının kullanılması, &amp;uuml;r&amp;uuml;n&amp;uuml;n ambalajının a&amp;ccedil;ılmamış, bozulmamış ve &amp;uuml;r&amp;uuml;n&amp;uuml;n kullanılmamış olması şartına bağlıdır.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;- Bitkisel Tablet &amp;Uuml;r&amp;uuml;nler&amp;nbsp;&lt;br /&gt;
            - Niteliği itibarıyla iade edilemeyecek &amp;uuml;r&amp;uuml;nler ( &amp;uuml;r&amp;uuml;n&amp;uuml;n arızalı veya ayıplı &amp;ccedil;ıkması halleri dışında, a&amp;ccedil;ıldıktan sonra sağlık a&amp;ccedil;ısından tehlike arzedebilen &amp;uuml;r&amp;uuml;nler &amp;ouml;rn : kullanım esnasında v&amp;uuml;cut ile birebir temas gerektiren &amp;uuml;r&amp;uuml;nler (), tek kullanımlık &amp;uuml;r&amp;uuml;nler, hızlı bozulan veya son kullanım tarihi ge&amp;ccedil;en &amp;uuml;r&amp;uuml;nler ve iadesi m&amp;uuml;mk&amp;uuml;n değildir.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;strong&gt;MADDE 7- TEMERR&amp;Uuml;T H&amp;Uuml;K&amp;Uuml;MLERİ&lt;/strong&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Tarafların işbu s&amp;ouml;zleşmeden kaynaklarından edimlerini yerine getirmemesi durumunda Bor&amp;ccedil;lar Kanunu&#39;nun 106-108.maddesinde yer alan Bor&amp;ccedil;lunun Temerr&amp;uuml;d&amp;uuml; h&amp;uuml;k&amp;uuml;mleri uygulanacaktır. Temerr&amp;uuml;t durumlarında, herhangi bir tarafın edimlerini s&amp;uuml;resi i&amp;ccedil;inde haklı bir sebebi olmaksızın yerine getirmemesi durumunda diğer taraf s&amp;ouml;z konusu edimin yerine getirilmesi i&amp;ccedil;in edimini yerine getirmeyen tarafa 7 g&amp;uuml;nl&amp;uuml;k s&amp;uuml;re verecektir. Bu s&amp;uuml;re zarfında da yerine getirilmesi durumunda edimini yerine getirmeyen taraf m&amp;uuml;temerrit olarak addolunacak ve alacaklı edimin ifasını talep etmek suretiyle malın teslimini, ve/veya s&amp;ouml;zleşmenin feshini ve bedelin iadesini talep etme hakkına sahiptir.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Mesafeli S&amp;ouml;zleşmeler Hakkında Y&amp;ouml;netmeliğin 9.maddesinin son fıkrası gereğince satıcı &amp;quot;Sitenizinadi.com&amp;quot;,sipariş konusu mal veye hizmetin yerine getirilmesinin imkansızlaştığı ileri s&amp;uuml;rerek (tedarik&amp;ccedil;i Firmadan &amp;uuml;r&amp;uuml;n&amp;uuml;n hi&amp;ccedil;bir şekilde tedarik edilememesi durumu) ,s&amp;ouml;zleşme konusu y&amp;uuml;k&amp;uuml;ml&amp;uuml;l&amp;uuml;klerini yerine getiremiyorsa ,bu durumu s&amp;ouml;zleşmeden doğan ifa y&amp;uuml;k&amp;uuml;ml&amp;uuml;l&amp;uuml;ğ&amp;uuml;n&amp;uuml;n s&amp;uuml;resi dolmadan t&amp;uuml;keticiye bildirmeyi taahh&amp;uuml;d eder.Bu durumda , Sitenizinadi.com s&amp;ouml;zleşmeyi derhal fesih etme hakkına haiz olup,M&amp;uuml;şterinin sipariş verdiği &amp;uuml;r&amp;uuml;n&amp;uuml;n bedelini ve varsa bor&amp;ccedil; altına sokan t&amp;uuml;m belgeleri geri iade edeceğini taahh&amp;uuml;d eder.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;quot;Sitenizinadi.com&amp;quot; &#39;un işbu y&amp;uuml;k&amp;uuml;ml&amp;uuml;l&amp;uuml;ğ&amp;uuml;n&amp;uuml; yerine getirmesini engelleyebilecek m&amp;uuml;cbir sebepler veya nakliyeyi engelleyen hava muhalefetleri,ulaşımın kesilmesi,yangın ,deprem,sel baskını gibi olağan&amp;uuml;st&amp;uuml; olaylar nedeni ile s&amp;ouml;zleşme konusu &amp;uuml;r&amp;uuml;n&amp;uuml; s&amp;uuml;resi i&amp;ccedil;erisinde teslim edemez ise , Bu tip durumlarda Alıcı,&amp;quot;Sitenizinadi.com&amp;quot; un hi&amp;ccedil;bir sorumluluğu olmadığını,siparişin iptal edilmesini veya teslimat s&amp;uuml;resinin engelleyici durumunun ortadan kalkmasına kadar ertelenmesi haklarından birini kullanabilir. ALICInın siparişi iptal etmesi halinde &amp;ouml;dediği tutar 10 g&amp;uuml;n i&amp;ccedil;erisinde kendisine &amp;ouml;denir.(kredi kartı ile yapılan taksitli alışverişlerde ise kredi kartına iade i&amp;ccedil;in yukarıdaki prosed&amp;uuml;r ALICI tarafından kabul edilir)&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;strong&gt;MADDE 8 - YETKİLİ MAHKEME&lt;/strong&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;İşbu s&amp;ouml;zleşmenin uygulanmasında, Sanayi ve Ticaret Bakanlığınca ilan edilen değere kadar T&amp;uuml;ketici Hakem Heyetleri ile ALICI&#39;nın veya SATICI&#39;nın yerleşim yerindeki T&amp;uuml;ketici Mahkemeleri yetkilidir.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Siparişin ger&amp;ccedil;ekleşmesi durumunda ALICI işbu s&amp;ouml;zleşmenin t&amp;uuml;m koşullarını kabul etmiş sayılır.&lt;/td&gt;
        &lt;/tr&gt;
    &lt;/tbody&gt;
&lt;/table&gt;',N' ',N' ',0,0,0)
INSERT INTO [HtmlText] ([ModuleId],[DesktopHtml],[MobileSummary],[MobileDetails],[OnlyMainPage],[ShadowPage],[ShadowModule]) VALUES (328,N'&lt;table id=&quot;Table1&quot; width=&quot;100%&quot; border=&quot;0&quot;&gt;
    &lt;tbody&gt;
        &lt;tr&gt;
            &lt;td&gt;
            &lt;h3&gt;Kredi Kartı ile Online &amp;Ouml;deme&lt;/h3&gt;
            &lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;T&amp;uuml;m bankaların Visa ve Master Card&#39;ları ile &amp;ouml;demenizi hızlı ve g&amp;uuml;;venli bir şekilde yapabilirsiniz. Kredi kartı bilgileriniz, yalnızca sipariş işlemi ger&amp;ccedil;ekleştirilirken kullanılır ve kesinlikle veri tabanında kayıtlı tutulmaz.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;
            &lt;h3&gt;S&amp;uuml;rat Kargo ile Kapıda Nakit &amp;Ouml;deme&lt;/h3&gt;
            &lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Sipariş bedelinizi, &amp;uuml;r&amp;uuml;n teslimi sırasında nakit olarak &amp;ouml;deyebilirsiniz. Kapıda &amp;ouml;deme se&amp;ccedil;eneği ile verilen siparişlerde, g&amp;ouml;nderi &amp;ouml;ncesi m&amp;uuml;şterilerimizden telefon veya SMS yolu ile teyid alınacaktır. Teyid alınamaması durumunda ise siparişiniz iptal edilecek. Bu nedenle, telefon numaralarınızı doğru olarak girdiğinizden emin olunuz.&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;
            &lt;h3&gt;Havale/EFT ile &amp;Ouml;deme&lt;/h3&gt;
            &lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;İsterseniz siparişinize ait &amp;ouml;demelerinizi banka havalesi yoluyla da yapabilirsiniz. Sipariş işlemlerinizi havale se&amp;ccedil;eneğini tercih ederek tamamladıktan sonra, belirtilen tutarı aşağıdaki hesap numaralarımıza g&amp;ouml;ndermeniz yeterli. Siparişinizin en hızlı şekilde onaylanıp g&amp;ouml;nderilebilmesi i&amp;ccedil;in, havale işlemi sırasında, a&amp;ccedil;ıklama kısmına sipariş numaranızı girmeyi unutmayın.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Siparişi takip eden 3 iş g&amp;uuml;n&amp;uuml; i&amp;ccedil;erisinde havalesi yapılmayan siparişler iptal edilecektir.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;
            &lt;h3&gt;TESLİMAT&lt;/h3&gt;
            &lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;Mesai saatleri i&amp;ccedil;inde, en ge&amp;ccedil; saat 15:00&amp;rsquo;a kadar sipariş etmiş olduğunuz &amp;uuml;r&amp;uuml;nleri aynı g&amp;uuml;n kargoya teslim etmeyi hedefliyoruz. Ancak, her olasılığa karşı, kargo teslim s&amp;uuml;resi &amp;uuml;r&amp;uuml;n detayında belirtildiği gibi 7 iş g&amp;uuml;n&amp;uuml;d&amp;uuml;r. Gecikmesi muhtemel teslimat durumunda size bilgi verilecektir.&lt;/td&gt;
        &lt;/tr&gt;
    &lt;/tbody&gt;
&lt;/table&gt;',N' ',N' ',0,0,0)
INSERT INTO [HtmlText] ([ModuleId],[DesktopHtml],[MobileSummary],[MobileDetails],[OnlyMainPage],[ShadowPage],[ShadowModule]) VALUES (329,N'&lt;p style=&quot;color: rgb(39, 40, 24); font-family: &#39;Trebuchet MS&#39;, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;h3&gt;Garanti Koşulları&lt;br /&gt;
&lt;/h3&gt;T&amp;uuml;m &amp;uuml;r&amp;uuml;nler aksi belirtilmediği takdirde &amp;uuml;retici firmaların garantisi altındadır. Garanti koşullarının ge&amp;ccedil;erli olabilmesi i&amp;ccedil;in kargo teslimatı esnasında &amp;uuml;r&amp;uuml;n&amp;uuml; mutlaka kontrol ediniz. Herhangi bir hasar g&amp;ouml;rd&amp;uuml;ğ&amp;uuml;n&amp;uuml;zde tutanak tutturarak &amp;uuml;r&amp;uuml;n&amp;uuml; teslim almayınız. &amp;Uuml;r&amp;uuml;n &amp;uuml;zerinde yapılan değişiklikler,&amp;uuml;r&amp;uuml;n&amp;uuml;n deforme olması ya da &amp;uuml;r&amp;uuml;n&amp;uuml;n orijinal dizaynının bozulması garanti kapsamı dışındadır.&lt;/p&gt;
&lt;p style=&quot;color: rgb(39, 40, 24); font-family: &#39;Trebuchet MS&#39;, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;h3&gt;&amp;Uuml;r&amp;uuml;n İade Koşulları&lt;br /&gt;
&lt;/h3&gt;Sitemiz &amp;uuml;zerinden satın aldığınız &amp;uuml;r&amp;uuml;n&amp;uuml;n hatalı &amp;ccedil;ıkması halinde teslimat tarihinden itibaren en ge&amp;ccedil; 7 g&amp;uuml;n i&amp;ccedil;erisinde sayfamızdaki online destek b&amp;ouml;l&amp;uuml;m&amp;uuml;nden bizimle iletişim kurmanız gerekmektedir. Bu bilgileri takiben kargo şirketi ile bize ulaştıracağınız hatalı &amp;uuml;r&amp;uuml;n yenisi ile değiştirilecektir. Sipariş edilen &amp;uuml;r&amp;uuml;n hatası m&amp;uuml;şteri kullanımından oluşmuşsa veya 7 g&amp;uuml;nl&amp;uuml;k s&amp;uuml;re i&amp;ccedil;erisinde &amp;uuml;r&amp;uuml;n kullanılmışsa &amp;uuml;r&amp;uuml;n&amp;uuml;n iade ve değişimi yapılmaz. &amp;Uuml;r&amp;uuml;n iadesi ve değiştirme şartları olarak, 4077 sayılı T&amp;uuml;keticinin Korunması Hakkında Kanun gereği uygulamalar esastır.&lt;/p&gt;',N' ',N' ',0,0,0)

INSERT INTO [HtmlText] ([ModuleId],[DesktopHtml],[MobileSummary],[MobileDetails],[OnlyMainPage],[ShadowPage],[ShadowModule]) VALUES (331,N'&lt;table id=&quot;Table1&quot; width=&quot;100%&quot; border=&quot;0&quot;&gt;
    &lt;tbody&gt;
        &lt;tr&gt;
            &lt;td&gt;
            &lt;h3&gt;Havale Bildirimi&lt;/h3&gt;
            &lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;Ouml;deme yapacağınız banka hesaplarımızın IBAN numaralarını kullanmanız ve &amp;ouml;deme sonrası Havale yada EFT formunda bulunan Referans Numarasını ve Sipariş Numaranızı tarafımıza iletmeniz gerekmektedir.&lt;br /&gt;
            Havale yoluyla &amp;ouml;deme yapmayı tercih ettiğiniz siparişlerinizde, havale işlemini tamamladıktan sonra bu formu kullanarak bilgi verirseniz, siparişiniz daha kısa s&amp;uuml;rede tarafınıza g&amp;ouml;nderilecektir.&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
    &lt;/tbody&gt;
&lt;/table&gt;',N' ',N' ',0,0,0)
GO

SET IDENTITY_INSERT [dbo].[QuestionMaster] ON
INSERT INTO [dbo].[QuestionMaster]([QuestionMasterId], [PortalId], [ModuleId], [QuestionText], [QuestionHelp], [QuestionOrder], [AnswerTypeId], [Required], [InsertedOn], [InsertedBy]) VALUES (1, 0, 219, 'Adınız Soyadınız', 'Adınızı ve Soyadınızı giriniz.', 1, 1, 1, '20111003 14:11:00.000', 0)
INSERT INTO [dbo].[QuestionMaster]([QuestionMasterId], [PortalId], [ModuleId], [QuestionText], [QuestionHelp], [QuestionOrder], [AnswerTypeId], [Required], [InsertedOn], [InsertedBy]) VALUES (2, 0, 219, 'Telefon Numaranız', 'Lütfen Telefon Numaranızı giriniz.', 2, 1, 1, '20111003 14:11:00.000', 0)
INSERT INTO [dbo].[QuestionMaster]([QuestionMasterId], [PortalId], [ModuleId], [QuestionText], [QuestionHelp], [QuestionOrder], [AnswerTypeId], [Required], [InsertedOn], [InsertedBy]) VALUES (3, 0, 219, 'E-mail Adresiniz', 'Lütfen E-mail Adresinizi giriniz.', 3, 1, 1, '20111003 14:12:00.000', 0)
INSERT INTO [dbo].[QuestionMaster]([QuestionMasterId], [PortalId], [ModuleId], [QuestionText], [QuestionHelp], [QuestionOrder], [AnswerTypeId], [Required], [InsertedOn], [InsertedBy]) VALUES (4, 0, 219, 'Konu Seçiniz', 'Lütfen Konu seçiniz.', 4, 6, 0, '20111003 14:13:00.000', 0)
INSERT INTO [dbo].[QuestionMaster]([QuestionMasterId], [PortalId], [ModuleId], [QuestionText], [QuestionHelp], [QuestionOrder], [AnswerTypeId], [Required], [InsertedOn], [InsertedBy]) VALUES (5, 0, 219, 'Mesajınız', 'Lütfen Mesaj yazınız.', 6, 2, 1, '20111003 14:15:00.000', 0)
INSERT INTO [dbo].[QuestionMaster]([QuestionMasterId], [PortalId], [ModuleId], [QuestionText], [QuestionHelp], [QuestionOrder], [AnswerTypeId], [Required], [InsertedOn], [InsertedBy]) VALUES (6, 0, 271, 'Adınız', 'Adınız', 1, 1, 1, '20111007 20:52:00.000', 0)
INSERT INTO [dbo].[QuestionMaster]([QuestionMasterId], [PortalId], [ModuleId], [QuestionText], [QuestionHelp], [QuestionOrder], [AnswerTypeId], [Required], [InsertedOn], [InsertedBy]) VALUES (7, 0, 271, 'Soyadınız', 'Soyadınız', 2, 1, 1, '20111007 20:52:00.000', 0)
INSERT INTO [dbo].[QuestionMaster]([QuestionMasterId], [PortalId], [ModuleId], [QuestionText], [QuestionHelp], [QuestionOrder], [AnswerTypeId], [Required], [InsertedOn], [InsertedBy]) VALUES (8, 0, 271, 'E-Posta', 'E-Posta', 3, 1, 1, '20111007 20:52:00.000', 0)
INSERT INTO [dbo].[QuestionMaster]([QuestionMasterId], [PortalId], [ModuleId], [QuestionText], [QuestionHelp], [QuestionOrder], [AnswerTypeId], [Required], [InsertedOn], [InsertedBy]) VALUES (9, 0, 271, 'Sorunuz', 'Sorunuz', 4, 2, 1, '20111007 20:52:00.000', 0)
SET IDENTITY_INSERT [dbo].[QuestionMaster] OFF

SET IDENTITY_INSERT [dbo].[Slider] ON
INSERT INTO [Slider] ([SlideId],[PortalId],[ModuleId],[SlideTitle],[SlideImage],[SlideUrl],[SlideHtml]) VALUES (15,0,298,N'',N'/uploads/slider/slider1.png',N'',N'')
INSERT INTO [Slider] ([SlideId],[PortalId],[ModuleId],[SlideTitle],[SlideImage],[SlideUrl],[SlideHtml]) VALUES (16,0,298,N'',N'/uploads/slider/slider2.png',N'',N'')
INSERT INTO [Slider] ([SlideId],[PortalId],[ModuleId],[SlideTitle],[SlideImage],[SlideUrl],[SlideHtml]) VALUES (17,0,298,N'',N'/uploads/slider/slider3.png',N'',N'')
INSERT INTO [Slider] ([SlideId],[PortalId],[ModuleId],[SlideTitle],[SlideImage],[SlideUrl],[SlideHtml]) VALUES (18,0,298,N'',N'/uploads/slider/slider4.png',N'',N'')
INSERT INTO [Slider] ([SlideId],[PortalId],[ModuleId],[SlideTitle],[SlideImage],[SlideUrl],[SlideHtml]) VALUES (19,0,298,N'',N'/uploads/slider/slider5.png',N'',N'')
INSERT INTO [Slider] ([SlideId],[PortalId],[ModuleId],[SlideTitle],[SlideImage],[SlideUrl],[SlideHtml]) VALUES (20,0,298,N'',N'/uploads/slider/slider6.png',N'',N'')
INSERT INTO [Slider] ([SlideId],[PortalId],[ModuleId],[SlideTitle],[SlideImage],[SlideUrl],[SlideHtml]) VALUES (21,0,298,N'',N'/uploads/slider/slider7.png',N'',N'')
INSERT INTO [Slider] ([SlideId],[PortalId],[ModuleId],[SlideTitle],[SlideImage],[SlideUrl],[SlideHtml]) VALUES (22,0,298,N'',N'/uploads/slider/slider8.png',N'',N'')

SET IDENTITY_INSERT [dbo].[Slider] OFF


GO
--ALTER TABLE AlarmList CHECK CONSTRAINT FK_AlarmList_Users
ALTER TABLE Announcements CHECK CONSTRAINT FK_Announcements_Modules
ALTER TABLE BankInfo CHECK CONSTRAINT FK_BankInfo_Banks
ALTER TABLE Banks CHECK CONSTRAINT FK_Banks_Portals
ALTER TABLE Banner CHECK CONSTRAINT FK_Banner_Portals
ALTER TABLE Billings CHECK CONSTRAINT FK_Billings_Users
ALTER TABLE Cargo CHECK CONSTRAINT FK_Cargo_Portals
ALTER TABLE CargoInfo CHECK CONSTRAINT FK_CargoInfo_Cargo
ALTER TABLE Categories CHECK CONSTRAINT FK_Categories_Portals
ALTER TABLE CategoryTopProducts CHECK CONSTRAINT FK_CategoryTopProducts_Modules
ALTER TABLE Contacts CHECK CONSTRAINT FK_Contacts_Modules
ALTER TABLE Counter CHECK CONSTRAINT FK_Counter_Portals
ALTER TABLE Coupons CHECK CONSTRAINT FK_Coupons_Portals
ALTER TABLE CRMActivitys CHECK CONSTRAINT FK_CRMActivitys_Portals
ALTER TABLE CRMActivityTypes CHECK CONSTRAINT FK_CRMActivityTypes_Portals
ALTER TABLE CRMActivityUsers CHECK CONSTRAINT FK_CRMActivityUsers_Portals
ALTER TABLE CRMCitys CHECK CONSTRAINT FK_CRMCitys_Portals
ALTER TABLE CRMCode1 CHECK CONSTRAINT FK_CRMCode1_Portals
ALTER TABLE CRMCode10 CHECK CONSTRAINT FK_CRMCode10_Portals
ALTER TABLE CRMCode2 CHECK CONSTRAINT FK_CRMCode2_Portals
ALTER TABLE CRMCode3 CHECK CONSTRAINT FK_CRMCode3_Portals
ALTER TABLE CRMCode4 CHECK CONSTRAINT FK_CRMCode4_Portals
ALTER TABLE CRMCode5 CHECK CONSTRAINT FK_CRMCode5_Portals
ALTER TABLE CRMCode6 CHECK CONSTRAINT FK_CRMCode6_Portals
ALTER TABLE CRMCode7 CHECK CONSTRAINT FK_CRMCode7_Portals
ALTER TABLE CRMCode8 CHECK CONSTRAINT FK_CRMCode8_Portals
ALTER TABLE CRMCode9 CHECK CONSTRAINT FK_CRMCode9_Portals
ALTER TABLE CRMCodeDef CHECK CONSTRAINT FK_CRMCodeDef_Portals
ALTER TABLE CRMCustomers CHECK CONSTRAINT FK_CRMCustomers_Portals
ALTER TABLE CRMProfessions CHECK CONSTRAINT FK_CRMProfessions_Portals
ALTER TABLE CRMProjects CHECK CONSTRAINT FK_CRMProjects_Portals
ALTER TABLE CRMProjectStates CHECK CONSTRAINT FK_CRMProjectStates_Portals
ALTER TABLE CRMProjectTypes CHECK CONSTRAINT FK_CRMProjectTypes_Portals
ALTER TABLE CRMResults CHECK CONSTRAINT FK_CRMResults_Portals
ALTER TABLE CRMSectors CHECK CONSTRAINT FK_CRMSectors_Portals
ALTER TABLE CRMStates CHECK CONSTRAINT FK_CRMStates_CRMCitys
ALTER TABLE CRMStatus CHECK CONSTRAINT FK_CRMStatus_Portals
ALTER TABLE CRMTasks CHECK CONSTRAINT FK_CRMTasks_Portals
ALTER TABLE Currencys CHECK CONSTRAINT FK_Currencys_Portals
ALTER TABLE Discussion CHECK CONSTRAINT FK_Discussion_Modules
ALTER TABLE Documents CHECK CONSTRAINT FK_Documents_Modules
ALTER TABLE ErrorLog CHECK CONSTRAINT FK_ErrorLog_Portals
ALTER TABLE Events CHECK CONSTRAINT FK_Events_Modules
ALTER TABLE EventsLog CHECK CONSTRAINT FK_EventsLog_Portals
ALTER TABLE FBankInfo CHECK CONSTRAINT FK_FBankInfo_FBanks
ALTER TABLE FBanks CHECK CONSTRAINT FK_FBanks_FCampains
ALTER TABLE FBanks CHECK CONSTRAINT FK_FBanks_Banks
ALTER TABLE Flash CHECK CONSTRAINT FK_Flash_Modules
ALTER TABLE ForumThreads CHECK CONSTRAINT FK_ForumThreads_Portals
ALTER TABLE ForumTopics CHECK CONSTRAINT FK_ForumTopics_Portals
ALTER TABLE HtmlText CHECK CONSTRAINT FK_HtmlText_Modules
ALTER TABLE Links CHECK CONSTRAINT FK_Links_Modules
ALTER TABLE Marquee CHECK CONSTRAINT FK_Marquee_Modules
ALTER TABLE Modules CHECK CONSTRAINT FK_Modules_Tabs
ALTER TABLE ModuleSettings CHECK CONSTRAINT FK_ModuleSettings_Modules
ALTER TABLE News CHECK CONSTRAINT FK_News_Modules
ALTER TABLE OrderDetails CHECK CONSTRAINT FK_OrderDetails_Orders
ALTER TABLE Orders CHECK CONSTRAINT FK_Orders_Portals
ALTER TABLE OrderStatus CHECK CONSTRAINT FK_OrderStatus_Portals
ALTER TABLE Payments CHECK CONSTRAINT FK_Payments_Portals
ALTER TABLE PayTypes CHECK CONSTRAINT FK_PayTypes_Portals
ALTER TABLE PopUpText CHECK CONSTRAINT FK_PopUpText_Modules
ALTER TABLE ProductAlternatives CHECK CONSTRAINT FK_ProductAlternatives_Products
ALTER TABLE ProductAttributes CHECK CONSTRAINT FK_ProductAttributes_Products
ALTER TABLE ProductAttributes CHECK CONSTRAINT FK_ProductAttributes_ProductOptionsValues
ALTER TABLE ProductCategories CHECK CONSTRAINT FK_ProductCategories_Categories
ALTER TABLE ProductCode1 CHECK CONSTRAINT FK_ProductCode1_Portals
ALTER TABLE ProductCode10 CHECK CONSTRAINT FK_ProductCode10_Portals
ALTER TABLE ProductCode11 CHECK CONSTRAINT FK_ProductCode11_Portals
ALTER TABLE ProductCode12 CHECK CONSTRAINT FK_ProductCode12_Portals
ALTER TABLE ProductCode13 CHECK CONSTRAINT FK_ProductCode13_Portals
ALTER TABLE ProductCode14 CHECK CONSTRAINT FK_ProductCode14_Portals
ALTER TABLE ProductCode15 CHECK CONSTRAINT FK_ProductCode15_Portals
ALTER TABLE ProductCode2 CHECK CONSTRAINT FK_ProductCode2_Portals
ALTER TABLE ProductCode3 CHECK CONSTRAINT FK_ProductCode3_Portals
ALTER TABLE ProductCode4 CHECK CONSTRAINT FK_ProductCode4_Portals
ALTER TABLE ProductCode5 CHECK CONSTRAINT FK_ProductCode5_Portals
ALTER TABLE ProductCode6 CHECK CONSTRAINT FK_ProductCode6_Portals
ALTER TABLE ProductCode7 CHECK CONSTRAINT FK_ProductCode7_Portals
ALTER TABLE ProductCode8 CHECK CONSTRAINT FK_ProductCode8_Portals
ALTER TABLE ProductCode9 CHECK CONSTRAINT FK_ProductCode9_Portals
ALTER TABLE ProductCompare CHECK CONSTRAINT FK_ProductCompare_Portals
ALTER TABLE ProductFiles CHECK CONSTRAINT FK_ProductFiles_Products
ALTER TABLE ProductImages CHECK CONSTRAINT FK_ProductImages_Products
ALTER TABLE ProductKdvs CHECK CONSTRAINT FK_ProductKdvs_Portals
ALTER TABLE ProductKeywords CHECK CONSTRAINT FK_ProductKeywords_Products
ALTER TABLE ProductMarks CHECK CONSTRAINT FK_ProductMarks_Portals
ALTER TABLE ProductOptionsValues CHECK CONSTRAINT FK_ProductOptionsValues_ProductOptions
ALTER TABLE ProductPropertys CHECK CONSTRAINT FK_ProductPropertys_Products
ALTER TABLE ProductUnits CHECK CONSTRAINT FK_ProductUnits_Products
ALTER TABLE ProductUsages CHECK CONSTRAINT FK_ProductUsages_Products
ALTER TABLE ProductWizardGroups CHECK CONSTRAINT FK_ProductWizardGroups_ProductWizards
ALTER TABLE ProductWizardItems CHECK CONSTRAINT FK_ProductWizardItems_ProductWizardGroups
ALTER TABLE ProductWizardLookups CHECK CONSTRAINT FK_ProductWizardLookups_ProductWizardItems
ALTER TABLE ProductWizards CHECK CONSTRAINT FK_ProductWizards_Portals
ALTER TABLE ProductWizardValues CHECK CONSTRAINT FK_ProductWizardValues_ProductWizardLookups
ALTER TABLE ProductWizardValues CHECK CONSTRAINT FK_ProductWizardValues_Products
ALTER TABLE QuestionLookup CHECK CONSTRAINT FK_QuestionLookup_QuestionMaster
ALTER TABLE QuestionMaster CHECK CONSTRAINT FK_QuestionMaster_Modules
ALTER TABLE Reviews CHECK CONSTRAINT FK_Reviews_Products
ALTER TABLE Roles CHECK CONSTRAINT FK_Roles_Portals
ALTER TABLE Shippings CHECK CONSTRAINT FK_Shippings_Users
ALTER TABLE ShoppingCart CHECK CONSTRAINT FK_ShoppingCart_Products
ALTER TABLE ShoppingCartAttributes CHECK CONSTRAINT FK_ShoppingCartAttributes_ShoppingCart
ALTER TABLE SmsHistory CHECK CONSTRAINT FK_SmsHistory_Portals
ALTER TABLE SurveyAnswers CHECK CONSTRAINT FK_SurveyAnswers_Surveys
ALTER TABLE SurveyOptions CHECK CONSTRAINT FK_SurveyOptions_SurveyQuestions
ALTER TABLE SurveyQuestions CHECK CONSTRAINT FK_SurveyQuestions_Surveys
ALTER TABLE Surveys CHECK CONSTRAINT FK_Surveys_Modules
ALTER TABLE Tabs CHECK CONSTRAINT FK_Tabs_Portals
ALTER TABLE UserCode1 CHECK CONSTRAINT FK_UserCode1_Portals
ALTER TABLE UserCode2 CHECK CONSTRAINT FK_UserCode2_Portals
ALTER TABLE UserCode3 CHECK CONSTRAINT FK_UserCode3_Portals
ALTER TABLE UserCode4 CHECK CONSTRAINT FK_UserCode4_Portals
ALTER TABLE UserRoles CHECK CONSTRAINT FK_UserRoles_Roles
--ALTER TABLE Users CHECK CONSTRAINT FK_Users_Portals
ALTER TABLE UsersLog CHECK CONSTRAINT FK_UsersLog_Portals
ALTER TABLE Visits CHECK CONSTRAINT FK_Visits_Portals
ALTER TABLE WizardMainFilter CHECK CONSTRAINT FK_WizardMainFilter_WizardPropertys
ALTER TABLE WizardPropertys CHECK CONSTRAINT FK_WizardPropertys_Wizards
ALTER TABLE Wizards CHECK CONSTRAINT FK_Wizards_Portals
ALTER TABLE WizardSubFilter CHECK CONSTRAINT FK_WizardSubFilter_WizardPropertys
ALTER TABLE WizardTemplateProducts CHECK CONSTRAINT FK_TemplateProducts_WizardTemplates
ALTER TABLE WizardTemplates CHECK CONSTRAINT FK_WizardTemplates_Wizards
GO