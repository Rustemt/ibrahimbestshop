<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RpUcretBordrosu.aspx.vb" Inherits="ASPNetPortal.RpUcretBordrosu" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="javascript" src="pagenav.js"> </script>
		<LINK href="../tportal.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body bottomMargin="0" leftMargin="0" topMargin="0" rightMargin="0">
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Page1" runat="server">
				<TABLE id="Table3" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD>
							<DIV id="DIV1" style="WIDTH: 1123px; POSITION: relative; HEIGHT: 132px" runat="server"
								ms_positioning="GridLayout">
								<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 352px; POSITION: absolute; TOP: 0px" runat="server"
									Font-Bold="True" Font-Size="14pt" Font-Names="Arial" Height="30px">HÝZMET ERBABI ÜCRET BORDROSU</asp:Label>
								<asp:Label id="lblDonem" style="Z-INDEX: 102; LEFT: 894px; POSITION: absolute; TOP: 8px" runat="server"
									Font-Bold="True" Font-Size="12pt" Font-Names="Arial" Width="102px"></asp:Label>
								<DIV class="RIStyle" style="DISPLAY: inline; Z-INDEX: 103; LEFT: 8px; WIDTH: 84px; POSITION: absolute; TOP: 80px; HEIGHT: 16px"
									ms_positioning="FlowLayout">Ýþyeri Ünvaný</DIV>
								<DIV id="lblKisaad" style="DISPLAY: inline; FONT-WEIGHT: bold; FONT-SIZE: 12pt; Z-INDEX: 104; LEFT: 6px; WIDTH: 196px; POSITION: absolute; TOP: 3px; HEIGHT: 19px"
									runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV class="RIStyle" id="lblAdres" style="DISPLAY: inline; Z-INDEX: 105; LEFT: 6px; WIDTH: 282px; POSITION: absolute; TOP: 28px; HEIGHT: 29px"
									runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV class="RIStyle" id="lblIlce" style="DISPLAY: inline; Z-INDEX: 106; LEFT: 6px; WIDTH: 129px; POSITION: absolute; TOP: 60px; HEIGHT: 15px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV class="RIStyle" id="AD1" style="DISPLAY: inline; Z-INDEX: 107; LEFT: 126px; WIDTH: 315px; POSITION: absolute; TOP: 80px; HEIGHT: 15px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV class="RIStyle" id="Ad2" style="DISPLAY: inline; Z-INDEX: 108; LEFT: 124px; WIDTH: 315px; POSITION: absolute; TOP: 96px; HEIGHT: 15px"
									align="left" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV class="RIStyle" style="DISPLAY: inline; Z-INDEX: 109; LEFT: 8px; WIDTH: 92px; POSITION: absolute; TOP: 112px; HEIGHT: 16px"
									ms_positioning="FlowLayout">SSK Ýþyeri Sicil No</DIV>
								<DIV class="RIStyle" id="SSKIsySicNo" style="DISPLAY: inline; Z-INDEX: 110; LEFT: 124px; WIDTH: 176px; POSITION: absolute; TOP: 112px; HEIGHT: 15px"
									runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV class="RIStyle" id="vd" style="DISPLAY: inline; Z-INDEX: 111; LEFT: 804px; WIDTH: 176px; POSITION: absolute; TOP: 88px; HEIGHT: 15px"
									runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV class="RIStyle" style="DISPLAY: inline; Z-INDEX: 112; LEFT: 740px; WIDTH: 62px; POSITION: absolute; TOP: 88px; HEIGHT: 16px"
									ms_positioning="FlowLayout">Vergi Dairesi</DIV>
								<DIV class="RIStyle" id="VNo" style="DISPLAY: inline; Z-INDEX: 113; LEFT: 804px; WIDTH: 176px; POSITION: absolute; TOP: 104px; HEIGHT: 15px"
									runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV class="RIStyle" style="DISPLAY: inline; Z-INDEX: 114; LEFT: 740px; WIDTH: 62px; POSITION: absolute; TOP: 104px; HEIGHT: 16px"
									ms_positioning="FlowLayout">Vergi No</DIV>
							</DIV>
						</TD>
					</TR>
					<TR>
						<TD colSpan="3">
							<asp:DataList id="DataGrid1" runat="server" Height="118px" Width="392px">
								<HeaderTemplate>
									<DIV class="RIStyle" id="DIV2" style="WIDTH: 970px; BORDER-BOTTOM: black 1px solid; POSITION: relative; HEIGHT: 27px"
										align="center" runat="server" ms_positioning="GridLayout">
										<DIV id="SNo" style="DISPLAY: inline; Z-INDEX: 102; LEFT: 2px; WIDTH: 24px; POSITION: absolute; TOP: 0px; HEIGHT: 15px"
											align="center" runat="server" ms_positioning="FlowLayout">Sýra No</DIV>
										<DIV class="RIStyle" id="ad" style="LEFT: 29px; WIDTH: 88px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Ad&nbsp; Soyad</DIV>
										<DIV class="RIStyle" id="sskno" style="Z-INDEX: 69; LEFT: 120px; WIDTH: 68px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">SSK Sicil No</DIV>
										<DIV class="RIStyle" id="TcKimNo" style="Z-INDEX: 69; LEFT: 191px; WIDTH: 57px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">TC Kimlik No</DIV>
										<DIV class="RIStyle" id="Text20" style="Z-INDEX: 69; LEFT: 250px; WIDTH: 19px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 25px; BORDER-BOTTOM-STYLE: solid"
											align="center">Nor. Gün</DIV>
										<DIV class="RIStyle" id="NorGun" style="Z-INDEX: 69; LEFT: 269px; WIDTH: 24px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 25px; BORDER-BOTTOM-STYLE: solid"
											align="center">Haf. Sonu</DIV>
										<DIV class="RIStyle" id="BayTat" style="Z-INDEX: 69; LEFT: 296px; WIDTH: 24px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 25px; BORDER-BOTTOM-STYLE: solid"
											align="center">Bay. Tatil.</DIV>
										<DIV class="RIStyle" id="YilIzn" style="Z-INDEX: 69; LEFT: 344px; WIDTH: 19px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Nrm</DIV>
										<DIV class="RIStyle" id="fazCal" style="Z-INDEX: 69; LEFT: 368px; WIDTH: 24px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">H.Sn.</DIV>
										<DIV class="RIStyle" id="FazCalHs" style="Z-INDEX: 69; LEFT: 400px; WIDTH: 26px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Byr</DIV>
										<DIV class="RIStyle" id="FazCalB" style="Z-INDEX: 69; LEFT: 320px; WIDTH: 20px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 26px; BORDER-BOTTOM-STYLE: solid"
											align="center">Yýllýk Ýzin</DIV>
										<DIV class="RIStyle" id="TopGun" style="Z-INDEX: 69; LEFT: 432px; WIDTH: 24px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 2px; HEIGHT: 23px; BORDER-BOTTOM-STYLE: solid"
											align="center">Top Gün</DIV>
										<DIV class="RIStyle" id="Brut" style="Z-INDEX: 69; LEFT: 458px; WIDTH: 71px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Brüt Ücret</DIV>
										<DIV class="RIStyle" id="sskMat" style="Z-INDEX: 69; LEFT: 530px; WIDTH: 58px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">SSK Matrahý</DIV>
										<DIV class="RIStyle" id="sskPIsPay" style="Z-INDEX: 69; LEFT: 592px; WIDTH: 50px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 25px; BORDER-BOTTOM-STYLE: solid"
											align="center">SSK Primi&nbsp; &nbsp;Ýþçi Payý</DIV>
										<DIV class="RIStyle" id="IIpayi" style="Z-INDEX: 69; LEFT: 648px; WIDTH: 51px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 25px; BORDER-BOTTOM-STYLE: solid"
											align="center">Ýþsizlik Ýþçi Payý</DIV>
										<DIV class="RIStyle" id="VMat" style="Z-INDEX: 69; LEFT: 704px; WIDTH: 60px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 13px; BORDER-BOTTOM-STYLE: solid">Vergi 
											Matrahý</DIV>
										<DIV class="RIStyle" id="GVergi" style="Z-INDEX: 69; LEFT: 760px; WIDTH: 55px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Gelir Vergisi</DIV>
										<DIV class="RIStyle" id="DamV" style="Z-INDEX: 69; LEFT: 816px; WIDTH: 62px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 11px; HEIGHT: 14px; BORDER-BOTTOM-STYLE: solid">Damga 
											Vergisi</DIV>
										<DIV class="RIStyle" id="ele" style="Z-INDEX: 69; LEFT: 880px; WIDTH: 52px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid">Net 
											Ödenen</DIV>
										<DIV class="RIStyle" id="Div25" style="Z-INDEX: 69; LEFT: 344px; WIDTH: 84px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 14px; BORDER-BOTTOM-STYLE: solid">
											<P>Fazla Çalýþma Saat</P>
										</DIV>
										<DIV class="RIStyle" id="Div27" style="Z-INDEX: 69; LEFT: 928px; WIDTH: 37px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 12px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid">
											<P>Ýmza</P>
										</DIV>
									</DIV>
								</HeaderTemplate>
								<ItemTemplate>
									<DIV class="RIStyle" id="DIV2" style="WIDTH: 954px; POSITION: relative; HEIGHT: 18px"
										runat="server" ms_positioning="GridLayout">
										<DIV id="SNo" style="DISPLAY: inline; Z-INDEX: 102; LEFT: 2px; WIDTH: 24px; POSITION: absolute; TOP: 0px; HEIGHT: 15px"
											runat="server" ms_positioning="FlowLayout"></DIV>
										<INPUT class=RIStyle id=ad style="LEFT: 29px; WIDTH: 88px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "ADSOYAD") %>'><INPUT class=RIStyle id=sskno style="Z-INDEX: 69; LEFT: 120px; WIDTH: 68px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "SSKSICILNO") %>'><INPUT class=RIStyle id=TcKimNo style="Z-INDEX: 69; LEFT: 191px; WIDTH: 57px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "MERNISNO") %>'><INPUT class=RIStyle id=NorGun style="Z-INDEX: 69; LEFT: 250px; WIDTH: 19px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "CALISTIGIGUN" ,"{0:0}")%>'><INPUT class=RIStyle id=NorGun style="Z-INDEX: 69; LEFT: 273px; WIDTH: 20px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "HAFTATATILI" ,"{0:0}")%>'><INPUT class=RIStyle id=BayTat style="Z-INDEX: 69; LEFT: 296px; WIDTH: 20px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "CALISILMAYANRESMITATIL" ,"{0:0}")%>'><INPUT class=RIStyle id=YilIzn style="Z-INDEX: 69; LEFT: 320px; WIDTH: 19px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "YILLIKIZIN" ,"{0:0}")%>'><INPUT class=RIStyle id=fazCal style="Z-INDEX: 69; LEFT: 342px; WIDTH: 23px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "FAZLACALISMA" ,"{0:0}")%>'><INPUT class=RIStyle id=FazCalHs style="Z-INDEX: 69; LEFT: 372px; WIDTH: 26px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "VAR5" ,"{0:0}")%>'><INPUT class=RIStyle id=FazCalB style="Z-INDEX: 69; LEFT: 403px; WIDTH: 24px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "VAR5" ,"{0:0}")%>'><INPUT class=RIStyle id=TopGun style="Z-INDEX: 69; LEFT: 432px; WIDTH: 24px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "TOPLAMGUN" ,"{0:0}")%>'><INPUT class=RIStyle id=Brut style="Z-INDEX: 69; LEFT: 458px; WIDTH: 71px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text value='<%# DataBinder.Eval(Container.DataItem, "BRUTMAAS" ,"{0:0.00}")%>'><INPUT class=RIStyle id=sskMat style="Z-INDEX: 69; LEFT: 530px; WIDTH: 56px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "SSKMATRAHI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=sskPIsPay style="Z-INDEX: 69; LEFT: 592px; WIDTH: 48px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "SSKPRIMIISCIPAYI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=IIpayi style="Z-INDEX: 69; LEFT: 648px; WIDTH: 54px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=3 value='<%# DataBinder.Eval(Container.DataItem, "ISSIZLIKISCIPAYI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=VMat style="Z-INDEX: 69; LEFT: 704px; WIDTH: 62px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "VERGIMATRAHI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=GVergi style="Z-INDEX: 69; LEFT: 768px; WIDTH: 46px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "GELIRVERGISI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=DamV style="Z-INDEX: 69; LEFT: 824px; WIDTH: 46px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "DAMGAVERGISI" ,"{0:0.00}")%>'><INPUT class=RIStyle id=ele style="Z-INDEX: 69; LEFT: 880px; WIDTH: 46px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "ELEGECEN" ,"{0:0.00}")%>'></DIV>
								</ItemTemplate>
							</asp:DataList></TD>
					</TR>
					<TR>
						<TD id="endofpage" runat="server">
							<DIV class="RIStyle" id="Div29" style="BORDER-TOP: black 1px solid; BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black; WIDTH: 1123px; POSITION: relative; HEIGHT: 211px"
								align="left" runat="server" ms_positioning="GridLayout">
								<asp:Label id="lblTopPersonel" style="Z-INDEX: 101; LEFT: 16px; POSITION: absolute; TOP: 4px"
									runat="server"></asp:Label>
								<DIV style="DISPLAY: inline; Z-INDEX: 119; LEFT: 368px; WIDTH: 105px; POSITION: absolute; TOP: 33px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">SSK Primi (Ýþçi)</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 120; LEFT: 368px; WIDTH: 105px; POSITION: absolute; TOP: 52px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">SSK Primi (Ýþveren)</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 121; LEFT: 368px; WIDTH: 105px; POSITION: absolute; TOP: 72px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">SSK Primi Toplamý</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 122; LEFT: 368px; WIDTH: 105px; POSITION: absolute; TOP: 92px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Ýþsizlik Sigortasý (Ýþçi)</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 123; LEFT: 368px; WIDTH: 110px; POSITION: absolute; TOP: 112px; HEIGHT: 16px"
									align="left" ms_positioning="FlowLayout">Ýþsizlik Sigortasý (Ýþveren)</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 124; LEFT: 368px; WIDTH: 105px; POSITION: absolute; TOP: 132px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Ýþsizlik kesintisi Toplamý</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 115; LEFT: 16px; WIDTH: 88px; POSITION: absolute; TOP: 112px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Gelir Vergisi</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 116; LEFT: 16px; WIDTH: 88px; POSITION: absolute; TOP: 132px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Damga Vergisi</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 117; LEFT: 16px; WIDTH: 88px; POSITION: absolute; TOP: 152px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">SSK Matrahý</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 118; LEFT: 16px; WIDTH: 88px; POSITION: absolute; TOP: 172px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">SSK Gün</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 114; LEFT: 16px; WIDTH: 88px; POSITION: absolute; TOP: 92px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Gelir Vergisi Matrahý</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 111; LEFT: 16px; WIDTH: 88px; POSITION: absolute; TOP: 32px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Brüt Ücret</DIV>
								<asp:Label id="lblSSKMat" style="Z-INDEX: 104; LEFT: 536px; POSITION: absolute; TOP: 4px" runat="server"></asp:Label>
								<asp:Label id="lblTopBrut" style="Z-INDEX: 103; LEFT: 480px; POSITION: absolute; TOP: 4px"
									runat="server"></asp:Label>
								<asp:Label id="lblTopNorGun" style="Z-INDEX: 102; LEFT: 416px; POSITION: absolute; TOP: 4px"
									runat="server" Width="47px"></asp:Label>
								<asp:Label id="SskPrIsPy" style="Z-INDEX: 105; LEFT: 600px; POSITION: absolute; TOP: 4px" runat="server"></asp:Label>
								<asp:Label id="lblIsIsPy" style="Z-INDEX: 106; LEFT: 664px; POSITION: absolute; TOP: 4px" runat="server"
									Width="48px"></asp:Label>
								<asp:Label id="lblVerMat" style="Z-INDEX: 107; LEFT: 720px; POSITION: absolute; TOP: 4px" runat="server"
									Width="50px"></asp:Label>
								<asp:Label id="lblGVer" style="Z-INDEX: 108; LEFT: 776px; POSITION: absolute; TOP: 4px" runat="server"
									Width="42px"></asp:Label>
								<asp:Label id="lblDamVer" style="Z-INDEX: 109; LEFT: 832px; POSITION: absolute; TOP: 4px" runat="server"
									Width="42px"></asp:Label>
								<asp:Label id="lblNetOd" style="Z-INDEX: 110; LEFT: 896px; POSITION: absolute; TOP: 4px" runat="server"
									Width="42px"></asp:Label>
								<DIV style="DISPLAY: inline; Z-INDEX: 112; LEFT: 16px; WIDTH: 88px; POSITION: absolute; TOP: 52px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Fazla Mesai Ücreti</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 113; LEFT: 16px; WIDTH: 88px; POSITION: absolute; TOP: 72px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Toplam Brüt Gelir</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 125; LEFT: 693px; WIDTH: 105px; POSITION: absolute; TOP: 33px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Kesintiler Toplamý</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 126; LEFT: 693px; WIDTH: 105px; POSITION: absolute; TOP: 52px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Net Ödenen</DIV>
								<DIV style="DISPLAY: inline; Z-INDEX: 127; LEFT: 693px; WIDTH: 105px; POSITION: absolute; TOP: 72px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Toplam Malýyet</DIV>
								<DIV style="DISPLAY: inline; FONT-WEIGHT: bolder; FONT-SIZE: 9pt; Z-INDEX: 128; LEFT: 20px; WIDTH: 88px; POSITION: absolute; TOP: 196px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Düzenleyen</DIV>
								<DIV style="DISPLAY: inline; FONT-WEIGHT: bolder; FONT-SIZE: 9pt; Z-INDEX: 129; LEFT: 372px; WIDTH: 88px; POSITION: absolute; TOP: 192px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Kontrol Eden</DIV>
								<DIV style="DISPLAY: inline; FONT-WEIGHT: bolder; FONT-SIZE: 9pt; Z-INDEX: 130; LEFT: 700px; WIDTH: 88px; POSITION: absolute; TOP: 192px; HEIGHT: 15px"
									align="left" ms_positioning="FlowLayout">Yetkili Ýmza</DIV>
								<DIV id="SBrMaas" style="DISPLAY: inline; Z-INDEX: 131; LEFT: 160px; WIDTH: 120px; POSITION: absolute; TOP: 32px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="FazMesUc" style="DISPLAY: inline; Z-INDEX: 132; LEFT: 160px; WIDTH: 120px; POSITION: absolute; TOP: 52px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="TopBrGel" style="DISPLAY: inline; Z-INDEX: 133; LEFT: 160px; WIDTH: 120px; POSITION: absolute; TOP: 72px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="GVerMat" style="DISPLAY: inline; Z-INDEX: 134; LEFT: 160px; WIDTH: 120px; POSITION: absolute; TOP: 92px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="GelVer" style="DISPLAY: inline; Z-INDEX: 135; LEFT: 160px; WIDTH: 120px; POSITION: absolute; TOP: 112px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="DamVer" style="DISPLAY: inline; Z-INDEX: 136; LEFT: 160px; WIDTH: 120px; POSITION: absolute; TOP: 132px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="SskMat" style="DISPLAY: inline; Z-INDEX: 137; LEFT: 160px; WIDTH: 120px; POSITION: absolute; TOP: 152px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="TopGun" style="DISPLAY: inline; Z-INDEX: 138; LEFT: 160px; WIDTH: 120px; POSITION: absolute; TOP: 172px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="SskIsPrPy" style="DISPLAY: inline; Z-INDEX: 139; LEFT: 540px; WIDTH: 105px; POSITION: absolute; TOP: 32px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="SskPrIsVePy" style="DISPLAY: inline; Z-INDEX: 140; LEFT: 540px; WIDTH: 105px; POSITION: absolute; TOP: 52px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="SskPTop" style="DISPLAY: inline; Z-INDEX: 141; LEFT: 540px; WIDTH: 105px; POSITION: absolute; TOP: 72px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="IszSIsci" style="DISPLAY: inline; Z-INDEX: 142; LEFT: 540px; WIDTH: 105px; POSITION: absolute; TOP: 92px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="IszSigIsveren" style="DISPLAY: inline; Z-INDEX: 143; LEFT: 540px; WIDTH: 106px; POSITION: absolute; TOP: 112px; HEIGHT: 16px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="IszKesTop" style="DISPLAY: inline; Z-INDEX: 144; LEFT: 540px; WIDTH: 105px; POSITION: absolute; TOP: 132px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="KesTop" style="DISPLAY: inline; Z-INDEX: 145; LEFT: 852px; WIDTH: 105px; POSITION: absolute; TOP: 32px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="NetOd" style="DISPLAY: inline; Z-INDEX: 146; LEFT: 852px; WIDTH: 105px; POSITION: absolute; TOP: 52px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
								<DIV id="TopMal" style="DISPLAY: inline; Z-INDEX: 147; LEFT: 852px; WIDTH: 105px; POSITION: absolute; TOP: 72px; HEIGHT: 15px"
									align="right" runat="server" ms_positioning="FlowLayout"></DIV>
							</DIV>
						</TD>
					</TR>
				</TABLE>
			</asp:panel></form>
	</body>
</HTML>
