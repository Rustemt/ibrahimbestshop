<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RpDepoEnvanter.aspx.vb" Inherits="ASPNetPortal.RpDepoEnvanter"%>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
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
	<body runat="server"> 
			<asp:panel id="Page1" runat="server">
				<TABLE id="Table3" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD>
							<DIV id="DIV1" style="WIDTH: 792px; POSITION: relative; HEIGHT: 53px" runat="server"
								ms_positioning="GridLayout">
								<DIV id="lblBaslik" style="DISPLAY: inline; FONT-WEIGHT: normal; FONT-SIZE: 10pt; Z-INDEX: 101; LEFT: 6px; WIDTH: 264px; POSITION: absolute; TOP: 12px; HEIGHT: 15px"
									runat="server" ms_positioning="FlowLayout">Depo Envanter Raporu</DIV>
							</DIV>
						</TD>
					</TR>
					<TR>
						<TD colSpan="3">
							<asp:DataList id="DataGrid1" runat="server" Height="118px" Width="392px">
								<HeaderTemplate>
									<DIV class="RIStyle" id="DIV2" style="WIDTH: 644px; BORDER-BOTTOM: black 1px solid; POSITION: relative; HEIGHT: 19px"
										align="center" runat="server" ms_positioning="GridLayout">
										<DIV class="RIStyle" id="Div8" style="Z-INDEX: 27; LEFT: 12px; WIDTH: 44px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Stok Kodu</DIV>
										<DIV class="RIStyle" id="Div11" style="Z-INDEX: 27; LEFT: 484px; WIDTH: 57px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Envanter</DIV>
										<DIV class="RIStyle" id="Div14" style="Z-INDEX: 27; LEFT: 560px; WIDTH: 80px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Birim Adý</DIV>
										<DIV class="RIStyle" id="Div22" style="Z-INDEX: 29; LEFT: 152px; WIDTH: 81px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; BORDER-BOTTOM-STYLE: solid"
											align="center">Malýn Cinsi</DIV>
									</DIV>
								</HeaderTemplate>
								<ItemTemplate>
									<DIV class="RIStyle" id="Div3" style="WIDTH: 644px; POSITION: relative; HEIGHT: 19px"
										runat="server" ms_positioning="GridLayout"><INPUT class=RIStyle style="Z-INDEX: 69; LEFT: 580px; WIDTH: 56px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=4 value='<%# DataBinder.Eval(Container.DataItem, "BIRIMADI") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 8px; WIDTH: 130px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=16 value='<%# DataBinder.Eval(Container.DataItem, "STOKKODU") %>'><INPUT class=RIStyle style="Z-INDEX: 27; LEFT: 160px; WIDTH: 280px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=41 value='<%# DataBinder.Eval(Container.DataItem, "MALINCINSI") %>'><INPUT class=RIStyle style="Z-INDEX: 29; LEFT: 500px; WIDTH: 64px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; BORDER-LEFT-STYLE: solid; POSITION: absolute; TOP: 0px; HEIGHT: 15px; TEXT-ALIGN: left; BORDER-BOTTOM-STYLE: solid" readOnly type=text size=5 value='<%# DataBinder.Eval(Container.DataItem, "KALAN","{0:0}") %>'></DIV>
								</ItemTemplate>
							</asp:DataList></TD>
					</TR>
					<TR>
						<TD id="endofpage" runat="server">
							<DIV class="RIStyle" id="Div29" style="BORDER-TOP: black 1px solid; BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: black; WIDTH: 658px; POSITION: relative; HEIGHT: 18px"
								align="left" runat="server" ms_positioning="GridLayout"></DIV>
						</TD>
					</TR>
				</TABLE>
			</asp:panel> 
	</body>
</HTML>
