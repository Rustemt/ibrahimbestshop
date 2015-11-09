<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Bilanco.aspx.vb" Inherits="Balance" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
  <HEAD>
		<title>Bilanço</title>
<meta content="Microsoft Visual Studio .NET 7.1" name=GENERATOR>
<meta content="Visual Basic .NET 7.1" name=CODE_LANGUAGE>
<meta content=JavaScript name=vs_defaultClientScript>
<meta content=http://schemas.microsoft.com/intellisense/ie5 name=vs_targetSchema><LINK href="../<% =getcss() %>" type=text/css rel=stylesheet >
<script language=javascript>

function CallPrint(strid)
{
 var prtContent = document.getElementById(strid);
 var WinPrint = window.open('','','letf=0,top=0,width=1,height=1,toolbar=0,scrollbars=0,status=0');
 WinPrint.document.write(prtContent.innerHTML);
 WinPrint.document.close();
 WinPrint.focus();
 WinPrint.print();
 WinPrint.close();
 //prtContent.innerHTML=strOldOne;
}

		</script>

<script language=Javascript> 
function resizeWin() 
{ 
if (document.all) { 
winHeight=document.all['bodyArea'].offsetHeight; 
winWidth=document.all['bodyArea'].offsetWidth; 
} 
// add 30 to the width for a border 
// add 60 to the height to account for a border + the titlebar 
if (winWidth>1000)
{
winWidth=1000;
}
if (winHeight>1000)
{
winHeight=1000;
}
window.resizeTo(winWidth,winHeight); 

//centre the window 
if (window.moveTo) window.moveTo((screen.availWidth-winWidth)/2,((screen.availHeight-winHeight)/2)+130); 
} 

</script>
</HEAD>
<body leftMargin=0 topMargin=0 onload=resizeWin(); 
marginwidth="0" marginheight="0">
<form id=Form2 method=post runat="server">
<DIV id=bodyArea auto; overflow:?>
<TABLE id=Table1 cellSpacing=1 cellPadding=1 align=center border=0>
  <TR>
    <TD width=17 height=17></TD>
    <TD height=17></TD>
    <TD height=17></TD></TR>
  <TR>
    <TD></TD>
    <TD><asp:radiobutton id=rbPasif runat="server" CssClass="Global_Normal_RadioButon" GroupName="Balance" AutoPostBack="True" Text="Bilanço-Pasif"></asp:radiobutton><asp:radiobutton id=rbAKTIF runat="server" CssClass="Global_Normal_RadioButon" GroupName="Balance" AutoPostBack="True" Text="Bilanço-Aktif" Checked="True"></asp:radiobutton></TD>
    <TD></TD></TR>
  <TR>
    <TD></TD>
    <TD>
      <div id=divPrint><asp:datagrid id=dgReport runat="server" AutoGenerateColumns="False" ShowFooter="True">
<AlternatingItemStyle CssClass="Global_TabloAlternatifSatir">
</AlternatingItemStyle>

<ItemStyle CssClass="Global_TabloSatir">
</ItemStyle>

<HeaderStyle CssClass="Global_TabloBaslik"></HeaderStyle>		<PagerStyle CssClass="Global_TabloBaslik"></PagerStyle>
</HeaderStyle>

<FooterStyle CssClass="Global_TabloBaslik">
</FooterStyle>

<Columns>
<asp:BoundColumn DataField="DEGERADI"></asp:BoundColumn>
<asp:BoundColumn DataField="DEGER" DataFormatString="{0:0.00}"></asp:BoundColumn>
<asp:BoundColumn DataField="DEGER2" DataFormatString="{0:0.00}">
<HeaderStyle Font-Bold="True">
</HeaderStyle>
</asp:BoundColumn>
<asp:BoundColumn DataField="DEGER3" HeaderText="Cari D&#246;nem" DataFormatString="{0:0.00}">
<HeaderStyle Font-Bold="True">
</HeaderStyle>
</asp:BoundColumn>
<asp:BoundColumn DataField="DEGER4" DataFormatString="{0:0.00}"></asp:BoundColumn>
<asp:BoundColumn DataField="DEGER5" DataFormatString="{0:0.00}"></asp:BoundColumn>
<asp:BoundColumn DataField="DEGER6" HeaderText="&#214;nceki D&#246;nem" DataFormatString="{0:0.00}">
<HeaderStyle Font-Bold="True">
</HeaderStyle>
</asp:BoundColumn>
<asp:BoundColumn Visible="False" DataField="BOLD" HeaderText="BOLD"></asp:BoundColumn>
</Columns>
							</asp:datagrid></div></TD>
    <TD></TD></TR>
  <TR>
    <TD></TD>
    <TD align=right><asp:hyperlink id=HyperLink1 onclick="CallPrint('divPrint');" runat="server" CssClass="Global_Bold_Link" NavigateUrl="#">Yazdýr</asp:hyperlink></TD>
    <TD></TD></TR>
  <TR>
    <TD></TD>
    <TD></TD>
    <TD></TD></TR></TABLE></DIV></form>
	</body>
</HTML>
