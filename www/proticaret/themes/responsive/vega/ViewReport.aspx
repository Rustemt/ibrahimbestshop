<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page language="vb" Codebehind="ViewReport.aspx.vb" AutoEventWireup="false" Inherits="ViewReport" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<TITLE>Rapor</TITLE>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<SCRIPT language="javascript">
	parent.moveTo(0,0); 
	parent.resizeTo(screen.availWidth,screen.availHeight);  
	function setReport() {
	
		var sReport = "<%= Request.QueryString("report") %>";
		return sReport;
	}
	function setParamList()
	{
 		var sParamList = "<%= Request.QueryString("paramlist") %>";
 		return sParamList;
	}
		</SCRIPT>
	</HEAD>
	<frameset rows="9%,91%" frameborder="0" border="0" frameSpacing="0">
		<frame frameborder="no" id="header" name="header" src="ReportHeader.aspx" noresize="noresize"  scrolling="no">
		<frame frameborder="no" id="report" name="report" src="<%=IIf(ind = 0, "RpCariHesap.aspx", "RpCariHesapDetayli.aspx")%>" noresize="noresize"  scrolling="yes">
	</frameset>
</HTML>
