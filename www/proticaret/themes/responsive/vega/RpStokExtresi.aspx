<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RpStokExtresi.aspx.vb" Inherits="ASPNetPortal.RpStokExtresi"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
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
							<DIV id="DIV1" style="WIDTH: 812px; POSITION: relative; HEIGHT: 53px" runat="server"
								ms_positioning="GridLayout">
								<DIV id="lblBaslik" style="DISPLAY: inline; FONT-WEIGHT: normal; FONT-SIZE: 10pt; Z-INDEX: 101; LEFT: 6px; WIDTH: 264px; POSITION: absolute; TOP: 12px; HEIGHT: 15px"
									runat="server" ms_positioning="FlowLayout">Stok Extresi Raporu</DIV>
							</DIV>
						</TD>
					</TR>
					<TR>
						<TD colSpan="3">
							<asp:DataList id="DataGrid1" runat="server" Height="118px" Width="734px">
								<HeaderTemplate>
									<DIV class="RIStyle" id="DIV2" style="WIDTH: 806px; BORDER-BOTTOM: black 1px solid; POSITION: relative; HEIGHT: 19px"
										align="center" runat="server" ms_positioning="GridLayout">
										<DIV class="RIStyle" id="Div8" style="Z-INDEX: 27; LEFT: 12px; WIDTH: 87px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Malýn Cinsi</DIV>
										<DIV class="RIStyle" id="Div4" style="Z-INDEX: 27; LEFT: 256px; WIDTH: 62px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Firma KAdý</DIV>
										<DIV class="RIStyle" id="Div11" style="Z-INDEX: 27; LEFT: 448px; WIDTH: 45px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Evrak No</DIV>
										<DIV class="RIStyle" id="Div14" style="Z-INDEX: 27; LEFT: 496px; WIDTH: 55px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Birim Adý</DIV>
										<DIV class="RIStyle" id="Div22" style="Z-INDEX: 29; LEFT: 168px; WIDTH: 49px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Tarih</DIV>
										<DIV class="RIStyle" id="Div12" style="Z-INDEX: 27; LEFT: 392px; WIDTH: 32px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Ýzahat</DIV>
										<DIV class="RIStyle" id="Div16" style="Z-INDEX: 27; LEFT: 560px; WIDTH: 37px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Giren</DIV>
										<DIV class="RIStyle" id="Div20" style="Z-INDEX: 27; LEFT: 616px; WIDTH: 37px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Çýkan</DIV>
										<DIV class="RIStyle" id="Div19" style="Z-INDEX: 27; LEFT: 688px; WIDTH: 61px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Birim Maliyet</DIV>
										<DIV class="RIStyle" id="Div23" style="Z-INDEX: 27; LEFT: 760px; WIDTH: 44px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Tutar</DIV>
									</DIV>
								</HeaderTemplate>
								<ItemTemplate>
									<DIV class="RIStyle" id="Div3" style="WIDTH: 800px; POSITION: relative; HEIGHT: 19px"
										runat="server" ms_positioning="GridLayout"><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 8px; WIDTH: 146px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=19 value='<%# DataBinder.Eval(Container.DataItem, "MALINCINSI") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 160px; WIDTH: 58px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "TARIH","{0:d}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 224px; WIDTH: 162px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=21 value='<%# DataBinder.Eval(Container.DataItem, "FIRMAADI") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 400px; WIDTH: 50px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=3 value='<%# DataBinder.Eval(Container.DataItem, "IZAHAT") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 456px; WIDTH: 42px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "EVRAKNO") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 504px; WIDTH: 50px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=3 value='<%# DataBinder.Eval(Container.DataItem, "BIRIMADI") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 568px; WIDTH: 48px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "GIREN","{0:0}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 632px; WIDTH: 40px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "CIKAN","{0:0}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 688px; WIDTH: 40px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=1 value='<%# DataBinder.Eval(Container.DataItem, "BIRIMMALIYET","{0:0.00}") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 744px; WIDTH: 48px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: right; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=2 value='<%# DataBinder.Eval(Container.DataItem, "TUTAR","{0:0.00}") %>'></DIV>
								</ItemTemplate>
							</asp:DataList></TD>
					</TR>
					<TR>
						<TD id="endofpage" runat="server">
							<DIV class="RIStyle" id="Div29" style="BORDER-TOP: black 1px solid; BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black; WIDTH: 806px; POSITION: relative; HEIGHT: 18px"
								align="left" runat="server" ms_positioning="GridLayout"></DIV>
						</TD>
					</TR>
				</TABLE>
			</asp:panel></form>
	</body>
</HTML>
