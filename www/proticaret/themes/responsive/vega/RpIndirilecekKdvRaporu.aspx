<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RpIndirilecekKdvRaporu.aspx.vb" Inherits="ASPNetPortal.RpIndirilecekKdvRaporu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="javascript" src="pagenav.js"> </script>
		<LINK href="../portal.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Page1" runat="server">
				<TABLE id="Table3" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD>
							<DIV id="DIV1" style="WIDTH: 966px; POSITION: relative; HEIGHT: 53px" runat="server"
								ms_positioning="GridLayout">
								<DIV id="lblBaslik" style="DISPLAY: inline; FONT-WEIGHT: normal; FONT-SIZE: 10pt; Z-INDEX: 101; LEFT: 6px; WIDTH: 264px; POSITION: absolute; TOP: 12px; HEIGHT: 15px"
									runat="server" ms_positioning="FlowLayout">Indirilecek KDV Raporu</DIV>
							</DIV>
						</TD>
					</TR>
					<TR>
						<TD colSpan="3">
							<asp:DataList id="DataGrid1" runat="server" Height="118px" Width="392px">
								<HeaderTemplate>
									<DIV class="RIStyle" id="DIV2" style="WIDTH: 968px; BORDER-BOTTOM: black 1px solid; POSITION: relative; HEIGHT: 19px"
										align="center" runat="server" ms_positioning="GridLayout">
										<DIV class="RIStyle" id="Div22" style="Z-INDEX: 29; LEFT: 16px; WIDTH: 81px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Ünvan</DIV>
										<DIV class="RIStyle" id="Div9" style="Z-INDEX: 28; LEFT: 216px; WIDTH: 42px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Belge No</DIV>
										<DIV class="RIStyle" id="Div10" style="Z-INDEX: 28; LEFT: 280px; WIDTH: 47px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Tarih</DIV>
										<DIV class="RIStyle" id="Div12" style="Z-INDEX: 28; LEFT: 344px; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Vergi Dairesi</DIV>
										<DIV class="RIStyle" id="Div11" style="Z-INDEX: 28; LEFT: 432px; WIDTH: 65px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Vergi No</DIV>
										<DIV class="RIStyle" id="Div14" style="Z-INDEX: 28; LEFT: 504px; WIDTH: 81px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Malýn Cinsi</DIV>
										<DIV class="RIStyle" id="Div16" style="Z-INDEX: 28; LEFT: 640px; WIDTH: 30px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Miktar</DIV>
										<DIV class="RIStyle" id="Div17" style="Z-INDEX: 28; LEFT: 680px; WIDTH: 34px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Birim</DIV>
										<DIV class="RIStyle" id="Div20" style="Z-INDEX: 28; LEFT: 720px; WIDTH: 53px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Birim Fiyat</DIV>
										<DIV class="RIStyle" id="Div21" style="Z-INDEX: 28; LEFT: 792px; WIDTH: 43px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Tutar</DIV>
										<DIV class="RIStyle" id="Div25" style="Z-INDEX: 28; LEFT: 848px; WIDTH: 32px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">KDV</DIV>
										<DIV class="RIStyle" id="Div27" style="Z-INDEX: 28; LEFT: 896px; WIDTH: 66px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Genel Toplam</DIV>
									</DIV>
								</HeaderTemplate>
								<ItemTemplate>
									<DIV class="RIStyle" id="Div3" style="WIDTH: 960px; POSITION: relative; HEIGHT: 19px"
										runat="server" ms_positioning="GridLayout"><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 8px; WIDTH: 194px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=27 value='<%# DataBinder.Eval(Container.DataItem, "UNVAN") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 216px; WIDTH: 58px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "BELGENO") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 280px; WIDTH: 58px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "TARIH","{0:d}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 344px; WIDTH: 74px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=7 value='<%# DataBinder.Eval(Container.DataItem, "VERGIDAIRESI") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 432px; WIDTH: 74px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=7 value='<%# DataBinder.Eval(Container.DataItem, "VERGINO") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 512px; WIDTH: 106px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=12 value='<%# DataBinder.Eval(Container.DataItem, "MALINCINSI") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 624px; WIDTH: 44px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "MIKTAR","{0:0}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 672px; WIDTH: 44px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "BIRIM") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 728px; WIDTH: 44px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "AFIYATI","{0:0.00}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 784px; WIDTH: 44px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "TUTAR","{0:0.00}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 832px; WIDTH: 44px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "KDVTUTAR","{0:0.00}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 888px; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "GENELTOPLAM","{0:0.00}") %>'></DIV>
								</ItemTemplate>
							</asp:DataList></TD>
					</TR>
					<TR>
						<TD id="endofpage" runat="server">
							<DIV class="RIStyle" id="Div29" style="BORDER-TOP: black 1px solid; BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black; WIDTH: 966px; POSITION: relative; HEIGHT: 18px"
								align="left" runat="server" ms_positioning="GridLayout"></DIV>
						</TD>
					</TR>
				</TABLE>
			</asp:panel>&nbsp;</form>
	</body>
</HTML>
