ALTER TABLE AlarmList NOCHECK CONSTRAINT FK_AlarmList_Users
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


INSERT INTO [dbo].[ProductStokType] (StokTypeName, StokTypeUrl) VALUES (N'Cicek','')
INSERT INTO [dbo].[ProductStokType] (StokTypeName, StokTypeUrl) VALUES (N'Yemek','')
INSERT INTO [dbo].[ProductStokType] (StokTypeName, StokTypeUrl) VALUES (N'Perde','')
INSERT INTO [dbo].[ProductStokType] (StokTypeName, StokTypeUrl) VALUES (N'Poster','')
INSERT INTO [dbo].[ProductStokType] (StokTypeName, StokTypeUrl) VALUES (N'Toptan','')
INSERT INTO [dbo].[ProductStokType] (StokTypeName, StokTypeUrl) VALUES (N'Set','')


SET IDENTITY_INSERT [dbo].[Banks] ON
INSERT [dbo].[Banks] ([BankId], [PortalId], [TesanBankId], [ProBankId], [GenpaId], [GenpaCompanyId], [GenpaBankId], [BankName], [BankDesc], [BankOffice], [BankAccountNumber], [BankGetWayAddress], [Bank3dGetWayAddress], [GetwayId], [GetwayUserName], [GetwayPassword], [PosNo], [Xcip], [Description], [CardName], [BonusName], [IsCreditCard], [Logo], [Color], [IsDefault], [Key3D], [Use3DSecure], [PaynetType], [PaynetCode], [PaynetUserName], [PaynetPassword], [PayType], [UsePoints], [UseTaksit], [IsTest], [TestOrderId], [SecretCode1]) VALUES (39, 0, NULL, NULL, NULL, NULL, NULL, N'Garanti Bankası', N'Garanti-Bonus Kart', N'Şube', N'IBAN NO: TR XXXXXXXXXX', N'https://sanalposprov.garanti.com.tr/VPServlet', N'https://sanalposprov.garanti.com.tr/servlet/gt3dengine', N'isyerino', N'k.adi', N'parola', N'10000000', N'', N'', NULL, N'BONS', 1, N'/themes/default/images/bankalar/logo_kart_bonus.jpg', N'', 1, N'3dkey', 1, 0, N'', N'', N'', N'Auth', NULL, 1, 0, N'', NULL)
INSERT [dbo].[Banks] ([BankId], [PortalId], [TesanBankId], [ProBankId], [GenpaId], [GenpaCompanyId], [GenpaBankId], [BankName], [BankDesc], [BankOffice], [BankAccountNumber], [BankGetWayAddress], [Bank3dGetWayAddress], [GetwayId], [GetwayUserName], [GetwayPassword], [PosNo], [Xcip], [Description], [CardName], [BonusName], [IsCreditCard], [Logo], [Color], [IsDefault], [Key3D], [Use3DSecure], [PaynetType], [PaynetCode], [PaynetUserName], [PaynetPassword], [PayType], [UsePoints], [UseTaksit], [IsTest], [TestOrderId], [SecretCode1]) VALUES (40, 0, NULL, NULL, NULL, NULL, NULL, N'Yapı Kredi', N'Yapı Kredi - World Kart', N'Şube', N'IBAN NO: TR XXXXXXXXXX', N'https://www.posnet.ykb.com/PosnetWebService/XML', N'https://www.posnet.ykb.com/3DSWebService/YKBPaymentService', N'0', N'6xxxxxxxxx', N'6xxxxxxx', N'', N'', N'', NULL, N'WRLD', 1, N'/themes/default/images/bankalar/logo_kart_world.jpg', N'', 0, N'3dkey', 1, 0, N'', N'', N'', N'Auth', NULL, 1, 0, N'', NULL)
INSERT [dbo].[Banks] ([BankId], [PortalId], [TesanBankId], [ProBankId], [GenpaId], [GenpaCompanyId], [GenpaBankId], [BankName], [BankDesc], [BankOffice], [BankAccountNumber], [BankGetWayAddress], [Bank3dGetWayAddress], [GetwayId], [GetwayUserName], [GetwayPassword], [PosNo], [Xcip], [Description], [CardName], [BonusName], [IsCreditCard], [Logo], [Color], [IsDefault], [Key3D], [Use3DSecure], [PaynetType], [PaynetCode], [PaynetUserName], [PaynetPassword], [PayType], [UsePoints], [UseTaksit], [IsTest], [TestOrderId], [SecretCode1]) VALUES (42, 0, NULL, NULL, NULL, NULL, NULL, N'Akbank', N'Akbank - Axess', N'Şube', N'IBAN NO: TR XXXXXXXXXX', N'https://www.sanalakpos.com/servlet/cc5ApiServer', N'https://www.sanalakpos.com/servlet/est3Dgate', N'isyerino', N'k.adi', N'parola', N'', N'', N'', NULL, N'AXSS', 1, N'/themes/default/images/bankalar/logo_kart_axess.jpg', N'', 0, N'3dkey', 1, 0, N'', N'', N'', N'Auth', NULL, 1, 0, N'', NULL)
INSERT [dbo].[Banks] ([BankId], [PortalId], [TesanBankId], [ProBankId], [GenpaId], [GenpaCompanyId], [GenpaBankId], [BankName], [BankDesc], [BankOffice], [BankAccountNumber], [BankGetWayAddress], [Bank3dGetWayAddress], [GetwayId], [GetwayUserName], [GetwayPassword], [PosNo], [Xcip], [Description], [CardName], [BonusName], [IsCreditCard], [Logo], [Color], [IsDefault], [Key3D], [Use3DSecure], [PaynetType], [PaynetCode], [PaynetUserName], [PaynetPassword], [PayType], [UsePoints], [UseTaksit], [IsTest], [TestOrderId], [SecretCode1]) VALUES (44, 0, NULL, NULL, NULL, NULL, NULL, N'İş Bankası', N'İş Bankası - Maximum', N'Şube', N'IBAN NO: TR XXXXXXXXXX', N'https://vpos.est.com.tr/servlet/cc5ApiServer', N'https://spos.isbank.com.tr/servlet/est3Dgate', N'isyerino', N'k.adi', N'parola', N'', N'', N'', NULL, N'MAXM', 1, N'/themes/default/images/bankalar/logo_kart_maximum.jpg', N'', 0, N'3dkey', 1, 0, N'', N'', N'', N'Auth', NULL, 1, 0, N'', NULL)
INSERT [dbo].[Banks] ([BankId], [PortalId], [TesanBankId], [ProBankId], [GenpaId], [GenpaCompanyId], [GenpaBankId], [BankName], [BankDesc], [BankOffice], [BankAccountNumber], [BankGetWayAddress], [Bank3dGetWayAddress], [GetwayId], [GetwayUserName], [GetwayPassword], [PosNo], [Xcip], [Description], [CardName], [BonusName], [IsCreditCard], [Logo], [Color], [IsDefault], [Key3D], [Use3DSecure], [PaynetType], [PaynetCode], [PaynetUserName], [PaynetPassword], [PayType], [UsePoints], [UseTaksit], [IsTest], [TestOrderId], [SecretCode1]) VALUES (45, 0, NULL, NULL, NULL, NULL, NULL, N'Bank Asya', N'Banka Asya - Asyacard', N'Şube', N'IBAN NO: TR XXXXXXXXXX', N'https://vps.bankasya.com.tr/iposnet/sposnet.aspx', N'https://vpos.est.com.tr/servlet/est3Dgate', N'isyerino', N'k.adi', N'parola', N'', N'', N'', NULL, N'ZDGR', 1, N'/themes/default/images/bankalar/logo_kart_asya.jpg', N'', 0, N'3dkey', 1, 0, N'', N'', N'', N'Auth', NULL, 1, 0, N'', NULL)
INSERT [dbo].[Banks] ([BankId], [PortalId], [TesanBankId], [ProBankId], [GenpaId], [GenpaCompanyId], [GenpaBankId], [BankName], [BankDesc], [BankOffice], [BankAccountNumber], [BankGetWayAddress], [Bank3dGetWayAddress], [GetwayId], [GetwayUserName], [GetwayPassword], [PosNo], [Xcip], [Description], [CardName], [BonusName], [IsCreditCard], [Logo], [Color], [IsDefault], [Key3D], [Use3DSecure], [PaynetType], [PaynetCode], [PaynetUserName], [PaynetPassword], [PayType], [UsePoints], [UseTaksit], [IsTest], [TestOrderId], [SecretCode1]) VALUES (46, 0, NULL, NULL, NULL, NULL, NULL, N'HSBC Bank', N'HSBC - Advantage', N'Şube', N'IBAN NO: TR XXXXXXXXXX', N'https://vpos.advantage.com.tr/servlet/cc5ApiServer', N'https://vpos.est.com.tr/servlet/est3Dgate', N'isyerino', N'k.adi', N'parola', N'', N'', N'', NULL, N'ADVT', 1, N'/themes/default/images/bankalar/logo_kart_advantage.jpg', N'', 0, N'3dkey', 1, 0, N'', N'', N'', N'Auth', NULL, 1, 0, N'', NULL)
SET IDENTITY_INSERT [dbo].[Banks] OFF

SET IDENTITY_INSERT [dbo].[BankInfo] ON
INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (76, 40, 3, CAST(3.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (81, 39, 3, CAST(3.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (82, 39, 4, CAST(4.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (83, 39, 5, CAST(5.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (84, 39, 6, CAST(6.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (85, 39, 7, CAST(7.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (86, 39, 8, CAST(8.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (87, 39, 9, CAST(9.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (88, 39, 12, CAST(12.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (89, 40, 4, CAST(4.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (90, 40, 5, CAST(5.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (91, 40, 6, CAST(6.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (92, 40, 7, CAST(7.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (93, 40, 8, CAST(8.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (94, 40, 9, CAST(9.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (95, 40, 12, CAST(12.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (96, 42, 3, CAST(3.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (97, 42, 4, CAST(4.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (98, 42, 5, CAST(5.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (99, 42, 6, CAST(6.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (100, 42, 7, CAST(7.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (101, 42, 9, CAST(9.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (108, 44, 3, CAST(3.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (109, 44, 4, CAST(4.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (110, 44, 5, CAST(5.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (111, 44, 6, CAST(6.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (112, 44, 7, CAST(7.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (113, 44, 8, CAST(8.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (114, 44, 9, CAST(9.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (117, 44, 12, CAST(12.00 AS Decimal(18, 2)), N'')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (123, 45, 3, CAST(3.00 AS Decimal(18, 2)), N'3')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (124, 45, 4, CAST(4.00 AS Decimal(18, 2)), N'4')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (125, 45, 5, CAST(5.00 AS Decimal(18, 2)), N'5')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (127, 45, 6, CAST(6.00 AS Decimal(18, 2)), N'6')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (128, 46, 3, CAST(3.00 AS Decimal(18, 2)), N'3')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (129, 46, 4, CAST(4.00 AS Decimal(18, 2)), N'4')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (130, 46, 5, CAST(5.00 AS Decimal(18, 2)), N'5')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (131, 46, 6, CAST(6.00 AS Decimal(18, 2)), N'6')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (132, 45, 7, CAST(7.00 AS Decimal(18, 2)), N'7')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (133, 46, 7, CAST(7.00 AS Decimal(18, 2)), N'7')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (134, 46, 8, CAST(8.00 AS Decimal(18, 2)), N'8')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (135, 45, 8, CAST(8.00 AS Decimal(18, 2)), N'8')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (136, 46, 9, CAST(9.00 AS Decimal(18, 2)), N'9')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (137, 45, 9, CAST(9.00 AS Decimal(18, 2)), N'9')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (138, 45, 12, CAST(12.00 AS Decimal(18, 2)), N'12')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (139, 46, 12, CAST(12.00 AS Decimal(18, 2)), N'12')

INSERT [dbo].[BankInfo] ([BankInfoId], [BankId], [Taksit], [Rate], [Description]) VALUES (140, 42, 8, CAST(8.00 AS Decimal(18, 2)), N'8')

SET IDENTITY_INSERT [dbo].[BankInfo] OFF

SET IDENTITY_INSERT [dbo].[Cargo] ON


INSERT [dbo].[Cargo] ([CargoId], [PortalId], [CargoName], [CargoMail], [CashOnDelivery], [IsOnline], [ValueAdd], [IsActive], [ShowOrder], [ShowDetails]) VALUES (4, 0, N'PTT', N'ptt@ptt.com', 0, 0, CAST(5.00 AS Decimal(18, 2)), 1, 1, 1)

INSERT [dbo].[Cargo] ([CargoId], [PortalId], [CargoName], [CargoMail], [CashOnDelivery], [IsOnline], [ValueAdd], [IsActive], [ShowOrder], [ShowDetails]) VALUES (11, 0, N'UPS', N'ups@ups.com', 1, 0, CAST(5.00 AS Decimal(18, 2)), 1, 2, 1)

SET IDENTITY_INSERT [dbo].[Cargo] OFF

SET IDENTITY_INSERT [dbo].[CargoInfo] ON


INSERT [dbo].[CargoInfo] ([CargoInfoId], [CargoId], [Price], [Desi], [Desc]) VALUES (31, 4, CAST(10.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), NULL)

INSERT [dbo].[CargoInfo] ([CargoInfoId], [CargoId], [Price], [Desi], [Desc]) VALUES (50, 4, CAST(10.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), NULL)

INSERT [dbo].[CargoInfo] ([CargoInfoId], [CargoId], [Price], [Desi], [Desc]) VALUES (51, 4, CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL)

INSERT [dbo].[CargoInfo] ([CargoInfoId], [CargoId], [Price], [Desi], [Desc]) VALUES (52, 4, CAST(50.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL)

INSERT [dbo].[CargoInfo] ([CargoInfoId], [CargoId], [Price], [Desi], [Desc]) VALUES (53, 11, CAST(10.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), NULL)

INSERT [dbo].[CargoInfo] ([CargoInfoId], [CargoId], [Price], [Desi], [Desc]) VALUES (54, 11, CAST(10.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), NULL)

INSERT [dbo].[CargoInfo] ([CargoInfoId], [CargoId], [Price], [Desi], [Desc]) VALUES (55, 11, CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL)

INSERT [dbo].[CargoInfo] ([CargoInfoId], [CargoId], [Price], [Desi], [Desc]) VALUES (56, 11, CAST(50.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL)

INSERT [dbo].[CargoInfo] ([CargoInfoId], [CargoId], [Price], [Desi], [Desc]) VALUES (57, 11, CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), NULL)

INSERT [dbo].[CargoInfo] ([CargoInfoId], [CargoId], [Price], [Desi], [Desc]) VALUES (64, 4, CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)

INSERT [dbo].[CargoInfo] ([CargoInfoId], [CargoId], [Price], [Desi], [Desc]) VALUES (66, 11, CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)

SET IDENTITY_INSERT [dbo].[CargoInfo] OFF

SET IDENTITY_INSERT [dbo].[Products] ON


INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (246, 0, NULL, NULL, N'k-154MY7322', N'SI H COLOR 18 AYAR ALTIN', N'', N'', N'&nbsp;<b style="color: rgb(46, 71, 108); font-family: Arial, Tahoma; font-size: 12px;">Sayın Ziyaret&ccedil;i</b>
<p style="color: rgb(46, 71, 108); font-family: Arial, Tahoma; font-size: 12px; background-color: rgb(255, 255, 255);">Pırlanta bir mücevher satın alırken,alacağınız pırlantanın kalitesi ve rengi en üst düzeyde olmak zorunda degildir.&Ouml;nemli olan alınan hediyenin,verilen kişi i&ccedil;in özel olması ve hoşuna giden bir dizaynda olmasıdır. Tüm dünya da sadece VVS-VS kalitesinde ve D-E-G renginde gibi özel taşlar satılmamaktadır.Hatta bu taşlar &ccedil;ogunlukla 1.00 Karat üstü yatırım ama&ccedil;li alınırken,özellikle tercih edilir.</p>
<p style="color: rgb(46, 71, 108); font-family: Arial, Tahoma; font-size: 12px; background-color: rgb(255, 255, 255);">&Ouml;rnegin 0.50 Karat VVS-VS kalitesinde,G-H-I-J renginde bir tektaş pırlanta ile,SI1-SI2 kalitesinde G-H-I-J rengindeki tektaş pırlantayı yanyana getirdiginizde,&ccedil;ıplak gözle bu iki tası birbirinden profesyoneller dahi ayırt edemez.Renklerde de &ccedil;ok bariz farklılıklar yoktur.Tabii ki G renk ile J renk iki taş,ancak yan yana geldiginde bu fark ortaya &ccedil;ıkar.1.00 Karat altı alınan pırlantalarda bu tercihler tamamen,bulunduğunuz maddi durum ile alakalı bir se&ccedil;imdir.Kaldı ki yatırım ama&ccedil;lı almıyorsaniz,1.00 Karatlık bir taşı da büt&ccedil;enize göre alabilirsiniz.Tüm bu nedenlerle pırlantanızın kalitesini,rengini se&ccedil;erken öncelikle i&ccedil;inde bulunduğunuz maddi durumunuzu göz önüne alarak se&ccedil;iminizi yapınız.</p>
<p style="color: rgb(46, 71, 108); font-family: Arial, Tahoma; font-size: 12px; background-color: rgb(255, 255, 255);"></p>', N'', NULL, 111, 0, 1, 0, 0, 1000, 0, 1, 0, 302, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/si-h-color-18-ayar-altin_246/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25165 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (247, 0, NULL, NULL, N'34 VK Design', N'Plan V No Trespassing Unisex Kolye', N'', N'', N'<table style="max-width: 100%; background-color: rgb(255, 255, 255); border-collapse: collapse; border-spacing: 0px; color: rgb(40, 40, 40); font-family: ''Open Sans'', ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;">
    <tbody>
        <tr>
            <td colspan="2" style="border: 0px;">Deri Ve Metal</td>
        </tr>
        <tr>
            <td colspan="2" style="border: 0px;">Kolye Uzunluk: 29 cm</td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td colspan="2" style="border: 0px;">El Yapımı</td>
        </tr>
        <tr>
            <td colspan="2" style="border: 0px;">Sembol: Köpekbalığı&nbsp;</td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td colspan="2" style="border: 0px;">Sınırlı sayıda üretilmiştir.</td>
        </tr>
        <tr>
            <td colspan="2" style="border: 0px;"><strong>Deniz suyu ve parfümle temas etmemesi ürünün ömrünü uzatır. Rutubetsiz yerde muhafaza ediniz.<br />
            </strong></td>
        </tr>
    </tbody>
</table>
<p style="margin: 0px 0px 10px; color: rgb(40, 40, 40); font-size: 12px; font-family: ''Open Sans'', ''Helvetica Neue'', Helvetica, Arial, sans-serif; line-height: 20px; background-color: rgb(255, 255, 255);"></p>', N'', NULL, 111, 0, 1, 0, 0, 1000, 0, 1, 0, 247, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/plan-v-no-trespassing-unisex-kolye_247/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, CAST(0x0000A26400E25170 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (248, 0, NULL, NULL, N'KYC3631', N'Çelik Yıldız Kolye', N'', N'', N'<p style="font-family: Arial, Verdana, Helvetica, sans-serif; font-size: 11px; background-color: rgb(255, 255, 255);">Garanti Süresi : 24 ay<br />
<br />
Maden : &Ccedil;elik</p>
<p style="font-family: Arial, Verdana, Helvetica, sans-serif; font-size: 11px; background-color: rgb(255, 255, 255);">Gram : 6.00</p>
<p style="font-family: Arial, Verdana, Helvetica, sans-serif; font-size: 11px; background-color: rgb(255, 255, 255);">Model : Yıldız</p>', N'', NULL, 111, 0, 1, 0, 0, 1000, 0, 1, 0, 248, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/celik-yildiz-kolye_248/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, CAST(0x0000A26400E2517A AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (249, 0, NULL, NULL, N'k-201', N'Chavin 0,05 Crt Pırlantalı , Altın Kaplama Çelik Yusufçuk Set ( Kolye+Küpe+Bileklik )', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 111, 0, 1, 0, 0, 1000, 0, 1, 0, 249, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/chavin-005-crt-pirlantali--altin-kaplama-celik-yusufcuk-set---kolye-kupe-bileklik--_249/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25186 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (250, 0, NULL, NULL, N'k-987', N'Melin Paris 0,20 Karat Pırlanta Tektaş Yüzük', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 250, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/melin-paris-020-karat-pirlanta-tektas-yuzuk_250/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, CAST(0x0000A26400E25192 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (251, 0, NULL, NULL, N'g-422', N'Atasay Yeşil - Beyaz Altın Kalpli Yüzük', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 0, 0, 251, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/atasay-yesil---beyaz-altin-kalpli-yuzuk_251/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2519F AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (252, 0, NULL, NULL, N'ST0281', N'Goldstore Pırlanta 0.93 ct Sırataş Yüzük', N'', N'', N'<h2 class="h2_style" style="font-weight: normal; color: rgb(0, 102, 153); letter-spacing: 0.3px; font-size: 16px; text-align: center; font-family: ''Lucida Grande'', sans-serif; background-color: rgb(255, 255, 255);">Goldstore 18 Ayar Altın 0.93 ct Pırlanta Sırataş Yüzük DRW7980 A&ccedil;ıklaması</h2>
<div style="color: rgb(78, 78, 78); font-family: ''Lucida Grande'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255); width: 614px;">
<p style="margin: 5px 0px;"><b><i>Sevgiyi en iyi pırlanta anlatır. Bırakın sevginizi bu eşsiz Pırlanta Sırataş Yüzük anlatsın.</i></b></p>
<br />
<table width="100%" border="1" style="border-collapse: collapse; border-color: rgb(153, 153, 153); margin: 5px 0px;">
    <tbody>
        <tr align="center" style="font-weight: bold; background-color: rgb(247, 246, 244); background-position: initial initial; background-repeat: initial initial;">
            <td>Metal</td>
            <td>Ağırlık</td>
            <td>Ayar</td>
        </tr>
        <tr align="center">
            <td>Altın</td>
            <td>3.33 gr.</td>
            <td>18 K</td>
        </tr>
    </tbody>
</table>
<br />
<table width="500" border="1" style="border-collapse: collapse; border-color: rgb(153, 153, 153); margin: 5px 0px;">
    <tbody>
        <tr align="center" style="font-weight: bold; background-color: rgb(247, 246, 244); background-position: initial initial; background-repeat: initial initial;">
            <td><b>Taş Bilgileri</b></td>
            <td>Ağırlık</td>
            <td>Adet</td>
            <td>Renk</td>
            <td>Berraklık</td>
            <td>Şekil</td>
        </tr>
        <tr align="center">
            <td>Pırlanta</td>
            <td>0.93 ct</td>
            <td>5</td>
            <td>G</td>
            <td>VS</td>
            <td>Yuvarlak</td>
        </tr>
    </tbody>
</table>
<p style="background-color: rgb(247, 246, 244); border: 1px solid rgb(153, 153, 153); margin: 5px 0px; background-position: initial initial; background-repeat: initial initial;">Belirtilen gramlarda el iş&ccedil;iliğinden kaynaklanan &plusmn; %5 sapma oluşabilmektedir.</p>
<div style="border: 1px solid rgb(153, 153, 153); text-align: center; margin: 5px 0px;"><img src="http://www.hizlial.com/image/Resim/Alt%C4%B1n/1.jpg" width="300" height="213" alt="Goldstore Paketleme" style="border: 0px;" />
<p><i>Bu şık Goldstore Pırlanta Sırataş Yüzük garanti sertifikası, kutusu ve hediye paketi ile gönderilecektir.</i></p>
</div>
</div>', N'', NULL, 111, 0, 1, 1, 0, 999, 0, 1, 0, 252, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/goldstore-pirlanta-093-ct-siratas-yuzuk_252/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E251A9 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (253, 0, NULL, NULL, N'k-745', N'Onlu Çeyrek Altın (kulplu)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 111, 0, 1, 0, 0, 1000, 0, 1, 0, 253, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/onlu-ceyrek-altin--kulplu-_253/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E251B4 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (260, 0, NULL, NULL, N'bsh-66', N'Bosch Çim Biçme Makinesi', N'', N'', N'&nbsp;
<table style="border-collapse: collapse; width: 227px; font-family: arial; font-size: 11px; color: rgb(0, 0, 0); line-height: 18px; background-color: rgb(255, 255, 255);">
    <tbody>
        <tr>
            <td style="border-top-style: solid; border-top-color: rgb(195, 195, 196); height: 10px; padding: 0px; line-height: 16px; border-bottom-style: solid; border-bottom-color: rgb(195, 195, 196);">Akü gerilimi</td>
            <td style="border-top-style: solid; border-top-color: rgb(195, 195, 196); height: 10px; padding: 0px 0px 0px 6px; line-height: 16px; background-color: rgb(241, 241, 241); width: 70px; border-bottom-style: solid; border-bottom-color: rgb(195, 195, 196);">36 V</td>
        </tr>
        <tr>
            <td style="border-top-style: solid; border-top-color: rgb(195, 195, 196); height: 10px; padding: 0px; line-height: 16px; border-bottom-style: solid; border-bottom-color: rgb(195, 195, 196);">Kesme genişliği</td>
            <td style="border-top-style: solid; border-top-color: rgb(195, 195, 196); height: 10px; padding: 0px 0px 0px 6px; line-height: 16px; background-color: rgb(241, 241, 241); width: 70px; border-bottom-style: solid; border-bottom-color: rgb(195, 195, 196);">43 cm</td>
        </tr>
        <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(195, 195, 196);">
            <td style="border-top-style: solid; border-top-color: rgb(195, 195, 196); height: 10px; padding: 0px; line-height: 16px; border-bottom-style: solid; border-bottom-color: rgb(195, 195, 196);">Kesme yüksekliği</td>
            <td style="border-top-style: solid; border-top-color: rgb(195, 195, 196); height: 10px; padding: 0px 0px 0px 6px; line-height: 16px; background-color: rgb(241, 241, 241); width: 70px; border-bottom-style: solid; border-bottom-color: rgb(195, 195, 196);">20 ? 70 mm</td>
        </tr>
    </tbody>
</table>', N'', NULL, 110, 0, 1, 0, 0, 1000, 0, 1, 0, 260, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/bosch-cim-bicme-makinesi_260/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25213 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (261, 0, NULL, NULL, N'b-751', N'Bosphorus Bahce Süsü Metal Çiçekli', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 113, 0, 1, 0, 0, 1000, 0, 1, 0, 261, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/bosphorus-bahce-susu-metal-cicekli_261/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2521C AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (262, 0, NULL, NULL, N'b-426', N'Palmera CG520 Motorlu Tırpan Yan', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 262, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/palmera-cg520-motorlu-tirpan-yan_262/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25226 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (263, 0, NULL, NULL, N'B-145', N'Rem Rattan Balkon Mobilyası Seti', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 113, 0, 1, 0, 0, 1000, 0, 1, 0, 263, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/rem-rattan-balkon-mobilyasi-seti_263/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25231 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (264, 0, NULL, NULL, N'b-248', N'Mini Garden Küçük Saksı - Beyaz', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 264, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/mini-garden-kucuk-saksi---beyaz_264/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2523A AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (265, 0, NULL, NULL, N'h-191992', N' Lokma Anahtar Takımları', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td>
            <table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
                <tbody>
                    <tr class="row">
                        <td>Garanti</td>
                        <td>: 2 yıl garantili</td>
                    </tr>
                    <tr>
                        <td>&Uuml;retim Yeri</td>
                        <td>: İstanbul&nbsp;</td>
                    </tr>
                    <tr class="row">
                        <td>Marka</td>
                        <td>:&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Model</td>
                        <td>:</td>
                    </tr>
                    <tr class="row">
                        <td>En</td>
                        <td>:</td>
                    </tr>
                    <tr>
                        <td>Boy</td>
                        <td>:</td>
                    </tr>
                    <tr class="row">
                        <td>Yükseklik</td>
                        <td>:</td>
                    </tr>
                    <tr>
                        <td>Ağırlık</td>
                        <td>: 12 kg</td>
                    </tr>
                </tbody>
            </table>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 265, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/lokma-anahtar-takimlari_265/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, CAST(0x0000A26400E25243 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (266, 0, NULL, NULL, N'25556-63', N'Aysan Tasaruflu Lamba', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 114, 0, 1, 0, 0, 1000, 0, 1, 0, 266, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/aysan-tasaruflu-lamba_266/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2524C AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (267, 0, NULL, NULL, N'a-215', N'Silverline 3''lü Ankastre Set (CLASSY Davlumbaz + CS 114 Ocak + SLV 240 Fırın)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 115, 0, 1, 0, 0, 1000, 0, 1, 0, 267, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/silverline-3-lu-ankastre-set--classy-davlumbaz---cs-114-ocak---slv-240-firin-_267/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25255 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (268, 0, NULL, NULL, N'DWFN320T', N'Samsung DWFN320T 6 Programlı LED Ekran Bulaşık Makinesi A+ Enerji Sınıfı', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>
            <h3 class="title" style="margin: 0px; padding: 0px 10px; border: 0px; font-size: 17px; position: relative; top: -15px; background-color: rgb(246, 246, 246); color: rgb(26, 26, 26); height: 30px; line-height: 30px; left: -20px; width: 920px; font-family: arial, sans-serif;">Ayrıntılar</h3>
            <p style="margin: 0px 0px 45px; padding: 25px 0px 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); line-height: 18px; font-family: Arial, sans-serif; background-color: rgb(255, 255, 255);">-?A+AA? Enerji, Yıkama, Kurutma verimliliği&nbsp;<br />
            -&ccedil;eşitli programlar&nbsp;<br />
            -geniş ekran&nbsp;<br />
            -akıllı otomatik yıkama&nbsp;<br />
            -esnek raf sistemi</p>
            <div style="margin: 0px; padding: 25px 0px 0px; border: 0px; font-size: 12px; color: rgb(66, 66, 66); line-height: 16px; clear: both; overflow: hidden; width: 920px; font-family: Arial, sans-serif; background-color: rgb(255, 255, 255); position: relative !important;">
            <div style="margin: 0px; padding: 0px; border: 0px; float: left; width: 460px; position: relative !important;">
            <div style="margin: 0px; padding: 0px 20px 56px; border: 0px; float: left; width: 420px; position: relative !important;">
            <h2 style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative;">12 L su tüketimi</h2>
            <img alt="" src="http://www.samsung.com/tr/system/consumer/product/2011/10/26/dw_fn320txtr/1.jpg" style="margin: 0px; padding: 0px; border: 0px none; position: relative; vertical-align: middle;" /><br />
            <div style="margin: 13px 0px 0px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 18px; position: relative !important;">- Samsung Bulaşık Makinesi yıkama döngüsü sırasında su kullanımını optimum hale getirmek i&ccedil;in tasarlanmıştır. Klasik makinelerden 5 litre daha az, 12 litre su ile bulaşıkların her köşesini yıkar, ancak performansından asla ödün vermez.&nbsp;<br />
            - Samsung Bulaşık Makinesi, Klasik makinelere göre su verimliliğini arttırmak i&ccedil;in yeni bir i&ccedil; tasarım kullanır.</div>
            </div>
            <div style="margin: 0px; padding: 0px 20px 56px; border: 0px; float: left; width: 420px; position: relative !important;">
            <h2 style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative;">Daha İyi Enerji Verimliliği</h2>
            <img alt="" src="http://www.samsung.com/tr/system/consumer/product/2011/10/26/dw_fn320txtr/3.jpg" style="margin: 0px; padding: 0px; border: 0px none; position: relative; vertical-align: middle;" /><br />
            <div style="margin: 13px 0px 0px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 18px; position: relative !important;">Samsung bulaşık makinesi enerji verimliliği a&ccedil;ısından ?A+? değerine ve yıkama performansı ve kurutma verimliliği a&ccedil;ısından ?A? değerine sahiptir. Samsung?un A+AA değerine sahip performansıyla süper temiz bulaşıklar sizin olsun.</div>
            </div>
            <div style="margin: 0px; padding: 0px 20px 56px; border: 0px; float: left; width: 420px; position: relative !important;">
            <h2 style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative;">3 aşamalı temizlik</h2>
            <img alt="" src="http://www.samsung.com/tr/system/consumer/product/2011/10/26/dw_fn320txtr/5.jpg" style="margin: 0px; padding: 0px; border: 0px none; position: relative; vertical-align: middle;" /><br />
            <div style="margin: 13px 0px 0px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 18px; position: relative !important;">Samsung bulaşık makinelerinde bulunan 3?lü su &ccedil;ıkışı ile, daha yoğun temizlik ve kusursuz sonu&ccedil; elde edersiniz.</div>
            </div>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; float: right; width: 460px; position: relative !important;">
            <div style="margin: 0px; padding: 0px 20px 56px; border: 0px; float: left; width: 420px; position: relative !important;">
            <h2 style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative;">Kolay Temizleme</h2>
            <img alt="" src="http://www.samsung.com/tr/system/consumer/product/2011/10/26/dw_fn320txtr/2.jpg" style="margin: 0px; padding: 0px; border: 0px none; position: relative; vertical-align: middle;" /><br />
            <div style="margin: 13px 0px 0px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 18px; position: relative !important;">M24 paslanmaz &ccedil;elik model, özel yüzeyi ile ?kolay temizleme? gücüne sahip olmuştur. &Ouml;zel yüzeyi, parmak izlerine ve kirlenmeye karşı diren&ccedil;li olmasına yardımcı olur.</div>
            </div>
            <div style="margin: 0px; padding: 0px 20px 56px; border: 0px; float: left; width: 420px; position: relative !important;">
            <h2 style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative;">Otomatik program</h2>
            <img alt="" src="http://www.samsung.com/tr/system/consumer/product/2011/10/26/dw_fn320txtr/4.jpg" style="margin: 0px; padding: 0px; border: 0px none; position: relative; vertical-align: middle;" /><br />
            <div style="margin: 13px 0px 0px; padding: 0px; border: 0px; color: rgb(51, 51, 51); line-height: 18px; position: relative !important;">- Samsung''un Otomatik Yıkama döngüsü ile bulaşıkların temizlendiğinden ve su ve enerji kullanımının minimum düzeye düşürüldüğünden emin olun.&nbsp;<br />
            - Yoğunluk sensörü sudaki yiyecek par&ccedil;acıklarını algılar ve durulama suyu temizlendiğinde durması gerektiğini bilir.</div>
            </div>
            </div>
            </div>
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 106, 0, 1, 0, 0, 1000, 0, 1, 0, 268, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/samsung-dwfn320t-6-programli-led-ekran-bulasik-makinesi-a--enerji-sinifi_268/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A26400E25260 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (269, 0, NULL, NULL, N'2490CNG', N'NoFrost Buzdolabı 2120', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>
            <table id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup" class="gridDefault gridUrunOzellik" cellspacing="0" cellpadding="0" align="Center" border="0" style="width: 860px; color: rgb(68, 68, 68); font-family: Arial, Helvetica, sans-serif; font-size: 12px; border-width: 0px; border-collapse: collapse;">
                <tbody>
                    <tr>
                        <td class="gridRowDefault gridRowUrunOzellik" align="center" style="height: 26px; background-color: rgb(244, 244, 244);">
                        <div class="tableTitleDefault tableTitleUrunOzellik" style="text-align: left; background-image: none; padding-left: 0px; padding-top: 15px; padding-bottom: 10px; font-weight: bold; border-style: none none dotted; border-bottom-width: 1px; border-bottom-color: rgb(0, 0, 0); margin-left: 0px; font-size: 18px; font-family: ''arial narrow'';">Dondurucu Bölme &Ouml;zellikleri</div>
                        <table cellspacing="0" align="Center" border="0" id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup_ctl00_myDataGrid" style="width: 859px; border-collapse: collapse;">
                            <tbody>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Buzluk Tipi</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Buzmatik-kartuşsuz</td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="gridAlternateDefault gridAlternateUrunOzellik" align="center" style="height: 26px; background-color: rgb(242, 242, 242);">
                        <div class="tableTitleDefault tableTitleUrunOzellik" style="text-align: left; background-image: none; padding-left: 0px; padding-top: 15px; padding-bottom: 10px; font-weight: bold; border-style: none none dotted; border-bottom-width: 1px; border-bottom-color: rgb(0, 0, 0); margin-left: 0px; font-size: 18px; font-family: ''arial narrow'';">Soğutucu Bölme &Ouml;zellikleri</div>
                        <table cellspacing="0" align="Center" border="0" id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup_ctl01_myDataGrid" style="width: 859px; border-collapse: collapse;">
                            <tbody>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px; background-color: rgb(244, 244, 244);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Gövde Raf Tipi</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Cam</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">0&deg;c Bölmesi</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Var</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px; background-color: rgb(244, 244, 244);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Kapı Rafı Altı Saklama Kabı</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Soft opening</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Yatay Şişelik</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Krom Kaplı- Tam Boy</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px; background-color: rgb(244, 244, 244);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Nem Kontrolü</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Yok</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Fan</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Var</td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="gridRowDefault gridRowUrunOzellik" align="center" style="height: 26px; background-color: rgb(244, 244, 244);">
                        <div class="tableTitleDefault tableTitleUrunOzellik" style="text-align: left; background-image: none; padding-left: 0px; padding-top: 15px; padding-bottom: 10px; font-weight: bold; border-style: none none dotted; border-bottom-width: 1px; border-bottom-color: rgb(0, 0, 0); margin-left: 0px; font-size: 18px; font-family: ''arial narrow'';">Genel &Ouml;zellikler</div>
                        <table cellspacing="0" align="Center" border="0" id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup_ctl02_myDataGrid" style="width: 859px; border-collapse: collapse;">
                            <tbody>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Kabin Rengi</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Gümüş</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px; background-color: rgb(242, 242, 242);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Kapı Yönü &Ccedil;evirebilme<a style="outline: none; color: rgb(51, 51, 51); background-image: url(http://www.arcelik.com.tr/images/global/q-mark.gif); float: right; display: block; width: 17px; height: 17px; text-indent: -9999px; background-position: 0% 0%;"><span id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup_ctl02_myDataGrid_ctl03_lbfOzellikBilgiOpr"><img src="http://www.arcelik.com.tr/images/green.gif" border="0" alt="" /></span></a></td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Var</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Su Pınarı</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Yok</td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="gridAlternateDefault gridAlternateUrunOzellik" align="center" style="height: 26px; background-color: rgb(242, 242, 242);">
                        <div class="tableTitleDefault tableTitleUrunOzellik" style="text-align: left; background-image: none; padding-left: 0px; padding-top: 15px; padding-bottom: 10px; font-weight: bold; border-style: none none dotted; border-bottom-width: 1px; border-bottom-color: rgb(0, 0, 0); margin-left: 0px; font-size: 18px; font-family: ''arial narrow'';">Hijyen &Ouml;zellikleri</div>
                        <table cellspacing="0" align="Center" border="0" id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup_ctl03_myDataGrid" style="width: 859px; border-collapse: collapse;">
                            <tbody>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px; background-color: rgb(244, 244, 244);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">iyonizer<a style="outline: none; color: rgb(51, 51, 51); background-image: url(http://www.arcelik.com.tr/images/global/q-mark.gif); float: right; display: block; width: 17px; height: 17px; text-indent: -9999px; background-position: 0% 0%;"><span id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup_ctl03_myDataGrid_ctl02_lbfOzellikBilgiOpr"><img src="http://www.arcelik.com.tr/images/green.gif" border="0" alt="" /></span></a></td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Var</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Bakteri Filtresi</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Var</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px; background-color: rgb(244, 244, 244);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Mavi ışık<a style="outline: none; color: rgb(51, 51, 51); background-image: url(http://www.arcelik.com.tr/images/global/q-mark.gif); float: right; display: block; width: 17px; height: 17px; text-indent: -9999px; background-position: 0% 0%;"><span id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup_ctl03_myDataGrid_ctl04_lbfOzellikBilgiOpr"><img src="http://www.arcelik.com.tr/images/green.gif" border="0" alt="" /></span></a></td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Var</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Antibakteriyel Conta<a style="outline: none; color: rgb(51, 51, 51); background-image: url(http://www.arcelik.com.tr/images/global/q-mark.gif); float: right; display: block; width: 17px; height: 17px; text-indent: -9999px; background-position: 0% 0%;"><span id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup_ctl03_myDataGrid_ctl05_lbfOzellikBilgiOpr"><img src="http://www.arcelik.com.tr/images/green.gif" border="0" alt="" /></span></a></td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Var</td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="gridRowDefault gridRowUrunOzellik" align="center" style="height: 26px; background-color: rgb(244, 244, 244);">
                        <div class="tableTitleDefault tableTitleUrunOzellik" style="text-align: left; background-image: none; padding-left: 0px; padding-top: 15px; padding-bottom: 10px; font-weight: bold; border-style: none none dotted; border-bottom-width: 1px; border-bottom-color: rgb(0, 0, 0); margin-left: 0px; font-size: 18px; font-family: ''arial narrow'';">&Ouml;l&ccedil;üler</div>
                        <table cellspacing="0" align="Center" border="0" id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup_ctl04_myDataGrid" style="width: 859px; border-collapse: collapse;">
                            <tbody>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Yükseklik - Ambalajsız (cm)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">194,5</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px; background-color: rgb(242, 242, 242);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Genişlik - Ambalajsız (cm)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">70</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Derinlik - Ambalajsız (cm)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">68</td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="gridAlternateDefault gridAlternateUrunOzellik" align="center" style="height: 26px; background-color: rgb(242, 242, 242);">
                        <div class="tableTitleDefault tableTitleUrunOzellik" style="text-align: left; background-image: none; padding-left: 0px; padding-top: 15px; padding-bottom: 10px; font-weight: bold; border-style: none none dotted; border-bottom-width: 1px; border-bottom-color: rgb(0, 0, 0); margin-left: 0px; font-size: 18px; font-family: ''arial narrow'';">Teknik &Ouml;zellikler</div>
                        <table cellspacing="0" align="Center" border="0" id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup_ctl05_myDataGrid" style="width: 859px; border-collapse: collapse;">
                            <tbody>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px; background-color: rgb(244, 244, 244);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Enerji Sınıfı</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">A++</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Soğutucu Gaz</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">R600a</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px; background-color: rgb(244, 244, 244);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">iklim Sınıfı</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">SN-T</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Kontrol Sistemi</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Elektronik</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px; background-color: rgb(244, 244, 244);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Enerji Sarfiyatı- Günlük (kWh/24saat)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">0</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Dondurma Kapasitesi (kg/24saat)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">6,0</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px; background-color: rgb(244, 244, 244);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Elektrik KesintisindeSaklama Süresi (saat)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">24,0</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Ses Seviyesi (dBA)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">44</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px; background-color: rgb(244, 244, 244);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Toplam Brüt Hacim (lt)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">475</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Soğutucu Bölme Net Hacmi (lt)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">312</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px; background-color: rgb(244, 244, 244);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Dondurucu Bölme Net Hacmi (lt)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">125</td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="gridRowDefault gridRowUrunOzellik" align="center" style="height: 26px; background-color: rgb(244, 244, 244);">
                        <div class="tableTitleDefault tableTitleUrunOzellik" style="text-align: left; background-image: none; padding-left: 0px; padding-top: 15px; padding-bottom: 10px; font-weight: bold; border-style: none none dotted; border-bottom-width: 1px; border-bottom-color: rgb(0, 0, 0); margin-left: 0px; font-size: 18px; font-family: ''arial narrow'';">Diğer</div>
                        <table cellspacing="0" align="Center" border="0" id="ctl00_frmMain_ascUrunOzellik_dtParametreGrup_ctl06_myDataGrid" style="width: 859px; border-collapse: collapse;">
                            <tbody>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">&Uuml;rün Tipi</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">No Frost Kombi Soğutucu/Dondurucu</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px; background-color: rgb(242, 242, 242);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Dondurucu &Ccedil;ekmece Sayısı</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">2</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Hızlı Dondurma Bölmesi</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Var</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px; background-color: rgb(242, 242, 242);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">ikinci Kat Sebzelik</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Var</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Şişe Tutucu</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">Var</td>
                                </tr>
                                <tr class="gridAlternateDefault gridAlternateUrunOzellikDetay" style="height: 26px; background-color: rgb(242, 242, 242);">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">Ağırlık - Ambalajsız (kg)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">85</td>
                                </tr>
                                <tr class="gridRowDefault gridRowUrunOzellikDetay" style="height: 26px;">
                                    <td class="gridUrunOzellikDetayBaslik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68); width: 288px;">25&deg;c Enerji Sarfiyatı (kwh/24h)</td>
                                    <td class="gridUrunOzellikDetayIcerik" style="border-color: rgb(204, 204, 204); padding-left: 10px; color: rgb(68, 68, 68);">0,849</td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            </td>
        </tr>
    </tbody>
</table>', N'', NULL, 115, 0, 1, 0, 0, 1000, 0, 1, 0, 269, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/nofrost-buzdolabi-2120_269/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A26400E2526B AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (270, 0, NULL, NULL, N'9146 YK', N'Kurutmalı Arçelik Çamaşır Makinası', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>
            <table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
                <tbody>
                    <tr class="row">
                        <td>Garanti</td>
                        <td>: 5 yıl garantili<span class="Apple-tab-span" style="white-space:pre">	</span></td>
                    </tr>
                    <tr>
                        <td>&Uuml;retim Yeri</td>
                        <td>: İstanbul</td>
                    </tr>
                    <tr class="row">
                        <td>Marka</td>
                        <td>: Ar&ccedil;elik</td>
                    </tr>
                    <tr>
                        <td>Model</td>
                        <td>:</td>
                    </tr>
                    <tr class="row">
                        <td>En</td>
                        <td>:</td>
                    </tr>
                    <tr>
                        <td>Boy</td>
                        <td>:</td>
                    </tr>
                    <tr class="row">
                        <td>Yükseklik</td>
                        <td>:</td>
                    </tr>
                    <tr>
                        <td>Ağırlık</td>
                        <td>:</td>
                    </tr>
                </tbody>
            </table>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 115, 0, 1, 0, 0, 1000, 0, 1, 0, 270, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/kurutmali-arcelik-camasir-makinasi_270/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A26400E25275 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (271, 0, NULL, NULL, N'M-153', N'Philips HD4417/20 Kompak Elektrikli Izgara (2000W)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 116, 0, 1, 0, 0, 1000, 0, 1, 0, 271, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/philips-hd4417/20-kompak-elektrikli-izgara--2000w-_271/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2527F AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (272, 0, NULL, NULL, N'M-120', N'Essenso Ecotouch Valencia Kırmızı Set', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 117, 0, 1, 0, 0, 1000, 0, 1, 0, 272, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/essenso-ecotouch-valencia-kirmizi-set_272/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A26400E25289 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (273, 0, NULL, NULL, N'a-012563', N'Asus 3456 ', N'', N'', N'<h3 style="font-size: 12px; padding: 0px 0px 5px; margin: 0px; border: 0px; outline: none; color: rgb(58, 106, 203); font-family: ''Lucida Grande'', ''Lucida Sans Unicode'', Helvetica, Arial, Verdana, sans-serif; line-height: 16.796875px; background-color: rgb(255, 255, 255);">Asus 3456&nbsp;&Ouml;zellikleri</h3>
<div id="PDT" style="font-size: 12px; padding: 0px; margin: 0px; border: 0px; outline: none; color: rgb(51, 51, 51); font-family: ''Lucida Grande'', ''Lucida Sans Unicode'', Helvetica, Arial, Verdana, sans-serif; line-height: 16.796875px; background-color: rgb(255, 255, 255);">
<p style="padding: 0px; margin: 0px; border: 0px; outline: none;">İşlemci Türü: Intel Core i7, İşlemci Hızı: 2.40 GHz,<br />
Ekran Kartı: NVIDIA, Ekran Kartı Tipi: Harici,<br />
Ekran Kartı Modeli: Nvidia GT650M,<br />
Ekran Kartı Hafızası: 4 GB, Ekran Boyutu: 15.6&quot;,<br />
Ekran &Ccedil;özünürlüğü: 1920x1080, Sabit Disk: 1 TB,<br />
Bellek: 16 GB, İşletim Sistemi: Win 8</p>
</div>', N'', NULL, 118, 0, 1, 0, 0, 1000, 0, 1, 0, 273, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/asus-3456_273/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25295 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (274, 0, NULL, NULL, N'L-590', N'Lenovo B590', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 119, 0, 1, 0, 0, 1000, 0, 1, 0, 274, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/lenovo-b590_274/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E252A2 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (275, 0, NULL, NULL, N'imac-88', N'Apple iMac Z0M7Qi7', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>Garanti</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Üretim Yeri</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Marka</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Model</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>En</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Boy</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Yükseklik</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Ağırlık</td>
            <td>:</td>
        </tr>
    </tbody>
</table>', N'', NULL, 103, 0, 1, 0, 0, 1000, 0, 1, 0, 3, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/apple-imac-z0m7qi7_275/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E252AD AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (276, 0, NULL, NULL, N'a-102', N'Lenova W3-810 32GB 8" Tablet', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 119, 0, 1, 0, 0, 1000, 0, 1, 0, 276, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/lenova-w3-810-32gb-8--tablet_276/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E252B8 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (277, 0, NULL, NULL, N'z-475', N'Lenovo Yoga 11 Nvidia Tegra 3 1.3GHz 2GB 32GB SSD 11.6" Dokunmatik Ultrabook Bilgisayar (Gümüş) 59-361319', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 119, 0, 1, 0, 0, 1000, 0, 1, 0, 277, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/lenovo-yoga-11-nvidia-tegra-3-13ghz-2gb-32gb-ssd-116--dokunmatik-ultrabook-bilgisayar--gumus--59-3_277/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, CAST(0x0000A26400E252C2 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (278, 0, NULL, NULL, N's-196', N'Sandisk Cruzer Blade 16GB Usb Bellek (SDCZ50-016G-B35)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>
            <table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
                <tbody>
                    <tr class="row">
                        <td>Garanti</td>
                        <td>: 2 yıl garantili<span class="Apple-tab-span" style="white-space:pre">	</span></td>
                    </tr>
                    <tr>
                        <td>&Uuml;retim Yeri</td>
                        <td>: İstanbul</td>
                    </tr>
                    <tr class="row">
                        <td>Marka</td>
                        <td>: Sandisk</td>
                    </tr>
                    <tr>
                        <td>Model</td>
                        <td>: Cruzer Blade</td>
                    </tr>
                    <tr class="row">
                        <td>En</td>
                        <td>:</td>
                    </tr>
                    <tr>
                        <td>Boy</td>
                        <td>:</td>
                    </tr>
                    <tr class="row">
                        <td>Yükseklik</td>
                        <td>:</td>
                    </tr>
                    <tr>
                        <td>Ağırlık</td>
                        <td>:</td>
                    </tr>
                </tbody>
            </table>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 278, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/sandisk-cruzer-blade-16gb-usb-bellek--sdcz50-016g-b35-_278/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E252CC AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (279, 0, NULL, NULL, N'c03234786', N'Hp Renkli Tarayıcı', N'', N'', N'&nbsp;
<table width="100%" cellspacing="0" cellpadding="5" border="0" style="color: rgb(0, 0, 0); font-family: verdana, tahoma, helvetica; background-color: rgb(255, 255, 255); font-size: 11px;">
    <tbody>
        <tr>
            <td class="rowBackground1  bold" style="font-weight: bold; background-color: rgb(238, 238, 238); color: rgb(77, 78, 83);">Garanti</td>
            <td class="rowBackground1" style="background-color: rgb(238, 238, 238); color: rgb(77, 78, 83);">24&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="bold rowBackground1" style="font-weight: bold; background-color: rgb(238, 238, 238); color: rgb(77, 78, 83); border-bottom-style: solid; border-bottom-color: rgb(247, 247, 247);">&Ouml;zellikler</td>
        </tr>
        <tr>
            <td colspan="2" class="rowBackground1 " style="background-color: rgb(238, 238, 238); color: rgb(77, 78, 83); width: 535px;">
            <table class="leftAlign" cellspacing="0" cellpadding="3" id="ContentPlaceHolder1_TabContainer2_tabOzellik_rptProps" style="margin-left: 10px; width: 518px; border-collapse: collapse; position: relative;">
                <tbody>
                    <tr style="height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Baskı Hızı</td>
                        <td>Dakikada 18 sayfa s/b</td>
                    </tr>
                    <tr class="rowBackground3" style="background-color: rgb(255, 255, 255); color: rgb(77, 78, 83); height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Baskı &Ccedil;özünürlüğü</td>
                        <td>600 x 600 dpi</td>
                    </tr>
                    <tr style="height: 15px;">
                        <td style="font-weight: bold; width: 190px;">İlk Baskı Süresi</td>
                        <td>Siyah:8,5 saniye gibi kısa bir sürede</td>
                    </tr>
                    <tr class="rowBackground3" style="background-color: rgb(255, 255, 255); color: rgb(77, 78, 83); height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Fotokopi &Ccedil;özünürlüğü</td>
                        <td>600 x 400 dpi</td>
                    </tr>
                    <tr style="height: 15px;">
                        <td style="font-weight: bold; width: 190px;">&Ouml;n Bellek</td>
                        <td>8 MB</td>
                    </tr>
                    <tr class="rowBackground3" style="background-color: rgb(255, 255, 255); color: rgb(77, 78, 83); height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Faks &Ouml;zelliği</td>
                        <td>Yok</td>
                    </tr>
                    <tr style="height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Kağıt Se&ccedil;enekleri</td>
                        <td>A4, A5, C6 (Zarf), B5</td>
                    </tr>
                    <tr class="rowBackground3" style="background-color: rgb(255, 255, 255); color: rgb(77, 78, 83); height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Kağıt Besleme Kapasitesi</td>
                        <td>150 Sayfa</td>
                    </tr>
                    <tr style="height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Tarayıcı &Ccedil;özünürlüğü</td>
                        <td>1200 x 1200 dpi</td>
                    </tr>
                    <tr class="rowBackground3" style="background-color: rgb(255, 255, 255); color: rgb(77, 78, 83); height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Kü&ccedil;ültme/Büyütme</td>
                        <td>%30 - %400</td>
                    </tr>
                    <tr style="height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Başlangı&ccedil; Toneri</td>
                        <td>Demo</td>
                    </tr>
                    <tr class="rowBackground3" style="background-color: rgb(255, 255, 255); color: rgb(77, 78, 83); height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Toner Sayısı</td>
                        <td>1 Adet</td>
                    </tr>
                    <tr style="height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Drum Sayısı</td>
                        <td>Tonerle tümleşik</td>
                    </tr>
                    <tr class="rowBackground3" style="background-color: rgb(255, 255, 255); color: rgb(77, 78, 83); height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Ekran Tipi</td>
                        <td>LED</td>
                    </tr>
                    <tr style="height: 15px;">
                        <td style="font-weight: bold; width: 190px;">LCD Ekran</td>
                        <td>2 Satır LED</td>
                    </tr>
                    <tr class="rowBackground3" style="background-color: rgb(255, 255, 255); color: rgb(77, 78, 83); height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Aylık İş Hacmi Max</td>
                        <td>8.000 Sayfa</td>
                    </tr>
                    <tr style="height: 15px;">
                        <td style="font-weight: bold; width: 190px;">&Ouml;l&ccedil;üler (Ağırlık/YxGxD)</td>
                        <td>7 Kg / 250 x 415 x 365 mm</td>
                    </tr>
                    <tr class="rowBackground3" style="background-color: rgb(255, 255, 255); color: rgb(77, 78, 83); height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Uyumlu İşletim Sistemleri</td>
                        <td>Windows&reg; 7 , Windows Vista&reg; , Microsoft&reg; Windows&reg; XP, Server 2003, Server 2008 , Mac OS X v10.4, v10.5, v10.6 , Linux</td>
                    </tr>
                    <tr style="height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Bağlantı &Ouml;zellikleri</td>
                        <td>USB 2.0</td>
                    </tr>
                    <tr class="rowBackground3" style="background-color: rgb(255, 255, 255); color: rgb(77, 78, 83); height: 15px;">
                        <td style="font-weight: bold; width: 190px;">Menşei</td>
                        <td>P.R.C</td>
                    </tr>
                </tbody>
            </table>
            </td>
        </tr>
    </tbody>
</table>', N'', NULL, 100, 0, 1, 0, 0, 1000, 0, 1, 0, 279, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/hp-renkli-tarayici_279/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E252DB AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (280, 0, NULL, NULL, N'5003', N'BRIDGESTONE 205/55 R16 91V T001 Lastik', N'', N'', N'<img alt="" style="border: 0px; margin-top: 0.5em; font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" src="http://www.lastik24.com/Images/MarkLogoImages/24_s.jpg" id="imgProductMark" /><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);">&nbsp;</span><br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<span style="background-color: rgb(255, 255, 255); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px;">Bridgestone&nbsp;T001 Performans Lastik</span><br />
<br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<span style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);">Viraj kabiliyeti ve ıslak zemin performansı geliştirilmiş Potenza T001, performansı sevenler i&ccedil;in üretildi. Hayatı sevenler i&ccedil;in emniyetten ödün vermedi.</span><br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<span style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);">Düz diş tasarımı, direksiyon merkezinde daha iyi hissetme ve yol tutuş tepkisi sağlamak i&ccedil;in merkez kanal duvarının yerini alıyor.</span><br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<span style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);">Geniş düz diş daha iyi yol tutuş tepkisi ve dönüş performansı i&ccedil;in eksen &ccedil;izgisinin i&ccedil;ine yerleştirilmiştir.</span><br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<span style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);">Sertliği arttırır, bozulmayı azaltır ve daha sert, daha doğrudan yol tutuş ve daha gü&ccedil;lü kavrama sağlar.</span><br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<span style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);">Daha sert merkez düz dişi, gü&ccedil;lendirilmiş yanal sertliği ve doğrudan yol tutuş hissi verir.</span><br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<span style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);">Daha iyi kuru zemin yol tutuşu sağlar.</span><br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<span style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);">Islak zeminde yol tutuşunu ve yuvarlanma direncini geliştirir.</span><br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<span style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);">Motor sporlarından ilham alan, daha iyi su tahliyesi sağlayan ve ıslak zeminde temas azalmasını önleyen performans i&ccedil;in dalgalı tasarımı vardır.</span><br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<span style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);">Kanal zeminindeki &ccedil;ıkıntılaron artırılması, su boşaltmayı sağlayıp ıslak zeminde temasın azalmasını önlerken, performansı destekler.</span><br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<div style="margin: 0px; padding: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);"></div>
<br style="font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" />
<table style="border-collapse: collapse; border-spacing: 0px; margin-top: 10px; border-style: solid; border-color: rgb(255, 218, 139); margin-bottom: 10px; color: rgb(0, 0, 0); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: 15px; background-color: rgb(255, 255, 255);" class="ozelliktable">
    <tbody>
        <tr style="color: rgb(114, 114, 114); background-color: rgb(250, 250, 250);">
            <th style="margin: 0px; padding: 5px; background-color: orange; color: rgb(255, 255, 255);" colspan="2">&Ouml;zellikler</th>
        </tr>
        <tr style="color: rgb(114, 114, 114); background-color: rgb(250, 250, 250);">
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">Taban Genişliği(mm)</td>
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">205</td>
        </tr>
        <tr style="color: rgb(114, 114, 114); background-color: rgb(250, 250, 250);">
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">Yanak Kalınlığı(%)</td>
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">55</td>
        </tr>
        <tr style="color: rgb(114, 114, 114); background-color: rgb(250, 250, 250);">
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">Jant &Ccedil;apı(inch)</td>
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">16</td>
        </tr>
        <tr style="color: rgb(114, 114, 114); background-color: rgb(250, 250, 250);">
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">Yük Endeksi</td>
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">91</td>
        </tr>
        <tr style="color: rgb(114, 114, 114); background-color: rgb(250, 250, 250);">
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">Hız Kodu</td>
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">V</td>
        </tr>
        <tr style="color: rgb(114, 114, 114); background-color: rgb(250, 250, 250);">
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">Kullanım</td>
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">Standart Binek</td>
        </tr>
        <tr style="color: rgb(114, 114, 114); background-color: rgb(250, 250, 250);">
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">Marka</td>
            <td style="margin: 0px; padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(255, 218, 139); border-right-style: solid; border-right-color: rgb(255, 218, 139);">Bridgestone</td>
        </tr>
    </tbody>
</table>', N'', NULL, 120, 0, 1, 0, 0, 1000, 0, 1, 0, 280, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/bridgestone-205/55-r16-91v-t001-lastik_280/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, CAST(0x0000A26400E252E8 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (281, 0, NULL, NULL, N'Ç12332', N'Gülümse Sevgilim', N'', N'', N'&nbsp;<span style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">Beyaz lilyum aranjmanı, sevdiklerinizi güzelliklerle buluşturmanız i&ccedil;in sizleri bekliyor.</span><br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">Lilyum sayısı : 2 adet</span><br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">Kullanılan diğer ürünler : Cipso, yeşillik</span><br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">&Ccedil;i&ccedil;eğin yaklaşık yüksekliği : 30 cm</span><br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">Vazonun ağırlığı : 2,2 kg</span><br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<div class="prodTeslimatKosullari" style="margin: 0px; padding: 0px; color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">&Ccedil;i&ccedil;ek siparişiniz belirtmiş olduğunuz alıcı adresine teslim edilecektir.<br />
Alıcının kapıyı a&ccedil;maması veya yerinde olmaması gibi durumlarda alıcı telefonundan aranabilir.<br />
&Ccedil;i&ccedil;eğinizin kime ve ne zaman teslim edildiği bilgisi&nbsp;<strong>&quot;Teslimat Anında&quot;</strong>mobil cihazlar yardımı ile size&nbsp;<strong>SMS</strong>&nbsp;ve&nbsp;<strong>E-Mail</strong>&nbsp;ile bildirilir.<span style="display: block;">Devamı</span></div>', N'', NULL, 121, 0, 1, 0, 0, 1002, 0, 0, 0, 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/gulumse-sevgilim_281/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E252F2 AS DateTime), 1, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (284, 0, NULL, NULL, N'01-30214', N'Adı Aşk Kırmızı Güller ve Antoryumlar', N'', N'', N'<span style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">5 adet kırmızı gül ve kalpli &ccedil;ubukla gü&ccedil;lü duygulara hitap eden, yeşillik ve cipsolarla zenginleştirilen cam vazoda kırmızı gül buketi ile mutluluğa adım atın!</span><br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">Kırmızı gül sayısı : 5 adet</span><br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">Kullanılan diğer ürünler : Cipso, yeşillik</span><br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">&Ccedil;i&ccedil;eğin yaklaşık yüksekliği : 30 cm</span><br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">Vazonun ağırlığı : 2 kg</span><br style="color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);" />
<div class="prodTeslimatKosullari" style="margin: 0px; padding: 0px; color: rgb(96, 96, 96); font-family: ''PT Sans'', sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">&Ccedil;i&ccedil;ek siparişiniz belirtmiş olduğunuz alıcı adresine teslim edilecektir.<br />
Alıcının kapıyı a&ccedil;maması veya yerinde olmaması gibi durumlarda alıcı telefonundan aranabilir.<br />
&Ccedil;i&ccedil;eğinizin kime ve ne zaman teslim edildiği bilgisi&nbsp;<strong>&quot;Teslimat Anında&quot;</strong>mobil cihazlar yardımı ile size&nbsp;<strong>SMS</strong>&nbsp;ve&nbsp;<strong>E-Mail</strong>&nbsp;ile bildirilir.</div>', N'', NULL, 121, 0, 1, 0, 0, 1000, 0, 0, 0, 10, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/adi-ask-kirmizi-guller-ve-antoryumlar_284/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, CAST(0x0000A26400E25312 AS DateTime), 1, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (285, 0, NULL, NULL, N'1254', N'29 Adet Gül', N'', N'', N'<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">Cam vazo i&ccedil;erisinde 29 Adet Kırmızı Gül<br />
Kırmızı gül, büyük aşkın simgesidir.<br />
Yalnızca sözcüklerle anlatılmaz aşk, kalbinizi dolduran, ruhunuzdan taşan o büyük duyguyuları anlatmaya yetmez hi&ccedil;bir söz. Böyle durumlarda en yoğun duyguları, en güzel haliyle anlatmak, kırmızısıyla büyüleyen güllerin işidir.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">&nbsp;<strong>&Uuml;rün Detay bilgileri</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">Kırmızı gül sayısı : 29 Adet</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">Kullanılan diğer ürünler : Cipso, yeşillik</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">&Ccedil;i&ccedil;eğin yaklaşık yüksekliği : 50 cm</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">Vazonun ağırlığı : 3,5 kg</p>
<p class="p12" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);"></p>', N'', NULL, 121, 0, 1, 0, 0, 1000, 0, 0, 0, 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/29-adet-gul_285/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2531E AS DateTime), 1, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (286, 0, NULL, NULL, N'14560-BSC', N'Arzum Çaydanlık Seti', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>
            <ul style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 11px; line-height: 20px; vertical-align: baseline; list-style: none; color: rgb(151, 151, 151);">
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"><span style="color: rgb(0, 0, 0);"><strong>&Uuml;R&Uuml;N &Ouml;ZELLİKLERİ</strong></span></li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"></li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"><label style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: bold; line-height: inherit; vertical-align: baseline; color: rgb(38, 38, 38);">Double Heat Sistemi :&nbsp;</label>1650W(kaynatma)/135W(sıcak tutma)</li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"></li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"><label style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: bold; line-height: inherit; vertical-align: baseline; color: rgb(38, 38, 38);">Demlik :&nbsp;</label>0,7 Kapasiteli Cam Demlik</li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"></li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"><label style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: bold; line-height: inherit; vertical-align: baseline; color: rgb(38, 38, 38);">Su Isıtıcı :&nbsp;</label>1,9 lt kapasiteli su ısıtıcı</li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"></li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"><label style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: bold; line-height: inherit; vertical-align: baseline; color: rgb(38, 38, 38);">Paslanmaz &Ccedil;elik Gizli Rezistans :&nbsp;</label>Var</li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"></li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"><label style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: bold; line-height: inherit; vertical-align: baseline; color: rgb(38, 38, 38);">Paslanmaz &Ccedil;elik &Ccedil;ay Filtresi :&nbsp;</label>Var</li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"></li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"><label style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: bold; line-height: inherit; vertical-align: baseline; color: rgb(38, 38, 38);">Su Seviye Göstergesi :&nbsp;</label>Maksimum su seviye göstergesi</li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"></li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"><label style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: bold; line-height: inherit; vertical-align: baseline; color: rgb(38, 38, 38);">Kablosuz kullanım :&nbsp;</label>Var</li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"></li>
                <li style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; vertical-align: baseline; color: rgb(102, 102, 102);"><label style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: bold; line-height: inherit; vertical-align: baseline; color: rgb(38, 38, 38);">360 derece dönebilme özelliği :&nbsp;</label>Var</li>
            </ul>
            </td>
        </tr>
    </tbody>
</table>', N'', NULL, 122, 0, 1, 0, 0, 1000, 0, 1, 0, 9, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/arzum-caydanlik-seti_286/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2532B AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (287, 0, NULL, NULL, N'plps-03', N'Philips Raga Mp3 Player SA2RGA02SN', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>Garanti</td>
            <td>:</td>
        </tr>
        <tr>
            <td>&Uuml;retim Yeri</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Marka</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Model</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>En</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Boy</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Yükseklik</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Ağırlık</td>
            <td>:</td>
        </tr>
    </tbody>
</table>', N'', NULL, 103, 0, 1, 0, 0, 1000, 0, 1, 0, 287, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/philips-raga-mp3-player-sa2rga02sn_287/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, CAST(0x0000A26400E25336 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (288, 0, NULL, NULL, N'smsng-01', N'Samsung LCD TV LE-32D550', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px; font-weight: bold; text-align: right;">SİPARİŞ KODU&nbsp;</span></span></td>
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px;">: &nbsp;110012640</span></span></td>
        </tr>
        <tr>
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px; font-weight: bold; text-align: right;">Ekran boyutu</span></span></td>
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px;">: &nbsp;42&quot;/107 cm</span></span></td>
        </tr>
        <tr class="row">
            <td><a class="icons info" style="font-family: Arial, sans-serif; font-size: 12px; font-weight: bold; text-align: right; margin: 0px; padding: 0px 0px 0px 20px; border: 0px; outline: 0px; background-image: url(http://www.teknosa.com/assets/images/sprites/icons.png); background-position: 0px -736px; background-repeat: no-repeat no-repeat;"><span style="background-color: rgb(255, 255, 255);">HDMI girişleri&nbsp;</span></a></td>
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px;">: &nbsp;2 Adet</span></span></td>
        </tr>
        <tr>
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px; font-weight: bold; text-align: right;">MODEL</span></span></td>
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px;">: &nbsp;42F5070</span><span class="Apple-tab-span" style="white-space: pre;">	</span></span></td>
        </tr>
        <tr class="row">
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px; font-weight: bold; text-align: right;">Tipi</span></span></td>
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px;">: &nbsp; &nbsp;Full HD</span></span></td>
        </tr>
        <tr>
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px; font-weight: bold; text-align: right;">Dahili HD Alıcılar</span></span></td>
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px;">: &nbsp; &nbsp;Var</span></span></td>
        </tr>
        <tr class="row">
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px; font-weight: bold; text-align: right;">&Ccedil;özünürlük (piksel)&nbsp;</span></span></td>
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px;">: &nbsp; 1920x1080<br type="_moz" />
            </span></span></td>
        </tr>
        <tr>
            <td><span style="background-color: rgb(255, 255, 255);"><span style="color: rgb(48, 48, 48); font-family: Arial, sans-serif; font-size: 12px; font-weight: bold; text-align: right;">MARKA</span></span></td>
            <td><span style="background-color: rgb(255, 255, 255);"><font color="#303030" face="Arial, sans-serif"><span style="font-size: 12px;">: &nbsp;SAMSUNG</span></font></span></td>
        </tr>
    </tbody>
</table>
<br type="_moz" />', N'', NULL, 106, 0, 1, 0, 0, 1000, 0, 1, 0, 288, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/samsung-lcd-tv-le-32d550_288/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, CAST(0x0000A26400E25342 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (289, 0, NULL, NULL, N'av-122-332', N'Avize ', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>
            <h4 style="margin: 0px 0px 5px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; float: left; width: 480px; font-size: 18px; color: rgb(41, 45, 57); background-color: rgb(255, 255, 255);">&Uuml;rün A&ccedil;ıklaması</h4>
            <div class="urundetay_311 dOHll" style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; width: 456px; font-size: 15px; font-style: italic; color: rgb(129, 129, 129); float: left; background-color: rgb(255, 255, 255);"><strong style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;"><br />
            &Uuml;rün &Ouml;l&ccedil;üleri</strong><br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;" />
            ? Genişlik: 30 cm<br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;" />
            ? Yükseklik: 40 cm<br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;" />
            <br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;" />
            <strong style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;">&Uuml;rün &Ouml;zellikleri</strong><br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;" />
            ? Paslanmaz sac tepsi gövdesi ve kristal görünümlü 30''luk jow taşlardan üretilmiştir.<br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;" />
            ? E14 duy 3 adet 40W ampul ile kullanılır.
            <h4 style="margin: 0px 0px 5px; padding: 0px; border: none; outline: none; list-style: none; float: none; width: 456px; font-size: 18px; color: rgb(41, 45, 57);"><br />
            Gönderim Süreci</h4>
            <div class="urundetay_311 dOHll" style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; width: 433.1875px; float: none;">
            <p style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;"><br />
            Siparişlerin gönderim süreci, ödeme kontrollerinin tamamlanmasından sonra başlar.</p>
            <p style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;">Hızlı Kargo se&ccedil;eneği olan ürünler 1 iş günü i&ccedil;inde, diğer ürünler ortalama 7 iş gününde kargoya teslim edilmektedir. Mobilya ürünleri siparişiniz üzerine üretildiğinden ortalama kargo süresi 10 iş günüdür.</p>
            <p style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;">Tedarik süre&ccedil;lerinde nadiren, üretici kaynaklı kısa süreli gecikmeler yaşanabilmektedir.</p>
            <p style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;">Birden fazla ürün sipariş vermeniz halinde, tedarik süreci tamamlanan ürünleriniz i&ccedil;in erken teslimat talep edebilirsiniz.</p>
            <p style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none;">Erken teslimatlar ücretsizdir. Diğer ürünleriniz tedarikleri tamamlandığında kargoya teslim edilmektedir.</p>
            </div>
            </div>
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/avize_289/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25350 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (290, 0, NULL, NULL, N'212312314', N'Dibanyo 5''li Banyo Aksesuar Seti (Papatya Aynalı)', N'', N'', N'&nbsp;<strong style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">5''li Banyo Aksesuar Seti</strong><br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);" />
<br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(129, 129, 129); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">? Ayna: 42 x 53 cm</span><br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(129, 129, 129); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">? Etajer</span><br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(129, 129, 129); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">? Diş Fır&ccedil;alık</span><br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(129, 129, 129); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">? Dar kapaklı kağıtlık</span><br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(129, 129, 129); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">? Yuvarlak Havluluk</span><br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);" />
<br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);" />
<strong style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">Malzeme:</strong><span style="color: rgb(129, 129, 129); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">&nbsp;Krom kaplama</span><br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);" />
<strong style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">Sevkiyat:</strong><span style="color: rgb(129, 129, 129); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">&nbsp;&Ouml;zel strafor kutusu ile gönderilmektedir.</span><br style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);" />
<strong style="margin: 0px; padding: 0px; border: none; outline: none; list-style: none; font-family: Tahoma, Geneva, sans-serif; color: rgb(129, 129, 129); font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">Garanti:</strong><span style="color: rgb(129, 129, 129); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; font-style: italic; background-color: rgb(255, 255, 255);">&nbsp;5 yıl</span>', N'', NULL, 123, 0, 1, 0, 0, 1000, 0, 1, 0, 290, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/dibanyo-5-li-banyo-aksesuar-seti--papatya-aynali-_290/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, CAST(0x0000A26400E2535C AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (291, 0, NULL, NULL, N'213123454', N'Days in Colours 
Tek Kişilik Battaniye Takımı', N'', N'', N'<span style="font-family: Arial; font-size: 11px;">&Ouml;rgü Battaniye :180x240 cm</span><br style="font-size: 11px; font-family: Arial;" />
<span style="font-family: Arial; font-size: 11px;">Biyeli Nevresim :160x220 cm</span><br style="font-size: 11px; font-family: Arial;" />
<span style="font-family: Arial; font-size: 11px;">Yatak &Ccedil;arşafı : 180x240 cm</span><br style="font-size: 11px; font-family: Arial;" />
<span style="font-family: Arial; font-size: 11px;">Düğmeli Yastık Kılıfı : 50x70 cm (1 Adet)</span><br style="font-size: 11px; font-family: Arial;" />
<span style="font-family: Arial; font-size: 11px;">Yastık Kılıfı : 50x70 cm (1 Adet)</span>', N'', NULL, 112, 0, 1, 0, 0, 1000, 0, 1, 0, 291, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/days-in-colours-tek-kisilik-battaniye-takimi_291/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25390 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (292, 0, NULL, NULL, N'dasdqew12', N'ALTAY YATAK ODASI TAKIMI', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td>
            <div id="ProductSpec" style="margin: 7px; padding: 0px; font-size: 12px; font-family: Arial; outline: none; line-height: 18px; color: rgb(51, 51, 51);"><span id="ctl00_ctl00_ContentPlaceHolder1_cphInnerContent_fvProductDetail_lblProductProperties" style="margin: 0px; padding: 0px; outline: none;">
            <h3 title=" &Uuml;rün &Ouml;zellikleri" style="margin: 0px; padding: 0px; font-size: 12px; outline: none;"></h3>
            </span>
            <div id="ProductDescription" style="margin: 0px; padding: 0px; outline: none;">
            <table width="888" cellspacing="0" cellpadding="0" border="0" style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">
                <tbody style="margin: 0px; padding: 0px; outline: none;">
                    <tr style="margin: 0px; padding: 0px; outline: none;">
                        <td valign="bottom" nowrap="nowrap" style="margin: 0px; padding: 0px; outline: none; line-height: 21px;">
                        <h2 style="border: 0px none inherit; margin: 0px 0px 7px; padding: 5px 0px 0px; font-size: 14px; font-family: Tahoma; outline: none; color: rgb(0, 104, 179); font-weight: normal;">Genel Bilgiler</h2>
                        </td>
                    </tr>
                    <tr style="margin: 0px; padding: 0px; outline: none;">
                        <td valign="bottom" style="margin: 0px; padding: 0px; outline: none; line-height: 21px;">
                        <ul style="margin: 0px; padding: 0px; outline: none;">
                            <li style="margin: 0px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); background-position: 0px -460px; background-repeat: no-repeat no-repeat;">Futuro Yatak Odası Takımı tamamen beyaz rengin hakim olduğu bir ürün olup, yer yer kullanılan ceviz rengi ile de tasarım desteklenmiştir. Ceviz rengin kullanıldığı kapaklardaki dalgalı uygulama ile de ürün görsel a&ccedil;ıdan zenginleştirilmiş şık ve modern bir tasarıma sahiptir.</li>
                        </ul>
                        </td>
                    </tr>
                    <tr style="margin: 0px; padding: 0px; outline: none;">
                        <td valign="bottom" style="margin: 0px; padding: 0px; outline: none; line-height: 21px;">
                        <ul style="margin: 0px; padding: 0px; outline: none;">
                            <li style="margin: 0px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); background-position: 0px -460px; background-repeat: no-repeat no-repeat;">Futuro Yatak Odası Takımı sürgü kapaklı gardırop kapağı senkronize kapak olarak bilinen&nbsp; ü&ccedil; par&ccedil;adan oluşmakta olup, en sağ veya en soldaki kapak a&ccedil;ılmaya başlandığında ortadaki kapakğı, a&ccedil;ılan kapakla birlikte senkronize bir şekilde hareket ederek a&ccedil;ılmaktadır.</li>
                        </ul>
                        </td>
                    </tr>
                    <tr style="margin: 0px; padding: 0px; outline: none;">
                        <td valign="bottom" style="margin: 0px; padding: 0px; outline: none; line-height: 21px;">
                        <ul style="margin: 0px; padding: 0px; outline: none;">
                            <li style="margin: 0px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); background-position: 0px -460px; background-repeat: no-repeat no-repeat;">Futuro Yatak Odası, sürgü kapılı, 5 ve 4 kapılı gardırop, 150?lik, 160?lık başlık, tuvalet masası, tuvalet aynası, komodin, şifonyer ve puf ünitelerinden oluşmaktadır.</li>
                        </ul>
                        </td>
                    </tr>
                    <tr style="margin: 0px; padding: 0px; outline: none;">
                        <td valign="bottom" style="margin: 0px; padding: 0px; outline: none; line-height: 21px;">
                        <h2 style="border: 0px none inherit; margin: 0px 0px 7px; padding: 5px 0px 0px; font-size: 14px; font-family: Tahoma; outline: none; color: rgb(0, 104, 179); font-weight: normal;">Konsept &Uuml;rünler</h2>
                        </td>
                    </tr>
                    <tr style="margin: 0px; padding: 0px; outline: none;">
                        <td valign="bottom" style="margin: 0px; padding: 0px; outline: none; line-height: 21px;">
                        <p style="margin: 0px 0px 13px; padding: 0px; outline: none; line-height: 18px;"><a href="http://www.istikbal.com/oturma-gruplari/koltuk-takimlari/futuro-koltuk-takimi?ref=konsept" style="margin: 0px; padding: 0px; outline: none; text-decoration: none; color: navy;">Futuro Koltuk Takımı</a>,&nbsp;<a href="http://www.istikbal.com/panel-mobilya/compact-tv-uniteleri/futuro-compact-tv-unitesi?ref=konsept" style="margin: 0px; padding: 0px; outline: none; text-decoration: none; color: navy;">Futuro Compact Tv &Uuml;nitesi</a>,&nbsp;<a href="http://www.istikbal.com/panel-mobilya/yemek-odalari/futuro-yemek-odasi-takimi?ref=konsept" style="margin: 0px; padding: 0px; outline: none; text-decoration: none; color: navy;">Futuro Yemek Odası Takımı</a>,&nbsp;<a href="http://www.istikbal.com/panel-mobilya/genc-odalari/futuro-genc-odasi-takimi?ref=konsept" style="margin: 0px; padding: 0px; outline: none; text-decoration: none; color: navy;">Futuro Gen&ccedil; Odası Takımı</a>,&nbsp;<a href="http://www.istikbal.com/panel-mobilya/bebek-odalari/futuro-besik?ref=konsept" style="margin: 0px; padding: 0px; outline: none; text-decoration: none; color: navy;">Futuro Beşik</a></p>
                        </td>
                    </tr>
                </tbody>
            </table>
            </div>
            <div id="PropertyImages" style="margin: 0px; padding: 0px; outline: none;">
            <h1 style="border: 0px none inherit; margin: 0px; padding: 0px 0px 11px; font-size: 15px; font-family: Tahoma; outline: none; color: rgb(0, 104, 179); font-weight: normal;"></h1>
            </div>
            <div id="UrunOlculeri" style="margin: 0px; padding: 5px 0px 0px; outline: none;">
            <h1 style="border: 0px none inherit; margin: 0px; padding: 11px 0px 0px; font-size: 15px; font-family: Tahoma; outline: none; color: rgb(0, 104, 179); font-weight: normal;">&Uuml;rün &Ouml;l&ccedil;üleri</h1>
            <ul id="ulDimension" style="margin: 0px; padding: 0px; outline: none;">
                <li style="margin: 11px 0px 21px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); float: left; width: 211px; background-position: 0px -460px; background-repeat: no-repeat no-repeat;">
                <h3 style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">Sürgü Kapaklı Gardırop&nbsp;<span class="ChildPrice" title="Tavsiye Edilen &Uuml;rün Fiyatı" id="PriceDimension0" style="margin: -3px 0px 0px; padding: 2px; font-size: 9px; outline: none; line-height: 13px; display: inline; background-color: rgb(238, 238, 238); color: rgb(85, 85, 85);">2.405,40 TL</span></h3>
                <div id="TeknikBilgiler0" class="TeknikBilgi" style="margin: 0px; padding: 0px; outline: none; width: 200px; max-height: 111px; overflow: hidden;"><img src="http://www.istikbal.com.tr/files/pi/dimension/2840-29.jpg" style="margin: 0px; padding: 0px; outline: none; max-height: 111px; max-width: 200px;" alt="" /></div>
                <div id="DimensionTableHolder0" style="margin: 0px; padding: 0px; outline: none; height: 75px;">
                <table style="margin: 0px; padding: 0px; font-size: 12px; outline: none; display: inline-block;">
                    <tbody style="margin: 0px; padding: 0px; outline: none;">
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Derinlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">65.60 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Genişlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">240.00 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Yükseklik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">221.00 cm</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear" style="margin: 0px; padding: 0px; outline: none; clear: both; overflow: hidden; height: 0px;"></div>
                </div>
                </li>
                <li style="margin: 11px 0px 21px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); float: left; width: 211px; background-position: 0px -460px; background-repeat: no-repeat no-repeat;">
                <h3 style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">5 Kapaklı Gardrop&nbsp;<span class="ChildPrice" title="Tavsiye Edilen &Uuml;rün Fiyatı" id="PriceDimension1" style="margin: -3px 0px 0px; padding: 2px; font-size: 9px; outline: none; line-height: 13px; display: inline; background-color: rgb(238, 238, 238); color: rgb(85, 85, 85);">1.392,00 TL</span></h3>
                <div id="TeknikBilgiler1" class="TeknikBilgi" style="margin: 0px; padding: 0px; outline: none; width: 200px; max-height: 111px; overflow: hidden;"><img src="http://www.istikbal.com.tr/files/pi/dimension/2840-27.jpg" style="border: 0px; margin: 0px; padding: 0px; outline: none; max-height: 111px; max-width: 200px; z-index: 1;" alt="" /></div>
                <div id="DimensionTableHolder1" style="margin: 0px; padding: 0px; outline: none; height: 75px;">
                <table style="margin: 0px; padding: 0px; font-size: 12px; outline: none; display: inline-block;">
                    <tbody style="margin: 0px; padding: 0px; outline: none;">
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Derinlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">60.20 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Genişlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">212.20 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Yükseklik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">208.00 cm</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear" style="margin: 0px; padding: 0px; outline: none; clear: both; overflow: hidden; height: 0px;"></div>
                </div>
                </li>
                <li style="margin: 11px 0px 21px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); float: left; width: 211px; background-position: 0px -460px; background-repeat: no-repeat no-repeat;">
                <h3 style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">4 Kapaklı Gardırop&nbsp;<span class="ChildPrice" title="Tavsiye Edilen &Uuml;rün Fiyatı" id="PriceDimension2" style="margin: -3px 0px 0px; padding: 2px; font-size: 9px; outline: none; line-height: 13px; display: inline; background-color: rgb(238, 238, 238); color: rgb(85, 85, 85);">1.068,00 TL</span></h3>
                <div id="TeknikBilgiler2" class="TeknikBilgi" style="margin: 0px; padding: 0px; outline: none; width: 200px; max-height: 111px; overflow: hidden;"><img src="http://www.istikbal.com.tr/files/pi/dimension/2840-28.jpg" style="margin: 0px; padding: 0px; outline: none; max-height: 111px; max-width: 200px;" alt="" /></div>
                <div id="DimensionTableHolder2" style="margin: 0px; padding: 0px; outline: none; height: 75px;">
                <table style="margin: 0px; padding: 0px; font-size: 12px; outline: none; display: inline-block;">
                    <tbody style="margin: 0px; padding: 0px; outline: none;">
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Derinlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">60.20 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Genişlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">169.80 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Yükseklik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">208.00 cm</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear" style="margin: 0px; padding: 0px; outline: none; clear: both; overflow: hidden; height: 0px;"></div>
                </div>
                </li>
                <li style="margin: 11px 0px 21px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); float: left; width: 211px; background-position: 0px -460px; background-repeat: no-repeat no-repeat;">
                <h3 style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">Tuvalet Masası&nbsp;<span class="ChildPrice" title="Tavsiye Edilen &Uuml;rün Fiyatı" id="PriceDimension3" style="margin: -3px 0px 0px; padding: 2px; font-size: 9px; outline: none; line-height: 13px; display: inline; background-color: rgb(238, 238, 238); color: rgb(85, 85, 85);">371,40 TL</span></h3>
                <div id="TeknikBilgiler3" class="TeknikBilgi" style="margin: 0px; padding: 0px; outline: none; width: 200px; max-height: 111px; overflow: hidden;"><img src="http://www.istikbal.com.tr/files/pi/dimension/2840-32.jpg" style="margin: 0px; padding: 0px; outline: none; max-height: 111px; max-width: 200px;" alt="" /></div>
                <div id="DimensionTableHolder3" style="margin: 0px; padding: 0px; outline: none; height: 75px;">
                <table style="margin: 0px; padding: 0px; font-size: 12px; outline: none; display: inline-block;">
                    <tbody style="margin: 0px; padding: 0px; outline: none;">
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Derinlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">45.00 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Genişlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">118.50 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Yükseklik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">82.00 cm</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear" style="margin: 0px; padding: 0px; outline: none; clear: both; overflow: hidden; height: 0px;"></div>
                </div>
                </li>
                <li style="margin: 11px 0px 21px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); float: left; width: 211px; background-position: 0px -460px; background-repeat: no-repeat no-repeat;">
                <h3 style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">Tuvalet Aynası&nbsp;<span class="ChildPrice" title="Tavsiye Edilen &Uuml;rün Fiyatı" id="PriceDimension4" style="margin: -3px 0px 0px; padding: 2px; font-size: 9px; outline: none; line-height: 13px; display: inline; background-color: rgb(238, 238, 238); color: rgb(85, 85, 85);">268,20 TL</span></h3>
                <div id="TeknikBilgiler4" class="TeknikBilgi" style="margin: 0px; padding: 0px; outline: none; width: 200px; max-height: 111px; overflow: hidden;"><img src="http://www.istikbal.com.tr/files/pi/dimension/2840-33.jpg" style="margin: 0px; padding: 0px; outline: none; max-height: 111px; max-width: 200px;" alt="" /></div>
                <div id="DimensionTableHolder4" style="margin: 0px; padding: 0px; outline: none; height: 75px;">
                <table style="margin: 0px; padding: 0px; font-size: 12px; outline: none; display: inline-block;">
                    <tbody style="margin: 0px; padding: 0px; outline: none;">
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Derinlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">4.00 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Genişlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">118.10 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Yükseklik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">54.00 cm</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear" style="margin: 0px; padding: 0px; outline: none; clear: both; overflow: hidden; height: 0px;"></div>
                </div>
                </li>
                <li style="margin: 11px 0px 21px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); float: left; width: 211px; background-position: 0px -460px; background-repeat: no-repeat no-repeat;">
                <h3 style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">Şifonyer&nbsp;<span class="ChildPrice" title="Tavsiye Edilen &Uuml;rün Fiyatı" id="PriceDimension5" style="margin: -3px 0px 0px; padding: 2px; font-size: 9px; outline: none; line-height: 13px; display: inline; background-color: rgb(238, 238, 238); color: rgb(85, 85, 85);">339,60 TL</span></h3>
                <div id="TeknikBilgiler5" class="TeknikBilgi" style="margin: 0px; padding: 0px; outline: none; width: 200px; max-height: 111px; overflow: hidden;"><img src="http://www.istikbal.com.tr/files/pi/dimension/2840-34.jpg" style="border: 0px; margin: 0px; padding: 0px; outline: none; max-height: 111px; max-width: 200px; z-index: 1;" alt="" /></div>
                <div id="DimensionTableHolder5" style="margin: 0px; padding: 0px; outline: none; height: 75px;">
                <table style="margin: 0px; padding: 0px; font-size: 12px; outline: none; display: inline-block;">
                    <tbody style="margin: 0px; padding: 0px; outline: none;">
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Derinlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">43.00 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Genişlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">63.80 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Yükseklik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">97.30 cm</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear" style="margin: 0px; padding: 0px; outline: none; clear: both; overflow: hidden; height: 0px;"></div>
                </div>
                </li>
                <li style="margin: 11px 0px 21px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); float: left; width: 211px; background-position: 0px -460px; background-repeat: no-repeat no-repeat;">
                <h3 style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">Komodin&nbsp;<span class="ChildPrice" title="Tavsiye Edilen &Uuml;rün Fiyatı" id="PriceDimension6" style="margin: -3px 0px 0px; padding: 2px; font-size: 9px; outline: none; line-height: 13px; display: inline; background-color: rgb(238, 238, 238); color: rgb(85, 85, 85);">169,80 TL</span></h3>
                <div id="TeknikBilgiler6" class="TeknikBilgi" style="margin: 0px; padding: 0px; outline: none; width: 200px; max-height: 111px; overflow: hidden;"><img src="http://www.istikbal.com.tr/files/pi/dimension/2840-35.jpg" style="margin: 0px; padding: 0px; outline: none; max-height: 111px; max-width: 200px;" alt="" /></div>
                <div id="DimensionTableHolder6" style="margin: 0px; padding: 0px; outline: none; height: 75px;">
                <table style="margin: 0px; padding: 0px; font-size: 12px; outline: none; display: inline-block;">
                    <tbody style="margin: 0px; padding: 0px; outline: none;">
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Derinlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">45.00 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Genişlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">50.20 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Yükseklik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">44.00 cm</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear" style="margin: 0px; padding: 0px; outline: none; clear: both; overflow: hidden; height: 0px;"></div>
                </div>
                </li>
                <li style="margin: 11px 0px 21px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); float: left; width: 211px; background-position: 0px -460px; background-repeat: no-repeat no-repeat;">
                <h3 style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">Puf&nbsp;<span class="ChildPrice" title="Tavsiye Edilen &Uuml;rün Fiyatı" id="PriceDimension7" style="margin: -3px 0px 0px; padding: 2px; font-size: 9px; outline: none; line-height: 13px; display: inline; background-color: rgb(238, 238, 238); color: rgb(85, 85, 85);">74,40 TL</span></h3>
                <div id="TeknikBilgiler7" class="TeknikBilgi" style="margin: 0px; padding: 0px; outline: none; width: 200px; max-height: 111px; overflow: hidden;"><img src="http://www.istikbal.com.tr/files/pi/dimension/2840-87.jpg" style="margin: 0px; padding: 0px; outline: none; max-height: 111px; max-width: 200px;" alt="" /></div>
                <div id="DimensionTableHolder7" style="margin: 0px; padding: 0px; outline: none; height: 75px;">
                <table style="margin: 0px; padding: 0px; font-size: 12px; outline: none; display: inline-block;">
                    <tbody style="margin: 0px; padding: 0px; outline: none;">
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Derinlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">40.00 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Genişlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">40.00 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Yükseklik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">46.70 cm</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear" style="margin: 0px; padding: 0px; outline: none; clear: both; overflow: hidden; height: 0px;"></div>
                </div>
                </li>
                <li style="margin: 11px 0px 21px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); float: left; width: 211px; background-position: 0px -460px; background-repeat: no-repeat no-repeat;">
                <h3 style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">150''lik Başlık&nbsp;<span class="ChildPrice" title="Tavsiye Edilen &Uuml;rün Fiyatı" id="PriceDimension8" style="margin: -3px 0px 0px; padding: 2px; font-size: 9px; outline: none; line-height: 13px; display: inline; background-color: rgb(238, 238, 238); color: rgb(85, 85, 85);">251,40 TL</span></h3>
                <div id="TeknikBilgiler8" class="TeknikBilgi" style="margin: 0px; padding: 0px; outline: none; width: 200px; max-height: 111px; overflow: hidden;"><img src="http://www.istikbal.com.tr/files/pi/dimension/2840-80.jpg" style="border: 0px; margin: 0px; padding: 0px; outline: none; max-height: 111px; max-width: 200px; z-index: 1;" alt="" /></div>
                <div id="DimensionTableHolder8" style="margin: 0px; padding: 0px; outline: none; height: 75px;">
                <table style="margin: 0px; padding: 0px; font-size: 12px; outline: none; display: inline-block;">
                    <tbody style="margin: 0px; padding: 0px; outline: none;">
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Derinlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">3.00 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Genişlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">161.80 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Yükseklik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">105.00 cm</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear" style="margin: 0px; padding: 0px; outline: none; clear: both; overflow: hidden; height: 0px;"></div>
                </div>
                </li>
                <li style="margin: 11px 0px 21px; padding: 0px 0px 0px 15px; outline: none; list-style: none; background-image: url(http://www.istikbal.com.tr/i/t/spriteBG.png); float: left; width: 211px; background-position: 0px -460px; background-repeat: no-repeat no-repeat;">
                <h3 style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">160''lık Başlık&nbsp;<span class="ChildPrice" title="Tavsiye Edilen &Uuml;rün Fiyatı" id="PriceDimension9" style="margin: -3px 0px 0px; padding: 2px; font-size: 9px; outline: none; line-height: 13px; display: inline; background-color: rgb(238, 238, 238); color: rgb(85, 85, 85);">251,40 TL</span></h3>
                <div id="TeknikBilgiler9" class="TeknikBilgi" style="margin: 0px; padding: 0px; outline: none; width: 200px; max-height: 111px; overflow: hidden;"><img src="http://www.istikbal.com.tr/files/pi/dimension/2840-81.jpg" style="border: 0px; margin: 0px; padding: 0px; outline: none; max-height: 111px; max-width: 200px; z-index: 1;" alt="" /></div>
                <div id="DimensionTableHolder9" style="margin: 0px; padding: 0px; outline: none; height: 75px;">
                <table style="margin: 0px; padding: 0px; font-size: 12px; outline: none; display: inline-block;">
                    <tbody style="margin: 0px; padding: 0px; outline: none;">
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Derinlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">3.00 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Genişlik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">171.80 cm</td>
                        </tr>
                        <tr style="margin: 0px; padding: 0px; outline: none;">
                            <td class="tdTitle" style="margin: 0px; padding: 0px 7px 0px 0px; font-size: 11px; outline: none; line-height: 19px; text-align: right; font-weight: bold;">Yükseklik:</td>
                            <td style="margin: 0px; padding: 0px; font-size: 11px; outline: none; line-height: 19px;">105.00 cm</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear" style="margin: 0px; padding: 0px; outline: none; clear: both; overflow: hidden; height: 0px;"></div>
                </div>
                </li>
            </ul>
            </div>
            <table style="margin: 0px; padding: 0px; font-size: 12px; outline: none;">
            </table>
            <div class="clear" style="margin: 0px; padding: 0px; outline: none; clear: both; overflow: hidden; height: 0px;"></div>
            </div>
            <div class="clear" style="margin: 0px; padding: 0px; font-size: 12px; font-family: Arial; outline: none; line-height: 18px; clear: both; overflow: hidden; height: 0px; color: rgb(51, 51, 51);"></div>
            <div id="CategoryProducts" style="margin: 0px; padding: 0px; font-size: 12px; font-family: Arial; outline: none; line-height: 18px; color: rgb(51, 51, 51);">
            <h1 class="CategoryProducts" style="border: 0px none inherit; margin: 3px 13px 0px; padding: 0px; font-size: 17px; font-family: Tahoma; outline: none; color: rgb(0, 104, 179); font-weight: normal; height: 33px; overflow: hidden;"></h1>
            </div>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 124, 0, 1, 0, 0, 1000, 0, 1, 0, 292, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/altay-yatak-odasi-takimi_292/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2539E AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (293, 0, NULL, NULL, N'McD01', N'Mega Mac® Menü', N'', N'', N'&nbsp;
<dl style="margin: 0px; padding: 9px; float: left; font-size: 11px; color: rgb(53, 35, 13); font-family: Arial, Helvetica, sans-serif;">
    <dt style="margin: 0px; padding: 0px; color: rgb(163, 26, 6); font-weight: bold; text-align: center;">Enerji&nbsp;<br style="margin: 0px; padding: 0px;" />
    (kcal)</dt>
    <dd style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-align: center;">1275</dd>
</dl>
<dl style="margin: 0px; padding: 9px; float: left; font-size: 11px; color: rgb(53, 35, 13); font-family: Arial, Helvetica, sans-serif;">
    <dt style="margin: 0px; padding: 0px; color: rgb(163, 26, 6); font-weight: bold; text-align: center;">Protein<br style="margin: 0px; padding: 0px;" />
    (g.)</dt>
    <dd style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-align: center;">49</dd>
</dl>
<dl style="margin: 0px; padding: 9px; float: left; font-size: 11px; color: rgb(53, 35, 13); font-family: Arial, Helvetica, sans-serif;">
    <dt style="margin: 0px; padding: 0px; color: rgb(163, 26, 6); font-weight: bold; text-align: center;">Karbonhidrat&nbsp;<br style="margin: 0px; padding: 0px;" />
    (g.)</dt>
    <dd style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-align: center;">151</dd>
</dl>
<dl style="margin: 0px; padding: 9px; float: left; font-size: 11px; color: rgb(53, 35, 13); font-family: Arial, Helvetica, sans-serif;">
    <dt style="margin: 0px; padding: 0px; color: rgb(163, 26, 6); font-weight: bold; text-align: center;">Yağ&nbsp;<br style="margin: 0px; padding: 0px;" />
    (g.)</dt>
    <dd style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-align: center;">53</dd>
</dl>
<dl style="margin: 0px; padding: 9px; float: left; font-size: 11px; color: rgb(53, 35, 13); font-family: Arial, Helvetica, sans-serif;">
    <dt style="margin: 0px; padding: 0px; color: rgb(163, 26, 6); font-weight: bold; text-align: center;">Sodyum&nbsp;<br style="margin: 0px; padding: 0px;" />
    (mg.)</dt>
    <dd style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-align: center;">1610</dd>
</dl>
<br />
<br />
<br />', N'', NULL, 125, 0, 1, 0, 0, 1000, 0, 0, 0, 5, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/mega-mac--menu_293/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A26400E253AC AS DateTime), 2, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (295, 0, NULL, NULL, N'Mc-002', N'Tat Menu Pizza', N'', N'', N'<span style="font-size: small;">Pizza sosu, mozzarella peyniri, pepperoni, jambon, sosis, soğan, yeşil biber, mantar, siyah zeytin, mısır</span>', N'', NULL, 125, 0, 1, 0, 0, 1000, 0, 0, 0, 2, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/tat-menu-pizza_295/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E253CA AS DateTime), 2, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (296, 0, NULL, NULL, N'Mc-0003', N'Domates İçi Salata', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 125, 0, 1, 0, 0, 1000, 0, 1, 0, 296, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/domates-ici-salata_296/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A26400E253D5 AS DateTime), 2, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (297, 0, NULL, NULL, N'foto-01', N'Baskılı T-Shirt', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>
            <h3 style="margin: 32px 0px 22px 6px; padding: 0px 0px 6px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 28px; background-color: rgb(255, 255, 255); font-weight: normal; font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; height: auto; line-height: 28px; color: rgb(101, 101, 101);">Ek Bilgi</h3>
            <ul style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; background-color: rgb(255, 255, 255); list-style: none; color: rgb(101, 101, 101); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; line-height: 23px;">
                <li class="even typeSelect group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Yapılabilir &Ouml;l&ccedil;ü 1:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">36x61 cm</span></li>
                <li class="odd typeSelect group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Yapılabilir &Ouml;l&ccedil;ü 2:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">-</span></li>
                <li class="even typeSelect group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Yapılabilir &Ouml;l&ccedil;ü 3:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">-</span></li>
                <li class="odd typeSelect group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Sayfa Sayısı:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">10</span></li>
                <li class="even typeSelect group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Sayfa Kenarları:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">Gümüş Metalize</span></li>
                <li class="odd typeSelect group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Sayfa Köşeleri:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">Metal Köşe Koruma</span></li>
                <li class="even typeSelect group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Kapak &Ouml;zellikleri:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">Kristal Kaplama+Deri</span></li>
                <li class="odd typeSelect group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Set:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">Yapılabilir</span></li>
                <li class="even typeSelect group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Panoramik Baskı:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">Evet</span></li>
                <li class="odd typeSelect group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Boş Yapıştırma Albüm:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">Yapılamaz</span></li>
                <li class="even typeTextfield group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Aile Albümü:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">Büyük Albüm birebir kapak resim kopyası</span></li>
                <li class="odd typeTextfield group6" style="margin: 0px 2px; padding: 3px 20px 3px 4px; border-width: 0px 0px 1px; border-bottom-style: dashed; border-bottom-color: rgb(204, 204, 204); outline: 0px; background-color: transparent; line-height: 2.6; list-style-position: outside; display: block; overflow: hidden;"><span class="itemExtraFieldsLabel" style="margin: 0px 4px 0px 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block; float: left; font-weight: bold; width: 330px;">Cep Albümü:</span><span class="itemExtraFieldsValue" style="margin: 0px 0px 0px 330px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; display: block;">Büyük Albüm birebir kapak resim kopyası</span></li>
            </ul>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 297, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/baskili-t-shirt_297/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E253E3 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (298, 0, NULL, NULL, N'fj-95', N'Fujifilm FinePix S2950HD', N'', N'', N' 
<h3 style="font-size: 12px; padding: 0px 0px 5px; margin: 0px; border: 0px; outline: none; color: rgb(58, 106, 203); font-family: ''Lucida Grande'', ''Lucida Sans Unicode'', Helvetica, Arial, Verdana, sans-serif; line-height: 16.796875px; background-color: rgb(255, 255, 255);">Fujifilm FinePix S2950 Özellikleri</h3>
<div id="PDT" style="font-size: 12px; padding: 0px; margin: 0px; border: 0px; outline: none; color: rgb(51, 51, 51); font-family: ''Lucida Grande'', ''Lucida Sans Unicode'', Helvetica, Arial, Verdana, sans-serif; line-height: 16.796875px; background-color: rgb(255, 255, 255);">
<p style="padding: 0px; margin: 0px; border: 0px; outline: none;">Çözünürlük: 14 MP, Optik Zoom: 18x Zoom, Ekran Boyutu: 3"</p>
</div>', N'', NULL, 107, 0, 1, 0, 0, 1000, 0, 1, 0, 298, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/fujifilm-finepix-s2950hd_298/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, CAST(0x0000A26400E253EE AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (299, 0, NULL, NULL, N'T-702', N'Tamron AF 70-300mm F/4-5.6 Di LD Macro 1:2 Objektif', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 299, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/tamron-af-70-300mm-f/4-56-di-ld-macro-1-2-objektif_299/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25405 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (300, 0, NULL, NULL, N'vcam-99', N'Sony DCR-SX15E', N'', N'', N'<div id="teaser_1237489278829_1" style="color: rgb(51, 51, 51); font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">
<div class="scrollerItem productModel" rel="" style="position: relative; border: 5px solid rgb(255, 255, 255); float: left; width: 160px; overflow: hidden; height: 327px;">
<div class="scrollerItemInner" style="padding: 20px 18px; line-height: 16px;">
<div class="scrollerItemClickableArea" rel="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdr-cx290e" style="cursor: pointer;"><a href="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdr-cx290e" title="HDR-CX290E" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; display: block;">
<p class="thumb" style="margin: 0px 0px 10px; padding: 0px; min-height: 86px; height: auto !important;"><img alt="HDR-CX290E" src="http://sp.sony-europe.com/da/1471/c9beaf2a6af2c9dec05511179849be80.jpeg" style="border: 0px none;" /></p>
</a><a href="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdr-cx290e" title="HDR-CX290E" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; display: block;">
<p class="itemTitle" style="margin: 0px 0px 2px; padding: 0px; color: rgb(14, 95, 232); font-size: 14px; font-weight: bold;">HDR-CX290E</p>
</a>
<ul class="itemFeaturesList" id="HDRCX290EB.E35-date" rel="00021130" style="margin: 0px; padding: 0px; list-style: none;">
    <li style="margin: 0px; padding: 0px 0px 0px 17px; list-style: none; background-image: url(http://www.sony.com.tr/bravia/image/layout/bcgButtonBulletC4.gif); line-height: 15px; background-position: 0px 2px; background-repeat: no-repeat no-repeat;">High Definition&nbsp;1080, AVCHD</li>
    <li id="HDRCX290EB.E35-media" rel="1" style="margin: 0px; padding: 0px 0px 0px 17px; list-style: none; background-image: url(http://www.sony.com.tr/bravia/image/layout/bcgButtonBulletC4.gif); line-height: 15px; background-position: 0px 2px; background-repeat: no-repeat no-repeat;">Memory Stick?</li>
    <li style="margin: 0px; padding: 0px 0px 0px 17px; list-style: none; background-image: url(http://www.sony.com.tr/bravia/image/layout/bcgButtonBulletC4.gif); line-height: 15px; background-position: 0px 2px; background-repeat: no-repeat no-repeat;">8,9&nbsp; Megapiksel&nbsp; fotoğraf &ccedil;özünürlüğü</li>
</ul>
<a href="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdr-cx290e" title="HDR-CX290E" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; display: block;">
<p class="startingPrice" style="margin: 0px 0px 14px; padding: 0px; font-weight: bold; color: rgb(255, 102, 0);"><span class="price">&nbsp;</span></p>
</a></div>
</div>
</div>
</div>
<div id="teaser_1237489278829_2" style="color: rgb(51, 51, 51); font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">
<div class="scrollerItem productModel" rel="" style="position: relative; border: 5px solid rgb(255, 255, 255); float: left; width: 160px; overflow: hidden; height: 327px;">
<div class="scrollerItemInner" style="padding: 20px 18px; line-height: 16px;">
<div class="scrollerItemClickableArea" rel="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdr-cx220e" style="cursor: pointer;"><a href="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdr-cx220e" title="HDR-CX220E" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; display: block;">
<p class="thumb" style="margin: 0px 0px 10px; padding: 0px; min-height: 86px; height: auto !important;"><img alt="HDR-CX220E" src="http://sp.sony-europe.com/da/1466/63151e4983a1d832d894abb1c0363715.jpeg" style="border: 0px none;" /></p>
</a>
<div class="cntColourVariationSelector clearfix" style="margin: 10px 0px; width: 202px;">
<div class="cntColourVariationSelectorColours1" style="float: left; width: 122px;">
<ul class="clearfix" style="margin: 0px; padding: 0px; list-style: none;">
    <li style="float: left; height: 18px; width: 22px; margin-bottom: 6px; position: relative; background-image: none; padding-left: 0px; background-position: initial initial; background-repeat: initial initial;"><a href="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdr-cx220e" title="Se&ccedil;ilen renk:Siyah" class="selected" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; border: 1px solid rgb(102, 102, 102); font-size: 0px; line-height: 0; display: block; position: relative; width: 18px; height: 18px; margin-top: -2px; margin-left: -2px; background-color: rgb(0, 0, 0);"><span style="position: absolute; left: 2px; text-indent: -9999px; background-image: url(http://www.sony.com.tr/bravia/image/layout/content/bcgColourSelSelected1.gif); display: block; height: 13px; width: 14px; top: -6px; background-position: initial initial; background-repeat: no-repeat no-repeat;">Siyah</span></a></li>
    <li style="float: left; height: 18px; width: 22px; margin-bottom: 6px; position: relative; background-image: none; padding-left: 0px; background-position: initial initial; background-repeat: initial initial;"><a href="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdrcx220es.e35" title="Se&ccedil;ilen renk:Gümüş" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; border: 1px solid rgb(220, 220, 220); font-size: 0px; line-height: 0; display: block; position: relative; width: 14px; height: 14px; background-color: rgb(192, 192, 192);"><span style="position: absolute; left: -9999px; text-indent: -9999px;">Gümüş</span></a></li>
    <li style="float: left; height: 18px; width: 22px; margin-bottom: 6px; position: relative; background-image: none; padding-left: 0px; background-position: initial initial; background-repeat: initial initial;"><a href="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdrcx220el.e35" title="Se&ccedil;ilen renk:Mavi" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; border: 1px solid rgb(220, 220, 220); font-size: 0px; line-height: 0; display: block; position: relative; width: 14px; height: 14px; background-color: rgb(36, 11, 105);"><span style="position: absolute; left: -9999px; text-indent: -9999px;">Mavi</span></a></li>
    <li style="float: left; height: 18px; width: 22px; margin-bottom: 6px; position: relative; background-image: none; padding-left: 0px; background-position: initial initial; background-repeat: initial initial;"><a href="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdrcx220er.e35" title="Se&ccedil;ilen renk:Kırmızı" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; border: 1px solid rgb(220, 220, 220); font-size: 0px; line-height: 0; display: block; position: relative; width: 14px; height: 14px; background-color: rgb(255, 0, 0);"><span style="position: absolute; left: -9999px; text-indent: -9999px;">Kırmızı</span></a></li>
</ul>
</div>
</div>
<a href="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdr-cx220e" title="HDR-CX220E" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; display: block;">
<p class="itemTitle" style="margin: 0px 0px 2px; padding: 0px; color: rgb(14, 95, 232); font-size: 14px; font-weight: bold;">HDR-CX220E</p>
</a>
<ul class="itemFeaturesList" id="HDRCX220EB.E35-date" rel="00021130" style="margin: 0px; padding: 0px; list-style: none;">
    <li style="margin: 0px; padding: 0px 0px 0px 17px; list-style: none; background-image: url(http://www.sony.com.tr/bravia/image/layout/bcgButtonBulletC4.gif); line-height: 15px; background-position: 0px 2px; background-repeat: no-repeat no-repeat;">High Definition&nbsp;1080, AVCHD</li>
    <li id="HDRCX220EB.E35-media" rel="1" style="margin: 0px; padding: 0px 0px 0px 17px; list-style: none; background-image: url(http://www.sony.com.tr/bravia/image/layout/bcgButtonBulletC4.gif); line-height: 15px; background-position: 0px 2px; background-repeat: no-repeat no-repeat;">Memory Stick?</li>
    <li style="margin: 0px; padding: 0px 0px 0px 17px; list-style: none; background-image: url(http://www.sony.com.tr/bravia/image/layout/bcgButtonBulletC4.gif); line-height: 15px; background-position: 0px 2px; background-repeat: no-repeat no-repeat;">8,9&nbsp; Megapiksel&nbsp; fotoğraf &ccedil;özünürlüğü</li>
</ul>
<a href="http://www.sony.com.tr/product/cam-high-definition-on-memory-stick/hdr-cx220e" title="HDR-CX220E" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; display: block;">
<p class="startingPrice" style="margin: 0px 0px 14px; padding: 0px; font-weight: bold; color: rgb(255, 102, 0);"><span class="price">&nbsp;</span></p>
</a></div>
</div>
</div>
</div>
<div id="teaser_1237489278829_3" style="color: rgb(51, 51, 51); font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">
<div class="scrollerItem productModel" rel="" style="position: relative; border: 5px solid rgb(255, 255, 255); float: left; width: 160px; overflow: hidden; height: 327px;">
<div class="scrollerItemInner" style="padding: 20px 18px; line-height: 16px;">
<div class="scrollerItemClickableArea" rel="http://www.sony.com.tr/product/sdh-standard-definition-on-memory-stick/dcr-sx22e" style="cursor: pointer;"><a href="http://www.sony.com.tr/product/sdh-standard-definition-on-memory-stick/dcr-sx22e" title="DCR-SX22E" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; display: block;">
<p class="thumb" style="margin: 0px 0px 10px; padding: 0px; min-height: 86px; height: auto !important;"><img alt="DCR-SX22E" src="http://sp.sony-europe.com/da/1500/328f3c12426b49e6715e1c1d55d87a1f.jpeg" style="border: 0px none;" /></p>
</a><a href="http://www.sony.com.tr/product/sdh-standard-definition-on-memory-stick/dcr-sx22e" title="DCR-SX22E" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; display: block;">
<p class="itemTitle" style="margin: 0px 0px 2px; padding: 0px; color: rgb(14, 95, 232); font-size: 14px; font-weight: bold;">DCR-SX22E</p>
</a>
<ul class="itemFeaturesList" id="DCRSX22EB.CEN-date" rel="20130215" style="margin: 0px; padding: 0px; list-style: none;">
    <li id="DCRSX22EB.CEN-media" rel="1" style="margin: 0px; padding: 0px 0px 0px 17px; list-style: none; background-image: url(http://www.sony.com.tr/bravia/image/layout/bcgButtonBulletC4.gif); line-height: 15px; background-position: 0px 2px; background-repeat: no-repeat no-repeat;">Memory Stick?</li>
</ul>
<a href="http://www.sony.com.tr/product/sdh-standard-definition-on-memory-stick/dcr-sx22e" title="DCR-SX22E" style="text-decoration: none; color: rgb(0, 0, 0); cursor: pointer; display: block;">
<p class="startingPrice" style="margin: 0px 0px 14px; padding: 0px; font-weight: bold; color: rgb(255, 102, 0);"><span class="price">&nbsp;</span></p>
</a></div>
</div>
</div>
</div>', N'', NULL, 105, 0, 1, 0, 0, 1000, 0, 1, 0, 300, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/sony-dcr-sx15e_300/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, CAST(0x0000A26400E25411 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (301, 0, NULL, NULL, N'Los-02', N'Elle Erkek Ayakkabi', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 127, 0, 1, 0, 0, 5, 0, 0, 0, 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/elle-erkek-ayakkabi_301/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, CAST(0x0000A26400E2541C AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (302, 0, NULL, NULL, N'P-2131 c', N'Miorre ve Pierre Cardin Elbise', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 302, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/miorre-ve-pierre-cardin-elbise_302/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, CAST(0x0000A26400E25427 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (303, 0, NULL, NULL, N'T-587', N'S.Fıt Takım Elbise', N'', N'', N'<span style="font-family: Calibri, ''Lucida Sans Unicode'', Tahoma, sans-serif; font-size: 12px; line-height: 18px;">Yalnız kuru temizleme yapılmalıdır.</span>
<div style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; font-family: Calibri, ''Lucida Sans Unicode'', Tahoma, sans-serif; vertical-align: baseline; line-height: 18px;">Leke / Kir gidermek ama&ccedil;lı ya da ürünü beyazlatmak amacıyla kullanılan kimyasal veya ağartıcıları kullanmayınız.</div>
<div style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; font-family: Calibri, ''Lucida Sans Unicode'', Tahoma, sans-serif; vertical-align: baseline; line-height: 18px;">Tamburlu makinelerde kurutma işlemi uygulamayınız.</div>
<div style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; font-family: Calibri, ''Lucida Sans Unicode'', Tahoma, sans-serif; vertical-align: baseline; line-height: 18px;">&Uuml;rün etiketinde bulunan ürün yıkama talimatlarını mutlaka okuyunuz ve uygulayınız.</div>', N'', NULL, 128, 0, 1, 0, 0, 90, 0, 0, 0, 8, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/sfit-takim-elbise_303/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, CAST(0x0000A26400E2546E AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (304, 0, NULL, NULL, N'Hç-0103', N'Hakan Çanta Orange Blörf', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 129, 0, 1, 0, 0, 1001, 0, 1, 0, 2, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/hakan-canta-orange-blorf_304/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25490 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (311, 0, NULL, NULL, N'kitap1', N'Bir Psikiyatristin Gizli Defteri', N'', N'', N'&nbsp;
<table cellspacing="1" cellpadding="3" width="100%" style="color: rgb(0, 0, 0); font-family: helvetica, verdana, arial, geneva; font-size: 10px;">
    <tbody>
        <tr>
            <td align="left"><span class="normalkucuk" style="font-size: 9px; font-family: verdana, helvetica, arial;">&Ccedil;eviren: Duygu Akın&nbsp;<br />
            Yayın Yılı: 2013<br />
            Kitap Kağıdı<br />
            336 sayfa<br />
            14x20 cm<br />
            Karton Kapak<br />
            <span class="normalkucuk" itemprop="identifier">ISBN:6055443801</span><br />
            Dili: T&Uuml;RK&Ccedil;E<br />
            Bu üründen 4858 adet satılmıştır.<br />
            <br />
            <br />
            <b>İLGİLİ KONULAR:</b><br />
            <a href="http://www.kitapyurdu.com/konu/default.asp?id=A16&amp;session=5F6ED83C-7974-42BF-BCF8-16EF9774AF6A&amp;LogID=" style="text-decoration: none; color: rgb(0, 0, 0);">Psikoloji</a>&nbsp;>&nbsp;<a href="http://www.kitapyurdu.com/konu/default.asp?id=A1619&amp;session=5F6ED83C-7974-42BF-BCF8-16EF9774AF6A&amp;LogID=" style="text-decoration: none; color: rgb(0, 0, 0);">Genel</a>&nbsp;<br />
            <br type="_moz" />
            </span></td>
        </tr>
        <tr>
            <td></td>
            <td align="left"><span class="normalkucuk" itemprop="category" style="font-size: 9px; font-family: verdana, helvetica, arial;"><br />
            </span></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 10, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/bir-psikiyatristin-gizli-defteri_311/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 105, 104, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, CAST(0x0000A26400E254E9 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (313, 0, NULL, NULL, N'k-142', N'Philips QG3380/16 Erkek Bakım Kiti', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 116, 0, 1, 0, 0, 1000, 0, 1, 0, 313, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/philips-qg3380/16-erkek-bakim-kiti_313/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E254FC AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (315, 0, NULL, NULL, N'k-254', N'Versace Red Jeans Edt 75 Ml Kadın Parfümü', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 135, 0, 1, 0, 0, 1000, 0, 1, 0, 315, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/versace-red-jeans-edt-75-ml-kadin-parfumu_315/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25510 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (316, 0, NULL, NULL, N'Contınental-001', N'Contınental 225/65R16c 112/110R Vancowı 2 Kış Lastiği', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 136, 0, 1, 0, 0, 1000, 0, 1, 0, 10, N'225', N'65', N'R16', N'KIŞLIK', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/continental-225/65r16c-112/110r-vancowi-2-kis-lastigi_316/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, CAST(0x0000A26400E2551C AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (317, 0, NULL, NULL, N'015-ak', N'Oto Kılıf Takımı', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>
            <h3 class="title" style="margin: 0px; padding: 0px 10px; border: 0px; font-size: 17px; position: relative; top: -15px; background-color: rgb(246, 246, 246); color: rgb(26, 26, 26); height: 30px; line-height: 30px; left: -20px; width: 920px; font-family: arial, sans-serif;">Ayrıntılar</h3>
            <p class="ACIKLAMA" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><br />
            <font face="Trebuchet MS"><font size="3"><span class="BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;"><font color="#ff0000">&Uuml;R&Uuml;N UYGUNLUĞU:</font></span></font></font></p>
            <p class="ACIKLAMA" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><font face="Trebuchet MS"><font size="3"><span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;"><br />
            &middot;&nbsp;</span>İrem oto koltuk kılıfları,&nbsp;</font></font><font face="Trebuchet MS" size="3">OtoAVM.com</font>&nbsp;<font face="Trebuchet MS"><font size="3">a özel üretilmektedir. Tüm yerli ve yabancı binek ara&ccedil;lara uyum sağlayacak şekilde tasarlanarak üretilmiştir.<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>Hafif ticari ve binek tip ara&ccedil;ların arka yolcu koltuğunun sırt kısmı yatan 2+1, oturma yeri tek par&ccedil;a olan ara&ccedil;lar i&ccedil;in tasarlanmıştır.<br />
            <br />
            <span class="BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;"><font color="#ff0000">&Uuml;R&Uuml;N &Ouml;ZELLİĞİ:</font></span></font></font></p>
            <p class="ACIKLAMA" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><font face="Trebuchet MS"><font size="3"><span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;"><br />
            &middot;&nbsp;</span>İrem Oto Koltuk kılıfları; ithal orijinal ara&ccedil; örme kadife kumaş, etrafı kalın örme lakost kumaş kullanılmasıyla üretilmiştir.&nbsp;<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>İrem Oto Koltuk Kılıfları son teknoloji bilgisayarlı &ccedil;ift iğne profesyonel makinelerle dikilmektedir.<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>Sırt, bel, oturma kısımları ortopediktir. Daha konforlu ve rahat sürüş i&ccedil;in süngerlerle desteklenmiştir.<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>Konforu ve sportif ruhu yansıtması baz alınarak tasarlanıp dizayn edilmiştir.<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>Resimde arka başlıkların gözükmediği 5 adet başlık kılıfı, ön iki koltuk kılıfı arkası ceplikler bulunmaktadır. (Diğer Temsili Resimden bakabilirsiniz.)<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>&Ouml;n oturma, sırt bölge kısımlarındaki renk ve desenler, arka koltuklarla aynıdır.<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>Kumaş ile tela arasında konfor sağlayan özel sünger mevcuttur.<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>Her iki ön koltuk kenarlarında, AIRBAG (Hava Yastığı) yeri i&ccedil;in özel cırt sistemi kullanılmaktadır. Bu sayede sürücü ve yolcu güvenliği düşünülmüştür. (&Ouml;n koltuk kenarlarında AIRBAG olan ara&ccedil;lar i&ccedil;in uygundur.)<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>Sürtünmenin &ccedil;ok olduğu köşe yerlerine, daha dayanıklı olması a&ccedil;ısından 5 iplik sistemiyle birlikte ergonomik koruyucu deri biyelerle dikilmiştir.<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>Seyahatlerinizde ve uzun yolcuklarınızda size konforlu sürüş ve rahatlık sağlar..<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>Koltuk kılıfları aracınızın i&ccedil; kısmında ile şık tasarım ve estetik bir görünüm sağlar..</font></font></p>
            <p class="ACIKLAMA" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><span class="BASLIK" style="margin: 0px; padding: 0px; border: 0px; position: relative;"><font face="Trebuchet MS" size="3">PAKET &Ouml;ZELLİĞİ:</font></span></p>
            <p class="ACIKLAMA" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><font face="Trebuchet MS"><font size="3"><span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>2 &Ouml;n + Arka Kılıf Seti (Sırt 2+1, Oturma tek par&ccedil;a)+ 5 Başlık</font></font></p>
            <p class="ACIKLAMA" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><span class="BASLIK" style="margin: 0px; padding: 0px; border: 0px; position: relative;"><font face="Trebuchet MS" size="3">&Uuml;R&Uuml;N SINIFLANDIRMASI:</font></span></p>
            <p class="ACIKLAMA" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><font face="Trebuchet MS"><font size="3"><span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>1 Sınıf Kalite ve Vip</font></font></p>
            <p class="ACIKLAMA" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><span class="BASLIK" style="margin: 0px; padding: 0px; border: 0px; position: relative;"><font face="Trebuchet MS" size="3">&Uuml;RETİM:</font></span></p>
            <p class="ACIKLAMA" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><font face="Trebuchet MS"><font size="3"><span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>İrem Oto Koltuk Kılıfları, İrem Oto Koltuk Kılıfı Fabrikalarında ve üretimi yüksek kalite standartlarında üretilmektedir.<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>İrem Oto Koltuk Kılıflarının üretimi, maksimum fayda ve verimlilik esası prensiplerine uygun üretilmektedir..&nbsp;<br />
            <span class="ALT_BASLIK" style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative;">&middot;&nbsp;</span>Satışa sunulan her ürün kalite kontrol birimi tarafından test edilmekte, onay aşamasından sonra satışa sunulmaktadır.</font></font></p>
            <p class="ACIKLAMA" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;">&nbsp;</p>
            <p class="ACIKLAMA" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><strong style="margin: 0px; padding: 0px; border: 0px; position: relative;"><font color="#ff0000" face="Trebuchet MS" size="3">Hediye &Uuml;rün:</font></strong></p>
            <p style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;">Yolculuklarınız sırasında ortaya &ccedil;ıkabilecek bel ve sırt ağrılarına son veren ortopedik bel desteği?</span></p>
            <p style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; color: rgb(0, 0, 255); font-family: ''trebuchet ms'', geneva;"><b><br />
            &Uuml;rün A&ccedil;ıklaması:</b></span></p>
            <ul style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; list-style: none; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;">
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative; color: rgb(255, 0, 0);"><b>En :</b></span>&nbsp;43 cm</span></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; color: rgb(255, 0, 0); font-family: ''trebuchet ms'', geneva;"><b>Boy&nbsp;<span style="margin: 0px; padding: 0px; border: 0px; position: relative;">:</span></b></span>&nbsp;<font face="Trebuchet MS" size="3">39 cm</font></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative; color: rgb(255, 0, 0);"><b>Renk :&nbsp;</b></span>Siyah</span></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative; color: rgb(255, 0, 0);"><b>Materyal :&nbsp;</b></span>Poliüretan Köpük</span></li>
            </ul>
            <ul style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; list-style: none; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;">
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;">Aracınızda, evinizde, işyerinizde kullanabileceğiniz bel desteğidir.</span></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;">Yolculuklarınız sırasında doğru oturma pozisyonunda ve doğru vücut duruşunda oturmanızı sağlarken bel ve sırt ağrılarınızı önler ve hafifletir.</span></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;">Ergonomik şekli ve basıncın rahatlatıcı özelliklerinden dolayı, omurganın eğimine rahatlıkla uyum sağlar, vücudu sarar ve yer kaplamaz.</span></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;">Masa başında sürekli oturarak &ccedil;alışanlar i&ccedil;in de kullanılabilecek bel desteği sağlar.</span></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;">Gövdesine bulunan, görünmeyen &ccedil;elik kasnağı sayesinde sağlamdır.</span></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;">Elastik bandı sayesinde her türlü koltuğa sabitlenebilir.</span></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;">Yıkanabilir elastik kumaştan üretilmiştir.</span></li>
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;">Fileli olması sebebi ile terlemeyi önler.</span></li>
            </ul>
            <p style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: 16px; position: relative; color: rgb(0, 0, 255);"><b><br />
            Uygulama:</b></span></span></p>
            <ul style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; position: relative; list-style: none; color: rgb(66, 66, 66); font-family: arial, sans-serif; line-height: 16px;">
                <li style="margin: 0px; padding: 0px; border: 0px; position: relative;"><span style="margin: 0px; padding: 0px; border: 0px; font-size: medium; position: relative; font-family: ''trebuchet ms'', geneva;">Kullanmak istediğiniz yere ürünün arkasında bulunan lastikler yardımı ile sabitleyiniz.</span></li>
            </ul>
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 317, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/oto-kilif-takimi_317/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2552C AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (318, 0, NULL, NULL, N'mtkp-10', N'Bosch Darbeli Matkap', N'', N'', N'<table style="margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; font-family: Arial, Verdana, sans-serif; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
    <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;">
    </tbody>
    <colgroup><col class="pDBoxFR" style="width: 240px;" /><col class="pDBoxSR" style="width: 120px;" /></colgroup>
    <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;">
        <tr style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;">
            <td style="margin: 0px; padding: 2px 5px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-top-style: solid; border-top-color: rgb(195, 195, 196); outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;">Giriş gücü</td>
            <td class="sec" style="margin: 0px; padding: 2px 5px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-top-style: solid; border-top-color: rgb(195, 195, 196); outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; background-color: rgb(225, 225, 226);">600 W</td>
        </tr>
        <tr style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;">
            <td style="margin: 0px; padding: 2px 5px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-top-style: solid; border-top-color: rgb(195, 195, 196); outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;">Duvarda delme &ccedil;apı</td>
            <td class="sec" style="margin: 0px; padding: 2px 5px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-top-style: solid; border-top-color: rgb(195, 195, 196); outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; background-color: rgb(225, 225, 226);">15 mm</td>
        </tr>
        <tr class="last" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;">
            <td style="margin: 0px; padding: 2px 5px; border-right-width: 0px; border-left-width: 0px; border-top-style: solid; border-bottom-style: solid; border-top-color: rgb(195, 195, 196); border-bottom-color: rgb(195, 195, 196); outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline;">Ahşapta delme &ccedil;apı</td>
            <td class="sec" style="margin: 0px; padding: 2px 5px; border-right-width: 0px; border-left-width: 0px; border-top-style: solid; border-bottom-style: solid; border-top-color: rgb(195, 195, 196); border-bottom-color: rgb(195, 195, 196); outline: 0px; font-style: inherit; font-family: inherit; vertical-align: baseline; background-color: rgb(225, 225, 226);">25 mm</td>
        </tr>
    </tbody>
</table>', N'', NULL, 110, 0, 1, 0, 0, 1000, 0, 1, 0, 318, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/bosch-darbeli-matkap_318/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A26400E25537 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (323, 0, NULL, NULL, N'pro-16', N'Xml Entegrasyon Hizmeti ( Özel XML )', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>
            <table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
                <tbody>
                    <tr class="row">
                        <td></td>
                        <td><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-İstediğiniz bir tedarikçi ile entegrasyon(Import)</span><br style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);" />
                        <br />
                        <span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-İstediğiniz bir formatta dışarıya xml verme(Export)<br />
                        <br />
                        - Kategori yapısında isteğinize göre düzenleme yapılması.<br type="_moz" />
                        </span></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                        <table width="100%" cellpadding="5" cellspacing="0" border="0" style="border: 0px; margin: 0px; padding: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(39, 40, 24); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);">
                            <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                                <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                                    <th align="center" colspan="2"></th>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 323, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/xml-entegrasyon-hizmeti---ozel-xml--_323/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2557D AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (326, 0, NULL, NULL, N'Pro-1', N'Facebook Satış Mağazası', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">E-ticaret Sitenizle Entegre Olarak Çalışan Facebook Satış Mağazası<br />
            <br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* Tüm Bankalarla Sanal Pos Entegrasyonu (3d)<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* İpara Ödeme Sistemi Entegrasyonu<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* Facebook İçinde Online Ödeme Sistemi<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* Facebook Üye Yönetimi(Paylaşım,Duvarına Yazabilme,Arkadaşlarına Mesaj atabilme)<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* E-ticaret Siteniz ile Entegre Facebook Store Uygulaması Olarak Çalışabilme<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* Kolay Kurulum Sihirbazı<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* Çoklu Tema Desteği<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* Davet Sistemi(Arkadaşını Davet Et)<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* Modüler Genişleyebilir Altyapı (Eklentiler)<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* Sınırsız Kategori Desteği<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* Sınırsız Ürün Desteği<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* Ürünlere Yorum Yapabilme Özelliği<br />
            </span><span style="color: rgb(136, 136, 136); font-family: open_sanssemibold; font-size: 14px; font-weight: bold; background-color: rgb(255, 255, 255);">* Gelişmiş Vitrin Özelliği</span></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 326, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/facebook-satis-magazasi_326/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2559D AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (327, 0, NULL, NULL, N'Pro-2', N'Ücretsiz iPhone Uygulaması', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">    -E-ticaret Sitenizle Entegre Olarak Çalışan iPhone Uygulamasının AppStore Üzerinde Yayınlanması ve Özelleştirilmesi Eklentisi.</span><br />
            <br />
            <table width="100%" cellspacing="0" cellpadding="5" border="0" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(72, 72, 72); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);">
                <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                    <tr class="ozellik-header" style="font-size: 20px; color: rgb(3, 118, 143); padding: 5px 5px 23px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187); font-family: open_sanssemibold;">
                        <td><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Özellik</b></td>
                        <td style="text-align: center;"><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Durumu</b></td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">E-Ticaret Sitenizle Entegre</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">iPhone İçerisinde Ürün Satışı</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">AppStore Üzerinde Yayınlama</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Mağaza Bilgilerinize Göre Özelleştirme</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;"><br />
                        <br />
                        <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(3, 118, 143);"><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Not:</b> Bu Eklentiyi Satın Alarak Ücretsiz iPhone Uygulamasının AppStore Üzerinde Yayınlanması ve Özelleştirilmesi Hizmetine Sahip Olursunuz.<br />
                        Siparişinizi geçtikten sonra iPhone Uygulaması Özelleştirme Formunu Bize Ulaştırmanız Gerekmektedir.<br />
                        <br />
                        </span></td>
                    </tr>
                </tbody>
            </table>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>
<div>
<div></div>
</div>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 327, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/ucretsiz-iphone-uygulamasi_327/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E255AA AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (328, 0, NULL, NULL, N'pro-3', N'Canlı Destek Modülü', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-E-Ticaret yazılımı ile entegre.     -Gizli Mod Özellği (Offline iken ziyaretçi takibi)         -Üye Sepetine indirim yapabilme (İnteraktif Pazarlama)</span><br />
            <table width="100%" cellpadding="5" cellspacing="0" border="0" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(72, 72, 72); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);">
                <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                    <tr class="ozellik-header" style="font-size: 20px; color: rgb(3, 118, 143); padding: 5px 5px 23px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187); font-family: open_sanssemibold;">
                        <td><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Özellik</b></td>
                        <td style="text-align: center;"><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Durumu</b></td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">E-Ticaret Sitenizle Entegre</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Gizli Mod Özelliği (Offline iken ziyaretçi takibi)</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Ziyaretçinin Sepetlerini Görebilme</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Sınırsız Sayıda Operatör Desteği</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Farklı Lokasyonlarda Operatör Desteği </td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Giriş Sayfası (Landing Page) İzleme</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Referans Sayfası(Referrer Page) İzleme</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Arama Motoru Anahtar Kelime İzleme</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Offline Durumunda Mesaj Alabilme</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Konuşmayı Başka Operatöre Aktarabilme</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Ip Adresinden Lokasyon(Şehir) Saptayabilme</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;"></td>
                        <td class="blueCol">
                        <div id="addon-buy" style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                        <h1 style="margin: 0px; padding: 0px; border: 0px; outline: 0px; text-decoration: none; color: rgb(39, 40, 24);"></h1>
                        </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 328, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/canli-destek-modulu_328/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E255B8 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (329, 0, NULL, NULL, N'pro-4', N'Tekstil Modülü', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-Sınırsız Renk Seçeneği      </span><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);"> -Beden Drop/Kavala desteğ          </span><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-Tüm boyutlarda Stok Takibi</span><span style="background-color: rgb(255, 255, 255); color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px;">i<br />
            </span><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);"><br />
            <br />
            </span>
            <table width="100%" cellpadding="5" cellspacing="0" border="0" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(72, 72, 72); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);">
                <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Sınırsız Renk Desteği</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Beden Drop/Kavala Desteği</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Tüm Boyutlarda Stok Takibi</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Renk Yerine Desen Gösterebilme</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Tüm Tekstil Ürünlerini Tanımlayabilme(Ceket,Pantolon,Etek,İç Çamaşır)</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;"><br />
                        Ürün Türüne Göre Ölçü Tablosu Tanımlama<span class="Apple-tab-span" style="white-space:pre">	</span></td>
                    </tr>
                </tbody>
            </table>
            <span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);"><br />
            <br />
            <br type="_moz" />
            </span></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 329, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/tekstil-modulu_329/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E255C4 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (330, 0, NULL, NULL, N'Pro-5', N'Copyright Etiketi Kaldırma Lisansı', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">Sitenizin altındaki "Powered by Proticaret" linkini kaldırır.</span><br />
            <table cellspacing="0" cellpadding="5" border="0" width="100%" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(72, 72, 72); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);">
                <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <th align="center" colspan="2"></th>
                    </tr>
                    <tr class="ozellik-header" style="font-size: 20px; color: rgb(3, 118, 143); padding: 5px 5px 23px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187); font-family: open_sanssemibold;">
                        <td><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Özellik</b></td>
                        <td style="text-align: center;"><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Durumu</b></td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Sitenizin altındaki "Powered by Proticaret" linkini kaldırır.</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Yönetim Ekranlarındaki "Powered by Proticaret" linkini kaldırır.</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;"><br />
                        <br />
                        <br />
                        <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(3, 118, 143);"><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Not:</b> Copy Right lisansı domain başına yapılmaktadır. Kullanım hakkı başka bir domaine aktarılamaz.</span></td>
                    </tr>
                </tbody>
            </table>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>
<div></div>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 330, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/copyright-etiketi-kaldirma-lisansi_330/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E255CF AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (331, 0, NULL, NULL, N'pro-7', N'Dil Desteği', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-Sınırsız Dil desteği                 </span><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-Otomatik Dil Algılama</span></td>
            <td></td>
        </tr>
        <tr>
            <td>
            <table width="100%" cellpadding="5" cellspacing="0" border="0" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(72, 72, 72); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);">
                <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <th align="center" colspan="2"></th>
                    </tr>
                    <tr class="ozellik-header" style="font-size: 20px; color: rgb(3, 118, 143); padding: 5px 5px 23px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187); font-family: open_sanssemibold;">
                        <td><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Özellik</b></td>
                        <td style="text-align: center;"><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Durumu</b></td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Sınırsız Dil Desteği</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Tarayıcının Özelliklerine Göre Otomatik Dil Ayarlama</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Öncelikli Dil Belirleyebilme(Varsayılan dil ayarlayabilme)</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;"></td>
                        <td class="blueCol">
                        <div id="addon-buy" style="margin: 0px; padding: 0px; border: 0px; outline: 0px;"></div>
                        </td>
                    </tr>
                </tbody>
            </table>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 331, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/dil-destegi_331/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E255DA AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (332, 0, NULL, NULL, N'pro-8', N'Proticaret Kurulum Hizmeti', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr>
            <td>
            <table width="100%" cellspacing="0" cellpadding="5" border="0" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(72, 72, 72); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);">
                <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <th align="center" colspan="2"><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; font-weight: normal; text-align: left;">-Hostinginize kurulum(Windows Hosting)<br />
                        </span><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; font-weight: normal; text-align: left;">-Serverınıza Kurulum(Windows Server)</span></th>
                    </tr>
                    <tr class="ozellik-header" style="font-size: 20px; color: rgb(3, 118, 143); padding: 5px 5px 23px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187); font-family: open_sanssemibold;">
                        <td><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Özellik</b></td>
                        <td style="text-align: center;"><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Durumu</b></td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Versiyonlar Arası Geçiş Hizmeti</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Hostinginize kurulum(Windows Hosting)</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Serverınıza Kurulum(Windows Server)</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;"></td>
                        <td class="blueCol"></td>
                    </tr>
                </tbody>
            </table>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 332, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/proticaret-kurulum-hizmeti_332/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E255E3 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (333, 0, NULL, NULL, N'Pro-9', N'Xml Entegrasyon Hizmeti (Standart XML )', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-İstediğiniz bir tedarikçi ile entegrasyon(Import)</span><br style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);" />
            <br />
            <span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-İstediğiniz bir formatta dışarıya xml verme(Export)</span></td>
        </tr>
        <tr>
            <td></td>
            <td>
            <table width="100%" cellpadding="5" cellspacing="0" border="0" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(39, 40, 24); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);">
                <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <th align="center" colspan="2"></th>
                    </tr>
                </tbody>
            </table>
            </td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 333, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/xml-entegrasyon-hizmeti--standart-xml--_333/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E255EF AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (334, 0, NULL, NULL, N'pro-10', N'Muhasebe Programları Entegrasyonu ( Vega Yazılım Entegrasyonu )', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>
            <div id="eticaret-ozellikler" style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
            <table cellpadding="10" cellspacing="10" width="845" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px;">
                <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                </tbody>
            </table>
            <div id="bilgi" style="margin: 0px; padding: 0px; border: 0px; outline: 0px;"><span style="margin: 15px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-family: open_sanssemibold; color: rgb(136, 136, 136); display: block; background-color: rgb(255, 255, 255); font-size: 16px !important;"><span style="margin: 15px 0px 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 165, 187); display: block; font-size: 14px; font-weight: bold;">Proticaret Muhasebe Programları Entegrasyonu Özellikleri</span></span>
            <ul style="margin: 0px; padding: 0px; border: 0px; outline: 0px; list-style: none; color: rgb(72, 72, 72); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);"><br />
                <li style="margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; position: relative; list-style: inside;"><span style="margin: 15px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-family: open_sanssemibold; color: rgb(136, 136, 136); display: block; font-size: 16px !important;">Alınan ve durumu sizin tarafınızdan belirlenmiş olan (Ödendi, Kargo Edildi, Gönderildi vs.) siparişler sizin belirlemiş olduğunuz sürelerde muhasebe programınıza sipariş olarak düşer. Sipariş carisi yoksa sistem cari kartı; stok kartı yoksa stok kartını program kendisi açacaktır.</span></li>
                <br />
                <li style="margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; position: relative; list-style: inside;"><span style="margin: 15px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-family: open_sanssemibold; color: rgb(136, 136, 136); display: block; font-size: 16px !important;">Muhasebe programında açılan bir stok kartı internet sitenizde de bulunacaksa kategorisi, markası, rengi, bedeni, fiyatı, resmi, açıklaması vs bilgileri ile internet sitenize otomatik entegre edilir.</span></li>
                <br />
                <li style="margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; position: relative; list-style: inside;"><span style="margin: 15px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-family: open_sanssemibold; color: rgb(136, 136, 136); display: block; font-size: 16px !important;">Stok (Ürün) envanterleri online güncellenir. İnternet sitesinde gerçek stok (ürün) takibi yapılır.</span></li>
                <br />
                <li style="margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; position: relative; list-style: inside;"><span style="margin: 15px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-family: open_sanssemibold; color: rgb(136, 136, 136); display: block; font-size: 16px !important;">Müşteriniz (B2C ya da B2B) internet siteniz üzerinden hesap ekstresini alabilir, borç alacak hareketlerini online görebilir.</span></li>
            </ul>
            </div>
            </div>
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 334, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/muhasebe-programlari-entegrasyonu---vega-yazilim-entegrasyonu--_334/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E255FC AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (335, 0, NULL, NULL, N'pro-11', N'Payu Ödeme Sistemi', N'', N'', N'<br />
<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-Tek bir sözleşme ve API ile altı bankanın sanal POS’una bir günde sahip olabilirsiniz.<br />
            </span><br />
            <table cellspacing="0" cellpadding="5" border="0" width="100%" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(72, 72, 72); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);">
                <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                    <tr class="ozellik-header" style="font-size: 20px; color: rgb(3, 118, 143); padding: 5px 5px 23px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187); font-family: open_sanssemibold;">
                        <td><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Özellik</b></td>
                        <td style="text-align: center;"><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Durumu<br type="_moz" />
                        </b></td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Garanti Bankası <img src="http://www.proticaret.org/uploads/garanti.png" width="124" height="47" alt="" style="margin: 0px 0px 0px 25px; padding: 0px; border: 0px; outline: 0px;" /></td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Akbank <img src="http://www.proticaret.org/uploads/akbank.jpg" width="39" height="40" alt="" style="margin: 0px 0px 0px 75px; padding: 0px; border: 0px; outline: 0px;" /></td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Bankasya<img src="http://www.proticaret.org/uploads/bankasya.jpg" width="182" height="40" alt="" style="margin: 0px 0px 0px 70px; padding: 0px; border: 0px; outline: 0px;" /></td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Finansbank <img src="http://www.proticaret.org/uploads/finansbank.png" width="115" height="39" alt="" style="margin: 0px 0px 0px 60px; padding: 0px; border: 0px; outline: 0px;" /></td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">İş Bankası <img src="http://www.proticaret.org/uploads/isbanka.jpg" width="152" height="39" alt="" style="margin: 0px 0px 0px 65px; padding: 0px; border: 0px; outline: 0px;" /></td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Yapı Kredi <img src="http://www.proticaret.org/uploads/yapikredi.jpg" width="88" height="40" alt="" style="margin: 0px 0px 0px 60px; padding: 0px; border: 0px; outline: 0px;" /></td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;"></td>
                        <td class="blueCol">
                        <div id="addon-buy" style="margin: 0px; padding: 0px; border: 0px; outline: 0px;"></div>
                        </td>
                    </tr>
                </tbody>
            </table>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 335, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/payu-odeme-sistemi_335/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25608 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (336, 0, NULL, NULL, N'pro-12', N'Paypal Ödeme Sistemi', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-Ödeme almak için beklediğiniz günler geride kaldı.</span><br style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);" />
            <span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);"> Artık yalnızca birkaç adımda güvenli ödeme alabilirsiniz.</span><br />
            <table cellspacing="0" cellpadding="5" border="0" width="100%" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(72, 72, 72); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);">
                <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                    <tr class="ozellik-header" style="font-size: 20px; color: rgb(3, 118, 143); padding: 5px 5px 23px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187); font-family: open_sanssemibold;">
                        <td><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Özellik</b></td>
                        <td style="text-align: center;"><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Durumu</b></td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">PayPal ile satış yapmak güvenli, kolay ve hızlıdır.</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;"></td>
                        <td class="blueCol">
                        <div id="addon-buy" style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                        <h1 style="margin: 0px; padding: 0px; border: 0px; outline: 0px; text-decoration: none; color: rgb(39, 40, 24);"></h1>
                        </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 336, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/paypal-odeme-sistemi_336/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25628 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (337, 0, NULL, NULL, N'pro-13', N'Proticaret Güncelleme Hizmeti', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-Versiyonlar Arası Geçiş Hizmeti</span><br style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);" />
            <span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-Hostinginize kurulum(Windows Hosting)</span><br style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);" />
            <span style="color: rgb(3, 118, 143); font-family: open_sanssemibold; font-size: 14px; background-color: rgb(255, 255, 255);">-Serverınıza Kurulum(Windows Server)</span><br />
            <table width="100%" cellspacing="0" cellpadding="5" border="0" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; border-spacing: 0px; color: rgb(72, 72, 72); font-family: Tahoma; font-size: 11px; background-color: rgb(255, 255, 255);">
                <tbody style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">
                    <tr class="ozellik-header" style="font-size: 20px; color: rgb(3, 118, 143); padding: 5px 5px 23px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187); font-family: open_sanssemibold;">
                        <td><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Özellik</b></td>
                        <td style="text-align: center;"><b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Durumu</b></td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Versiyonlar Arası Geçiş Hizmeti</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Hostinginize kurulum(Windows Hosting)</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                        <td class="featureDesc" style="font-size: 14px; color: rgb(136, 136, 136); padding: 5px; border-bottom-style: solid; border-bottom-color: rgb(148, 220, 229); font-family: open_sanssemibold; font-weight: bold;">Serverınıza Kurulum(Windows Server)</td>
                        <td class="blueCol">
                        <div class="checkOk" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; height: 45px; width: 45px; background-image: url(http://www.proticaret.org/themes/v5/css/images/check.png); background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: no-repeat no-repeat;"></div>
                        </td>
                    </tr>
                    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(51, 165, 187);">
                    </tr>
                </tbody>
            </table>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 337, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/proticaret-guncelleme-hizmeti_337/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25634 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (338, 0, NULL, NULL, N'pro-19', N'Muhasebe Programları Entegrasyonu ( Logo Go Yazılım Entegrasyonu )', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 338, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/muhasebe-programlari-entegrasyonu---logo-go-yazilim-entegrasyonu--_338/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2563F AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (339, 0, NULL, NULL, N'pro-20', N'Muhasebe Programları Entegrasyonu ( Resital Yazılım Entegrasyonu )', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 339, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/muhasebe-programlari-entegrasyonu---resital-yazilim-entegrasyonu--_339/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2564B AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (340, 0, NULL, NULL, N'pro-21', N'Muhasebe Programları Entegrasyonu ( Nebim Yazılım Entegrasyonu)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 340, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/muhasebe-programlari-entegrasyonu---nebim-yazilim-entegrasyonu-_340/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25656 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (341, 0, NULL, NULL, N'pro-23', N'Muhasebe Programları Entegrasyonu ( Mikro1400 Yazılım Entegrasyonu )', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 341, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/muhasebe-programlari-entegrasyonu---mikro1400-yazilim-entegrasyonu--_341/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25662 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (342, 0, NULL, NULL, N'pro-22', N'Muhasebe Programları Entegrasyonu ( Logo Tiger Yazılım Entegrasyonu)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 342, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/muhasebe-programlari-entegrasyonu---logo-tiger-yazilim-entegrasyonu-_342/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2566E AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (343, 0, NULL, NULL, N'pro-24', N'Muhasebe Programları Entegrasyonu ( Netsis Yazılım Entegrasyonu )', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 343, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/muhasebe-programlari-entegrasyonu---netsis-yazilim-entegrasyonu--_343/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25679 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (344, 0, NULL, NULL, N'1231asd', N'El Aynası', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 344, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/el-aynasi_344/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25684 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (345, 0, NULL, NULL, N'2563-69', N'Merve Bayan Güneş Gözlüğü', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr>
            <td>
            <table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
                <tbody>
                    <tr>
                        <td>
                        <table class="product-table" border="0" cellspacing="0" cellpadding="0" width="370" style="max-width: 100%; background-color: rgb(255, 255, 255); border-collapse: collapse; border-spacing: 0px; color: rgb(40, 40, 40); font-family: ''Open Sans'', ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;">
                            <tbody>
                                <tr>
                                    <th colspan="2" align="left">&Uuml;rün Detay</th>
                                </tr>
                                <tr class="light">
                                    <td class="col1" colspan="2">Gövde: Kemik</td>
                                </tr>
                                <tr>
                                    <td class="col1" colspan="2">Cam: Organik</td>
                                </tr>
                                <tr class="light">
                                    <td class="col1" colspan="2">Ekartman: 57</td>
                                </tr>
                                <tr>
                                    <td class="col1" colspan="2">Valentino Marka Güneş Gözlüğü %100 Orijnal Ve %100 Uv Korumali Camlar</td>
                                </tr>
                                <tr class="light">
                                    <td class="col1" colspan="2">2 Yil Garantili</td>
                                </tr>
                                <tr>
                                    <td class="col1" colspan="2">Orijinal Kılıfı, Silme Bezi Ve Garanti Belgesi Ile Birlikte Gönderilecektir</td>
                                </tr>
                                <tr class="light">
                                    <td class="col1" colspan="2" style="color: rgb(255, 0, 0);"><strong>Kargoya teslim süresi 1 iş günüdür.</strong></td>
                                </tr>
                            </tbody>
                        </table>
                        <p style="margin: 0px 0px 10px; color: rgb(40, 40, 40); font-size: 12px; font-family: ''Open Sans'', ''Helvetica Neue'', Helvetica, Arial, sans-serif; line-height: 20px; background-color: rgb(255, 255, 255); text-align: justify;"><span style="color: rgb(51, 51, 51);"><strong>Marka Hakkında<br />
                        <br type="_moz" />
                        </strong></span></p>
                        </td>
                    </tr>
                </tbody>
            </table>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 138, 0, 1, 0, 0, 0, 0, 1, 0, 6, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Tükendi', N'', N'', 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/merve-bayan-gunes-gozlugu_345/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A26400E25699 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (346, 0, NULL, NULL, N'ssat-01', N'Erkek Kol Saati XVR55', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>Garanti</td>
            <td>:</td>
        </tr>
        <tr>
            <td>&Uuml;retim Yeri</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Marka</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Model</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>En</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Boy</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Yükseklik</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Ağırlık</td>
            <td>:</td>
        </tr>
    </tbody>
</table>', N'', NULL, 108, 0, 1, 0, 0, 1000, 0, 1, 0, 346, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/erkek-kol-saati-xvr55_346/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A26400E256A8 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (347, 0, NULL, NULL, N'sst-02', N'Bayan Kol Saati YT65', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>Garanti</td>
            <td>:</td>
        </tr>
        <tr>
            <td>&Uuml;retim Yeri</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Marka</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Model</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>En</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Boy</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Yükseklik</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Ağırlık</td>
            <td>:</td>
        </tr>
    </tbody>
</table>', N'', NULL, 109, 0, 1, 0, 0, 1000, 0, 1, 0, 347, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/bayan-kol-saati-yt65_347/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E256B9 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (361, 0, NULL, NULL, N'tw2ttsada23', N'Blackberry z10', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>
            <table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
                <tbody>
                    <tr class="row">
                        <td><span style="color: rgb(0, 0, 0);">Garanti</span></td>
                        <td><span style="color: rgb(0, 0, 0);">: 2 yıl Garanti</span></td>
                    </tr>
                    <tr>
                        <td><span style="color: rgb(0, 0, 0);">&Uuml;retim Yeri</span></td>
                        <td><span style="color: rgb(0, 0, 0);">: Canada</span></td>
                    </tr>
                    <tr class="row">
                        <td><span style="color: rgb(0, 0, 0);">Marka</span></td>
                        <td><span style="color: rgb(0, 0, 0);">: Blackberry</span></td>
                    </tr>
                    <tr>
                        <td><span style="color: rgb(0, 0, 0);">Model</span></td>
                        <td><span style="color: rgb(0, 0, 0);">: 2010</span></td>
                    </tr>
                    <tr class="row">
                        <td><span style="color: rgb(0, 0, 0);">Genişlik</span></td>
                        <td><span style="color: rgb(0, 0, 0);"><span style="font-family: Arial, sans-serif; font-size: 13px; line-height: 13px; background-color: rgb(255, 255, 255);">: 60 mm / 2,36 in&ccedil;</span></span></td>
                    </tr>
                    <tr>
                        <td style="text-align: start;"><span style="color: rgb(0, 0, 0);">Derinlik</span></td>
                        <td><span style="color: rgb(0, 0, 0);"><span style="font-family: Arial, sans-serif; font-size: 13px; line-height: 13px; background-color: rgb(255, 255, 255);">: 0,55 in&ccedil; / 13,9 mm</span></span></td>
                    </tr>
                    <tr class="row">
                        <td><span style="color: rgb(0, 0, 0);">Yükseklik</span></td>
                        <td><span style="color: rgb(0, 0, 0);"><span style="font-family: Arial, sans-serif; font-size: 13px; line-height: 13px; background-color: rgb(255, 255, 255);">: 109 mm / 4,29 in&ccedil;</span></span></td>
                    </tr>
                    <tr>
                        <td><span style="color: rgb(0, 0, 0);">Ağırlık</span></td>
                        <td><span style="color: rgb(0, 0, 0);"><span style="font-family: Arial, sans-serif; font-size: 13px; line-height: 13px; background-color: rgb(255, 255, 255);">: &nbsp;3,7 ons / 105 g</span></span></td>
                    </tr>
                </tbody>
            </table>
            <br />
            <br />
            <h2 style="margin: 0px 0px 18px; padding: 0px; border: 0px; font-weight: normal; font-family: Arial, sans-serif; outline: none; font-size: 22px; line-height: 24px; max-width: 220px; background-color: rgb(255, 255, 255);">Small wonder</h2>
            <br />
            <table style="margin: 0px 20px 0px 0px; padding: 0px; border: 0px; font-family: Arial, sans-serif; outline: none; border-collapse: collapse; border-spacing: 0px; float: left; color: rgb(101, 102, 102); font-size: 13px; line-height: 13px; background-color: rgb(255, 255, 255);">
                <tbody style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none;">
                    <tr style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none;">
                        <th style="margin: 0px; padding: 3px 30px 3px 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none; color: rgb(51, 51, 51);"></th>
                        <td style="margin: 0px; padding: 3px 15px 3px 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none;"></td>
                    </tr>
                    <tr style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none;">
                        <th style="margin: 0px; padding: 3px 30px 3px 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none; color: rgb(51, 51, 51);"></th>
                        <td style="margin: 0px; padding: 3px 15px 3px 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none;"></td>
                    </tr>
                    <tr style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none;">
                        <th style="margin: 0px; padding: 3px 30px 3px 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none; color: rgb(51, 51, 51);"></th>
                        <td style="margin: 0px; padding: 3px 15px 3px 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none;"></td>
                    </tr>
                    <tr style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none;">
                        <th style="margin: 0px; padding: 3px 30px 3px 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none; color: rgb(51, 51, 51);"></th>
                        <td style="margin: 0px; padding: 3px 15px 3px 0px; border: 0px; font-style: inherit; font-family: inherit; outline: none;"></td>
                    </tr>
                </tbody>
            </table>
            <img src="http://tr.blackberry.com/content/dam/blackBerry/images/device/smartphone/curve/8530/product/features/8500_sizeCell.jpg.modified.original-0-0-0-129-165.jpg" style="margin: -30px 0px 0px; padding: 0px; border: 0px; font-family: Arial, sans-serif; outline: none; color: rgb(101, 102, 102); font-size: 13px; line-height: 13px; background-color: rgb(255, 255, 255); float: left;" alt="" /></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 361, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/blackberry-z10_361/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E2576E AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (362, 0, NULL, NULL, N'iphone-16', N'Apple Iphone 4 16 Gb Cep Telefonu KVK Onaylı', N'', N'iphone,Cep Telefonu', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>Garanti</td>
            <td>: 4 yıl garantili<span class="Apple-tab-span" style="white-space:pre">	</span></td>
        </tr>
        <tr>
            <td>&Uuml;retim Yeri</td>
            <td>: İstanbul</td>
        </tr>
        <tr class="row">
            <td>Marka</td>
            <td>: Apple</td>
        </tr>
        <tr>
            <td>Model</td>
            <td>: Iphone</td>
        </tr>
        <tr class="row">
            <td>En</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Boy</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Yükseklik</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Ağırlık</td>
            <td>:</td>
        </tr>
    </tbody>
</table>', N'', NULL, 103, 0, 1, 0, 0, 1000, 0, 1, 0, 362, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/apple-iphone-4-16-gb-cep-telefonu-kvk-onayli_362/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, CAST(0x0000A26400E2577A AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (363, 0, NULL, NULL, N'iphone-8', N'Apple Iphone 4 8 Gb Cep Telefonu', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>Garanti</td>
            <td>: 4 yıl garantili<span class="Apple-tab-span" style="white-space:pre">	</span></td>
        </tr>
        <tr>
            <td>Üretim Yeri</td>
            <td>: İstanbul</td>
        </tr>
        <tr class="row">
            <td>Marka</td>
            <td>: Apple</td>
        </tr>
        <tr>
            <td>Model</td>
            <td>: Iphone</td>
        </tr>
        <tr class="row">
            <td>En</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Boy</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Yükseklik</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Ağırlık</td>
            <td>:</td>
        </tr>
    </tbody>
</table>', N'', NULL, 103, 0, 1, 0, 0, 1000, 0, 1, 0, 363, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 3, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/apple-iphone-4-8-gb-cep-telefonu_363/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E25798 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (364, 0, NULL, NULL, N'ip-case1', N'Iphone Kılıf', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td>Garanti</td>
            <td>:</td>
        </tr>
        <tr>
            <td>&Uuml;retim Yeri</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Marka</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Model</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>En</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Boy</td>
            <td>:</td>
        </tr>
        <tr class="row">
            <td>Yükseklik</td>
            <td>:</td>
        </tr>
        <tr>
            <td>Ağırlık</td>
            <td>:</td>
        </tr>
    </tbody>
</table>', N'', NULL, 103, 0, 1, 0, 0, 1000, 0, 1, 0, 364, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/iphone-kilif_364/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E257AA AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (365, 0, NULL, NULL, N'f-95', N'Karel TM211 Masa Telefonu', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 104, 0, 1, 0, 0, 1000, 0, 1, 0, 365, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/karel-tm211-masa-telefonu_365/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A26400E257B9 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (366, 0, NULL, NULL, N'S-A585', N'Siemens Gigaset A585', N'', N'', N'<div class="style5" style="margin: 10px 0px 0px; padding: 0px 0px 13px; font-size: 12px; font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; color: rgb(97, 97, 97); width: 783px; display: inline-block; background-image: url(http://www.gold.com.tr/imagesgld/uzmangorusu/specs.jpg); background-color: rgb(255, 255, 255); background-position: 50% 100%; background-repeat: no-repeat no-repeat;">
<div class="topicTitle" style="margin: 0px; padding: 0px; width: 783px; float: left;">
<h2 style="margin: 0px; padding: 0px; font-size: 20px; color: rgb(3, 3, 3);">&Uuml;rün &Ouml;zellikleri</h2>
</div>
<div class="content2" style="margin: 10px 0px 0px; padding: 0px; line-height: 18px; color: rgb(115, 115, 115); width: 783px; float: left; display: inline-block; border: none;">- 17 saate kadar konuşma süresi<br />
- 200 saate kadar bekleme süresi<br />
- 50m i&ccedil; mekan 300m dış mekan kapsama alanı<br />
- Radyasyon yaymayan ECO Mode Plus<br />
- 40 kayıta kadar telefon rehberi&nbsp;<br />
- Işıklı s/b ekran<br />
- Arayanı gösterme<br />
- Tarih ve saat bilgisi ile 25 cevapsız &ccedil;ağrı listesi<br />
- Son 10 numarayı tekrar arama<br />
- 4 el cihazı kullanılabilir</div>
</div>
<div class="style5" style="margin: 10px 0px 0px; padding: 0px 0px 13px; font-size: 12px; font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; color: rgb(97, 97, 97); width: 783px; display: inline-block; background-image: url(http://www.gold.com.tr/imagesgld/uzmangorusu/specs.jpg); background-color: rgb(255, 255, 255); background-position: 50% 100%; background-repeat: no-repeat no-repeat;">
<div class="topicTitle" style="margin: 0px; padding: 0px; width: 783px; float: left;">
<h2 style="margin: 0px; padding: 0px; font-size: 20px; color: rgb(3, 3, 3);">Kolay,Tak &Ccedil;alıştır</h2>
</div>
<div class="content2" style="margin: 10px 0px 0px; padding: 0px; line-height: 18px; color: rgb(115, 115, 115); width: 783px; float: left; display: inline-block; border: none;">Kablosuz iletişime şimdi ge&ccedil;in- Gigaset AL110 kolay kurulum i&ccedil;in tak &ccedil;alıştır bir telefondur. Bu güvenilir telefon uygun fiyat karşılığında temel görüşme özelliklerini sunuyor. 17 saate kadar görüşme süresi ve 200 saate kadar bekleme süresi ile ne kadar ne zaman isterseniz konuşun. 50 metreye kadar i&ccedil; mekan ve 300 metreye kadar dış mekan iletişim kapasitesiyle Gigaset AL110 ile konuşurken istediğiniz gibi hareket edebilirsiniz. Radyasyon yaymayan ECO Mode Plus sayesinde el cihazı bekleme konumundayken Gigaset AL110 iletim gücünü sıfıra indirir. Temel özellikler ile güvenilir telefon Gigaset AL110 uygun fiyat arayanlar i&ccedil;in en iyi se&ccedil;im.</div>
</div>
<div class="style5" style="margin: 10px 0px 0px; padding: 0px 0px 13px; font-size: 12px; font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; color: rgb(97, 97, 97); width: 783px; display: inline-block; background-image: url(http://www.gold.com.tr/imagesgld/uzmangorusu/specs.jpg); background-color: rgb(255, 255, 255); background-position: 50% 100%; background-repeat: no-repeat no-repeat;">
<div class="topicTitle" style="margin: 0px; padding: 0px; width: 783px; float: left;">
<h2 style="margin: 0px; padding: 0px; font-size: 20px; color: rgb(3, 3, 3);">Konuşma &Ouml;zgürlüğü</h2>
</div>
<div class="content2" style="margin: 10px 0px 0px; padding: 0px; line-height: 18px; color: rgb(115, 115, 115); width: 783px; float: left; display: inline-block; border: none;">Gigaset AL110 ile, kablosuz telefonunuzun pil ömrünü hi&ccedil; düşünmeyin. 17 saate kadar konuşma süresi sayesinde görüşmeleriniz istediğiniz kadar sürebilir ve 200 saate kadar bekle süresi ile sürekli şarj etmeden de telefonunuz her an kullanıma hazır. Kablosuz iletişimin keyfini sürün ? Gigaset AL110 50 metreye kadar i&ccedil; mekan ve 300 metreye kadar dış mekan kapsama alanına sahip. &Uuml;stelik AL110 baz istasyonun 4 el cihazı ile beraber kullanabilirsiniz.</div>
</div>
<div class="style5" style="margin: 10px 0px 0px; padding: 0px 0px 13px; font-size: 12px; font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; color: rgb(97, 97, 97); width: 783px; display: inline-block; background-image: url(http://www.gold.com.tr/imagesgld/uzmangorusu/specs.jpg); background-color: rgb(255, 255, 255); background-position: 50% 100%; background-repeat: no-repeat no-repeat;">
<div class="topicTitle" style="margin: 0px; padding: 0px; width: 783px; float: left;">
<h2 style="margin: 0px; padding: 0px; font-size: 20px; color: rgb(3, 3, 3);">Kolayca &Ccedil;ağrı</h2>
</div>
<div class="content2" style="margin: 10px 0px 0px; padding: 0px; line-height: 18px; color: rgb(115, 115, 115); width: 783px; float: left; display: inline-block; border: none;">Gigaset AL110 kullanım kolaylığı düşünülerek tasarlanmış ışıklı siyah beyaz bir ekrana sahiptir. Basit 12 nümerik ve 90 fonksiyon tuşları zahmetsiz kullanımı garanti eder. Arayanı gösterme ve 25 kişilik tarih ve zaman kayıtlı cevapsız &ccedil;ağrı listesi ile Gigaset AL110 &ccedil;ok güvenilir bir telefon.</div>
</div>
<div class="style5" style="margin: 10px 0px 0px; padding: 0px 0px 13px; font-size: 12px; font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; color: rgb(97, 97, 97); width: 783px; display: inline-block; background-image: url(http://www.gold.com.tr/imagesgld/uzmangorusu/specs.jpg); background-color: rgb(255, 255, 255); background-position: 50% 100%; background-repeat: no-repeat no-repeat;">
<div class="topicTitle" style="margin: 0px; padding: 0px; width: 783px; float: left;">
<h2 style="margin: 0px; padding: 0px; font-size: 20px; color: rgb(3, 3, 3);">Parmaklarınızın Ucunda</h2>
</div>
<div class="content2" style="margin: 10px 0px 0px; padding: 0px; line-height: 18px; color: rgb(115, 115, 115); width: 783px; float: left; display: inline-block; border: none;">Favori kontaklarınız ile ışık hızında görüşün.Gigaset AL110?ın dahili rehberine 40 kişiyi kaydedebilirsiniz. Kullanıcı dostu menü kayıtları kolayca eklemenize, düzenlemenize ve silmenize olanak verir. Ge&ccedil;miş konuşmalarınıza hemen devam edin. Gigaset AL110 ile son 10 numarayı tekrar arayabilirsiniz.</div>
</div>
<div class="style5" style="margin: 10px 0px 0px; padding: 0px 0px 13px; font-size: 12px; font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; color: rgb(97, 97, 97); width: 783px; display: inline-block; background-image: url(http://www.gold.com.tr/imagesgld/uzmangorusu/specs.jpg); background-color: rgb(255, 255, 255); background-position: 50% 100%; background-repeat: no-repeat no-repeat;">
<div class="topicTitle" style="margin: 0px; padding: 0px; width: 783px; float: left;">
<h2 style="margin: 0px; padding: 0px; font-size: 20px; color: rgb(3, 3, 3);">ECO Dect</h2>
</div>
<div class="content2" style="margin: 10px 0px 0px; padding: 0px; line-height: 18px; color: rgb(115, 115, 115); width: 783px; float: left; display: inline-block; border: none;">Gigaset AL110?ın enerji tasarruflu şarj cihazı daha az elektrik tüketir, dolayısıyla &ccedil;evreye ve kesenize daha zararsızdır. Diğer tüm Gigaset telefonları gibi Gigaset AL110, ECO Mode etkinleştirildiğinde %804 oranında baz istasyonunun iletim gücünü azaltır. Dahası radyasyonsuz ECO Mode Plus el cihazı baz istasyonundayken iletim gücünü sıfıra indirir.</div>
</div>', N'', NULL, 104, 0, 1, 0, 0, 1000, 0, 0, 0, 366, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 11, 11, CAST(0xA2640338 AS SmallDateTime), CAST(0xA2640338 AS SmallDateTime), N'/urun/siemens-gigaset-a585_366/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26400E257CB AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (367, 0, NULL, NULL, N'PROTICARET50', N'Çiçek Modülü', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 1, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA265021F AS SmallDateTime), NULL, N'/urun/cicek-modulu_367/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A265009501F1 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (368, 0, NULL, NULL, N'PROTICARET40', N'Yemek Modülü', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA2650371 AS SmallDateTime), NULL, N'/urun/yemek-modulu_368/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A26500F21263 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (370, 0, NULL, NULL, N'perde1', N'KRUVAZE TÜL PERDE', N'', N'', N'Yılın moda renk, desen ve kumaşlarına göre hazırlanmış olan kruvaze perdenin &ccedil;ok şık ve dekoratif bir görüntüsü vardır.<br />
<br />', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 0, 0, 3, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26503A9 AS SmallDateTime), NULL, N'/urun/kruvaze-tul-perde_370/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A26501014B8B AS DateTime), 3, 2)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (371, 0, NULL, NULL, N'perde2', N'AHŞAP PİLELİ PERDE', N'', N'', N'Her türlü mekanda rahatlıkla kullanılabilen ahşap jaluzi perde, kullanılan mekana estetik bir görüntü verir.<br />
<br />
Ahşap jaluzi ile pencerelerinizin estetik güzelliğini yakalayın.', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 0, 0, 104, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26503B3 AS SmallDateTime), NULL, N'/urun/ahsap-pileli-perde_371/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, CAST(0x0000A2650104283A AS DateTime), 3, 2)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (372, 0, NULL, NULL, N'perde3', N'ZEBRA PERDE', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 301, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26503BA AS SmallDateTime), NULL, N'/urun/zebra-perde_372/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A2650105FBFA AS DateTime), 3, 4)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (373, 0, NULL, NULL, N'poster1', N'Duvar Posteri Sahil ve Çiçekler ', N'', N'', N'<p style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif;"><span style="margin: 0px; padding: 0px; outline: none; font-size: 18px;">Duvar Posteri 368*254 cm 8 par&ccedil;a</span></p>
<p style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif;">&nbsp;</p>
<p style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif;"><span style="margin: 0px; padding: 0px; outline: none; font-size: 18px;">Duvar posteri duvar kağıdı gibi tutkalı kağıdın arkasına sürülerek uygulanır.</span></p>
<p style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif;">&nbsp;</p>
<p style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif;"><span style="margin: 0px; padding: 0px; outline: none; font-size: 18px;">8 par&ccedil;adan oluşur.</span></p>
<p style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif;">&nbsp;</p>
<p style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif;"><span style="margin: 0px; padding: 0px; outline: none; font-size: 18px;">Baştaki ( 368 cm ) öl&ccedil;ü endir.</span></p>', N'', NULL, 0, 0, 1, 0, 0, 1001, 0, 0, 0, 4, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26503DE AS SmallDateTime), NULL, N'/urun/duvar-posteri-sahil-ve-cicekler_373/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A265010FD6F0 AS DateTime), 4, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (375, 0, NULL, NULL, N'Pembe Düşler', N'Pembe Düşler', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 300, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA2670300 AS SmallDateTime), NULL, N'/urun/pembe-dusler_375/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26700D2F360 AS DateTime), 1, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (376, 0, NULL, NULL, N'Byn-01', N'Bilek Bağlamalı Platform Topuk Ayakkabı', N'', N'', N'<table cellspacing="0" cellpadding="4" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 120, 0, 0, 0, 4, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA267038A AS SmallDateTime), NULL, N'/urun/bilek-baglamali-platform-topuk-ayakkabi_376/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 4, CAST(0x0000A26700F8C769 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (377, 0, NULL, NULL, N'kitap2', N'Yukarı Bak', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 1, 0, 500, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26703F0 AS SmallDateTime), NULL, N'/urun/yukari-bak_377/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A2670114E234 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (378, 0, NULL, NULL, N'pro-25', N'Poster Modülü', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 1, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26703F5 AS SmallDateTime), NULL, N'/urun/poster-modulu_378/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A2670116415F AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (379, 0, NULL, NULL, N'pro-26', N'Perde Modulu', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 1, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26703F8 AS SmallDateTime), NULL, N'/urun/perde-modulu_379/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A2670116F41D AS DateTime), 3, 4)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (380, 0, NULL, NULL, N'pro-27', N'Tesan Ödeme Sistemi', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 1, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26703F9 AS SmallDateTime), NULL, N'/urun/tesan-odeme-sistemi_380/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A26701173F9D AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (381, 0, NULL, NULL, N'pro-28', N'Multi Admin Modülü (2 Site)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 1, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26703FB AS SmallDateTime), NULL, N'/urun/multi-admin-modulu--2-site-_381/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A2670117D936 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (382, 0, NULL, NULL, N'Pro-29', N'Multi Admin Modülü (5 Site )', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 1, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26703FD AS SmallDateTime), NULL, N'/urun/multi-admin-modulu--5-site--_382/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A26701184CC7 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (383, 0, NULL, NULL, N'pro-30', N'Multi Admin Modülü (10 Site)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 1, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26703FE AS SmallDateTime), NULL, N'/urun/multi-admin-modulu--10-site-_383/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A2670118C74F AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (384, 0, NULL, NULL, N'pro-31', N'Multi Admin Modülü (15 Site)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 1, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA2670400 AS SmallDateTime), NULL, N'/urun/multi-admin-modulu--15-site-_384/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A26701194A0E AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (385, 0, NULL, NULL, N'pro-32', N'Network Marketing Modülü (500 Üye)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 1, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA2670402 AS SmallDateTime), NULL, N'/urun/network-marketing-modulu--500-uye-_385/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A2670119C40C AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (386, 0, NULL, NULL, N'pro-35', N'Network Marketing Modülü (1.000 Üye)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 1, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA2670403 AS SmallDateTime), NULL, N'/urun/network-marketing-modulu--1000-uye-_386/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A2670119FCCE AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (387, 0, NULL, NULL, N'pro-36', N'Network Marketing Modülü (5.000 Üye)', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 1, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA2670403 AS SmallDateTime), NULL, N'/urun/network-marketing-modulu--5000-uye-_387/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(0x0000A267011A31A1 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (1375, 0, NULL, NULL, N'12121', N'1212', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26802C3 AS SmallDateTime), NULL, N'/urun/1212_1375/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, CAST(0x0000A26800C2267A AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (1377, 0, NULL, NULL, N'20006830', N'Kormetal Km444 Gmg Ford - Fiesta Jant', N'', N'', N'<table cellpadding="4" cellspacing="0" border="0" class="UrunOzellikleriTablosu">
    <tbody>
        <tr class="row">
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>', N'', NULL, 0, 0, 1, 0, 0, 100, 0, 1, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA26802F3 AS SmallDateTime), NULL, N'/urun/kormetal-km444-gmg-ford---fiesta-jant_1377/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, CAST(0x0000A26800CF7684 AS DateTime), 0, 0)

INSERT [dbo].[Products] ([ProductId], [PortalId], [CategoryId], [Parent], [ProductCode], [ProductName], [Description], [SearchKeywords], [Details], [ProviderStockCode], [ProviderName], [MarkId], [IsDeleted], [IsActive], [SellNoneStock], [SellLimitToUser], [StockQty], [StockQty2], [ShowInMainPage], [ShowInCategoryPage], [ShowOrder], [Code1], [Code2], [Code3], [Code4], [Code5], [Code6], [Code7], [Code8], [Code9], [Code10], [Code11], [Code12], [Code13], [Code14], [Code15], [Provider], [KdvId], [Hit], [IsPenta], [ProviderId], [CreatedDate], [UpdatedDate], [Url], [WizardId], [CampainId], [AddA], [AddP], [Add0], [Add1], [Add2], [Add3], [Add4], [Add5], [ForceCargo], [StartDate], [EndDate], [AuthorId], [PublisherId], [HizliKargo], [AyniGunTeslim], [IndirimliUrun], [FirsatUrunu], [SokFiyatliUrun], [EnUcuzUrun], [OzelUrun], [SinirliSayidaUrun], [YeniUrun], [HediyeliUrun], [UserId], [ProductSizeOptionId], [NebimStokUpdateDate], [StokType], [StokSubType]) VALUES (1378, 0, NULL, NULL, N'poster-001', N'Manzara Poster 010 Tropikal Lagün: 70x45 cm.', N'', N'', N'<div style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; outline: none; font-family: Verdana; font-size: 14pt;">220&nbsp;gr. parlak fotoğraf kağıdına yüksek kaliteli dijital baskı makinesi ile yapılan baskı, laminasyon makinesinde PVC ile kaplanır.</span></div>
<div style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">&nbsp;</div>
<div style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; outline: none; font-family: Verdana; font-size: 14pt;">PVC kaplama postere uzun ömür sağladığı gibi, nemli bezle silinip temizlenmesine de olanak sağlar.</span></div>
<div style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">&nbsp;</div>
<div style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; outline: none; font-family: Verdana; font-size: 14pt;">Laminasyonlu potsere &ccedil;er&ccedil;eve yaptırmak istediğinizde; mat cam kullanmanıza gerek yoktur. Korumalı poster üzerindeki PVC laminasyon yeterlidir. Böylece &ccedil;er&ccedil;eve maliyetini aşağıya &ccedil;ekebilirisiniz.</span></div>
<div style="margin: 0px; padding: 0px; outline: none; color: rgb(24, 24, 37); font-family: Arial, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);">&nbsp;</div>', N'', NULL, 0, 0, 1, 0, 0, 1000, 0, 0, 0, 100, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, 0, 0, CAST(0xA268038A AS SmallDateTime), NULL, N'/urun/manzara-poster-010-tropikal-lagun--70x45-cm_1378/', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, CAST(0x0000A26800F8BE1B AS DateTime), 4, 0)

SET IDENTITY_INSERT [dbo].[Products] OFF

SET IDENTITY_INSERT [dbo].[Categories] ON 


INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (129, N'6593c6f4-055c-40e9-9f65-afea1286a9da', 0, N'Altın & Takı & Mücevher', 0, N'', 1, N'/129/', 0, N'&amp;nbsp;', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/altin---taki---mucevher/', N'', N'', N'|Altın & Takı & Mücevher|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (130, N'cb73b12c-a098-450f-a63a-3022ed11e1de', 0, N'22 Ayar Bilezik', 129, N'/uploads/productsimages/835ecf33-5330-404a-8f3e-60c01c19ab25.jpg', 1, N'/129/130/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/altin---taki---mucevher/22-ayar-bilezik/', N'', N'', N'|Altın & Takı & Mücevher|22 Ayar Bilezik|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (131, N'7e7d5c08-371b-4f85-8a11-083ce5ca6985', 0, N'Erkek Takıları', 129, N'/uploads/productsimages/835ecf33-5330-404a-8f3e-60c01c19ab25.jpg', 1, N'/129/131/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/altin---taki---mucevher/erkek-takilari/', N'', N'', N'|Altın & Takı & Mücevher|Erkek Takıları|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (132, N'f54594cc-66e2-4c54-ae9c-1aefaa4501d5', 0, N'Gümüş & Çelik Takılar', 129, N'/uploads/productsimages/f4ee3848-2d19-4469-9027-2df59205eaff.jpg', 1, N'/129/132/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/altin---taki---mucevher/gumus---celik-takilar/', N'', N'', N'|Altın & Takı & Mücevher|Gümüş & Çelik Takılar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (133, N'ecfa970d-eca7-4dcd-9074-f276d0955b12', 0, N'İnci Takımlar', 129, N'/uploads/productsimages/0/altin_inci_klips_modelleri_1252667275.jpg', 1, N'/129/133/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/altin---taki---mucevher/inci-takimlar/', N'', N'', N'|Altın & Takı & Mücevher|İnci Takımlar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (134, N'c1cb2202-7899-46ed-9152-a0f7d2c740b4', 0, N'Pırlanta Tektaş Yüzük', 129, N'/uploads/productsimages/a8d726f4-88e9-4975-90c2-075fd41a0448.jpg', 1, N'/129/134/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/altin---taki---mucevher/pirlanta-tektas-yuzuk/', N'', N'', N'|Altın & Takı & Mücevher|Pırlanta Tektaş Yüzük|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (135, N'10dc3364-e7d5-476e-b396-7182325157b6', 0, N'Ziynet Altın', 129, N'/uploads/productsimages/a8c1720a-80cc-4d1d-b9e1-2c41d7c4b989Kuyumcu_2537453.jpg', 1, N'/129/135/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/altin---taki---mucevher/ziynet-altin/', N'', N'', N'|Altın & Takı & Mücevher|Ziynet Altın|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (143, N'2beb06d2-d21e-4c31-b221-66b070633ace', 0, N'Bahçe & Hırdavat', 0, N'', 1, N'/143/', 0, N'&amp;nbsp;', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/bahce---hirdavat/', N'', N'', N'|Bahçe & Hırdavat|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (144, N'ff9288d9-4664-490c-90ff-658d953c3448', 0, N'Bahçe', 143, N'/uploads/productsimages/1951a3ba-39e7-40b6-9a54-901b33dd3de9.jpg', 1, N'/143/144/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bahce---hirdavat/bahce/', N'', N'', N'|Bahçe & Hırdavat|Bahçe|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (145, N'6ec7b690-5d03-4ec4-87f1-5bf31cc6f9c2', 0, N'Bahçe Dekorasyon', 143, N'/uploads/productsimages/3a7a4a07-30f3-4a13-a256-d187784be4d1Bahce_1275230.jpg', 1, N'/143/145/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bahce---hirdavat/bahce-dekorasyon/', N'', N'', N'|Bahçe & Hırdavat|Bahçe Dekorasyon|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (146, N'3d620b1c-90a7-4015-9ff3-f20e85d999e5', 0, N'Bahçe Makineleri', 143, N'/uploads/productsimages/fec1b10b-1706-4e82-a865-17c7b0e7a5bdhrpalpa-cg430.jpg', 1, N'/143/146/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bahce---hirdavat/bahce-makineleri/', N'', N'', N'|Bahçe & Hırdavat|Bahçe Makineleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (147, N'3622ebeb-ceb9-4a49-81a6-2aeaf4453611', 0, N'Bahçe Mobilyaları', 143, N'/uploads/productsimages/48cb8e83-3453-4821-a086-ed86bbf19137Bahce_2513072.jpg', 1, N'/143/147/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bahce---hirdavat/bahce-mobilyalari/', N'', N'', N'|Bahçe & Hırdavat|Bahçe Mobilyaları|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (148, N'bb486c2e-2194-4719-9590-2fcdef9c9d87', 0, N'Çiçek Bakım', 143, N'/uploads/productsimages/3411efdf-e7d1-4a51-a4e8-e564f4be5355.jpg', 1, N'/143/148/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bahce---hirdavat/cicek-bakim/', N'', N'', N'|Bahçe & Hırdavat|Çiçek Bakım|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (149, N'0e973c77-cef2-4ddb-8312-ec4db1930486', 0, N'Hırdavat Çeşitleri', 143, N'/uploads/productsimages/b86d90d7-1214-4ca2-94ad-aebecfeba08f.jpg', 1, N'/143/149/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bahce---hirdavat/hirdavat-cesitleri/', N'', N'', N'|Bahçe & Hırdavat|Hırdavat Çeşitleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (150, N'cc0eaf30-1de1-47d6-8356-ea36ffc192f5', 0, N'Beyaz Eşya Ve Mutfak', 0, N'', 1, N'/150/', 0, N'&amp;nbsp;', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/beyaz-esya-ve-mutfak/', N'', N'', N'|Beyaz Eşya Ve Mutfak|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (151, N'e885c585-560b-447b-ad8f-c5e1f60332f9', 0, N'Ankastre', 150, N'/uploads/productsimages/9353cf80-5e4a-4c67-b8cb-7b4512df09b4MAG_2480540.jpg', 1, N'/150/151/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/beyaz-esya-ve-mutfak/ankastre/', N'', N'', N'|Beyaz Eşya Ve Mutfak|Ankastre|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (152, N'bdc2580e-58f5-4731-bd61-9e1920bcea6b', 0, N'Bulaşık Makinaları', 150, N'/uploads/productsimages/1b5da084-b92b-4ef6-9bea-f3f8c4f5254e04.003.1271.000501t3.jpg', 1, N'/150/152/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/beyaz-esya-ve-mutfak/bulasik-makinalari/', N'', N'', N'|Beyaz Eşya Ve Mutfak|Bulaşık Makinaları|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (153, N'2527122f-1164-4f1e-8801-11313ad4ff14', 0, N'Buzdolapları', 150, N'/uploads/productsimages/0/buzdolab.jpg', 1, N'/150/153/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/beyaz-esya-ve-mutfak/buzdolaplari/', N'', N'', N'|Beyaz Eşya Ve Mutfak|Buzdolapları|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (154, N'b41c2045-91b0-411b-8b21-b3bbe51176e9', 0, N'Çamaşır Makineleri', 150, N'/uploads/productsimages/ed48148b-85b7-4657-a1b9-b289222a8d8f.jpg', 1, N'/150/154/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/beyaz-esya-ve-mutfak/camasir-makineleri/', N'', N'', N'|Beyaz Eşya Ve Mutfak|Çamaşır Makineleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (155, N'bc73884e-4d33-4f07-a0a9-dd44ba1d6c1f', 0, N'Elektrikli Mutfak Aletleri', 150, N'/uploads/productsimages/7c2c2e10-a639-4e75-9547-3c04f3e27336.jpg', 1, N'/150/155/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/beyaz-esya-ve-mutfak/elektrikli-mutfak-aletleri/', N'', N'', N'|Beyaz Eşya Ve Mutfak|Elektrikli Mutfak Aletleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (156, N'dfac767e-6089-458a-8222-6696fb672d00', 0, N'Mutfak Gereçleri', 150, N'/uploads/productsimages/fe33c063-7529-4ab2-9283-6402bddd29f5.jpg', 1, N'/150/156/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/beyaz-esya-ve-mutfak/mutfak-gerecleri/', N'', N'', N'|Beyaz Eşya Ve Mutfak|Mutfak Gereçleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (157, N'517eaa28-297f-4f8a-8cfc-cc480d643773', 0, N'Bilgisayar', 0, N'', 1, N'/157/', 0, N'&amp;nbsp;', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/bilgisayar/', N'', N'', N'|Bilgisayar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (158, N'b73bb113-1e3c-48ce-a5d1-17778b93cb96', 0, N'Dizüstü Bilgisayarlar', 157, N'/uploads/productsimages/1e7e4995-09ca-478a-9eaa-dbf3e1511f71lenovo.jpg', 1, N'/157/158/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bilgisayar/dizustu-bilgisayarlar/', N'', N'', N'|Bilgisayar|Dizüstü Bilgisayarlar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (159, N'edd1e4ce-740f-4ee9-a35b-ba960194641a', 0, N'Masaüstü Bilgisayarlar', 157, N'/uploads/productsimages/sample/desktoppc-small.jpg', 1, N'/157/159/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bilgisayar/masaustu-bilgisayarlar/', N'', N'', N'|Bilgisayar|Masaüstü Bilgisayarlar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (160, N'79bc0dee-c709-46dc-93be-408e3f81ae73', 0, N'Tablet', 157, N'/uploads/productsimages/e47bad7a-3a5d-4603-90c1-7c43ad666a3cBilgisayar_2817437.jpg', 1, N'/157/160/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bilgisayar/tablet/', N'', N'', N'|Bilgisayar|Tablet|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (161, N'0feee5e5-467a-411b-b3bd-3bfd85191419', 0, N'Ultrabook', 157, N'/uploads/productsimages/f1dbe6c1-2e9c-4480-86c3-d1d0f38fdd9f.jpg', 1, N'/157/161/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bilgisayar/ultrabook/', N'', N'', N'|Bilgisayar|Ultrabook|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (162, N'c6274f3f-d030-4ca9-b8f0-4106e2e782d4', 0, N'USB Bellek', 157, N'/uploads/productsimages/1e8c318a-b3b4-4548-8c9b-dacf4e79d24cBilgisayar_1954203.jpg', 1, N'/157/162/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bilgisayar/usb-bellek/', N'', N'', N'|Bilgisayar|USB Bellek|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (163, N'a0687b31-e8a6-4448-96ee-32f76214cabe', 0, N'Yazıcılar', 157, N'/uploads/productsimages/2dac0a45-83ae-44c6-a7ed-0fcfe4358b4cc03234786.png', 1, N'/157/163/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/bilgisayar/yazicilar/', N'', N'', N'|Bilgisayar|Yazıcılar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (164, N'a8f9cf97-74ea-4da6-8456-d7befe1692d2', 0, N'Çiçek', 0, N'', 1, N'/164/', 0, N'&amp;nbsp;', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/cicek/', N'', N'', N'|Çiçek|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (165, N'e60eeee9-a16d-4213-ac8c-dfc337c90f0d', 0, N'Doğum Günü', 164, N'/uploads/productsimages/ef19279d-cd1f-41da-8112-c2e3d94e9542gulumse-sevgilim-at1777.jpg', 1, N'/164/165/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/cicek/dogum-gunu/', N'', N'', N'|Çiçek|Doğum Günü|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (166, N'ef937b2d-5ddb-4ba8-8f87-57e033050269', 0, N'Düğün & Nişan', 164, N'/uploads/productsimages/b4ac994b-f222-41f0-a4ea-df74f0b0968a.jpg', 1, N'/164/166/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/cicek/dugun---nisan/', N'', N'', N'|Çiçek|Düğün & Nişan|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (167, N'51273105-282d-43d4-9e80-8760210e608d', 0, N'Sevgililer Günü', 164, N'/uploads/productsimages/101c71eb-5690-4d4b-8bba-1cb6bec29e93.jpg', 1, N'/164/167/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/cicek/sevgililer-gunu/', N'', N'', N'|Çiçek|Sevgililer Günü|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (168, N'cd232d59-11eb-4107-8dab-ca879b7f17ae', 0, N'Elektronik', 0, N'', 1, N'/168/', 0, N'&amp;nbsp;', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/elektronik/', N'', N'', N'|Elektronik|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (169, N'3511e415-0517-420a-a6e7-974075648c53', 0, N'Ev Aletleri', 168, N'/uploads/productsimages/d330fae1-8bd0-425f-8e1a-521a5655b4d1boyut.jpg', 1, N'/168/169/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/elektronik/ev-aletleri/', N'', N'', N'|Elektronik|Ev Aletleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (170, N'ed55495e-f0cb-4594-b854-175e66a799bb', 0, N'Ses ve Görüntü Sistemeleri', 168, N'/uploads/productsimages/sample/mp3.jpg', 1, N'/168/170/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/elektronik/ses-ve-goruntu-sistemeleri/', N'', N'', N'|Elektronik|Ses ve Görüntü Sistemeleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (171, N'e9ac5df0-6af2-4855-b303-b757e569ba4a', 0, N'Televizyon', 168, N'/uploads/productsimages/sample/lcdtv.jpg', 1, N'/168/171/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/elektronik/televizyon/', N'', N'', N'|Elektronik|Televizyon|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (172, N'b13efbca-58fd-43eb-acf0-4360962ebaab', 0, N'Ev Dekorasyonu & Mobilya', 0, N'', 1, N'/172/', 0, N'&amp;nbsp;', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/ev-dekorasyonu---mobilya/', N'', N'', N'|Ev Dekorasyonu & Mobilya|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (173, N'4ccbf3e2-45ba-4a78-ab77-1787615011cd', 0, N'Dekorasyon', 172, N'/uploads/productsimages/248375a4-a3c4-47f9-ba63-4d55ffdad69davizeizmir.jpg', 1, N'/172/173/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/ev-dekorasyonu---mobilya/dekorasyon/', N'', N'', N'|Ev Dekorasyonu & Mobilya|Dekorasyon|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (174, N'81a0cb3a-adab-4ebb-807f-f2de0958c1db', 0, N'Ev Tekstil', 172, N'/uploads/productsimages/370bcf91-db28-4e03-831c-889c06f50771%5Bimg%5D%5B4%5D%5B1%5D%5B313x429%5D.jpg', 1, N'/172/174/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/ev-dekorasyonu---mobilya/ev-tekstil/', N'', N'', N'|Ev Dekorasyonu & Mobilya|Ev Tekstil|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (175, N'94fcdc6e-b805-4840-980b-fa8aff76ba8e', 0, N'Mobilya', 172, N'/uploads/productsimages/3c5497e3-f1df-4100-825b-1474f5e11b7bDM3158ZAA0.jpg', 1, N'/172/175/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/ev-dekorasyonu---mobilya/mobilya/', N'', N'', N'|Ev Dekorasyonu & Mobilya|Mobilya|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (176, N'ce98fb87-4434-456f-8a05-8d145637a193', 0, N'Yemekler', 0, N'', 1, N'/176/', 0, N'&amp;nbsp;', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/yemekler/', N'', N'', N'|Yemekler|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (177, N'1c5b8710-6475-461e-be00-8cd3b735923e', 0, N'Hamburger Çeşitleri', 176, N'/uploads/productsimages/b6c32311-8f85-4544-9f7e-2c3ce3a37e84634430424859419091.png', 1, N'/176/177/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/yemekler/hamburger-cesitleri/', N'', N'', N'|Yemekler|Hamburger Çeşitleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (178, N'30e1525c-dbe7-4fbc-91c2-f34fb1c923c7', 0, N'Pizza Çeşitleri', 176, N'/uploads/productsimages/2e245884-bd0d-4451-a98d-410d8d45b65eB_25567260-22012013232614.jpg', 1, N'/176/178/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/yemekler/pizza-cesitleri/', N'', N'', N'|Yemekler|Pizza Çeşitleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (179, N'b2a50041-994d-4dae-83d0-9995ea7eac17', 0, N'Salata Çeşitleri', 176, N'/uploads/productsimages/0b440abd-1ff5-4b06-9574-3d903cc98a4bindir.jpg', 1, N'/176/179/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/yemekler/salata-cesitleri/', N'', N'', N'|Yemekler|Salata Çeşitleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (180, N'e0f853bb-3d40-42f3-955a-ed96bb3ad361', 0, N'Foto & Kamera', 0, N'', 1, N'/180/', 0, N'&amp;nbsp;', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/foto---kamera/', N'', N'', N'|Foto & Kamera|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (181, N'931c8fd8-5b76-45b2-90cc-4cb97c50f5dc', 0, N'Fotoğraf Baskı', 180, N'/uploads/productsimages/0502d871-bbe9-48a3-855a-a2cd4aef87a4foto.jpg', 1, N'/180/181/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/foto---kamera/fotograf-baski/', N'', N'', N'|Foto & Kamera|Fotoğraf Baskı|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (182, N'a94c0093-ecf6-4b26-a9c6-40d05653d4a9', 0, N'Fotoğraf Makinesi ve Kamera', 180, N'/uploads/productsimages/sample/dcam-small.jpg', 1, N'/180/182/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/foto---kamera/fotograf-makinesi-ve-kamera/', N'', N'', N'|Foto & Kamera|Fotoğraf Makinesi ve Kamera|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (183, N'65e00eb9-0562-4b9c-98d0-e12bee9b3f7a', 0, N'SLR Lensleri', 180, NULL, 1, N'/180/183/', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, N'/kategori/foto---kamera/slr-lensleri/', NULL, NULL, N'|Foto & Kamera|SLR Lensleri|', NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (184, N'8c36f56d-6f7f-4731-8bb3-23e5f0d7f94e', 0, N'Video Kameralar', 180, N'/uploads/productsimages/sample/vcam-small.png', 1, N'/180/184/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/foto---kamera/video-kameralar/', N'', N'', N'|Foto & Kamera|Video Kameralar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (185, N'0f0433be-69a2-451f-ace1-e96d4badc46c', 0, N'Giyim & Ayakkabı & Çanta', 0, N'', 1, N'/185/', 0, N'&amp;nbsp;', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/giyim---ayakkabi---canta/', N'', N'', N'|Giyim & Ayakkabı & Çanta|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (186, N'726d19fe-0a12-40f9-a966-3a6ce1a022a4', 0, N'Erkek', 185, N'/uploads/productsimages/2735c062-18a0-41e2-9de2-302626e8b2abtakimelbise.jpg', 1, N'/185/186/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/giyim---ayakkabi---canta/erkek/', N'', N'', N'|Giyim & Ayakkabı & Çanta|Erkek|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (187, N'c961828b-bd29-478c-8fc7-8f309346cbb5', 0, N'Ayakkabı', 186, N'', 1, N'/185/186/187/', 2, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/giyim---ayakkabi---canta/erkek/ayakkabi/', N'', N'', N'|Giyim & Ayakkabı & Çanta|Erkek|Ayakkabı|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (188, N'7708644d-f423-4453-b202-43c1f76deeb4', 0, N'Takım Elbise', 186, NULL, 1, N'/185/186/188/', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, N'/kategori/giyim---ayakkabi---canta/erkek/takim-elbise/', NULL, NULL, N'|Giyim & Ayakkabı & Çanta|Erkek|Takım Elbise|', NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (189, N'59ea83f0-3e1f-4c09-92e8-1af4123a3310', 0, N'Kadın', 185, N'/uploads/productsimages/1b33e6c5-5d41-4133-81bb-3c0d857a03a0.jpg', 1, N'/185/189/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/giyim---ayakkabi---canta/kadin/', N'', N'', N'|Giyim & Ayakkabı & Çanta|Kadın|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (190, N'a7680f01-722c-4a6b-a2ad-1424881d6b20', 0, N'Çanta Çeşitleri', 189, NULL, 1, N'/185/189/190/', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, N'/kategori/giyim---ayakkabi---canta/kadin/canta-cesitleri/', NULL, NULL, N'|Giyim & Ayakkabı & Çanta|Kadın|Çanta Çeşitleri|', NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (198, N'1f7d4572-8b04-48ca-9e16-04c31ea5fb80', 0, N'Kitap & Müzik & Film', 0, N'', 1, N'/198/', 0, N'&amp;nbsp;', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/kitap---muzik---film/', N'', N'', N'|Kitap & Müzik & Film|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (199, N'452104a6-f559-4d0b-bfee-6f87b9eafb5c', 0, N'Film Arşivi', 198, N'/uploads/productsimages/dd4e919a-81e6-45e0-9cd3-aa1f68543c7ephpThumb_generated_thumbnail.jpeg', 1, N'/198/199/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/kitap---muzik---film/film-arsivi/', N'', N'', N'|Kitap & Müzik & Film|Film Arşivi|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (200, N'5d90ef75-23ce-4af6-9ca5-f6ed2ca6c345', 0, N'Kitap Setleri', 198, N'/uploads/productsimages/5a579d5a-9781-4388-aca4-15195c124cf4418546.jpg', 1, N'/198/200/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/kitap---muzik---film/kitap-setleri/', N'', N'', N'|Kitap & Müzik & Film|Kitap Setleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (201, N'd180a3bc-a106-474e-bc98-988753bb2038', 0, N'Müzik Aletleri', 198, N'/uploads/productsimages/211f06cd-4e8e-409b-a08a-f3bae13ee43aMuzik_2479811.jpg', 1, N'/198/201/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/kitap---muzik---film/muzik-aletleri/', N'', N'', N'|Kitap & Müzik & Film|Müzik Aletleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (202, N'90d1e9e6-79ee-48b7-9336-e3202a5b570b', 0, N'Kozmetik & Sağlık & Bakım', 0, N'', 1, N'/202/', 0, N'&amp;nbsp;', 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/kozmetik---saglik---bakim/', N'', N'', N'|Kozmetik & Sağlık & Bakım|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (203, N'7dfa244f-0500-478a-84bb-a965ab3edf09', 0, N'Kişisel Bakım Ürünleri', 202, N'/uploads/productsimages/2d486d73-b0f1-44ac-aa2b-b02562c4d581SG_2885409.jpg', 1, N'/202/203/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/kozmetik---saglik---bakim/kisisel-bakim-urunleri/', N'', N'', N'|Kozmetik & Sağlık & Bakım|Kişisel Bakım Ürünleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (204, N'a3869382-cc04-471c-9862-7adcf7580565', 0, N'Kozmetik Ürünler', 202, N'/uploads/productsimages/92994b6a-e280-4bd6-8727-dad77e327ac9.jpg', 1, N'/202/204/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/kozmetik---saglik---bakim/kozmetik-urunler/', N'', N'', N'|Kozmetik & Sağlık & Bakım|Kozmetik Ürünler|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (205, N'c76cc666-828f-4491-a33c-dcaf70fc1107', 0, N'Oto Yedek Par & Yapı Market', 0, N'', 1, N'/205/', 0, N'&amp;nbsp;', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/oto-yedek-par---yapi-market/', N'', N'', N'|Oto Yedek Par & Yapı Market|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (206, N'22372c95-c5f5-4ee7-a142-460f1cb048f7', 0, N'Lastik Çeşitleri', 205, N'/uploads/productsimages/e3c50e77-6196-47d3-9990-bfdee019e7a4.jpg', 1, N'/205/206/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/oto-yedek-par---yapi-market/lastik-cesitleri/', N'', N'', N'|Oto Yedek Par & Yapı Market|Lastik Çeşitleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (207, N'f82fa9bf-d0d8-4943-b6e4-4ba868be41ef', 0, N'Oto Aksesuar', 205, N'/uploads/productsimages/d4d34714-83e9-499c-a2f4-5ca4320a073211670281334827957634.jpg', 1, N'/205/207/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/oto-yedek-par---yapi-market/oto-aksesuar/', N'', N'', N'|Oto Yedek Par & Yapı Market|Oto Aksesuar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (208, N'7202297c-1cd3-4baf-ad2e-635c04cad375', 0, N'Yapı Market', 205, N'/uploads/productsimages/sample/drill.jpg', 1, N'/205/208/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/oto-yedek-par---yapi-market/yapi-market/', N'', N'', N'|Oto Yedek Par & Yapı Market|Yapı Market|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (213, N'90427880-9ce9-4bf8-a91a-ff22e4f29b2b', 0, N'Proticaret Modülleri', 0, N'', 1, N'/213/', 0, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/proticaret-modulleri/', N'', N'', N'|Proticaret Modülleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (214, N'75726884-82f4-44e1-b80a-7d0047c432ff', 0, N'1.09 Modüller', 213, N'', 1, N'/213/214/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/proticaret-modulleri/109-moduller/', N'', N'', N'|Proticaret Modülleri|1.09 Modüller|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (215, N'fa0e9c57-d628-41a5-8a49-8d459783e31f', 0, N'Saat & Gözlük & Aksesuar', 0, N'', 1, N'/215/', 0, N'&amp;nbsp;', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/saat---gozluk---aksesuar/', N'', N'', N'|Saat & Gözlük & Aksesuar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (216, N'0818e2a1-143d-42ff-8864-a5d51a1ebd7e', 0, N'Aksesuar', 215, N'/uploads/productsimages/ba099557-8a9e-4818-a462-30db50054744ayna.jpg', 1, N'/215/216/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/saat---gozluk---aksesuar/aksesuar/', N'', N'', N'|Saat & Gözlük & Aksesuar|Aksesuar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (217, N'58d5fae9-a969-47d9-a315-6627e1560552', 0, N'Güneş Gözlükleri', 215, N'/uploads/productsimages/391783a2-f509-4cf6-b9fd-5582d66b4bdf-ferre-gunes-gozlukleri-591.jpg', 1, N'/215/217/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/saat---gozluk---aksesuar/gunes-gozlukleri/', N'', N'', N'|Saat & Gözlük & Aksesuar|Güneş Gözlükleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (218, N'a7c907aa-529b-434a-99f6-820d55c91d27', 0, N'Saat Çeşitleri', 215, N'/uploads/productsimages/sample/watch-small.jpg', 1, N'/215/218/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/saat---gozluk---aksesuar/saat-cesitleri/', N'', N'', N'|Saat & Gözlük & Aksesuar|Saat Çeşitleri|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (227, N'b170dd59-9f6f-4dcf-a337-961964325009', 0, N'Telefon', 0, NULL, 1, N'/227/', 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, N'/kategori/telefon/', NULL, NULL, N'|Telefon|', NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (228, N'3e22d28a-65c8-4f26-b897-b5002a848366', 0, N'Cep Telefonları', 227, N'/uploads/productsimages/b075599a-babe-41bc-9596-d22e8775c6a0indir.jpg', 1, N'/227/228/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/telefon/cep-telefonlari/', N'', N'', N'|Telefon|Cep Telefonları|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (229, N'cf58ec1a-2026-4f4f-a908-f92ccbe46682', 0, N'Masaüstü Telefonlar', 227, N'/uploads/productsimages/852d639a-39a4-4677-be80-bba03293fd81Telefon_1083149.jpg', 1, N'/227/229/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/telefon/masaustu-telefonlar/', N'', N'', N'|Telefon|Masaüstü Telefonlar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (230, N'0cf422fc-980a-4fcd-8ce0-bd298f385c42', 0, N'Telsiz Telefonlar', 227, N'/uploads/productsimages/sample/-iphone-small.jpg', 1, N'/227/230/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/telefon/telsiz-telefonlar/', N'', N'', N'|Telefon|Telsiz Telefonlar|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (232, N'19-00', 0, N'Poster', 0, N'/uploads/productsimages/poster.jpg', 1, N'/232/', 0, N'&amp;nbsp;', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/poster/', N'', N'', N'|Poster|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (233, N'2563', 0, N'2.0 Yeni Modüller', 213, N'', 1, N'/213/233/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, N'', N'', N'', N'/kategori/proticaret-modulleri/20-yeni-moduller/', N'', N'', N'|Proticaret Modülleri|2.0 Yeni Modüller|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

INSERT [dbo].[Categories] ([CatId], [CategoryCode], [PortalId], [CatName], [Parent], [CatImg], [IsActive], [Lineage], [Depth], [Description], [ShowOrder], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5], [ShowMenu1], [ShowMenu2], [IsVisible], [Title], [Desc], [Keywords], [Url], [xml], [xsl], [Lineage2], [Template], [SearchKeywords], [StartDate], [EndDate], [Description2]) VALUES (235, N'perde', 0, N'Perde', 172, N'/uploads/2013_zebra_perde_modelleri_12.jpg', 1, N'/172/235/', 1, N'&amp;nbsp;', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, N'', N'', N'', N'/kategori/ev-dekorasyonu---mobilya/perde/', N'', N'', N'|Ev Dekorasyonu & Mobilya|Perde|', NULL, N'', NULL, NULL, N'&amp;nbsp;')

SET IDENTITY_INSERT [dbo].[Categories] OFF

SET IDENTITY_INSERT [dbo].[ProductCategories] ON


INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (831, 213, 378)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (916, 172, 370)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (610, 129, 248)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (917, 174, 370)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (1783, 205, 1377)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (381, 134, 251)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (729, 215, 344)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (616, 129, 253)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (984, 185, 303)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (985, 186, 303)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (642, 150, 269)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (643, 153, 269)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (671, 144, 260)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (648, 150, 272)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (497, 143, 262)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (649, 156, 272)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (1784, 206, 1377)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (835, 213, 367)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (396, 149, 266)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (654, 157, 276)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (655, 160, 276)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (658, 157, 279)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (659, 163, 279)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (667, 172, 291)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (668, 174, 291)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (914, 172, 371)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (915, 174, 371)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (405, 159, 275)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (730, 216, 344)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (836, 233, 367)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (511, 180, 299)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (980, 205, 316)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (1775, 134, 250)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (991, 164, 284)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (981, 206, 316)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (542, 227, 365)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (992, 166, 284)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (602, 168, 288)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (1776, 185, 1375)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (832, 233, 378)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (603, 171, 288)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (512, 183, 299)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (841, 213, 380)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (842, 233, 380)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (847, 213, 381)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (897, 228, 364)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (543, 229, 365)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (848, 233, 381)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (853, 213, 383)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (516, 205, 317)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (428, 182, 298)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (517, 207, 317)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (611, 132, 248)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (544, 227, 366)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (854, 233, 383)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (986, 188, 303)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (545, 230, 366)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (617, 135, 253)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (857, 213, 385)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (577, 202, 313)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (445, 204, 315)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (858, 233, 385)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (453, 214, 323)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (861, 213, 387)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (862, 233, 387)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (456, 214, 326)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (457, 214, 327)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (458, 214, 328)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (459, 214, 329)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (460, 214, 330)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (461, 214, 331)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (462, 214, 332)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (463, 214, 333)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (464, 214, 334)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (465, 214, 335)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (466, 214, 336)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (467, 214, 337)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (468, 214, 338)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (469, 214, 339)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (470, 214, 340)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (471, 214, 341)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (472, 214, 342)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (473, 214, 343)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (571, 215, 346)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (572, 218, 346)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (578, 203, 313)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (1795, 185, 376)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (918, 213, 379)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (919, 233, 379)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (878, 129, 252)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (879, 134, 252)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (880, 164, 375)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (881, 165, 375)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (882, 166, 375)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (883, 167, 375)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (1796, 189, 376)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (493, 228, 363)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (498, 146, 262)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (499, 143, 264)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (500, 148, 264)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (501, 143, 265)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (502, 149, 265)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (503, 157, 278)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (504, 162, 278)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (896, 176, 293)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (538, 227, 361)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (539, 228, 361)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (540, 227, 362)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (541, 228, 362)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (569, 215, 347)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (570, 218, 347)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (573, 205, 318)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (574, 208, 318)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (587, 168, 300)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (588, 184, 300)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (817, 180, 297)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (818, 181, 297)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (684, 129, 247)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (685, 131, 247)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (612, 129, 249)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (613, 133, 249)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (632, 143, 261)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (633, 145, 261)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (634, 143, 263)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (635, 147, 263)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (636, 150, 267)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (637, 151, 267)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (644, 150, 270)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (645, 154, 270)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (646, 150, 271)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (647, 155, 271)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (650, 157, 273)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (651, 158, 273)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (652, 157, 274)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (653, 158, 274)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (656, 157, 277)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (657, 161, 277)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (663, 168, 287)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (664, 170, 287)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (665, 172, 290)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (666, 173, 290)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (908, 176, 296)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (909, 179, 296)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (957, 198, 311)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (958, 200, 311)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (851, 213, 382)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (852, 233, 382)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (535, 190, 304)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (669, 172, 292)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (670, 175, 292)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (1799, 232, 1378)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (638, 150, 268)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (639, 152, 268)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (859, 213, 386)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (860, 233, 386)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (934, 217, 345)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (833, 213, 368)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (834, 233, 368)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (787, 206, 280)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (886, 129, 246)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (887, 130, 246)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (893, 172, 289)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (894, 173, 289)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (999, 164, 285)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (1000, 167, 285)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (938, 185, 301)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (939, 186, 301)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (855, 213, 384)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (856, 233, 384)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (940, 187, 301)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (945, 198, 377)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (946, 199, 377)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (979, 232, 373)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (989, 164, 281)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (910, 172, 372)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (911, 174, 372)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (990, 165, 281)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (920, 185, 302)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (921, 186, 302)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (922, 188, 302)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (977, 176, 295)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (978, 178, 295)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (987, 150, 286)

INSERT [dbo].[ProductCategories] ([ProdCatId], [CategoryId], [ProductId]) VALUES (988, 169, 286)

SET IDENTITY_INSERT [dbo].[ProductCategories] OFF

SET IDENTITY_INSERT [dbo].[ProductOptions] ON


INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (24, 5, N'Sigorta', 1, 4, N'Sigorta İstermisiniz.', 1)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (25, 5, N'Renk', 2, 4, N'Renk Seçiniz', 1)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (26, 5, N'Beden', 0, 4, N'Beden Seçiniz.', 1)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (27, 0, N'Parmak Ölçüsü', 0, 4, N'', 1)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (28, 0, N'Altın Rengi', 0, 4, N'', 1)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (30, 0, N'Resim Ekle', 1, 7, N'Lütfen Resim Ekleyiniz.', 1)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (31, 0, N'Yazı Ekle', 1, 1, N'Yazı giriniz.', 0)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (32, 0, N'Menü', 1, 4, N'', 0)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (33, 0, N'Malzemeler', 0, 6, N'', 0)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (35, 0, N'Taban Genişliği', 1, 4, N'', 0)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (36, 0, N'Kesit Oranı', 2, 4, N'', 0)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (37, 0, N'Jant Çapı', 3, 4, N'', 0)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (38, 0, N'Mevsim', 4, 6, N'', 0)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (39, 0, N'Pizza Seçenekleri', 1, 5, N'Lütfen Pizza Boyu Seçiniz', 1)

INSERT [dbo].[ProductOptions] ([ProductOptionsId], [PortalId], [ProductOptionsName], [ProductOptionsShowOrder], [ProductOptionsTypesId], [ProductOptionsDescription], [Required]) VALUES (40, 0, N'Promosyon Yazısı', 0, 1, N'Lütfen promosyon yazısı giriniz.', 0)

SET IDENTITY_INSERT [dbo].[ProductOptions] OFF

SET IDENTITY_INSERT [dbo].[ProductOptionsValues] ON


INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (70, 24, N'İstiyorum', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (71, 24, N'İstemiyorum', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (72, 25, N'Kırmızı', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (73, 25, N'Siyah', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (74, 25, N'Ak', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (75, 26, N'36', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (76, 26, N'38', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (77, 26, N'40', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (78, 26, N'44', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (79, 26, N'42', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (80, 28, N'18 Ayar Yeşil Altın', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (82, 27, N'6', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (83, 27, N'6,5', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (84, 27, N'7', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (85, 27, N'7,5', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (86, 27, N'8', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (87, 27, N'8,5', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (88, 27, N'9', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (89, 27, N'9,5', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (90, 27, N'10', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (91, 30, N'Resim Ekle', 1)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (92, 31, N'Yazı Ekle', 1)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (94, 32, N'Big Mac®, Orta Boy Patates, 400 ml Coca-Cola', 1)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (95, 32, N'Big Mac®, Orta Boy Patates, 400 ml Coca-Cola Light', 2)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (96, 32, N'Big Mac®, Orta Boy Patates, 400 ml Coca-Cola Zero', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (97, 33, N'Soğan', 1)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (98, 33, N'Ketçap', 1)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (99, 33, N'Mayonez', 1)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (100, 33, N'Ekstra Peynir', 1)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (101, 35, N'115', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (102, 35, N'125', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (103, 35, N'135', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (104, 35, N'145', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (105, 35, N'155', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (106, 35, N'165', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (107, 35, N'175', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (108, 35, N'185', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (109, 35, N'195', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (110, 35, N'205', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (111, 35, N'7,50', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (112, 36, N'14', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (113, 36, N'25', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (114, 36, N'30', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (115, 36, N'35', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (116, 36, N'50', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (117, 36, N'60', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (118, 37, N'1', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (119, 37, N'12', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (120, 37, N'13', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (121, 37, N'20', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (122, 37, N'25', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (123, 37, N'26', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (124, 37, N'30', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (125, 37, N'50', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (126, 37, N'60', 0)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (127, 38, N'Yaz', 1)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (128, 38, N'Kış', 1)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (129, 39, N'Buyuk Boy', 1)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (131, 39, N'Orta Boy', 2)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (132, 39, N'Kucuk Boy', 3)

INSERT [dbo].[ProductOptionsValues] ([ProductOptionsValuesId], [ProductOptionsId], [ProductOptionsValuesName], [ProductOptionsValuesShowOrder]) VALUES (133, 40, N'Promosyon Yazısı', 1)

SET IDENTITY_INSERT [dbo].[ProductOptionsValues] OFF



SET IDENTITY_INSERT [dbo].[ProductAttributes] ON


INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (1, 246, 27, 82, CAST(0.0000 AS Decimal(15, 4)), N'+', N'9ae8c31f-6387-431d-9cc9-544df1e2143a.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (3, 246, 27, 83, CAST(0.0000 AS Decimal(15, 4)), N'+', N'9ae8c31f-6387-431d-9cc9-544df1e2143a.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (4, 246, 27, 84, CAST(0.0000 AS Decimal(15, 4)), N'+', N'9ae8c31f-6387-431d-9cc9-544df1e2143a.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (5, 246, 27, 85, CAST(0.0000 AS Decimal(15, 4)), N'+', N'9ae8c31f-6387-431d-9cc9-544df1e2143a.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (6, 246, 27, 86, CAST(0.0000 AS Decimal(15, 4)), N'+', N'9ae8c31f-6387-431d-9cc9-544df1e2143a.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (7, 246, 27, 87, CAST(0.0000 AS Decimal(15, 4)), N'+', N'9ae8c31f-6387-431d-9cc9-544df1e2143a.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (8, 246, 27, 88, CAST(0.0000 AS Decimal(15, 4)), N'+', N'9ae8c31f-6387-431d-9cc9-544df1e2143a.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (9, 246, 27, 89, CAST(0.0000 AS Decimal(15, 4)), N'+', N'9ae8c31f-6387-431d-9cc9-544df1e2143a.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (10, 246, 27, 90, CAST(0.0000 AS Decimal(15, 4)), N'+', N'9ae8c31f-6387-431d-9cc9-544df1e2143a.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (11, 246, 28, 80, CAST(0.0000 AS Decimal(15, 4)), N'+', N'9ae8c31f-6387-431d-9cc9-544df1e2143a.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (13, 252, 27, 82, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/47.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (14, 252, 27, 83, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/47.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (15, 252, 27, 84, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/47.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (16, 252, 27, 85, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/47.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (17, 252, 27, 86, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/47.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (18, 252, 27, 87, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/47.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (19, 252, 27, 88, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/47.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (20, 252, 27, 89, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/47.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (21, 252, 27, 90, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/47.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (22, 252, 28, 80, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/47.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (25, 297, 30, 91, CAST(25.0000 AS Decimal(15, 4)), N'+', N'a742db23-ea97-4d04-bfa4-665aa19e87cd.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (26, 297, 31, 92, CAST(10.0000 AS Decimal(15, 4)), N'+', N'a742db23-ea97-4d04-bfa4-665aa19e87cd.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (27, 250, 27, 82, CAST(0.0000 AS Decimal(15, 4)), N'+', N'e6659f1b-1582-42de-aaf8-50b46ea5cffc.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (28, 250, 27, 83, CAST(0.0000 AS Decimal(15, 4)), N'+', N'e6659f1b-1582-42de-aaf8-50b46ea5cffc.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (29, 250, 27, 84, CAST(0.0000 AS Decimal(15, 4)), N'+', N'e6659f1b-1582-42de-aaf8-50b46ea5cffc.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (30, 250, 27, 85, CAST(0.0000 AS Decimal(15, 4)), N'+', N'e6659f1b-1582-42de-aaf8-50b46ea5cffc.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (31, 250, 27, 86, CAST(0.0000 AS Decimal(15, 4)), N'+', N'e6659f1b-1582-42de-aaf8-50b46ea5cffc.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (32, 250, 27, 87, CAST(0.0000 AS Decimal(15, 4)), N'+', N'e6659f1b-1582-42de-aaf8-50b46ea5cffc.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (33, 250, 27, 88, CAST(0.0000 AS Decimal(15, 4)), N'+', N'e6659f1b-1582-42de-aaf8-50b46ea5cffc.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (34, 250, 27, 89, CAST(0.0000 AS Decimal(15, 4)), N'+', N'e6659f1b-1582-42de-aaf8-50b46ea5cffc.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (35, 250, 27, 90, CAST(0.0000 AS Decimal(15, 4)), N'+', N'e6659f1b-1582-42de-aaf8-50b46ea5cffc.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (36, 250, 28, 80, CAST(0.0000 AS Decimal(15, 4)), N'+', N'e6659f1b-1582-42de-aaf8-50b46ea5cffc.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (37, 251, 27, 82, CAST(0.0000 AS Decimal(15, 4)), N'+', N'de0b0f39-c67a-41c2-b5b7-901aaba4fb53.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (38, 251, 27, 83, CAST(0.0000 AS Decimal(15, 4)), N'+', N'de0b0f39-c67a-41c2-b5b7-901aaba4fb53.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (39, 251, 27, 84, CAST(0.0000 AS Decimal(15, 4)), N'+', N'de0b0f39-c67a-41c2-b5b7-901aaba4fb53.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (40, 251, 27, 85, CAST(0.0000 AS Decimal(15, 4)), N'+', N'de0b0f39-c67a-41c2-b5b7-901aaba4fb53.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (41, 251, 27, 86, CAST(0.0000 AS Decimal(15, 4)), N'+', N'de0b0f39-c67a-41c2-b5b7-901aaba4fb53.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (42, 251, 27, 87, CAST(0.0000 AS Decimal(15, 4)), N'+', N'de0b0f39-c67a-41c2-b5b7-901aaba4fb53.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (43, 251, 27, 88, CAST(0.0000 AS Decimal(15, 4)), N'+', N'de0b0f39-c67a-41c2-b5b7-901aaba4fb53.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (44, 251, 27, 89, CAST(0.0000 AS Decimal(15, 4)), N'+', N'de0b0f39-c67a-41c2-b5b7-901aaba4fb53.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (45, 251, 27, 90, CAST(0.0000 AS Decimal(15, 4)), N'+', N'de0b0f39-c67a-41c2-b5b7-901aaba4fb53.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (46, 251, 28, 80, CAST(0.0000 AS Decimal(15, 4)), N'+', N'de0b0f39-c67a-41c2-b5b7-901aaba4fb53.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (50, 293, 33, 97, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/92.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (51, 293, 33, 98, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/92.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (52, 293, 33, 99, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/92.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (53, 293, 33, 100, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/92.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (54, 293, 32, 96, CAST(5.0000 AS Decimal(15, 4)), N'+', N'11/92.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (55, 293, 32, 94, CAST(10.0000 AS Decimal(15, 4)), N'+', N'11/92.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (56, 293, 32, 95, CAST(15.0000 AS Decimal(15, 4)), N'+', N'11/92.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (85, 295, 39, 129, CAST(20.0000 AS Decimal(15, 4)), N'+', N'11/94.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (86, 295, 39, 131, CAST(10.0000 AS Decimal(15, 4)), N'+', N'11/94.jpg')

INSERT [dbo].[ProductAttributes] ([ProductAttributesId], [ProductId], [ProductOptionsId], [ProductOptionsValuesId], [ProductOptionsValuesPrice], [ProductOptionsValuespricePrefix], [ProductImagePath]) VALUES (87, 295, 39, 132, CAST(0.0000 AS Decimal(15, 4)), N'+', N'11/94.jpg')

SET IDENTITY_INSERT [dbo].[ProductAttributes] OFF

SET IDENTITY_INSERT [dbo].[ProductAlternatives] ON


INSERT [dbo].[ProductAlternatives] ([AlternativeId], [ProductId], [AProductId]) VALUES (3, 246, 250)

INSERT [dbo].[ProductAlternatives] ([AlternativeId], [ProductId], [AProductId]) VALUES (4, 246, 251)

SET IDENTITY_INSERT [dbo].[ProductAlternatives] OFF

SET IDENTITY_INSERT [dbo].[ProductImages] ON


INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (41, 246, N'k-154', N'9ae8c31f-6387-431d-9cc9-544df1e2143a.jpg', N'http://www.uniticaret.org/uploads/productsimages/835ecf33-5330-404a-8f3e-60c01c19ab25.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (42, 247, N'34 VK Design', N'11/42.jpg', N'http://www.uniticaret.org/uploads/productsimages/f4ee3848-2d19-4469-9027-2df59205eaff.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (43, 248, N'KYC3631', N'11/43.jpg', N'http://www.uniticaret.org/uploads/productsimages/3233c54b-0568-4a2d-bd14-c840e1721ddf.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (45, 250, N'k-987', N'e6659f1b-1582-42de-aaf8-50b46ea5cffc.jpg', N'http://www.uniticaret.org/uploads/productsimages/80dec35f-d2fe-4f79-8eee-b87d881fd655.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (46, 251, N'g-422', N'de0b0f39-c67a-41c2-b5b7-901aaba4fb53.jpg', N'http://www.uniticaret.org/uploads/productsimages/51610de5-b923-4c3e-9ced-b0f7fa1df1a8.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (47, 252, N'ST0281', N'11/47.jpg', N'http://www.uniticaret.org/uploads/productsimages/c661a489-99da-42bf-a8b9-60564fc5f6901381133770.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (48, 252, N'ST0281', N'11/48.jpg', N'http://www.uniticaret.org/uploads/productsimages/a8d726f4-88e9-4975-90c2-075fd41a0448.jpg', 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (56, 260, N'bsh-66', N'11/bsh-6616.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/cim.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (61, 265, N'h-191992', N'11/61.jpg', N'http://www.uniticaret.org/uploads/productsimages/b86d90d7-1214-4ca2-94ad-aebecfeba08f.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (71, 275, N'imac-88', N'11/imac-8831.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/desktoppc.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (75, 279, N'c03234786', N'11/c0323478635.jpg', N'http://www.uniticaret.org/uploads/productsimages/2dac0a45-83ae-44c6-a7ed-0fcfe4358b4cc03234786.png', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (80, 284, N'01-30214', N'11/80.jpg', N'http://www.uniticaret.org/uploads/productsimages/287a00f0-a318-4c7d-8f37-2e213883e8f1adi-ask-kirmizi-guller-ve-antoryumlar-at2117.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (83, 287, N'plps-03', N'11/83.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/mp3.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (84, 288, N'smsng-01', N'11/smsng-0144.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/lcdtv.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (85, 289, N'av-122-332', N'11/av-122-33245.jpg', N'http://www.uniticaret.org/uploads/productsimages/248375a4-a3c4-47f9-ba63-4d55ffdad69davizeizmir.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (86, 290, N'212312314', N'11/21231231446.jpg', N'http://www.uniticaret.org/uploads/productsimages/866441c3-c6e2-42fa-a87f-8a093e687526evidea-banyo-aksesuar-seti-papatya-dbs030-001_2.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (90, 291, N'213123454', N'11/21312345450.jpg', N'http://www.uniticaret.org/uploads/productsimages/370bcf91-db28-4e03-831c-889c06f50771[img][4][1][313x429].jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (91, 292, N'dasdqew12', N'11/dasdqew1251.jpg', N'http://www.uniticaret.org/uploads/productsimages/3c5497e3-f1df-4100-825b-1474f5e11b7bDM3158ZAA0.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (92, 293, N'McD01', N'11/92.jpg', N'http://www.uniticaret.org/uploads/productsimages/b6c32311-8f85-4544-9f7e-2c3ce3a37e84634430424859419091.png', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (94, 295, N'Mc-002 ', N'11/94.jpg', N'http://www.uniticaret.org/uploads/productsimages/2e245884-bd0d-4451-a98d-410d8d45b65eB_25567260-22012013232614.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (95, 296, N'Mc-0003', N'11/Mc-000355.jpg', N'http://www.uniticaret.org/uploads/productsimages/0b440abd-1ff5-4b06-9574-3d903cc98a4bindir.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (97, 298, N'fj-95', N'11/fj-9557.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/dcam.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (98, 299, N'T-702', N'11/T-70258.jpg', N'http://www.uniticaret.org/uploads/productsimages/bfd73b22-1deb-4d41-a5bf-d4aa412ab5b9bd98610.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (99, 300, N'vcam-99', N'11/vcam-9959.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/vcam.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (100, 301, N'Los-02', N'11/100.jpg', N'http://www.uniticaret.org/uploads/productsimages/aac49ad4-15b1-4700-80f7-67bf6f7cd967.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (115, 313, N'k-142', N'11/k-14275.jpg', N'http://www.uniticaret.org/uploads/productsimages/2d486d73-b0f1-44ac-aa2b-b02562c4d581SG_2885409.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (117, 315, N'k-254', N'11/k-25477.jpg', N'http://www.uniticaret.org/uploads/productsimages/30b8b640-fa27-4e25-89a0-986b8954c343Kozmetik_2453267.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (119, 317, N'015-ak', N'11/015-ak79.jpg', N'http://www.uniticaret.org/uploads/productsimages/d4d34714-83e9-499c-a2f4-5ca4320a073211670281334827957634.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (120, 318, N'mtkp-10', N'11/mtkp-1080.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/drill.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (146, 344, N'1231asd', N'11/1231asd106.jpg', N'http://www.uniticaret.org/uploads/productsimages/ba099557-8a9e-4818-a462-30db50054744ayna.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (147, 345, N'2563-69', N'11/147.jpg', N'http://www.uniticaret.org/uploads/productsimages/391783a2-f509-4cf6-b9fd-5582d66b4bdf-ferre-gunes-gozlukleri-591.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (148, 346, N'ssat-01', N'11/ssat-01108.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/watch.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (149, 347, N'sst-02', N'11/sst-02109.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/watch2.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (169, 361, N'tw2ttsada23', N'11/tw2ttsada23129.jpg', N'http://www.uniticaret.org/uploads/productsimages/b075599a-babe-41bc-9596-d22e8775c6a0indir.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (170, 362, N'iphone-16', N'11/iphone-16130.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/iphone.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (171, 362, N'iphone-16', N'11/iphone-16131.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/iphone2.jpg', 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (172, 363, N'iphone-8', N'11/iphone-8132.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/iphone.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (173, 363, N'iphone-8', N'11/iphone-8133.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/iphone2.jpg', 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (174, 364, N'ip-case1', N'11/ip-case1134.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/iphonecase.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (175, 365, N'f-95', N'11/f-95135.jpg', N'http://www.uniticaret.org/uploads/productsimages/852d639a-39a4-4677-be80-bba03293fd81Telefon_1083149.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (176, 366, N'S-A585', N'11/S-A585136.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/phone.jpg', 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (177, 366, N'S-A585', N'11/S-A585137.jpg', N'http://www.uniticaret.org/uploads/productsimages//sample/phone2.jpg', 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (178, 302, N'resim', N'9e30c3d0-a941-40e3-99bb-106e37a181be.jpg', NULL, 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (179, 302, N'resim', N'054e06ef-0d8e-4c09-b3a0-e9f9e16f6720.jpg', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (180, 303, N'resim', N'2c5e5c84-5e8e-47ca-9887-623491dbc6e2.jpg', NULL, 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (188, 372, N'ZEBRA PERDE', N'c386c7a5-eff0-407e-aa58-1ec5d6213c7aperde2.jpg', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (191, 375, N'Pembe Düşler', N'28b65e98-89de-4d6f-baaf-50048ee3b3c1pembe-dusler-at1893.jpg', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (193, 297, N'resim', N'a742db23-ea97-4d04-bfa4-665aa19e87cd.jpg', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (195, 323, N'resim', N'259c2003-a92d-4402-be33-a0d05363b431.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (196, 326, N'resim', N'01dc48a8-6eb2-43e7-8b01-b16944849972.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (197, 327, N'resim', N'f32e217f-308a-4be3-b500-cad6daa2be9d.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (198, 328, N'resim', N'6fbc2d4e-7118-4485-943d-0cf06876c4bd.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (199, 329, N'resim', N'9d2c6e07-88d9-456f-81e8-5247f1f0bdbb.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (200, 330, N'resim', N'b5ce1eef-5f68-4815-b9f7-f15b0f8dc32b.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (201, 331, N'resim', N'b4aae482-0ad4-4b0e-8de0-099521c98642.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (202, 332, N'resim', N'7480a49e-7823-40db-b0a9-b8594f610cc1.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (204, 333, N'resim', N'bc6f7c29-2f7d-4299-a58d-3bffb38dab27.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (205, 334, N'resim', N'117b1edd-7b30-499c-9e7e-13fa70be46a3.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (206, 335, N'resim', N'09df8ca8-424d-4522-b65b-9508d8a06c0e.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (207, 336, N'resim', N'd8269443-5d3b-422f-86b0-0c68b0ca28a0.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (208, 337, N'resim', N'7fd8369f-81df-4dee-bc90-3fb0b74080e9.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (209, 338, N'resim', N'c46519cb-c83d-4ba1-84b8-ac1cd21f0ed7.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (210, 339, N'resim', N'65f550f7-8466-43d2-b719-a92db90ed88e.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (211, 340, N'resim', N'eef89562-be5d-4814-8f56-1ce856f64ec0.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (212, 341, N'resim', N'32efc8d8-e81d-4b54-91bb-a7975ebd08de.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (213, 342, N'resim', N'f371245d-4e26-4401-a2da-73c6b502cc36.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (214, 343, N'resim', N'acc39e8e-2f15-45dd-a416-c1c2538c5a3b.PNG', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (217, 368, N'resim', N'9a2922b4-dbe5-4dd2-9e41-8e59cf68e7d9.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (218, 377, N'Yukarı Bak', N'dd4e919a-81e6-45e0-9cd3-aa1f68543c7ephpThumb_generated_thumbnail.jpeg', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (219, 367, N'resim', N'e3894c4f-32b4-414e-b38b-55e19ab4e5df.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (220, 378, N'Poster Modülü', N'a689c49b-0d2a-4742-b614-edd39128f211poster-icon.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (221, 379, N'Perde Modulu', N'8d953491-1871-4fb0-9d89-3621540126bcperde-icon.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (222, 380, N'Tesan Ödeme Sistemi', N'00fcd833-819a-4a76-8d14-7817cabf2909tesan-icon.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (223, 381, N'Multi Admin Modülü', N'5cdb95dd-73d4-41d8-82b3-9c95ee9d1f62multiE.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (224, 382, N'Multi Admin Modülü (5 Site )', N'f0589096-6e41-4d84-8b0f-d6b8927a9334multiE.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (225, 383, N'Multi Admin Modülü (10 Site)', N'6905c74c-7f21-4389-9fae-c72b0a72e94dmultiE.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (226, 384, N'Multi Admin Modülü (15 Site)', N'14118af5-6ff5-4bcb-b0e7-2e5b5b77d674multiE.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (227, 385, N'Network Marketing Modülü (500 Üye)', N'ccf18a7b-2cbc-40bf-9a02-9446183c0dfdnetworkE.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (228, 386, N'Network Marketing Modülü (1.000 Üye)', N'bdc29775-f605-46c6-ad5d-ec9c7f4506d4networkE.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (229, 387, N'Network Marketing Modülü (5.000 Üye)', N'61b02aba-9872-4a82-a751-32ae7d93218bnetworkE.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (233, 304, N'resim', N'9cbe364c-0bc7-4c81-9483-c90bb6e1f902.jpg', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (235, 316, N'resim', N'15759097-1b89-4e87-acdc-26cdb6b284f4.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (238, 281, N'resim', N'65f40767-e485-48a2-b28c-be0444d6e25a.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (239, 286, N'resim', N'a4664649-04e1-465b-a7b6-cdc8b1431e84.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (240, 370, N'resim', N'05a718e4-683e-4619-b07d-c3c65dc7b934.jpg', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (241, 311, N'resim', N'0727292a-c5dd-4602-90e7-352e7a215874.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (243, 303, N'resim', N'6de830ec-29e6-4637-8b63-cfd81fe0effe.png', NULL, 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1191, 303, N'resim', N'2d15e73a-026f-4d28-a154-60aa46fcaac6.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1192, 371, N'resim', N'8194cb70-c8f3-42be-969e-8f3a0db4500b.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1193, 249, N'resim', N'ab65bfb7-053b-4f7c-ab76-52382666dc8e.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1194, 253, N'resim', N'3d45b8aa-c5e6-4d46-8b48-1ce015f61d27.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1198, 285, N'resim', N'391b7d8b-2ba8-4489-8df1-cd53277fa616.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1201, 261, N'resim', N'5f1d5fbc-c16b-4f94-aa72-3f12ef3bcb4a.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1202, 262, N'resim', N'b7b62907-700c-48c1-9e97-7e3b9f654329.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1203, 263, N'resim', N'a6f9dce9-8cc8-4fd8-a278-f19a1edcc958.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1204, 264, N'resim', N'62075699-8cf8-4c57-97ea-6650c637793e.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1205, 266, N'resim', N'624605db-7648-47ca-9143-65c40d5fb38d.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1206, 267, N'resim', N'0ce43273-7d0c-4ed8-a67e-4715b1cf0f25.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1207, 268, N'resim', N'd4e9f250-bc93-485e-be80-5fcb4502f33b.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1208, 269, N'resim', N'a0465105-5cb2-4d93-9a7e-84c7e1b4bf67.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1209, 270, N'resim', N'31d0bafc-9ea7-4fd1-ab80-11c107bed05a.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1210, 271, N'resim', N'70079b7f-89f6-4a8a-98b9-eefeebbba8a4.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1211, 272, N'resim', N'b111d8c4-c598-48c6-b428-c7063a54a3af.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1212, 273, N'resim', N'3ff67d7c-848b-4d39-aac6-9d51b0b9b055.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1213, 1375, N'1212', N'image.gif', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1214, 274, N'resim', N'4e24c6e2-a6f1-4c37-9bbb-8ecb61dd0fa9.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1215, 276, N'resim', N'db980dab-0bc6-42ac-af7b-ee9efdfabbbe.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1216, 277, N'resim', N'f65b8366-c68a-4146-8462-f22708552dc2.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1217, 278, N'resim', N'2146b084-8c66-4b5e-9669-5570c6c4a28a.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1220, 280, N'resim', N'61a513ef-cb49-4f9d-bdfb-b88b07037f60.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1221, 290, N'resim', N'c00478a8-81f1-4e07-9493-e9a59ff21542.png', NULL, 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1222, 290, N'resim', N'9bcefb9b-37fb-4a73-9f33-7695e7826d25.png', NULL, 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1223, 290, N'resim', N'59bd9654-3835-4f24-9cc2-5ee1a9d11090.png', NULL, 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1224, 376, N'resim', N'b13d82b9-83a7-419f-b5e9-ca2fa3f6c61a.png', NULL, 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1228, 376, N'resim', N'75d84c82-d2e7-4fe9-a17f-f6567aab0ade.jpg', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1229, 376, N'resim', N'71eda1d1-f3ee-4ec1-a40b-814f98fa7bf7.png', NULL, 0)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1230, 373, N'resim', N'e754190e-53d8-4038-8c52-4cb229a6b32a.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1231, 1377, N'resim', N'3e6b5861-411c-4cd3-bd40-9d59eaa97a3a.png', NULL, 1)

INSERT [dbo].[ProductImages] ([ImageId], [ProductId], [Description], [Path], [Url], [IsDefault]) VALUES (1232, 1378, N'Manzara Poster 010 Tropikal Lagün: 70x45 cm.', N'9dc2aaf7-16f2-4c37-b9ce-e7169d84c06a.png', NULL, 1)

SET IDENTITY_INSERT [dbo].[ProductImages] OFF

SET IDENTITY_INSERT [dbo].[ProductSizes] ON


INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (78, 302, 2, 11, 4, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (79, 302, 2, 11, 4, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (80, 302, 2, 11, 7, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (81, 302, 2, 11, 7, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (82, 302, 2, 11, 8, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (83, 302, 2, 11, 8, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (84, 302, 2, 11, 9, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (85, 302, 2, 11, 9, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (86, 302, 2, 11, 10, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (87, 302, 2, 11, 10, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (88, 302, 2, 12, 4, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (89, 302, 2, 12, 4, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (90, 302, 2, 12, 7, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (91, 302, 2, 12, 7, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (92, 302, 2, 12, 8, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (93, 302, 2, 12, 8, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (94, 302, 2, 12, 9, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (95, 302, 2, 12, 9, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (96, 302, 2, 12, 10, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (97, 302, 2, 12, 10, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (98, 302, 2, 13, 4, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (99, 302, 2, 13, 4, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (100, 302, 2, 13, 7, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (101, 302, 2, 13, 7, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (102, 302, 2, 13, 8, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (103, 302, 2, 13, 8, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (104, 302, 2, 13, 9, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (105, 302, 2, 13, 9, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (106, 302, 2, 13, 10, 5, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (107, 302, 2, 13, 10, 6, 178, 5, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (110, 303, 2, 14, 4, 15, 180, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (111, 303, 2, 14, 7, 5, 180, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (112, 303, 2, 14, 7, 6, 180, 0, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (113, 303, 2, 14, 7, 15, 180, 0, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (114, 303, 2, 14, 9, 5, 180, 0, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (115, 303, 2, 14, 9, 6, 180, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (116, 303, 2, 14, 9, 15, 180, 0, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (119, 303, 2, 11, 4, 15, 180, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (120, 303, 2, 11, 7, 5, 180, 0, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (122, 303, 2, 11, 7, 15, 180, 0, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (123, 303, 2, 11, 9, 5, 180, 0, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (124, 303, 2, 11, 9, 6, 180, 0, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (125, 303, 2, 11, 9, 15, 180, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (126, 303, 2, 13, 4, 5, 180, 0, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (127, 303, 2, 13, 4, 6, 180, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (128, 303, 2, 13, 4, 15, 180, 0, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (129, 303, 2, 13, 7, 5, 180, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (131, 303, 2, 13, 7, 15, 180, 0, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (132, 303, 2, 13, 9, 5, 180, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (134, 303, 2, 13, 9, 15, 180, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1155, 376, 4, 1025, 1028, 0, 1228, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1156, 376, 4, 1025, 1029, 0, 1228, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1157, 376, 4, 1025, 1030, 0, 1228, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1158, 376, 4, 1025, 1031, 0, 1228, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1159, 376, 4, 1026, 1028, 0, 1227, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1160, 376, 4, 1026, 1029, 0, 1227, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1161, 376, 4, 1026, 1030, 0, 1227, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1162, 376, 4, 1026, 1031, 0, 1227, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1163, 376, 4, 1027, 1028, 0, 1224, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1164, 376, 4, 1027, 1029, 0, 1224, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1165, 376, 4, 1027, 1030, 0, 1224, 10, N'',0,0)

INSERT [dbo].[ProductSizes] ([ProductSizeId], [ProductId], [ProductSizeOptionId], [ProductSize0ValueId], [ProductSize1ValueId], [ProductSize2ValueId], [ProductImageId], [StockQty], [Barcode], [StockCheck], [StockChange]) VALUES (1166, 376, 4, 1027, 1031, 0, 1224, 10, N'',0,0)

SET IDENTITY_INSERT [dbo].[ProductSizes] OFF

SET IDENTITY_INSERT [dbo].[ProductUnits] ON


INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (247, 246, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(550.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(3360.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26404D8 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (248, 247, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(57.5000 AS Decimal(18, 4)), 1, CAST(78.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(57.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (249, 248, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(129.0000 AS Decimal(18, 4)), 1, CAST(145.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(129.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (250, 249, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(85.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(80.0000 AS Decimal(18, 4)), 1, CAST(85.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (251, 250, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(850.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(850.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (252, 251, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(350.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(350.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (253, 252, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(3820.0000 AS Decimal(18, 4)), 1, CAST(4200.0000 AS Decimal(18, 4)), 1, CAST(3540.0000 AS Decimal(18, 4)), 1, CAST(3820.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (254, 253, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1550.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(1550.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (261, 260, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(290.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(290.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (262, 261, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(7.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(7.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (263, 262, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(500.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(475.0000 AS Decimal(18, 4)), 1, CAST(500.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (264, 263, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(180.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(180.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (265, 264, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(20.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(20.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (266, 265, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(348.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(330.2000 AS Decimal(18, 4)), 1, CAST(348.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (267, 266, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(90.0000 AS Decimal(18, 4)), 1, CAST(110.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(90.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (268, 267, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1950.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(1700.0000 AS Decimal(18, 4)), 1, CAST(1950.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (269, 268, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1600.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(1600.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (270, 269, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(329.7000 AS Decimal(18, 4)), 1, CAST(4200.3000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(329.7000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (271, 270, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(2000.5000 AS Decimal(18, 4)), 1, CAST(2150.1000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(2000.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (272, 271, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(110.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(110.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (273, 272, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(75.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(65.0000 AS Decimal(18, 4)), 1, CAST(75.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (274, 273, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1320.0000 AS Decimal(18, 4)), 1, CAST(1500.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(1320.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (275, 274, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(920.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(900.0000 AS Decimal(18, 4)), 1, CAST(920.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (276, 275, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(3500.0000 AS Decimal(18, 4)), 3, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(3000.0000 AS Decimal(18, 4)), 3, CAST(3500.0000 AS Decimal(18, 4)), 3, CAST(0.0000 AS Decimal(18, 4)), 3, CAST(0.0000 AS Decimal(18, 4)), 3, CAST(0.0000 AS Decimal(18, 4)), 3, CAST(0.0000 AS Decimal(18, 4)), 3, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (277, 276, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1000.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(1000.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (278, 277, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (279, 278, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(15.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (280, 279, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(520.1000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(520.1000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (281, 280, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(150.0000 AS Decimal(18, 4)), 1, CAST(195.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(150.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (282, 281, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(55.2000 AS Decimal(18, 4)), 1, CAST(60.3000 AS Decimal(18, 4)), 1, CAST(52.2000 AS Decimal(18, 4)), 1, CAST(55.2000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (285, 284, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(109.0000 AS Decimal(18, 4)), 1, CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(109.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (286, 285, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(17.6271 AS Decimal(18, 4)), 1, CAST(13.7288 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(17.6271 AS Decimal(18, 4)), 1, CAST(8.2373 AS Decimal(18, 4)), 1, CAST(7.3220 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (287, 286, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(80.0000 AS Decimal(18, 4)), 1, CAST(95.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(80.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (288, 287, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(75.0000 AS Decimal(18, 4)), 1, CAST(90.0000 AS Decimal(18, 4)), 1, CAST(69.0000 AS Decimal(18, 4)), 1, CAST(75.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (289, 288, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1020.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(1020.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (290, 289, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(155.0000 AS Decimal(18, 4)), 1, CAST(185.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(155.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (291, 290, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(222.3000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(222.3000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (292, 291, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(169.0000 AS Decimal(18, 4)), 1, CAST(190.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(169.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (293, 292, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(3000.0000 AS Decimal(18, 4)), 1, CAST(3500.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(3000.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (294, 293, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(15.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(15.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (296, 295, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(13.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(13.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (297, 296, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(12.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(12.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (298, 297, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(150.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(30.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA267038A AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (299, 298, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(580.0000 AS Decimal(18, 4)), 1, CAST(600.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(580.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (300, 299, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(2850.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(2850.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (301, 300, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(550.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(550.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (302, 301, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(125.5000 AS Decimal(18, 4)), 1, CAST(230.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(125.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (303, 302, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(149.0000 AS Decimal(18, 4)), 1, CAST(162.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(149.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (304, 303, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(300.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(300.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (305, 304, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(85.0000 AS Decimal(18, 4)), 1, CAST(105.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(85.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (312, 311, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(21.8519 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(21.8519 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (314, 313, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(185.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(185.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (316, 315, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(35.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(30.0000 AS Decimal(18, 4)), 1, CAST(35.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (317, 316, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(329.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(329.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (318, 317, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(210.0000 AS Decimal(18, 4)), 1, CAST(245.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(210.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (319, 318, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(270.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(270.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (324, 323, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(200.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(200.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (327, 326, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(199.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(199.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (328, 327, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(149.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(149.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (329, 328, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(100.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(100.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (330, 329, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(299.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(299.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (331, 330, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(100.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(100.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (332, 331, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(200.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(200.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (333, 332, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(100.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(100.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (334, 333, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(100.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(100.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (335, 334, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(750.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(750.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (336, 335, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(150.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(150.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (337, 336, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(150.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(150.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (338, 337, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(100.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(100.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (339, 338, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1000.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(1000.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (340, 339, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(750.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(750.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (341, 340, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(4500.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(4500.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (342, 341, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1500.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(1500.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (343, 342, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1500.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(1500.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (344, 343, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1500.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(1500.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 2, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (345, 344, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(20.0000 AS Decimal(18, 4)), 1, CAST(25.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(20.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (346, 345, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(98.5000 AS Decimal(18, 4)), 1, CAST(150.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(98.5000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (347, 346, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(510.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(510.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (348, 347, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(510.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(510.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (362, 361, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(580.0000 AS Decimal(18, 4)), 1, CAST(750.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(580.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (363, 362, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1850.0000 AS Decimal(18, 4)), 1, CAST(2000.0000 AS Decimal(18, 4)), 1, CAST(1800.0000 AS Decimal(18, 4)), 1, CAST(1850.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (364, 363, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(1800.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(1700.0000 AS Decimal(18, 4)), 1, CAST(1800.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (365, 364, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(70.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(70.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (366, 365, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(40.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(40.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (367, 366, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(95.0000 AS Decimal(18, 4)), 3, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(90.0000 AS Decimal(18, 4)), 3, CAST(95.0000 AS Decimal(18, 4)), 3, CAST(0.0000 AS Decimal(18, 4)), 3, CAST(0.0000 AS Decimal(18, 4)), 3, CAST(0.0000 AS Decimal(18, 4)), 3, CAST(0.0000 AS Decimal(18, 4)), 3, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2640338 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (368, 367, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(299.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26703F0 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (369, 368, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(299.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26703ED AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (371, 370, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(25.4237 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(33.8983 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26503A9 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 1)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (372, 371, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(16.9492 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(21.1864 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26503B3 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 1)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (373, 372, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(21.1864 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(29.6610 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26503BA AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 1)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (374, 373, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(150.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(160.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(100.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26503DE AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (376, 375, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(72.0339 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2670300 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 1)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (377, 376, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(105.9322 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA267038A AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 1)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (378, 377, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(16.9492 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26703F0 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 1)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (379, 378, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(499.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26703F5 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (380, 379, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(499.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26703F8 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (381, 380, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(150.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26703F9 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (382, 381, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(500.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26703FB AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (383, 382, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(2000.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26703FD AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (384, 383, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(4500.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26703FE AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (385, 384, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(7000.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2670400 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (386, 385, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(500.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2670402 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (387, 386, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(1000.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2670403 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (388, 387, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(5000.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA2670403 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (1376, 1375, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26802C3 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (1378, 1377, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(559.3200 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(402.7100 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA26802F6 AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

INSERT [dbo].[ProductUnits] ([UnitId], [ProductId], [Aciklama], [BirimAdi], [Carpan], [EskiAlisFiyati], [AlisFiyati], [APb], [PiyasaFiyati], [PPb], [SatisFiyati0], [Pb0], [SatisFiyati1], [Pb1], [SatisFiyati2], [Pb2], [SatisFiyati3], [Pb3], [SatisFiyati4], [Pb4], [SatisFiyati5], [Pb5], [Barcode], [En], [Boy], [Yukseklik], [Agirlik], [Hacim], [Desi], [Indirim1], [IsDefault], [IsActive], [LastModified], [Isk1], [Isk2], [Isk3], [Isk4], [Isk5], [CompareUrl], [ComparePrice], [LastCompare], [AutoCompare], [CompareHKar], [CompareSKar], [CompareSite], [CompareOrder], [LinkOrder], [KdvDahil]) VALUES (1379, 1378, N'Adet', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(100.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)), 1, N'', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, 1, 1, CAST(0xA268038A AS SmallDateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, CAST(0.0000 AS Decimal(18, 4)), NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0)

SET IDENTITY_INSERT [dbo].[ProductUnits] OFF

SET IDENTITY_INSERT [dbo].[ProductWizards] ON


INSERT [dbo].[ProductWizards] ([WizardId], [WizardName], [PortalId], [IsActive], [IsVisible], [Description], [Details], [ShowOrder]) VALUES (2, N'Cep Telefonu', 0, 1, 1, N'uploads/kargobizden.gif', N'&lt;table cellspacing=&quot;1&quot; cellpadding=&quot;1&quot; width=&quot;200&quot; summary=&quot;&quot; border=&quot;1&quot;&gt;
    &lt;tbody&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;dfsdf&lt;/td&gt;
            &lt;td&gt;asdf ad&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
            &lt;td&gt;&amp;nbsp;&lt;/td&gt;
        &lt;/tr&gt;
    &lt;/tbody&gt;
&lt;/table&gt;', 1)

INSERT [dbo].[ProductWizards] ([WizardId], [WizardName], [PortalId], [IsActive], [IsVisible], [Description], [Details], [ShowOrder]) VALUES (7, N'Araba', 0, 0, 0, N'', N'&lt;p&gt;df&lt;/p&gt;', 1)

INSERT [dbo].[ProductWizards] ([WizardId], [WizardName], [PortalId], [IsActive], [IsVisible], [Description], [Details], [ShowOrder]) VALUES (8, N'Yüzük Sihirbazı', 0, 0, 0, N'', N'&lt;p&gt;adg dg&lt;/p&gt;', 1)

SET IDENTITY_INSERT [dbo].[ProductWizards] OFF

SET IDENTITY_INSERT [dbo].[ProductWizardGroups] ON 


INSERT [dbo].[ProductWizardGroups] ([WizardGroupId], [WizardId], [WizardGroupName], [ShowOrder], [IsActive], [IsVisible]) VALUES (4, 2, N'Genel Özellikler', 1, 1, 1)

INSERT [dbo].[ProductWizardGroups] ([WizardGroupId], [WizardId], [WizardGroupName], [ShowOrder], [IsActive], [IsVisible]) VALUES (5, 2, N'Güç Özellikleri', 2, 1, 1)

INSERT [dbo].[ProductWizardGroups] ([WizardGroupId], [WizardId], [WizardGroupName], [ShowOrder], [IsActive], [IsVisible]) VALUES (6, 2, N'Bağlantı Özellikleri', 3, 1, 1)

INSERT [dbo].[ProductWizardGroups] ([WizardGroupId], [WizardId], [WizardGroupName], [ShowOrder], [IsActive], [IsVisible]) VALUES (7, 2, N'Kamera Özellikleri', 4, 1, 1)

INSERT [dbo].[ProductWizardGroups] ([WizardGroupId], [WizardId], [WizardGroupName], [ShowOrder], [IsActive], [IsVisible]) VALUES (8, 2, N'Ekran Özellikleri', 5, 1, 1)

INSERT [dbo].[ProductWizardGroups] ([WizardGroupId], [WizardId], [WizardGroupName], [ShowOrder], [IsActive], [IsVisible]) VALUES (9, 2, N'Diğer Özellikler', 7, 1, 0)

INSERT [dbo].[ProductWizardGroups] ([WizardGroupId], [WizardId], [WizardGroupName], [ShowOrder], [IsActive], [IsVisible]) VALUES (21, 7, N'Motor', 1, 1, 1)

INSERT [dbo].[ProductWizardGroups] ([WizardGroupId], [WizardId], [WizardGroupName], [ShowOrder], [IsActive], [IsVisible]) VALUES (22, 7, N'İç Aksam', 2, 1, 1)

INSERT [dbo].[ProductWizardGroups] ([WizardGroupId], [WizardId], [WizardGroupName], [ShowOrder], [IsActive], [IsVisible]) VALUES (23, 8, N'Taş Özellikleri', 1, 1, 1)

INSERT [dbo].[ProductWizardGroups] ([WizardGroupId], [WizardId], [WizardGroupName], [ShowOrder], [IsActive], [IsVisible]) VALUES (24, 8, N'Metal Özellikleri', 2, 1, 1)

INSERT [dbo].[ProductWizardGroups] ([WizardGroupId], [WizardId], [WizardGroupName], [ShowOrder], [IsActive], [IsVisible]) VALUES (25, 8, N'Diğer Özellikler', 3, 1, 0)

SET IDENTITY_INSERT [dbo].[ProductWizardGroups] OFF

SET IDENTITY_INSERT [dbo].[ProductWizardItems] ON 


INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (2, 4, N'test', N'', 1, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (9, 4, N'Anten', N'anten olayı', 2, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (10, 5, N'woltaj', N'', 1, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (11, 6, N'ekran', N'', 1, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (18, 6, N'Wireless', N'', 1, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (21, 21, N'Motor Hacmi', N'&lt;p&gt;a gewrg&lt;/p&gt;', 1, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (22, 21, N'Yakıt Tipi', N'', 2, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (23, 21, N'Enjeksyonlu', N'', 1, 1, 0)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (24, 22, N'Klima', N'', 1, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (25, 22, N'Döşeme', N'', 2, 1, 0)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (26, 23, N'Taş Rengi', N'', 1, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (27, 23, N'Taş sayısı', N'', 1, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (28, 23, N'Taş Türü', N'', 1, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (29, 23, N'Taş Kalitesi', N'', 1, 1, 0)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (30, 24, N'Metal Türü', N'', 1, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (31, 24, N'Metal ayarı', N'', 1, 1, 1)

INSERT [dbo].[ProductWizardItems] ([WizardItemId], [WizardGroupId], [WizardItemName], [WizardItemDetails], [ShowOrder], [IsActive], [IsVisible]) VALUES (32, 25, N'kesimi', N'', 1, 1, 1)

SET IDENTITY_INSERT [dbo].[ProductWizardItems] OFF

SET IDENTITY_INSERT [dbo].[ProductWizardLookups] ON 


INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (4, 2, N'51', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (20, 9, N'12', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (21, 10, N'110', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (22, 10, N'220v', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (23, 11, N'TFT', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (24, 11, N'LCD', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (39, 21, N'1.2', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (40, 21, N'1.5', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (41, 21, N'2.2', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (42, 23, N'Evet', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (43, 23, N'hayır', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (44, 22, N'Dizel', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (45, 22, N'Benzin', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (46, 24, N'Var', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (47, 24, N'Yok', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (48, 25, N'Deri', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (49, 25, N'Kumaş', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (50, 26, N'Kırmızı', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (51, 26, N'Yeşil', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (52, 27, N'1', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (53, 27, N'2', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (54, 27, N'3', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (55, 28, N'Pırlanta', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (56, 28, N'Safir', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (57, 28, N'Yakut', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (58, 29, N'A', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (59, 29, N'A+', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (60, 30, N'Altın', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (61, 30, N'Gümüş', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (62, 31, N'14', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (63, 31, N'24', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (64, 31, N'900', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (65, 32, N'Piramit', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (66, 32, N'Altıgen', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (67, 18, N'Var', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (68, 18, N'Yok', 1)

INSERT [dbo].[ProductWizardLookups] ([LookupId], [WizardItemId], [LookupName], [ShowOrder]) VALUES (69, 18, N'11g', 1)

SET IDENTITY_INSERT [dbo].[ProductWizardLookups] OFF

SET IDENTITY_INSERT [dbo].[ProductWizardValues] ON 


INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (15, 184964, 2, 4, 9, 20)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (16, 184964, 2, 5, 10, 22)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (17, 184964, 2, 6, 11, 23)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (25, 184947, 2, 4, 9, 20)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (26, 184947, 2, 5, 10, 22)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (27, 184947, 2, 6, 11, 23)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (28, 184948, 2, 4, 2, 4)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (29, 184948, 2, 4, 9, 20)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (30, 184948, 2, 5, 10, 22)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (31, 184948, 2, 6, 11, 23)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (33, 184945, 2, 4, 9, 20)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (34, 184945, 2, 5, 10, 22)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (35, 184945, 2, 6, 11, 24)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (48, 216349, 2, 4, 2, 4)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (49, 216349, 2, 4, 9, 20)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (50, 216349, 2, 5, 10, 22)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (51, 216349, 2, 6, 11, 24)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (76, 365339, 2, 4, 2, 4)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (77, 365339, 2, 4, 9, 20)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (78, 365339, 2, 5, 10, 21)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (79, 412377, 8, 23, 26, 50)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (80, 412377, 8, 23, 27, 53)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (81, 412377, 8, 23, 29, 58)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (82, 412377, 8, 24, 30, 60)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (83, 412377, 8, 24, 31, 63)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (84, 412377, 8, 25, 32, 65)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (100, 784816, 2, 4, 9, 20)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (101, 784816, 2, 5, 10, 21)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (102, 784816, 2, 6, 11, 23)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (103, 784816, 2, 6, 18, 67)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (104, 788890, 2, 4, 2, 4)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (105, 788890, 2, 4, 9, 20)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (106, 788890, 2, 5, 10, 21)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (107, 788890, 2, 6, 11, 23)

INSERT [dbo].[ProductWizardValues] ([ProductWizardValueId], [ProductId], [WizardId], [WizardGroupId], [WizardItemId], [LookUpId]) VALUES (108, 788890, 2, 6, 18, 67)

SET IDENTITY_INSERT [dbo].[ProductWizardValues] OFF

SET IDENTITY_INSERT [dbo].[ProductSizeOptions] ON 


INSERT [dbo].[ProductSizeOptions] ([ProductSizeOptionId], [PortalId], [ProductSizeOptionName], [ProductSizeOptionActive], [ProductSizeOptionDescription], [ProductSize0Active], [ProductSize0Name], [ProductSize1Active], [ProductSize1Name], [ProductSize2Active], [ProductSize2Name]) VALUES (2, 0, N'Tekstil', 1, N'', 1, N'Renk', 1, N'Beden', 1, N'Drop')

INSERT [dbo].[ProductSizeOptions] ([ProductSizeOptionId], [PortalId], [ProductSizeOptionName], [ProductSizeOptionActive], [ProductSizeOptionDescription], [ProductSize0Active], [ProductSize0Name], [ProductSize1Active], [ProductSize1Name], [ProductSize2Active], [ProductSize2Name]) VALUES (3, 0, N'Corap', 1, N'<br />', 1, N'Renk', 1, N'Beden', 0, N'')

INSERT [dbo].[ProductSizeOptions] ([ProductSizeOptionId], [PortalId], [ProductSizeOptionName], [ProductSizeOptionActive], [ProductSizeOptionDescription], [ProductSize0Active], [ProductSize0Name], [ProductSize1Active], [ProductSize1Name], [ProductSize2Active], [ProductSize2Name]) VALUES (4, 0, N'Ayakkabı', 1, N'<br />', 1, N'Renk', 1, N'Numara', 0, N'')

SET IDENTITY_INSERT [dbo].[ProductSizeOptions] OFF

SET IDENTITY_INSERT [dbo].[ProductSizeOptionsValues] ON 


INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (4, 2, N'L', 1, N'0', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (5, 2, N'4', 2, N'0', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (6, 2, N'6', 2, N'0', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (7, 2, N'M', 1, N'0', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (8, 2, N'S', 1, N'0', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (9, 2, N'XL', 1, N'0', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (10, 2, N'XS', 1, N'0', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (11, 2, N'Lacivert', 0, N'/uploads/tekstilimages/2\Lacivert.jpg', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (12, 2, N'Mavi', 0, N'/uploads/tekstilimages/1/Mavi.png', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (13, 2, N'Siyah', 0, N'/uploads/tekstilimages/2\Siyah.jpg', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (14, 2, N'Gri', 0, N'/uploads/tekstilimages/1/Gri.png', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (15, 2, N'8', 2, N'0', N'')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1016, 3, N'Beyaz', 0, N'/uploads/tekstilimages/2/beyaz.jpg', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1017, 3, N'Lacivert', 0, N'/uploads/tekstilimages/2/Lacivert.jpg', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1018, 3, N'Siyah', 0, N'/uploads/tekstilimages/2/siyah.jpg', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1019, 3, N'Kahverengi', 0, N'/uploads/tekstilimages/2/kahve(1).jpg', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1020, 3, N'Bordo', 0, N'/uploads/tekstilimages/2/Bordo.jpg', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1021, 3, N'5', 1, N'', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1022, 3, N'4', 1, N'', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1023, 3, N'3', 1, N'', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1024, 3, N'2', 1, N'', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1025, 4, N'Kirmizi', 0, N'/uploads/tekstilimages/2/kirmizi.jpg', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1026, 4, N'Siyah', 0, N'/uploads/tekstilimages/2/siyah.jpg', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1027, 4, N'Gri', 0, N'/uploads/tekstilimages/2/gri.jpg', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1028, 4, N'36', 1, N'', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1029, 4, N'37', 1, N'', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1030, 4, N'38', 1, N'', N'-1')

INSERT [dbo].[ProductSizeOptionsValues] ([ProductSizeOptionsValueId], [ProductSizeOptionId], [ProductSizeOptionsValueName], [ProductSizeOptionsSize], [ProductSizeOptionsPath], [NebimRenkKodu]) VALUES (1031, 4, N'39', 1, N'', N'-1')

SET IDENTITY_INSERT [dbo].[ProductSizeOptionsValues] OFF

SET IDENTITY_INSERT [dbo].[Orders] ON 


INSERT [dbo].[Orders] ([OrderId], [PortalId], [CustomerId], [OrderDate], [ShipDate], [PaymentType], [IsPayed], [Note], [ShippingName], [ShippingPhoneNo], [ShippingMobilePhone], [ShippingCityName], [ShippingAddress], [ShippingCargoName], [BillingName], [BillingPhoneNo], [BillingMobilePhoneNo], [BillingTaxOffice], [BillingTaxNo], [BillingCityName], [BillingAddress], [ToplamTutar], [KdvDahilToplam], [ToplamKdv], [ToplamKargo], [KargoDahilToplamTutar], [ToplamIndirim], [CekIndirimi], [ToplamAgirlik], [ToplamHacim], [ToplamDesi], [BankName], [CardName], [Taksit], [BankaToplamTutar], [BankPayType], [Status], [Integreted], [ToplamPuan], [Ip], [LastChange], [Aciklama], [Aciklama2], [AnalyticsStatus], [OrderCode], [OrderPaymentCode], [CurrencyRate], [CurrencyCode], [CustomerCurrencyRate], [CustomerCurrencyCode], [TaksitRate], [ShippingCountryName], [ShippingDistrictName], [BillingCountryName], [BillingDistrictName], [MultiAdminID], [ShippingMail]) VALUES (2, 0, N'101', CAST(0x0000A0D8000AF44C AS DateTime), NULL, N'Banka Havalesi', 0, N'', N'', N'', N'', N'--Seçiniz--', N'', N'PTT', N'x', N'02123561010', N'34000', N'x', N'11111111111', N'Bilecik', N'xxx', CAST(810.0000 AS Decimal(18, 4)), CAST(955.8000 AS Decimal(18, 4)), CAST(145.8000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(965.8000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), N'Yapı Kredi', N'', 0, CAST(942.2000 AS Decimal(18, 4)), N'peşin', 0, 0, CAST(820.00 AS Decimal(18, 2)), N'127.0.0.1', CAST(0x00009F6A000AF469 AS DateTime), NULL, NULL, 1, N'AABBCCDD', NULL, CAST(1.0000 AS Decimal(10, 4)), N'TRY', CAST(1.0000 AS Decimal(10, 4)), N'TRY', CAST(0.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, N'')

INSERT [dbo].[Orders] ([OrderId], [PortalId], [CustomerId], [OrderDate], [ShipDate], [PaymentType], [IsPayed], [Note], [ShippingName], [ShippingPhoneNo], [ShippingMobilePhone], [ShippingCityName], [ShippingAddress], [ShippingCargoName], [BillingName], [BillingPhoneNo], [BillingMobilePhoneNo], [BillingTaxOffice], [BillingTaxNo], [BillingCityName], [BillingAddress], [ToplamTutar], [KdvDahilToplam], [ToplamKdv], [ToplamKargo], [KargoDahilToplamTutar], [ToplamIndirim], [CekIndirimi], [ToplamAgirlik], [ToplamHacim], [ToplamDesi], [BankName], [CardName], [Taksit], [BankaToplamTutar], [BankPayType], [Status], [Integreted], [ToplamPuan], [Ip], [LastChange], [Aciklama], [Aciklama2], [AnalyticsStatus], [OrderCode], [OrderPaymentCode], [CurrencyRate], [CurrencyCode], [CustomerCurrencyRate], [CustomerCurrencyCode], [TaksitRate], [ShippingCountryName], [ShippingDistrictName], [BillingCountryName], [BillingDistrictName], [MultiAdminID], [ShippingMail]) VALUES (1008, 0, N'-1', CAST(0x0000A268010B0929 AS DateTime), NULL, N'Banka Havalesi', 0, N'', N'', N'', N'', N'', N'', N'PTT', N'Prodex', N'0532999999999', N'', N'ÃÂ¼mraniye', N'33333333333', N'Erzurum', N'adsasdasda', CAST(94.7400 AS Decimal(18, 4)), CAST(111.8000 AS Decimal(18, 4)), CAST(17.0500 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(121.8000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Garanti Bankası', N'', 0, CAST(110.6200 AS Decimal(18, 4)), N'peşin', 0, 0, CAST(33.90 AS Decimal(18, 2)), N'78.189.38.184', CAST(0x0000A268010B0929 AS DateTime), NULL, NULL, 1, N'0707F182', N'', CAST(1.0000 AS Decimal(10, 4)), N'TRY', CAST(1.0000 AS Decimal(10, 4)), N'TRY', CAST(0.00 AS Decimal(10, 2)), N'', N'', N'Türkiye', N'Aziziye(Ilıca)', NULL, N'mesut@mesut.com')

INSERT [dbo].[Orders] ([OrderId], [PortalId], [CustomerId], [OrderDate], [ShipDate], [PaymentType], [IsPayed], [Note], [ShippingName], [ShippingPhoneNo], [ShippingMobilePhone], [ShippingCityName], [ShippingAddress], [ShippingCargoName], [BillingName], [BillingPhoneNo], [BillingMobilePhoneNo], [BillingTaxOffice], [BillingTaxNo], [BillingCityName], [BillingAddress], [ToplamTutar], [KdvDahilToplam], [ToplamKdv], [ToplamKargo], [KargoDahilToplamTutar], [ToplamIndirim], [CekIndirimi], [ToplamAgirlik], [ToplamHacim], [ToplamDesi], [BankName], [CardName], [Taksit], [BankaToplamTutar], [BankPayType], [Status], [Integreted], [ToplamPuan], [Ip], [LastChange], [Aciklama], [Aciklama2], [AnalyticsStatus], [OrderCode], [OrderPaymentCode], [CurrencyRate], [CurrencyCode], [CustomerCurrencyRate], [CustomerCurrencyCode], [TaksitRate], [ShippingCountryName], [ShippingDistrictName], [BillingCountryName], [BillingDistrictName], [MultiAdminID], [ShippingMail]) VALUES (1009, 0, N'-1', CAST(0x0000A268010DCE39 AS DateTime), NULL, N'Banka Havalesi', 0, N'', N'', N'', N'', N'', N'', N'PTT', N'promax', N'3412312312342', N'123123123123', N'aasdasdasd', N'2313123123', N'Bilecik', N'asdasdasdasd', CAST(3810.0000 AS Decimal(18, 4)), CAST(4495.8000 AS Decimal(18, 4)), CAST(685.8000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(4505.8000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'HSBC Bank', N'', 0, CAST(4175.4000 AS Decimal(18, 4)), N'peşin', 0, 0, CAST(3820.00 AS Decimal(18, 2)), N'78.189.38.184', CAST(0x0000A268010DCE39 AS DateTime), NULL, NULL, 1, N'A45BAB9E', N'', CAST(1.0000 AS Decimal(10, 4)), N'TRY', CAST(1.0000 AS Decimal(10, 4)), N'TRY', CAST(0.00 AS Decimal(10, 2)), N'', N'', N'Türkiye', N'Merkez', NULL, N'mam@mam.com')

SET IDENTITY_INSERT [dbo].[Orders] OFF

SET IDENTITY_INSERT [dbo].[OrderDetails] ON 


INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [ProductCode], [ProductName], [BirimAdi], [Carpan], [KdvRate], [SatisFiyati], [Pb1], [Rate], [BirimIndirimOrani], [CariIndirimOrani], [AlisFiyati], [APb], [AlisRate], [Quantity], [Status], [WillSendMessage], [Provider], [MarkName], [Description], [LastChange], [ProviderId], [XmlProviderId], [UserId], [AltinGram], [ProductSizeId], [ProductBarcode], [ProductSizeBarcode]) VALUES (2, 2, 109, N'0265873E-3FCC-41D1-8CF4-79CAFB706E66', N'Hp Notebook', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(820.0000 AS Decimal(18, 4)), 1, CAST(1.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(500.0000 AS Decimal(18, 4)), 1, CAST(1.0000 AS Decimal(18, 4)), 1, 0, 0, N'', N'HP', N'<div></div>', CAST(0x00009F6A000AF46C AS DateTime), 0, 0, 0, CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL)

INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [ProductCode], [ProductName], [BirimAdi], [Carpan], [KdvRate], [SatisFiyati], [Pb1], [Rate], [BirimIndirimOrani], [CariIndirimOrani], [AlisFiyati], [APb], [AlisRate], [Quantity], [Status], [WillSendMessage], [Provider], [MarkName], [Description], [LastChange], [ProviderId], [XmlProviderId], [UserId], [AltinGram], [ProductSizeId], [ProductBarcode], [ProductSizeBarcode]) VALUES (1008, 1008, 370, N'perde1', N'KRUVAZE TÜL PERDE', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(94.7429 AS Decimal(18, 4)), 1, CAST(1.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(25.4237 AS Decimal(18, 4)), 1, CAST(1.0000 AS Decimal(18, 4)), 1, 0, 0, N'', NULL, N'<div>En: 57 Boy: 57 Pike Sıklığı: 3,0 Perde Eteği: Kendi Deseni Kalsın       </div>', CAST(0x0000A268010B0929 AS DateTime), 0, 0, 0, CAST(0.0000 AS Decimal(18, 4)), 0, N'', N'')

INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [ProductCode], [ProductName], [BirimAdi], [Carpan], [KdvRate], [SatisFiyati], [Pb1], [Rate], [BirimIndirimOrani], [CariIndirimOrani], [AlisFiyati], [APb], [AlisRate], [Quantity], [Status], [WillSendMessage], [Provider], [MarkName], [Description], [LastChange], [ProviderId], [XmlProviderId], [UserId], [AltinGram], [ProductSizeId], [ProductBarcode], [ProductSizeBarcode]) VALUES (1009, 1009, 252, N'ST0281', N'Goldstore Pırlanta 0.93 ct Sırataş Yüzük', N'Adet', CAST(1.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(3820.0000 AS Decimal(18, 4)), 1, CAST(1.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(3820.0000 AS Decimal(18, 4)), 1, CAST(1.0000 AS Decimal(18, 4)), 1, 0, 0, N'', N'ATLANTIS', N'<div>Parmak Ölçüsü:9.5 Altın Rengi:18 Ayar Yeşil Altın</div>', CAST(0x0000A268010DCE39 AS DateTime), 11, 11, 0, CAST(0.0000 AS Decimal(18, 4)), 0, N'', N'')

SET IDENTITY_INSERT [dbo].[OrderDetails] OFF

SET IDENTITY_INSERT [dbo].[Authors] ON 


INSERT [dbo].[Authors] ([AuthorId], [PortalId], [AuthorName], [AuthorDetails], [IsActive]) VALUES (100, 0, N'Ahmet Haldun Terzioğlu', N'', 1)

INSERT [dbo].[Authors] ([AuthorId], [PortalId], [AuthorName], [AuthorDetails], [IsActive]) VALUES (101, 0, N'Cumhur Abay', N'', 1)

INSERT [dbo].[Authors] ([AuthorId], [PortalId], [AuthorName], [AuthorDetails], [IsActive]) VALUES (102, 0, N'Mustafa Erden', N'', 1)

INSERT [dbo].[Authors] ([AuthorId], [PortalId], [AuthorName], [AuthorDetails], [IsActive]) VALUES (103, 0, N'Nikos Svoronos', N'', 1)

INSERT [dbo].[Authors] ([AuthorId], [PortalId], [AuthorName], [AuthorDetails], [IsActive]) VALUES (104, 0, N'Mevlana', N'', 1)

INSERT [dbo].[Authors] ([AuthorId], [PortalId], [AuthorName], [AuthorDetails], [IsActive]) VALUES (105, 0, N'Garry Small', N'&amp;nbsp;', 1)

SET IDENTITY_INSERT [dbo].[Authors] OFF

SET IDENTITY_INSERT [dbo].[Campains] ON 


INSERT [dbo].[Campains] ([CampainId], [PortalId], [Name], [StartDate], [StartTime], [EndDate], [EndTime], [DiscountType], [UserFilter], [UserFilterDesc], [StockFilter], [StockFilterDesc], [MinQty], [MinPrice], [DiscountAmount], [ProductId], [ProductDesc], [ProductDiscountType], [ProductDiscountAmount], [ApplyOrder], [IsActive], [Details], [CampainType]) VALUES (12, 0, N'Hediye Ürün', CAST(0x9BA40000 AS SmallDateTime), N'00:00', CAST(0x9D230001 AS SmallDateTime), N'00:00', 2, N' Users.UserType=0 and Users.IsActive=1', N' Üye Tipi=Bireysel Durumu=Aktif', N' IsActive=1', N' Durumu=Aktif', 1, CAST(100.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 797028, N'3COM 24P 100/1000+4X1000 DUAL 5500G-EI3CR17250-91', 0, CAST(0.0000 AS Decimal(18, 4)), 1, 1, N'&amp;nbsp;', 0)

SET IDENTITY_INSERT [dbo].[Campains] OFF

SET IDENTITY_INSERT [dbo].[CurtainDetails] ON 


INSERT [dbo].[CurtainDetails] ([DetailId], [CartId], [ProductId], [RecordId], [opt1], [opt2], [opt3], [opt4], [opt5], [opt6], [opt7], [opt8], [opt9], [opt10]) VALUES (1, N'907dd7a3-7347-44da-af3c-9f63871ee157', 370, 0, N'10', N'10', N'mavı', N'10', N' ', N' ', N' ', N' ', N' ', N' ')

INSERT [dbo].[CurtainDetails] ([DetailId], [CartId], [ProductId], [RecordId], [opt1], [opt2], [opt3], [opt4], [opt5], [opt6], [opt7], [opt8], [opt9], [opt10]) VALUES (2, N'907dd7a3-7347-44da-af3c-9f63871ee157', 370, 0, N'57', N'57', N'3,0', N'Kendi Deseni Kalsın', N' ', N' ', N' ', N' ', N' ', N' ')

SET IDENTITY_INSERT [dbo].[CurtainDetails] OFF

SET IDENTITY_INSERT [dbo].[CurtainFormule] ON 


INSERT [dbo].[CurtainFormule] ([CurtainFormuleID], [CurtainID], [CurtainFormuleName], [CurtainFormule], [CutainFormuleValue]) VALUES (1, 1, N'deneme', N'a + d + t ', N'')

INSERT [dbo].[CurtainFormule] ([CurtainFormuleID], [CurtainID], [CurtainFormuleName], [CurtainFormule], [CutainFormuleValue]) VALUES (2, 2, N'formül', N'a * b + c * t ', N'')

INSERT [dbo].[CurtainFormule] ([CurtainFormuleID], [CurtainID], [CurtainFormuleName], [CurtainFormule], [CutainFormuleValue]) VALUES (3, 4, N'formul', N'a * b + t ', N'')

SET IDENTITY_INSERT [dbo].[CurtainFormule] OFF

SET IDENTITY_INSERT [dbo].[CurtainSizeOpt1] ON 


INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (1, 1, 10,  100 , 10)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (2, 1, 20,  200 , 20)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (3, 2, 50, 0, 2)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (4, 2, 51, 0, 2)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (5, 2, 52, 0, 2)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (6, 2, 53, 0, 2)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (7, 2, 54, 0, 2)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (8, 2, 55, 0, 2)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (9, 2, 56, 0, 2)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (10, 2,  57 , 0, 2)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (11, 2,  58 , 0, 2)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (12, 2,  59 , 0, 2)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (13, 2,  60 , 0, 3)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (14, 2,  70 , 0, 4)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (15, 2,  80 , 0, 5)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (16, 2,  90 , 0, 5)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (17, 2,  100 , 0, 5)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (18, 2,  110 , 0, 6)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (19, 2,  120 , 0, 6)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (20, 2,  130 , 0, 6)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (21, 2,  140 , 0, 10)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (22, 4,  30 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (23, 4,  31 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (24, 4,  32 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (25, 4,  33 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (26, 4,  34 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (27, 4,  35 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (28, 4,  36 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (29, 4,  37 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (30, 4,  38 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (31, 4,  39 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (32, 4,  40 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (33, 4,  41 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (34, 4,  42 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (35, 4,  43 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (36, 4,  44 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (37, 4,  45 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (38, 4,  46 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (39, 4,  47 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (40, 4,  48 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (41, 4,  49 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (42, 4,  50 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (43, 4,  60 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (44, 4,  70 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (45, 4,  80 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (46, 4,  90 , 0, 0)

INSERT [dbo].[CurtainSizeOpt1] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (47, 4,  100 , 0, 0)

SET IDENTITY_INSERT [dbo].[CurtainSizeOpt1] OFF

SET IDENTITY_INSERT [dbo].[CurtainSizeOpt2] ON 


INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (1, 1, 10, 100, 15)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (2, 1, 20, 200, 30)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (3, 2, 50, 0, 2)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (4, 2, 51, 0, 2)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (5, 2, 52, 0, 2)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (6, 2, 53, 0, 2)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (7, 2, 54, 0, 2)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (8, 2, 55, 0, 2)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (9, 2, 56, 0, 2)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (10, 2, 57, 0, 2)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (11, 2, 58, 0, 2)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (12, 2, 59, 0, 2)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (13, 2, 60, 0, 2)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (14, 2, 70, 0, 3)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (15, 2, 80, 0, 3)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (16, 2, 90, 0, 4)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (17, 2, 100, 0, 5)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (18, 2, 110, 0, 5)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (19, 2, 120, 0, 5)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (20, 2, 130, 0, 5)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (21, 4, 30, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (22, 4, 31, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (23, 4, 32, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (24, 4, 33, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (25, 4, 34, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (26, 4, 35, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (27, 4, 36, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (28, 4, 37, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (29, 4, 38, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (30, 4, 39, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (31, 4, 40, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (32, 4, 41, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (33, 4, 42, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (34, 4, 43, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (35, 4, 44, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (36, 4, 45, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (37, 4, 46, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (38, 4, 47, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (39, 4, 48, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (40, 4, 49, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (41, 4, 50, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (42, 4, 60, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (43, 4, 70, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (44, 4, 80, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (45, 4, 90, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (46, 4, 100, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (47, 4, 110, 0, 0)

INSERT [dbo].[CurtainSizeOpt2] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (48, 4, 120, 0, 0)

SET IDENTITY_INSERT [dbo].[CurtainSizeOpt2] OFF

SET IDENTITY_INSERT [dbo].[CurtainSizeOpt3] ON 


INSERT [dbo].[CurtainSizeOpt3] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (1, 1, 1, 0, 0)

INSERT [dbo].[CurtainSizeOpt3] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (2, 1, 1.5, 0, 0)

INSERT [dbo].[CurtainSizeOpt3] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (3, 2, 2.5, 0, 2.5)

INSERT [dbo].[CurtainSizeOpt3] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (4, 2, 2.75, 0, 2.75)

INSERT [dbo].[CurtainSizeOpt3] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (5, 2, 3.0, 0, 3)

SET IDENTITY_INSERT [dbo].[CurtainSizeOpt3] OFF

SET IDENTITY_INSERT [dbo].[CurtainSizeOpt4] ON 


INSERT [dbo].[CurtainSizeOpt4] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (1, 1, 10, 100, 10)

INSERT [dbo].[CurtainSizeOpt4] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (2, 1, 20, 200, 20)

INSERT [dbo].[CurtainSizeOpt4] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (3, 2, 25, 0, 0)

INSERT [dbo].[CurtainSizeOpt4] ([CurtainSizeID], [CurtainID], [CurtainSize], [CurtainRoundSize], [CurtainSizeFactor]) VALUES (4, 2, 30, 0, 0)

SET IDENTITY_INSERT [dbo].[CurtainSizeOpt4] OFF

SET IDENTITY_INSERT [dbo].[CurtainUnitOption] ON 


INSERT [dbo].[CurtainUnitOption] ([CurtainID], [CurtainName], [CurtainActive], [CurtainUnit1], [CurtainUnit2], [CurtainUnit3], [CurtainUnit4], [CurtainUnit5], [CurtainUnit6], [CurtainUnit7], [CurtainUnit8], [CurtainUnit9], [CurtainUnit10]) VALUES (2, N'Pileli Perde', 1, N'En', N'Boy', N'Pike Sıklığı', N'Perde Eteği', N'', N'', N'', N'', N'', N'')

INSERT [dbo].[CurtainUnitOption] ([CurtainID], [CurtainName], [CurtainActive], [CurtainUnit1], [CurtainUnit2], [CurtainUnit3], [CurtainUnit4], [CurtainUnit5], [CurtainUnit6], [CurtainUnit7], [CurtainUnit8], [CurtainUnit9], [CurtainUnit10]) VALUES (4, N'Zebra Perde', 1, N'En', N'Boy', N'', N'', N'', N'', N'', N'', N'', N'')

SET IDENTITY_INSERT [dbo].[CurtainUnitOption] OFF

SET IDENTITY_INSERT [dbo].[FlowerCartDetail] ON 


INSERT [dbo].[FlowerCartDetail] ([FlowerCartId], [DetailId], [CartId]) VALUES (1, 0, 1)

INSERT [dbo].[FlowerCartDetail] ([FlowerCartId], [DetailId], [CartId]) VALUES (2, 4, 1)

SET IDENTITY_INSERT [dbo].[FlowerCartDetail] OFF

SET IDENTITY_INSERT [dbo].[FlowerCarts] ON 


INSERT [dbo].[FlowerCarts] ([ImageId], [Description], [Path], [Price]) VALUES (3, N'Aşık Kediler Love You', N'0c8f4c4a-aae8-4895-998f-2554a33c0a1f.jpg', CAST(5.00 AS Decimal(15, 2)))

INSERT [dbo].[FlowerCarts] ([ImageId], [Description], [Path], [Price]) VALUES (4, N'Doğum Günün Kutlu Olsun', N'1d6bf02f-d0f9-459f-b7d6-06ee289df6c0.jpg', CAST(5.00 AS Decimal(15, 2)))

INSERT [dbo].[FlowerCarts] ([ImageId], [Description], [Path], [Price]) VALUES (6, N'Teşekkürler', N'ffa312ad-1d9c-47f5-b96a-bb9c496ac892.jpg', CAST(5.00 AS Decimal(15, 2)))

INSERT [dbo].[FlowerCarts] ([ImageId], [Description], [Path], [Price]) VALUES (7, N'Hoş Geldin Bebek Erkek', N'd8ede5ec-ff20-49c4-9c30-8e6df615fc65.jpg', CAST(5.00 AS Decimal(15, 2)))

INSERT [dbo].[FlowerCarts] ([ImageId], [Description], [Path], [Price]) VALUES (8, N'Tebrikler', N'1756432b-b073-4e47-b971-64ace68efe9a.jpg', CAST(5.00 AS Decimal(15, 2)))

INSERT [dbo].[FlowerCarts] ([ImageId], [Description], [Path], [Price]) VALUES (9, N'Teşekkürler', N'33780e79-0135-4550-81a1-5bd5e91fdf31.jpg', CAST(5.00 AS Decimal(15, 2)))

INSERT [dbo].[FlowerCarts] ([ImageId], [Description], [Path], [Price]) VALUES (10, N'Mutlu Yıllar  Happy Birthday', N'a9a9280b-2055-489e-9a03-275ff3a100cb.jpg', CAST(5.00 AS Decimal(15, 2)))

INSERT [dbo].[FlowerCarts] ([ImageId], [Description], [Path], [Price]) VALUES (5, N'Kalplerimiz Bir Love', N'9bdd6329-f1b8-45ec-b923-8e5b47971027.jpg', CAST(5.00 AS Decimal(15, 2)))

SET IDENTITY_INSERT [dbo].[FlowerCarts] OFF

SET IDENTITY_INSERT [dbo].[FlowerCause] ON 


INSERT [dbo].[FlowerCause] ([causeID], [causeName]) VALUES (1, N'Seni Seviyorum')

INSERT [dbo].[FlowerCause] ([causeID], [causeName]) VALUES (2, N'Anneye')

INSERT [dbo].[FlowerCause] ([causeID], [causeName]) VALUES (3, N'Babaya')

INSERT [dbo].[FlowerCause] ([causeID], [causeName]) VALUES (4, N'Doğum Günü')

INSERT [dbo].[FlowerCause] ([causeID], [causeName]) VALUES (5, N'Yıldönümü')

INSERT [dbo].[FlowerCause] ([causeID], [causeName]) VALUES (6, N'Yeni İş')

INSERT [dbo].[FlowerCause] ([causeID], [causeName]) VALUES (7, N'Özür Dilerim')

INSERT [dbo].[FlowerCause] ([causeID], [causeName]) VALUES (8, N'Yeni Bebek')

INSERT [dbo].[FlowerCause] ([causeID], [causeName]) VALUES (9, N'İçimden Geldi')

INSERT [dbo].[FlowerCause] ([causeID], [causeName]) VALUES (10, N'Açılış / Tören')

INSERT [dbo].[FlowerCause] ([causeID], [causeName]) VALUES (11, N'Söz / Nişan / Düğün')

SET IDENTITY_INSERT [dbo].[FlowerCause] OFF

SET IDENTITY_INSERT [dbo].[FlowerOrderDetail] ON 


INSERT [dbo].[FlowerOrderDetail] ([OrderDetailId], [DetailId], [FlowerDetailId], [OrderId], [ProductId], [CityId], [DistrictId], [Date], [Hour], [RecieverName], [RecieverPlace], [TelNo], [CauseId], [Adress], [CartName], [CartMessage], [IsNameActive], [RecordId]) VALUES (1, 1, 7, 7, 281, 15, 180, N'29/10/2013', N'--İstediğiniz Saat Aralığı--', N'gews', 1, N'4325245234', 0, N'rwerwerwrwr', N'qweqe', N'eqeqweqeqeq', 0, 0)

INSERT [dbo].[FlowerOrderDetail] ([OrderDetailId], [DetailId], [FlowerDetailId], [OrderId], [ProductId], [CityId], [DistrictId], [Date], [Hour], [RecieverName], [RecieverPlace], [TelNo], [CauseId], [Adress], [CartName], [CartMessage], [IsNameActive], [RecordId]) VALUES (2, 4, 9, 9, 281, 1, 1, N'30/10/2013', N'--İstediğiniz Saat Aralığı--', N'dadasda', 0, N'sdasdsadas', 0, N'sadsad', N'adasd', N'sdfdsf', 0, 4)

SET IDENTITY_INSERT [dbo].[FlowerOrderDetail] OFF

SET IDENTITY_INSERT [dbo].[FlowerPlace] ON 


INSERT [dbo].[FlowerPlace] ([placeID], [placeName]) VALUES (4, N'Okul')

INSERT [dbo].[FlowerPlace] ([placeID], [placeName]) VALUES (2, N'Ev')

INSERT [dbo].[FlowerPlace] ([placeID], [placeName]) VALUES (3, N'İşyeri / Şirket')

INSERT [dbo].[FlowerPlace] ([placeID], [placeName]) VALUES (5, N'Hastane')

INSERT [dbo].[FlowerPlace] ([placeID], [placeName]) VALUES (6, N'Cenaze')

INSERT [dbo].[FlowerPlace] ([placeID], [placeName]) VALUES (7, N'Diğer')

SET IDENTITY_INSERT [dbo].[FlowerPlace] OFF

SET IDENTITY_INSERT [dbo].[FlowerTimes] ON 


INSERT [dbo].[FlowerTimes] ([TimeID], [Time]) VALUES (1, N'09:00 - 12:00')

INSERT [dbo].[FlowerTimes] ([TimeID], [Time]) VALUES (2, N'12:00 - 16:00')

INSERT [dbo].[FlowerTimes] ([TimeID], [Time]) VALUES (5, N'16:00 - 19:00')

INSERT [dbo].[FlowerTimes] ([TimeID], [Time]) VALUES (4, N'19:00 - 22:00')

SET IDENTITY_INSERT [dbo].[FlowerTimes] OFF

SET IDENTITY_INSERT [dbo].[FoodPlace] ON 


INSERT [dbo].[FoodPlace] ([placeID], [placeName], [mincartlimit]) VALUES (2, N'Üsküdar', CAST(10.00 AS Decimal(15, 2)))

INSERT [dbo].[FoodPlace] ([placeID], [placeName], [mincartlimit]) VALUES (3, N'Ümraniye', CAST(20.00 AS Decimal(15, 2)))

INSERT [dbo].[FoodPlace] ([placeID], [placeName], [mincartlimit]) VALUES (4, N'Libadiye', CAST(15.00 AS Decimal(15, 2)))

INSERT [dbo].[FoodPlace] ([placeID], [placeName], [mincartlimit]) VALUES (5, N'Kısıklı', CAST(25.00 AS Decimal(15, 2)))

INSERT [dbo].[FoodPlace] ([placeID], [placeName], [mincartlimit]) VALUES (6, N'Kadıköy', CAST(50.00 AS Decimal(15, 2)))

INSERT [dbo].[FoodPlace] ([placeID], [placeName], [mincartlimit]) VALUES (7, N'SultanBeyliği', CAST(50.00 AS Decimal(15, 2)))

INSERT [dbo].[FoodPlace] ([placeID], [placeName], [mincartlimit]) VALUES (8, N'Beylerbeyi', CAST(20.00 AS Decimal(15, 2)))

SET IDENTITY_INSERT [dbo].[FoodPlace] OFF

SET IDENTITY_INSERT [dbo].[OrderStatus] ON 


INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (0, -1, N'Beklemede')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-1, -1, N'İptal')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-2, -1, N'Kısmen Gönderildi')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-3, -1, N'Gönderildi')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-4, -1, N'Ödendi')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-5, -1, N'Onaylandı')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-6, -1, N'Onaylanmadı')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-7, 0, N'İade Talebi İnceleniyor')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-8, 0, N'İade Onaylandı')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-9, 0, N'İade Onaylanmadı')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-10, 0, N'Değişim Talebi İnceleniyor')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-11, 0, N'Değişim Talebi Onaylandı')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (-12, 0, N'Değişim Talebi Onaylanmadı')

INSERT [dbo].[OrderStatus] ([StatusId], [PortalId], [StatusName]) VALUES (7, 0, N'Tedarik Edilemiyor')

SET IDENTITY_INSERT [dbo].[OrderStatus] OFF


SET IDENTITY_INSERT [dbo].[BookedStatus] ON 

INSERT [dbo].[BookedStatus] ([StatusId], [StatusName], [IsActive]) VALUES (-2, N'Siparişe Dönüştürüldü', 1)

INSERT [dbo].[BookedStatus] ([StatusId], [StatusName], [IsActive]) VALUES (-1, N'Rezervasyon Tarihi Geçti', 1)

INSERT [dbo].[BookedStatus] ([StatusId], [StatusName], [IsActive]) VALUES (0, N'Beklemede', 1)

SET IDENTITY_INSERT [dbo].[BookedStatus] OFF


SET IDENTITY_INSERT [dbo].[CancelOrderRequest] ON 

INSERT [dbo].[CancelOrderRequest] ([RequestId], [RequestName], [IsActive]) VALUES (-2, N'Para İadesi', 1)

INSERT [dbo].[CancelOrderRequest] ([RequestId], [RequestName], [IsActive]) VALUES (-1, N'Hediye Çeki', 1)

SET IDENTITY_INSERT [dbo].[CancelOrderRequest] OFF


SET IDENTITY_INSERT [dbo].[Points] ON 


INSERT [dbo].[Points] ([PointId], [UserId], [PortalId], [PointRef], [PointType], [TotalPoints], [IsUsed], [IsActive], [CreatedDate], [UsedDate]) VALUES (2, 109, N'0         ', 3, 0, CAST(125.50 AS Decimal(18, 2)), 0, 0, CAST(0xA265027F AS SmallDateTime), NULL)

INSERT [dbo].[Points] ([PointId], [UserId], [PortalId], [PointRef], [PointType], [TotalPoints], [IsUsed], [IsActive], [CreatedDate], [UsedDate]) VALUES (3, 109, N'0         ', 4, 0, CAST(125.50 AS Decimal(18, 2)), 0, 0, CAST(0xA2650281 AS SmallDateTime), NULL)

INSERT [dbo].[Points] ([PointId], [UserId], [PortalId], [PointRef], [PointType], [TotalPoints], [IsUsed], [IsActive], [CreatedDate], [UsedDate]) VALUES (4, 101, N'0         ', 5, 0, CAST(85.00 AS Decimal(18, 2)), 0, 0, CAST(0xA265038F AS SmallDateTime), NULL)

INSERT [dbo].[Points] ([PointId], [UserId], [PortalId], [PointRef], [PointType], [TotalPoints], [IsUsed], [IsActive], [CreatedDate], [UsedDate]) VALUES (5, 101, N'0         ', 6, 0, CAST(376.50 AS Decimal(18, 2)), 0, 0, CAST(0xA2650395 AS SmallDateTime), NULL)

INSERT [dbo].[Points] ([PointId], [UserId], [PortalId], [PointRef], [PointType], [TotalPoints], [IsUsed], [IsActive], [CreatedDate], [UsedDate]) VALUES (6, 109, N'0         ', 8, 0, CAST(160.00 AS Decimal(18, 2)), 0, 0, CAST(0xA26702AE AS SmallDateTime), NULL)

INSERT [dbo].[Points] ([PointId], [UserId], [PortalId], [PointRef], [PointType], [TotalPoints], [IsUsed], [IsActive], [CreatedDate], [UsedDate]) VALUES (7, 101, N'0         ', 9, 0, CAST(55.20 AS Decimal(18, 2)), 0, 0, CAST(0xA2670381 AS SmallDateTime), NULL)

INSERT [dbo].[Points] ([PointId], [UserId], [PortalId], [PointRef], [PointType], [TotalPoints], [IsUsed], [IsActive], [CreatedDate], [UsedDate]) VALUES (8, 101, N'0         ', 10, 0, CAST(33.90 AS Decimal(18, 2)), 0, 0, CAST(0xA2670382 AS SmallDateTime), NULL)

SET IDENTITY_INSERT [dbo].[Points] OFF

SET IDENTITY_INSERT [dbo].[posterframes] ON 


INSERT [dbo].[posterframes] ([ID], [PortalId], [FrameCode], [Type], [Material], [Width], [Thickness], [PricePerCm], [FrameProperty], [ShowOrder], [IsActive]) VALUES (1, 0, N'01', N'Syah', N'Ahşap', N'2,8', N'1,5', CAST(0.50 AS Decimal(18, 2)), N'Ahsap B Serisi', 0, 1)

SET IDENTITY_INSERT [dbo].[posterframes] OFF

SET IDENTITY_INSERT [dbo].[posterpaspartu] ON 


INSERT [dbo].[posterpaspartu] ([ID], [PortalId], [PaspartuCode], [PaspartuColor], [PasspartuSize], [Price], [ShowOrder], [IsActive]) VALUES (1, 0, N'Yeşil', N'0CB700', 1, 0.5, 0, 1)

INSERT [dbo].[posterpaspartu] ([ID], [PortalId], [PaspartuCode], [PaspartuColor], [PasspartuSize], [Price], [ShowOrder], [IsActive]) VALUES (15, 5, N'Kırmızı', N'666666', 3, 3, 1, 1)

INSERT [dbo].[posterpaspartu] ([ID], [PortalId], [PaspartuCode], [PaspartuColor], [PasspartuSize], [Price], [ShowOrder], [IsActive]) VALUES (16, 0, N'Kırmızı', N'FF2121', 1, 2, 1, 1)

INSERT [dbo].[posterpaspartu] ([ID], [PortalId], [PaspartuCode], [PaspartuColor], [PasspartuSize], [Price], [ShowOrder], [IsActive]) VALUES (17, 0, N'Sarı', N'F8FF29', 1, 3, 1, 1)

INSERT [dbo].[posterpaspartu] ([ID], [PortalId], [PaspartuCode], [PaspartuColor], [PasspartuSize], [Price], [ShowOrder], [IsActive]) VALUES (18, 0, N'Pembe', N'FF52CB', 1, 1.5, 1, 1)

INSERT [dbo].[posterpaspartu] ([ID], [PortalId], [PaspartuCode], [PaspartuColor], [PasspartuSize], [Price], [ShowOrder], [IsActive]) VALUES (19, 0, N'Mavi', N'2432FF', 1, 1, 1, 1)

INSERT [dbo].[posterpaspartu] ([ID], [PortalId], [PaspartuCode], [PaspartuColor], [PasspartuSize], [Price], [ShowOrder], [IsActive]) VALUES (20, 0, N'Lacivert', N'082082', 1, 1, 1, 1)

INSERT [dbo].[posterpaspartu] ([ID], [PortalId], [PaspartuCode], [PaspartuColor], [PasspartuSize], [Price], [ShowOrder], [IsActive]) VALUES (21, 0, N'Lila', N'957AFF', 1, 0.75, 1, 1)

INSERT [dbo].[posterpaspartu] ([ID], [PortalId], [PaspartuCode], [PaspartuColor], [PasspartuSize], [Price], [ShowOrder], [IsActive]) VALUES (22, 0, N'Turuncu', N'FF9E1F', 1, 2.05, 1, 1)

SET IDENTITY_INSERT [dbo].[posterpaspartu] OFF

SET IDENTITY_INSERT [dbo].[PosterSettings] ON 


INSERT [dbo].[PosterSettings] ([setId], [glassPrice], [workPrice]) VALUES (1, CAST(1.0000 AS Decimal(18, 4)), CAST(1.0000 AS Decimal(18, 4)))

SET IDENTITY_INSERT [dbo].[PosterSettings] OFF

INSERT [dbo].[Product3dPictures] ([PortalId], [ProductId], [Url]) VALUES (0, 304, N'/uploads/Product3dPictures/canta_5274-2_orange.swf')

SET IDENTITY_INSERT [dbo].[ProductMarks] ON 


INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (100, 0, N'HP', N'', N'&amp;nbsp;', N'&amp;nbsp;', 1, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (103, 0, N'APPLE', N'', N'&amp;nbsp;', N'&amp;nbsp;', 1, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (104, 0, N'SİEMENS', N'', N'&amp;nbsp;', N'&amp;nbsp;', 1, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (105, 0, N'SONY', N'', N'&amp;nbsp;', N'&amp;nbsp;', 1, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (106, 0, N'SAMSUNG', N'', N'&amp;nbsp;', N'&amp;nbsp;', 1, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (107, 0, N'FUJİFİLM', N'', N'&amp;nbsp;', N'&amp;nbsp;', 1, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (108, 0, N'CHRONE', N'', N'&amp;nbsp;', N'&amp;nbsp;', 1, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (109, 0, N'POLAND', N'', N'&amp;nbsp;', N'&amp;nbsp;', 1, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (110, 0, N'Bosch', N'', N'&amp;nbsp;', N'&amp;nbsp;', 1, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (111, 0, N'ATLANTIS', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (112, 0, N'Markabebe', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (113, 0, N'Palmera', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (114, 0, N'Aysan', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (115, 0, N'ARÇELİK', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (116, 0, N'Philips', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (117, 0, N'Essenso', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (118, 0, N'ASUS', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (119, 0, N'LENOVA', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (120, 0, N'Bridgestone', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (121, 0, N'ÇİÇEKSEPETİ', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (122, 0, N'ARZUM', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (123, 0, N'Dibanyo', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (124, 0, N'ANKARA MOBİLYA', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (125, 0, N'Mcdonalds', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (127, 0, N'ELLE', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (128, 0, N'KIĞILI', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (129, 0, N'Hakan Çanta', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (135, 0, N'Versace', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (136, 0, N'Continantel', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[ProductMarks] ([MarkId], [PortalId], [MarKName], [Image], [Details], [Details2], [IsActive], [Title], [Desc], [Keywords], [SearchKeywords], [CodeA], [CodeP], [Code0], [Code1], [Code2], [Code3], [Code4], [Code5]) VALUES (138, 0, N'MERVE OPTİK', NULL, N'', NULL, 1, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

SET IDENTITY_INSERT [dbo].[ProductMarks] OFF

SET IDENTITY_INSERT [dbo].[ProductPackage] ON 


INSERT [dbo].[ProductPackage] ([PackageId], [PortalId], [IsActive], [Path]) VALUES (1, 0, 1, N'gift1.jpg')

INSERT [dbo].[ProductPackage] ([PackageId], [PortalId], [IsActive], [Path]) VALUES (2, 0, 1, N'gift2.jpg')

INSERT [dbo].[ProductPackage] ([PackageId], [PortalId], [IsActive], [Path]) VALUES (5, 5, 1, N'ferit.jpg')

SET IDENTITY_INSERT [dbo].[ProductPackage] OFF

SET IDENTITY_INSERT [dbo].[Publishers] ON 


INSERT [dbo].[Publishers] ([PublisherId], [PublisherName], [PublisherDetails], [PortalId], [IsActive]) VALUES (100, N'Parıltı Yayıncılık', N'', 0, 1)

INSERT [dbo].[Publishers] ([PublisherId], [PublisherName], [PublisherDetails], [PortalId], [IsActive]) VALUES (101, N'Kök Yayıncılık', N'', 0, 1)

INSERT [dbo].[Publishers] ([PublisherId], [PublisherName], [PublisherDetails], [PortalId], [IsActive]) VALUES (102, N'Mektup Yayınları', N'', 0, 1)

INSERT [dbo].[Publishers] ([PublisherId], [PublisherName], [PublisherDetails], [PortalId], [IsActive]) VALUES (103, N'Devlet Kitapları', N'', 0, 1)

INSERT [dbo].[Publishers] ([PublisherId], [PublisherName], [PublisherDetails], [PortalId], [IsActive]) VALUES (104, N'NTV Yayınları', N'&amp;nbsp;', 0, 1)

SET IDENTITY_INSERT [dbo].[Publishers] OFF

SET IDENTITY_INSERT [dbo].[QuestionLookup] ON


INSERT [dbo].[QuestionLookup] ([LookupId], [QuestionMasterId], [DisplayValue], [IsSelected], [IsMailContainer], [SelectedValue]) VALUES (1, 4, N'Müşteri Hizmetleri', 0, 0, N'')

INSERT [dbo].[QuestionLookup] ([LookupId], [QuestionMasterId], [DisplayValue], [IsSelected], [IsMailContainer], [SelectedValue]) VALUES (2, 4, N'Muhasebe', 0, 0, N'')

INSERT [dbo].[QuestionLookup] ([LookupId], [QuestionMasterId], [DisplayValue], [IsSelected], [IsMailContainer], [SelectedValue]) VALUES (3, 4, N'Sipariş', 0, 0, N'')

INSERT [dbo].[QuestionLookup] ([LookupId], [QuestionMasterId], [DisplayValue], [IsSelected], [IsMailContainer], [SelectedValue]) VALUES (4, 4, N'Diğer', 0, 0, N'')

SET IDENTITY_INSERT [dbo].[QuestionLookup] OFF

SET IDENTITY_INSERT [dbo].[UserCode1] ON


INSERT [dbo].[UserCode1] ([CodeId], [CodeName], [PortalId]) VALUES (1, N'Bayi', 0)

SET IDENTITY_INSERT [dbo].[UserCode1] OFF

SET IDENTITY_INSERT [dbo].[UserCode2] ON


INSERT [dbo].[UserCode2] ([CodeId], [CodeName], [PortalId]) VALUES (1, N'VİP', 0)

SET IDENTITY_INSERT [dbo].[UserCode2] OFF

INSERT INTO [dbo].CategoryTopProducts (ModuleId, CatId, ShowOnlyMainPage) VALUES (281, 129, 0)



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