<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RpCariHesapListesi.aspx.vb" Inherits="ASPNetPortal.RpCariHesapListesi"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="javascript" src="pagenav.js"></script>
		<LINK href="../portal.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Page1" runat="server">
				<TABLE id="Table3" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD>
							<DIV id="DIV1" style="WIDTH: 792px; POSITION: relative; HEIGHT: 53px" runat="server"
								ms_positioning="GridLayout">
								<DIV id="lblBaslik" style="DISPLAY: inline; FONT-WEIGHT: normal; FONT-SIZE: 10pt; Z-INDEX: 101; LEFT: 6px; WIDTH: 264px; POSITION: absolute; TOP: 12px; HEIGHT: 15px"
									runat="server" ms_positioning="FlowLayout">Cari Hesap Listesi</DIV>
							</DIV>
						</TD>
					</TR>
					<TR>
						<TD colSpan="3">
							<asp:DataList id="DataGrid1" runat="server" Height="118px" Width="734px">
								<HeaderTemplate>
									<DIV class="RIStyle" id="DIV2" style="WIDTH: 712px; BORDER-BOTTOM: black 1px solid; POSITION: relative; HEIGHT: 19px"
										align="center" runat="server" ms_positioning="GridLayout">
										<DIV class="RIStyle" id="Div8" style="Z-INDEX: 27; LEFT: 12px; WIDTH: 44px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Firma Adý</DIV>
										<DIV class="RIStyle" id="Div4" style="Z-INDEX: 27; LEFT: 304px; WIDTH: 39px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Alacak</DIV>
										<DIV class="RIStyle" id="Div11" style="Z-INDEX: 27; LEFT: 440px; WIDTH: 57px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Döviz Borç</DIV>
										<DIV class="RIStyle" id="Div14" style="Z-INDEX: 27; LEFT: 512px; WIDTH: 69px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Döviz Alacak</DIV>
										<DIV class="RIStyle" id="Div22" style="Z-INDEX: 29; LEFT: 224px; WIDTH: 32px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Borç</DIV>
										<DIV class="RIStyle" id="Div12" style="Z-INDEX: 27; LEFT: 376px; WIDTH: 32px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Bakiye</DIV>
										<DIV class="RIStyle" id="Div16" style="Z-INDEX: 27; LEFT: 592px; WIDTH: 63px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Döviz Bakiye</DIV>
										<DIV class="RIStyle" id="Div17" style="Z-INDEX: 27; LEFT: 672px; WIDTH: 32px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">P.Birimi</DIV>
									</DIV>
								</HeaderTemplate>
								<ItemTemplate>
									<DIV class="RIStyle" id="Div3" style="WIDTH: 696px; POSITION: relative; HEIGHT: 19px"
										runat="server" ms_positioning="GridLayout"><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 8px; WIDTH: 178px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=24 value='<%# DataBinder.Eval(Container.DataItem, "FIRMAADI") %>'><INPUT class=RIStyle style="Z-INDEX: 29; LEFT: 200px; WIDTH: 58px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "BORC","{0:0.00}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 272px; WIDTH: 58px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "ALACAK","{0:0.00}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 344px; WIDTH: 58px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "BAKIYE","{0:0.00}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 424px; WIDTH: 58px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "DOVIZBORC2","{0:0.00}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 496px; WIDTH: 58px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "DOVIZALACAK2","{0:0.00}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 576px; WIDTH: 58px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "DOVIZBAKIYE2","{0:0.00}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 656px; WIDTH: 40px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "PARABIRIMI") %>'></DIV>
								</ItemTemplate>
							</asp:DataList></TD>
					</TR>
					<TR>
						<TD id="endofpage" runat="server">
							<DIV class="RIStyle" id="Div29" style="BORDER-TOP: black 1px solid; BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black; WIDTH: 692px; POSITION: relative; HEIGHT: 18px"
								align="left" runat="server" ms_positioning="GridLayout"></DIV>
						</TD>
					</TR>
				</TABLE>
			</asp:panel></form>
	</body>
</HTML>
